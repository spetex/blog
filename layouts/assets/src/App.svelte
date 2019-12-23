<script>
	import { onMount } from 'svelte'
	let body = document.getElementById('contents').innerHTML

	onMount(() => {
		document.getElementById('contents').remove()
	})
</script>

{@html body}
