# Team website

## Add new papers

1. Download the citation file in [BibTex](https://en.wikipedia.org/wiki/BibTeX) format
2. Upload the file into the [papers](papers) directory.
3. Commit the changes.

## Create a new project

1. Go to [content/project](content/project) directory.
2. Copy a existing project directory and rename it.
3. Edit the file `index.md`.

## Create a new author

1. Go to [content/authors](content/authors) directory.
2. Copy a existing author directory and rename it.
3. Edit the file `index.md`.

## Create a batch of authors

Sometimes, we need to create a batch of authors.

The script `tools/generate.sh` is used to generate a batch of authors.

```bash
Usage: tools/generate.sh <type> <input-file> <output-directory>
Where:
  type: 'collaborators', 'interns', or 'previous-interns'
  input-file: Path to the file containing the list of people
  output-directory: Path to the folder where the content will be generated
 Example: tools/generate.sh interns tools/interns.txt content/authors
```

## How to run on your computer?

1. Install the dependencies. [Documentation](https://wowchemy.com/docs/getting-started/install-hugo-extended/)
2. Run the server

```bash
hugo server
```
