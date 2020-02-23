var slug = document.getElementById("disqus_thread").dataset.slug;
var disqus_config = function () {
  this.page.url = 'https://spetex-minis.com/articles/' + slug;
  this.page.identifier = slug;
};
(function() {
  var d = document,
    s = d.createElement("script");
  s.src = "https://spetex-miniatures.disqus.com/embed.js";
  s.setAttribute("data-timestamp", +new Date());
  (d.head || d.body).appendChild(s);
})();
