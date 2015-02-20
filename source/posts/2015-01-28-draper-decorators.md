---
title: Model Decorators with Draper
date: 2015-01-28 20:00 UCT
tags: ruby, gem, decorators
author: Josh W. Lewis
author_url: http://joshwlewis.com
---

This month, we had a great
[meetup](http://www.meetup.com/memphis-technology-user-groups/events/219491710/)
at [Coroutine's](//coroutine.com) new office space on Broad Ave.

[Jason Charnes](//jasoncharnes.com/) educated us on how to decorate your models
as an alternative to Rails' helper system. A tradidtional Rails view helper
might look like this:

```ruby
module ChurchesHelper
  def remove_church_from_name(name)
    name.split(" ").reject{ |e| e == "Church" }.join(" ")
  end
end
```

And you'd use it like this:

```html
  <h5><%= remove_church_from_name(c.name) %></h5>
```

This works, and helps keep your code DRY, though you usually end up
with long method names, and several concerns mixed into a module.

[Draper](https://github.com/drapergem/draper) is a RubyGem for adding decorating
methods to models. With Draper, you can do something like this:

```ruby
class ChurchDecorator < Draper::Decorator
  def name
    model.name.split(" ").reject{ |e| e == "Church" }.join(" ")
  end
end
```

Which you can use in your views like this:

```html
  <h5><%= @church.name %></h5>
```

It certainly feels more Object Oriented, and in my book, it's a little clearer.
Jason showed us how to get setup with Draper, and explained some of the
deeper semantics. Check out Jason's slides [here](http://slides.com/jasoncharnes/decorators-in-rails-using-draper).

We concluded the event with an inpromptu editor showdown. Various developers
showcased their editors, with varying degrees of success (I hope I didn't
turn anyone off on Vim). We saw Vim, Atom, and PHPStorm, and talked about others
like Sublime and TextMate.

Thanks to [Coroutine](//coroutine.com) for the meeting space and the awesome
Broadway Pizza.
