<script>
  import { inertia } from "@inertiajs/inertia-svelte";
</script>

<style>
  div {
    max-width: 760px;
    margin: 2rem auto;
  }

  nav > a + a {
    margin-left: 1rem;
  }
</style>

<div>
  <header>
    <nav>
      <a on:click={() => console.log('Users')} use:inertia href="/users">
        Users
      </a>

      <a on:click={() => console.log('Projects')} use:inertia href="/projects">
        Projects
      </a>
    </nav>
  </header>

  <slot />
</div>
