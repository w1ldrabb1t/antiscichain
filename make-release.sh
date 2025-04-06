#!/bin/bash

# --- Default flags ---
FORCE=false
SILENT=false

# --- Parse flags ---
while [[ "$1" =~ ^- ]]; do
  case "$1" in
    -f|--force)
      FORCE=true
      ;;
    -s|--silent)
      SILENT=true
      FORCE=true  # silent implies force
      ;;
    -*)
      echo "Unknown option: $1"
      exit 1
      ;;
  esac
  shift
done

VERSION=$1
DATE=$(date +%Y-%m-%d)

if [ -z "$VERSION" ]; then
  echo "Usage: $0 [-f|--force] [-s|--silent] <version>"
  exit 1
fi

# --- Find latest reachable tag ---
LAST_TAG=$(git describe --tags --abbrev=0 --match "v*" $(git rev-list --tags --max-count=1) 2>/dev/null || echo "")

if [ -z "$LAST_TAG" ]; then
  RANGE=""
else
  RANGE="$LAST_TAG..HEAD"
fi

# --- Extract filtered commit messages ---
## Currently we are looking for the following # tags below
CHANGES=$(git log $RANGE \
  --grep="^#feat" --grep="^#fix" --grep="^#docs" \
  --pretty=format:"%s" \
  | sed -E 's/^#(feat|fix|docs) /- /')

# --- Bail if nothing to add ---
if [ -z "$CHANGES" ]; then
  echo "No qualifying commits found. Aborting."
  exit 1
fi

# --- Preview mode (unless silent) ---
if [ "$SILENT" = false ]; then
  echo "=== VERSION PREVIEW ==="
  echo "Version: $VERSION"
  echo "Date: $DATE"
  echo "Tag range: ${RANGE:-ALL COMMITS}"
  echo ""
  echo "Changelog entries:"
  echo "$CHANGES"
  echo "======================="

  # Confirm unless forced
  if [ "$FORCE" = false ]; then
    echo -n "Proceed with tagging and changelog update? (Y/n): "
    read -r CONFIRM
    if [[ "$CONFIRM" != "Y" ]]; then
      echo "Aborted."
      exit 0
    fi
  fi
fi

# --- Update version in LaTeX footer ---
TEX_FILE="./antiscichain-paper/antiscichain-paper.tex"

# Replace the version in the \lfoot line
sed -E -i "s/(\\\lfoot\{\\\textbf\{Version )[^}]+(\}\})/\1$VERSION\2/" "$TEX_FILE"

# Show the updated line to the user (unless silent)
if [ "$SILENT" = false ]; then
  echo ""
  echo "Updated LaTeX version line:"
  grep "textbf{Version" "$TEX_FILE"
  echo ""

  if [ "$FORCE" = false ]; then
    echo -n "Does the version line look correct? (Y/n): "
    read -r CONFIRM_LATEX
    if [[ "$CONFIRM_LATEX" != "Y" ]]; then
      echo "Aborting release. LaTeX version not confirmed."
      exit 1
    fi
  fi
fi

# Commit the change
git add "$TEX_FILE"
git commit -m "#fix updated version footer to $VERSION"


# --- Tag the new version ---
git tag -a "$VERSION" -m "Release $VERSION"
git push origin "$VERSION"

# --- Prepend to changelog ---
echo -e "## $VERSION - $DATE\n$CHANGES\n\n$(cat changelog.md)" > changelog.md

# --- Copy paper to versioned and latest release files ---
SOURCE_PDF="./antiscichain-paper/antiscichain-paper.pdf"
RELEASE_DIR="./antiscichain/releases"
VERSIONED_PDF="$RELEASE_DIR/antiscichain-paper-$VERSION.pdf"
LATEST_PDF="$RELEASE_DIR/antiscichain-paper-latest.pdf"

mkdir -p "$RELEASE_DIR"
cp "$SOURCE_PDF" "$VERSIONED_PDF"
cp "$SOURCE_PDF" "$LATEST_PDF"

# --- Commit everything ---
git add changelog.md "$VERSIONED_PDF" "$LATEST_PDF"
git commit -m "Update changelog and PDF for $VERSION"
git push

# --- GitHub Release upload (if gh CLI is installed) ---
if command -v gh >/dev/null 2>&1; then
  REPO=$(gh repo view --json nameWithOwner -q .nameWithOwner)
  RELEASE_NAME="$VERSION"
  RELEASE_TITLE="Release $VERSION"
  RELEASE_NOTES="$CHANGES"
  ASSET_PATH="$VERSIONED_PDF"

  if gh release view "$RELEASE_NAME" --repo "$REPO" > /dev/null 2>&1; then
    echo "GitHub Release $RELEASE_NAME already exists. Skipping creation."
  else
    gh release create "$RELEASE_NAME" "$ASSET_PATH" \
      --title "$RELEASE_TITLE" \
      --notes "$RELEASE_NOTES" \
      --repo "$REPO"

    if [ "$SILENT" = false ]; then
      echo "✅ Created GitHub Release $RELEASE_NAME and attached $VERSIONED_PDF"
    fi
  fi
else
  echo "⚠️ GitHub CLI (gh) not found. Skipping GitHub Release upload."
fi
