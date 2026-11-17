#!/bin/bash
npm run build
git fetch origin gh-pages
git worktree add --detach /tmp/site-gh-pages FETCH_HEAD
git -C /tmp/site-gh-pages rm -r -- .
cp -a dist/. /tmp/site-gh-pages/
git -C /tmp/site-gh-pages add -f -A
git -C /tmp/site-gh-pages diff --cached --quiet || git -C /tmp/site-gh-pages commit -m "Deploy site"
git -C /tmp/site-gh-pages push origin HEAD:gh-pages
git worktree remove /tmp/site-gh-pages