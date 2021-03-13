Inertia Svelte Issue Repro
==========================

Running with a fresh install of `@inertiajs/inertia-svelte`, we hit the `Class
constructor Link cannot be invoked without 'new'` error described in
https://github.com/inertiajs/inertia/issues/394#issuecomment-796621968.

Using the fix in `https://github.com/inertiajs/inertia/pull/531`, I've seen both
of the following issues:

- `Cannot read property 'c' of undefined` on page load
- `Error: Function called outside component initialization`

I believe these are all variations of issues related to how webpack is building
the project, and how it interacts with the built package as well as the Svelte
dep / peerDep, but I'm unclear on how to resolve.

Reproducing the Issue
---------------------

The `Cannot read property 'c' of undefined` issue only seems to show up after
clicking on a link, e.g. clicking on one of the links on the "/users" page.
