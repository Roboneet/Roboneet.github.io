text(i) = "---
layout: default
post_id: $i
---

{% assign post = site.data.posts[page.post_id] %}
{% include blog/summary.html post=post%}"


function generate(i)
	open("./blog/posts/$i.html", "w") do io
        println(io, text(i))
    end
end
