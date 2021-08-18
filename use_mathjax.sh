#!/bin/bash
echo Creating _layouts and _includes in the current directory...
mkdir -p _layouts
mkdir -p _includes
cp /usr/local/lib/ruby/gems/3.0.0/gems/minima-2.5.1/_layouts/default.html _layouts/
cp /usr/local/lib/ruby/gems/3.0.0/gems/minima-2.5.1/_layouts/post.html _layouts/
cp /usr/local/lib/ruby/gems/3.0.0/gems/minima-2.5.1/_layouts/page.html _layouts/
cp /usr/local/lib/ruby/gems/3.0.0/gems/minima-2.5.1/_includes/_mathjax_support.html _includes/
