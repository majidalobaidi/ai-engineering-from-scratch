# Git & Collaboration — Scaffold

This file contains a concise, actionable scaffold based on the course lesson.

1) Configure git (one-time)

```bash
# set your name/email (or run without --global and set per-repo)
git config --global user.name "Your Name"
git config --global user.email "you@example.com"
```

2) Daily workflow (use in your repo)

```bash
# check work
git status
# stage changes
git add path/to/file.py
# commit
git commit -m "Describe change concisely"
# push to remote (main or your branch)
git push origin main
```

3) Branching for experiments

```bash
# create and switch to a branch
git checkout -b my-progress
# after work, merge back into main
git checkout main
git merge my-progress
# push branch
git push -u origin my-progress
```

4) Recommended `.gitignore` entries for ML projects

```
# Python
__pycache__/
*.pyc
# Conda envs
envs/
*.env
# Model checkpoints
*.pt
*.pth
*.safetensors
# Large data
data/
# VS Code
.vscode/
# Jupyter
.ipynb_checkpoints/
```

5) Exercises (quick)

- Clone the course repo and create `my-progress` branch.
- Create a file `progress.md` with a short note, commit, and push.
- Add `.pt .pth .safetensors` to `.gitignore` if not present.

6) Commands to run in this workspace now (I can run these for you on request)

```bash
# initialize repo if not already
git init
git checkout -b main
git add .
git commit -m "Initial commit"
# add remote (replace URL)
git remote add origin <YOUR_REMOTE_URL>
git push -u origin main
```

---

If you want, I can:
- run `git init` and make the initial commit here, and/or
- create the `.gitignore` file and push a `my-progress` branch if you provide a remote URL.
