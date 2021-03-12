import { App } from '@inertiajs/inertia-svelte'

document.addEventListener('DOMContentLoaded', () => {
  const el = document.getElementById('app')
  const initialPage = JSON.parse(el.dataset.page)

  window.app = new App({
    target: el,
    props: {
      initialPage,
      resolveComponent: (name) => require(`../Pages/${name}.svelte`),
    },
  })
})
