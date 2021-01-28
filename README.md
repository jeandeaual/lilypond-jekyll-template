# Jekyll Template for LilyPond Projects

![build](https://github.com/jeandeaual/lilypond-jekyll-template/workflows/build/badge.svg)
![test](https://github.com/jeandeaual/lilypond-jekyll-template/workflows/test/badge.svg)
![lint](https://github.com/jeandeaual/lilypond-jekyll-template/workflows/lint/badge.svg)

This project is meant to be used by [LilyPond](https://lilypond.org/) projects using GitHub Actions, in order to build a GitHub Pages website containing the resulting sheet music and MIDI files. \
See an example [here](https://jeandeaual.github.io/lilypond-allofme).

## Prerequisites

* [Ruby 2.7](https://www.ruby-lang.org/en/downloads/) needs to be installed
* Install the Ruby dependencies (the first line is optional):
    ```text
    bundle config set without 'development'
    bundle install --jobs 4 --retry 3
    ```

### Running Locally

```text
bundle exec jekyll serve --livereload
```

### Building the Site

```text
bundle exec jekyll build
```
