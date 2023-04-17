# Team website

## Create a new project

1. Go to [content/project](content/project) directory.
2. Copy a existing project directory and rename it.
3. Edit the file `index.md`.

## Create a new author

1. Go to [content/authors](content/authors) directory.
2. Copy a existing author directory and rename it.
3. Edit the file `index.md`.

## Create a batch of authors

There three scripts to generate a batch of authors: `generate-collaborator.sh`, `generate-interns.sh` and `generate-previous-interns.sh` and each of them has a corresponding template file: `collaborators.txt`, `interns.txt` and `previous-interns.txt`.

To create a batch of authors, you need to edit the corresponding template file and then run the corresponding script.

```bash
$ bash tools/generate-collaborators.sh
```

## How to run on your computer?

1. Install the dependencies. [Documentation](https://wowchemy.com/docs/getting-started/install-hugo-extended/)
2. Run the server

```bash
hugo server
```
