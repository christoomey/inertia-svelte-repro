<script>
  import { inertia } from "@inertiajs/inertia-svelte";
  import Layout from "./layout.svelte";

  export let projects;
</script>

<Layout>
  <h1>Projects</h1>

  <ul>
    {#each projects as project (project.id)}
      <li>
        <a
          on:click={() => console.log('user')}
          use:inertia
          href={`/projects/${project.id}`}>
          {project.name}
        </a>
      </li>
    {/each}
  </ul>
</Layout>
