<script>
  import { inertia } from "@inertiajs/inertia-svelte";
  import Layout from "./layout.svelte";

  export let users;
</script>

<Layout>
  <h1>Users</h1>

  <ul>
    {#each users as user (user.id)}
      <li>
        <a
          on:click={() => console.log('user')}
          use:inertia
          href={`/users/${user.id}`}>
          {user.name}
        </a>
      </li>
    {/each}
  </ul>
</Layout>
