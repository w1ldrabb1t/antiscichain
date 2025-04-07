## An Antifragile Scientific Knowledge Generation Blockchain

Hi, I'm Bruno.

I am creating the *AntifragileSciChain* - an antifragile scientific knowledge generation system which leverages the blockchain technology.

The novelty about my system, which I describe on the [paper](https://github.com/w1ldrabb1t/antiscichain/blob/main/antiscichain-paper/antiscichain-paper.pdf), is the creation of a network of research papers with 2 types of lists and the creation of a Evidence Fragility Score (EFS).

Every research published in the AntifragileSciChain has 2 linked lists:
- list of papers that this paper supports/confirms
- list of papers that this paper refutes/invalidates

These 2 linked lists might seem trivial but they unlock the ability for the system to measure how fragile is the evidence that supports the validity of a certain research paper, by recursively iterating through both lists and calculate the EFS score.

Modern scientific research is often times heavily focused on finding evidence that something works (confirmation bias) or finding evidence that there's no harm (mistaking absence of evidence with evidence of absense), which is especially dangerous when dealing with complex non-linear response systems which render those "findings" very fragile. 

Scientism-driven research which is funded by private capitalist companies to find proof that their products work and that are "harmless", while silencing and banning those who challenge their findings, make it so that professional science researchers end up accepting these "studies" since it's rare and hard to find funding to "proof that something doesn't work" or to "refute another research paper".

I am creating the *AntifragileSciChain* to break free from Scientism and from the centralized authority-based organizations that get to decide what research is valid and can be published and which ones are not.

Here's what makes the *AntifragileSciChain* so unique:
- it is truly open because it's not only open source but also anyone can publish on it
- it is immutable meaning that nobody can change a research node on the network (it stays on the chain forever!)
- it is decentralized which makes it impossible for it to be taken down or to be controlled by one entity or organization
- it relies on the EFS score to expose a fragility signal based on other research nodes on the network
- the EFS score algorithm gives more weight to refutations than confirmations and also adjusts itself based on the cost of being wrong (ruin exposure)

In a nutshell, the *AntifragileSciChain* is a kind of a "Black Swan" to the modern scientific establishment in the way that it aims to set the scientific method free from the hands of Scientism and centralized scientifc authority based organizations, because it changes things. 

Join me! 

Review the paper and share your comments.

Contribute with more references and bibliography.

Find weaknesses and fragility in my work.

Drop by the [Discord](https://discord.gg/AW4Cxr3ajA).

Let's make science antifragile!

Love,
Bruno 

---

## Repo Structure

- `notes`: notes that I used to create the paper
- `paper`: my vision for the antifragile blockchain - [latest version](https://github.com/w1ldrabb1t/antiscichain/blob/main/antiscichain-paper/antiscichain-paper.pdf)

The actual paper is in the file `antiscichain-paper.tex` and it's broken into modular LaTeX files inside `/paper/sections/`.

The key section about the Antifragile Science Blockchain is at `/paper/sections/asb/asb.tex`.
From there you will see the subsections for it.

You should only need to edit the part you want to improve.

Adding new sections, at this time, is not expected. 
Please open an Issue if you think there's a missing section.

---

## Contribution Philosophy

Contributions are welcome if they:
- Increase **falsifiability**
- Improve **clarity**
- Strengthen the system by **testing its limits and finding errors or mistakes**

If you’re not sure where to start, drop by the [Discord](https://discord.gg/AW4Cxr3ajA).

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

## Thank You

This project improves if it's attacked, evolved, and made stronger by diverse minds.

I am grateful for your time and ideas—whether you agree with the vision or not.

Let’s build the future of science. 

One falsifiable claim at a time. 

Together!
