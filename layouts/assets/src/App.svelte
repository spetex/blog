<script>
	import { onMount } from 'svelte'
	import Header from './Header.svelte'
	import Footer from './Footer.svelte'

	let article = document.getElementsByTagName('article')[0]
	let homepage = document.getElementsByTagName('main')[0]

	onMount(() => {
		if (article) article.remove()
		if (homepage) homepage.remove()
	})
</script>

{#if article}
	<article>
		{@html article.innerHTML}
	</article>
	<Footer/>
{/if}

{#if homepage}
	<Header/>
	<main>
		{@html homepage.innerHTML}
	</main>
	<Footer/>
{/if}
