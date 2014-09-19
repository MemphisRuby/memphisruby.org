---
title: Generating Word Documents with Caracal
date: 2014-08-19 20:00 UTC
tags: ruby, gem
author: Josh W. Lewis
author_url: http://joshwlewis.com
---

This month, we had another fun an informative
[meetup](http://www.meetup.com/memphis-technology-user-groups/events/199125962/)
at
[Coroutine](//coroutine.com). Just one presentation this time, but a good one:

#### Generating Word Documents with Caracal

[John Dugan](//twitter.com/jpdugan) gave us a great walkthrough of
[Caracal](//github.com/trade-informatics/caracal). It's an open source library
for generating Microsoft Word documents with an HTML-like Ruby API. Caracal 
lets you build word documents like this:

```ruby
Caracal::Document.save 'example.docx' do |docx|
  # page 1
  docx.h1 'Some Title'
  docx.hr
  docx.br
  docx.h2 'Some Section'
  docx.p  'Lorem ipsum dolor....'
  docx.br
  docx.table @my_data, border_size: 4 do
    cell_style rows[0], background: 'cccccc', bold: true
  end

  # page 2
  docx.page
  docx.p  'Lorem ipsum dolor....'
  docx.ul do
    li 'Item 1'
    li 'Item 2'
  end
  docx.br
  docx.img image_url('graph.png'), width: 500, height: 300
end
```

The review demonstrated the library's functionality but also a good portion of
the libraries internal architecture.

The overall response was very positive. Caracal appears to be a well thought
out library. It has a great API, and it's internals abide by the principles
of SOLID.

Thanks to all who came, and to [Coroutine](//coroutine.com/) for the food
and meeting space.
