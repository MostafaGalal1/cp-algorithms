#!/bin/bash

committers_plugin="plugins/mkdocs-git-committers-plugin-2"
if [[ ! -f "$committers_plugin/setup.py" && ! -f "$committers_plugin/pyproject.toml" ]]; then
    committers_plugin="git+https://github.com/adamant-pwn/mkdocs-git-committers-plugin-2.git"
fi

pip install \
    "mkdocs-material>=9.0.2" \
    mkdocs-toggle-sidebar-plugin \
    mkdocs-macros-plugin \
    mkdocs-literate-nav \
    mkdocs-git-authors-plugin \
    mkdocs-git-revision-date-localized-plugin \
    mkdocs-simple-hooks \
    mkdocs-rss-plugin \
    "$committers_plugin"
