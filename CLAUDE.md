# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this repo is

A Jekyll static site publishing the specifications for a university programming course ("Programação", 2026-27 edition): "Sistema de Aquisição e Monitorização de Sensores". Content is authored in Portuguese. There is no application code — the repository *is* the course's spec/content site, published via GitHub Pages.

## Commands

Install dependencies and serve locally:

```
bundle install
bundle exec jekyll serve
```

Build the static site (output goes to `_site/`, gitignored):

```
bundle exec jekyll build
```

There are no tests, linters, or build steps beyond the Jekyll build. Deployment is automatic: `.github/workflows/pages.yml` builds with Jekyll and deploys to GitHub Pages on every push to `main`.

## Architecture / content structure

- Theme is `just-the-docs`, configured in `_config.yml`.
- Two custom Jekyll collections are defined in `_config.yml`, each with its own permalink and both defaulting to `layout: page`:
  - `_sprints/` → published at `/sprints/:name/`. Each file is one sprint's spec (requirements, context, example input/output) for that stage of the semester's project.
  - `_noticias/` → published at `/noticias/:name/`. Each file is a "comunicado" (announcement/requirement update) from the fictional client ("AeroSense").
- `index.md` is the homepage; it auto-lists all `site.noticias` and `site.sprints` via Liquid loops. **New sprint or noticia files are picked up automatically here — no need to edit `index.md` when adding one.**
- `roadmap.md` lists the high-level stages ("Etapas") the project will progress through across the semester; sprints are the concrete, detailed realization of these stages as they are published.
- Naming convention: sprint files are `sprint-NN.md` (e.g. `sprint-01.md`), noticia files are `noticia-NN.md`.
- Each content file's front matter carries just a `title:`; layout is applied globally via the `defaults` block in `_config.yml`, not per-file.

## Content model notes

- Sprints build on each other and describe an evolving sensor-acquisition system (reading a sensor, calibrating/converting values, then progressively adding continuous acquisition, multiple sensors, data modeling, and persistence — see `roadmap.md`'s Etapas for the full arc).
- Noticias represent client communications and are the mechanism by which new/changed requirements are introduced mid-semester — treat them as authoritative updates layered on top of the sprints, not independent specs.
