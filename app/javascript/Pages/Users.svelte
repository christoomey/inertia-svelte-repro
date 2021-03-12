<script>
  import { inertia } from "@inertiajs/inertia-svelte";

  export let users;
</script>

<h1>Users</h1>
<ul>
  {#each users as user (user.id)}
    <li>
      <a use:inertia href={`/users/${user.id}`}>{user.name}</a>
    </li>
  {/each}
</ul>
