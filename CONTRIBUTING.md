# Contributing to Antifragile Science Blockchain (ASB)

Welcome! We are working to create a *falsifiable, decentralized, and censorship-resistant platform and protocol for 
scientific knowledge generation**.

We believe in **building in the open**, and we welcome your contributions—whether you're a scientist, philosopher, engineer, writer, or critic.

> This is not just a paper. It’s a living system. Help us test it, evolve it, or even tear it down and rebuild something better.

---

## Ways to Contribute

You can contribute through:

### Pull Requests
For:
- Rewriting or clarifying sections of the paper
- Adding examples, citations, or diagrams
- Fixing LaTeX formatting, typos, or structure

**How to provide comments**:
1. Fork the repo and clone it
2. Create a branch: `git checkout -b my-feature-branch`
3. Push the Changes to Your Fork
	- `git push origin my-feature-branch`
	- `git remote set-url origin git@github.com:username/repository.git`
4. Create a Pull Request (PR)
	- Go to your fork on GitHub.
	- GitHub will suggest creating a **Pull Request (PR)** to the original repository.
	- Hover over the line of the .tex file you want to comment on.
	- Click the blue "+" icon that appears next to the line number.
        - Click **Compare & pull request**.
	- Add a description and submit it.

**How to add new content (or edit)**:
1. Fork the repo and clone it
2. Create a branch: `git checkout -b my-feature-branch`
3. Add your new content like:
	- new bibliography source at /paper/refs and .bib at /paper/bibs
	- edit a section at /paper/sections
3. Push the Changes to Your Fork
	- `git push origin my-feature-branch`
	- `git remote set-url origin git@github.com:username/repository.git`
4. Create a Pull Request (PR)
	- Go to your fork on GitHub.
	- GitHub will suggest creating a **Pull Request (PR)** to the original repository.
	- Hover over the line of the .tex file you want to comment on.
	- Click the blue "+" icon that appears next to the line number.
        - Click **Compare & pull request**.
	- Add a description and submit it.


### Issues
For:
- Reporting **errors** in logic, formatting, or implementation
- **Refuting claims** made in the paper
- Pointing out contradictions or unfalsifiable statements

Please **do not** use Issues for open questions or general suggestions. Use Discussions and PRs for that.

### Discussions
For:
- Asking questions
- Discuss pros and cons
- Exploring alternative

This is your space to think out loud with the community.

---

##  Paper Structure

The paper `antiscichain-paper.tex` is broken into modular LaTeX files inside `/paper/sections/`.

The key section about the Antifragile Science Blockchain is at `/paper/sections/asb/asb.tex`.
From there you will see the subsections for it.

You should only need to edit the part you want to improve.

Adding new sections, at this time, is not expected. 
Please open an Issue if you think there's a missing section.

---

## Contribution Philosophy

Please challenge ideas that are weak or vague. 

Contributions are welcome if they:
- Increase **falsifiability**
- Improve **clarity**
- Strengthen the system by **testing its limits and finding errors or mistakes**

If you’re not sure whether your idea “fits,” **open a Draft PR or a Discussion** and we’ll figure it out together.

---

## Licensing & Credit

By submitting a PR, you agree to license your contributions under the [GPL-3.0 License](./LICENSE)

---

## Paper Development Setup (for LaTeX users)

You’ll need:
- A LaTeX environment (`pdflatex`, `xelatex`, or Overleaf)
- Optional: `make` for easy compilation

To compile:
```bash
pdflatex main.tex
```

Or open it in Overleaf and upload the files there.

I use TeXstudio on Linux (Ubuntu).

---

## Thank You

This project improves if it's attacked, evolved, and made stronger by diverse minds.

I am grateful for your time and ideas—whether you agree with the vision or not.

Let’s build the future of science. 

One falsifiable claim at a time. 

Together!
