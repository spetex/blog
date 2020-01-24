<script>
</script>

<style>
  footer {
    width: 100%;
    background: var(--color-base-secondary-bg);
    color: var(--color-base-secondary-fg);
    display: flex;
    flex-flow: column;
    align-items: center;
    padding-bottom: 2rem;
  }
  ul {
    list-style: none;
  }
  section {
    display: flex;
    justify-content: space-between;
    width: 100%;
    max-width: 855px;
    flex-grow: 1;
    margin-top: 1.5rem;
  }
  section h1 {
    margin-top: 0;
  }
  section ul {
    margin-top: 0.8rem;
  }
  nav {
    display: flex;
  }
  h1 {
    font-weight: 400;
  }
  a {
    color: var(--color-base-primary-bg);
    text-decoration: none;
  }
  .spetex {
    width: 5rem;
    border-radius: 100%
  }
  aside {
    display: flex;
    align-items: center;
  }
  @media screen and (max-width: 610px) {
      section {
        flex-flow: column;
        align-items: center;
      }
  }

</style>

<footer>
  <section>
    <aside>
      <img class="spetex" alt="spetex" src="https://static.spetex.cz/random/spetex.jpg">
      <div>
        <h1><a href="https://spetex-minis.com">spetex miniatures</a></h1>
        <p>
          <q>
            Blogging about my miniature painting journey.
          </q>
        </p>
      </div>
    </aside>
    <nav>
      <ul>
        <li><a href="/">Homepage</a> </li>
        <li><a href="/articles">Articles</a></li>
        <li><a href="/about">About me</a></li>
      </ul>
      <ul>
        <li><a href="https://www.instagram.com/spetex.miniatures/">Instagram</a></li>
      </ul>
    </nav>
  </section>
</footer>
