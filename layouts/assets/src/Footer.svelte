<script>
</script>

<style>
  footer {
    margin-top: 2rem;
    width: 100%;
    background: var(--color-base-secondary-bg);
    color: var(--color-base-secondary-fg);
    display: flex;
    flex-flow: column;
    align-items: center;
    padding: 2.5rem 0;
    border-top: 2px solid var(--color-black);
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
    flex-flow: column;
    align-items: center;
    padding-left: 1.5rem;
    padding-right: 1.5rem;
  }
  section h1 {
    margin-top: 0;
  }
  section ul {
    margin-top: 0.8rem;
  }
  nav {
    display: flex;
    flex-flow: column;
    justify-content: space-between;
  }
  ul {
    display: flex;
    justify-content: space-around;
    margin-bottom: 1.5rem;
  }
  ul:last-child {
    margin-bottom: 0;
  }
  ul:first-child {
    margin-top: 2.2rem;
  }
  ul > li {
    margin-right: 1rem;
  }
  ul > li:last-child {
    margin-right: 0;
  }
  h1 {
    font-size: 2.441rem;
    font-weight: 400;
    padding-left: 0;
    text-align: center;
  }
  p {
    text-align: center;
  }
  a {
    color: var(--color-base-primary-bg);
    text-decoration: none;
  }
  a:hover {
    text-decoration: underline;
  }
  .spetex {
    width: 5rem;
    border-radius: 100%;
    margin-right: 1.5rem;
    margin-top: 0;
    margin-bottom: 0;
    border: 2px solid var(--color-black);
  }
  i {
    font-size: 2rem;
  }
  aside > div {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding-left: 1.5rem;
    padding-right: 1.5rem;
  }
  @media screen and (min-width: 667px) {
      section {
        flex-direction: row;
        align-items: stretch;
      }
  }

</style>

<footer>
  <section>
    <aside>
      <div>
        <img class="spetex" alt="spetex" src="https://static.spetex.cz/random/spetex.jpg">
        <h1><a href="https://spetex-minis.com">spetex miniatures</a></h1>
      </div>
      <p>
        <q>
          Blogging about my miniature painting journey.
        </q>
      </p>
    </aside>
    <nav>
      <ul>
        <li><a href="/">Homepage</a> </li>
        <li><a href="/articles">Articles</a></li>
        <li><a href="/about">About</a></li>
      </ul>
      <ul class="social">
        <li>
          <a href="mailto:spetex@icloud.com" aria-label="Send me an email."
            ><i class="fas fa-envelope-square"></i
          ></a>
        </li>
        <li>
          <a
            href="https://spetex-minis.com"
            target="_blank"
            rel="noopener"
            aria-label="Visit my blog."
            ><i class="fas fa-rss-square"></i
          ></a>
        </li>
        <li>
          <a
            href="https://www.instagram.com/spetex.miniatures/"
            target="_blank"
            rel="noreferrer"
            aria-label="Visit my instagram."
            ><i class="fab fa-instagram"></i
          ></a>
        </li>
        <li>
          <a
            href="https://www.facebook.com/spetex.minatures/"
            target="_blank"
            rel="noreferrer"
            aria-label="Visit my Facebook Page."
            ><i class="fab fa-facebook-square"></i
          ></a>
        </li>
        <li>
          <a
            href="https://twitter.com/spetex_minis"
            target="_blank"
            rel="noreferrer"
            aria-label="Visit my twitter account."
            ><i class="fab fa-twitter-square"></i
          ></a>
        </li>
        <li>
          <a
            href="https://www.youtube.com/channel/UCh6uIKKKDQw-cHyqpnod6xw"
            target="_blank"
            rel="noreferrer"
            aria-label="Visit my YouTube Channel."
            ><i class="fab fa-youtube-square"></i
          ></a>
        </li>
      </ul>
    </nav>
  </section>
</footer>
