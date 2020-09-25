# jekyll-highlight-param

[![Gem Version](https://badge.fury.io/rb/jekyll-highlight-param.svg)](https://badge.fury.io/rb/jekyll-highlight-param)

A Liquid tag plugin for Jekyll that replaces the built in `{% highlight %}` tag, and allows passing the language to highlight in as a parameter.

_An issue for making this change a part of the mainline Jekyll Highlight tag can be found [here](https://github.com/jekyll/jekyll/issues/8290)._ 

## Installation

Add this line to your application's Gemfile:

```ruby
group :jekyll_plugins do
    gem 'jekyll-highlight-param', :github => 'UriShX/jekyll-highlight-param'
end
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jekyll-highlight-param

Then add the following to your site's `_config.yml`:

```yaml
plugins:
  - jekyll-highlight-param
```

💡 If you are using a Jekyll version less than 3.5.0, use the `gems` key instead of `plugins`.

## Usage

### Basic usage
Basic usage is the same as Jekyll's `{% highlight %}` tag, i.e.:

```liquid
{% highlight_param ruby %}
def foo
  puts 'foo'
end
{% endhighlight_param %}
```

### Using variables names for the language

The name of the language you for the code to be highlighted can be specified as a variable instead of specifying the language directly in the template. For example, suppose you defined a variable in your page's front matter like this:

```yaml
---
title: My page
my_code: footer_company_a.html
my_lang: liquid
---
```

You could then reference that variable in your highlight:

```liquid
{% if page.my_variable %}
  {% capture my_code %}
    {% include {{ page.code }} %}
  {% endcapture %}
  {% highlight_param {{ page.my_lang }} %}
    {{ my_code | strip }}
  {% endhighlight_param %}
{% endif %}
```

In this example, the capture will store the include file `_includes/footer_company_a.html`, then the highlight will would match the display to match the syntax of `liquid`.

_Please note: Since v0.0.2 passing parameteric variables to the `highlight_param` tag is done in a similar way to the syntax for passing parameters to other tags, such as `include`. This is a breaking change from v0.0.1._

## Contributing

1. Fork it.
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
