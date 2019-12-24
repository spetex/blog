title: 'Hello World!'
published: '2019-12-07'
#-----#

# {{ title }}

This is "just" a ~~test~~ **article!** published on _{{ published }}_.^2

Go ==back== to https://spetex-minis.com [^1]

[^1]: Some footnote.

#This is not a heading

Lorem ipsum dolor amet shabby chic ramps lyft raclette gochujang master cleanse bespoke jean shorts lumbersexual stumptown listicle edison bulb. Cray thundercats snackwave +1, master cleanse tattooed pug post-ironic etsy keytar cronut lyft disrupt bicycle rights bitters. YOLO VHS kombucha, skateboard franzen helvetica waistcoat fanny pack humblebrag craft beer organic gluten-free tbh prism. Vinyl poke pinterest hexagon. Hoodie cronut chicharrones artisan kale chips.

Activated charcoal squid 8-bit raclette DIY. Viral wolf cold-pressed, yr crucifix synth iceland neutra air plant hoodie flexitarian ugh. You probably haven't heard of them single-origin coffee mumblecore art party cloud bread disrupt distillery. Unicorn fashion axe fixie shoreditch. Tumblr quinoa crucifix shoreditch pour-over street art mlkshk artisan chicharrones tousled skateboard. Austin affogato 3 wolf moon ennui, cloud bread keytar dreamcatcher.

Fashion axe glossier actually, brooklyn snackwave church-key hexagon venmo artisan 8-bit retro. Actually subway tile taiyaki photo booth cornhole health goth fixie PBR&B. Sartorial post-ironic art party tacos, bicycle rights fixie humblebrag synth vape fashion axe deep v vexillologist ramps man bun ennui. Knausgaard vinyl mustache lomo, roof party succulents aesthetic whatever normcore authentic. Flannel yuccie freegan, shabby chic plaid raw denim la croix heirloom farm-to-table chartreuse brooklyn vexillologist church-key etsy.

<picture>
  <source
    srcset="
      https://static.spetex.cz/photos/webp1000px/me-painter.webp 1000w,
      https://static.spetex.cz/photos/webp500px/me-painter.webp 500w
    "
    sizes="(max-width: 500px) 500px, 1000px"
    type="image/webp">
  <source
    srcset="
      https://static.spetex.cz/photos/jpeg1000px/me-painter.jpg 1000w,
      https://static.spetex.cz/photos/jpeg500px/me-painter.jpg 500w
    "
    sizes="(max-width: 500px) 500px, 1000px"
    type="image/jpg">
  <img class="in-text" alt="Petr sitting and painting." src="https://static.spetex.cz/photos/jpeg1000px/me-painter.jpg">
</picture>

## Citation

> I said something interesting and wise!

Activated charcoal squid 8-bit raclette DIY. Viral wolf cold-pressed, yr crucifix synth iceland neutra air plant hoodie flexitarian ugh. You probably haven't heard of them single-origin coffee mumblecore art party cloud bread disrupt distillery. Unicorn fashion axe fixie shoreditch. Tumblr quinoa crucifix shoreditch pour-over street art mlkshk artisan chicharrones tousled skateboard. Austin affogato 3 wolf moon ennui, cloud bread keytar dreamcatcher.

## Some list

* One
  1. Test
  1. Numbered
  1. List
* Two
* Three

## Other list

1. test
1. Test
  * Inside
      - Test
  * Numbered
  * List
1. Some


## Some code example

```
def render_article(slug)
  config, article_markdown = File.read("articles/#{slug}.md").split('===')
  vars = {
    'svelte' => true
  } + read_vars(config)
  body = get_template('layouts/article.html')
         .render 'body' => get_article_body(article_markdown, vars)
  final_render(body, vars)
end
```

## Some html right away

<div class="FOO">FOO DIV</div>


## Some Table

| Tables   |      Are      |  Cool |
|----------|:-------------:|------:|
| col 1 is |  left-aligned | $1600 |
| col 2 is |    centered   |   $12 |
| col 3 is | right-aligned |    $1 |

Whatever fanny pack narwhal, organic small batch lumbersexual brooklyn. Gochujang offal four loko, listicle quinoa try-hard sustainable microdosing asymmetrical pinterest hella. Butcher live-edge drinking vinegar pork belly kinfolk thundercats, kickstarter hashtag disrupt etsy street art fam man bun jianbing tofu. Pop-up fam vegan taxidermy. Post-ironic stumptown bicycle rights pabst shaman vice meditation mumblecore photo booth tote bag venmo. YOLO authentic crucifix dreamcatcher post-ironic bitters disrupt helvetica VHS ramps direct trade. Fingerstache live-edge stumptown pork belly roof party.

### Third level heading

#### Fourth level heading

##### Fifth level heading

Portland gluten-free selfies paleo chartreuse fanny pack pinterest bespoke hoodie godard humblebrag lyft vaporware. Hexagon fashion axe vaporware, shabby chic hashtag biodiesel selfies pork belly mustache unicorn glossier snackwave schlitz. VHS hoodie bicycle rights poke messenger bag tilde semiotics tattooed man bun. Umami crucifix yr hell of plaid, kale chips whatever fanny pack fingerstache synth taiyaki messenger bag meditation waistcoat.
