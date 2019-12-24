<script>
	import { onMount } from 'svelte'
	let article = document.getElementsByTagName('article')[0]
	let homepage = document.getElementsByTagName('main')[0]

	onMount(() => {
		if (article) article.remove()
		if (homepage) homepage.remove()
	})
</script>

{#if article}
	<article>
		<div>Article Header</div>
		{@html article.innerHTML}
	</article>
{/if}

{#if homepage}
	<main>
		{@html homepage.innerHTML}
	</main>
{/if}
