# coding: utf-8
# frozen_string_literal: true
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name                     = "jekyll-highlight-param"
  spec.version                  = "0.0.2"
  spec.date                     = "2020-09-23"
  spec.authors                  = ["Uri Shani"]
  spec.email                    = ["usdogi@gmail.com"]  
  spec.summary                  = "Jekyll syntax highlighter that accepts variable for the language"
  spec.description              = "A Liquid tag plugin for Jekyll that replaces the built in highlight tag, and allows passing the language to highlight in as a liquid variable."
  spec.homepage                 = "https://github.com/urishx/jekyll-highlight-param"
  spec.license                  = "MIT"
  spec.required_ruby_version    = ">= 2.0.0"

  spec.files                    = `git ls-files -z`.split("\x0")  
  spec.require_paths            = ["lib"]
  spec.files.reject! { |fn| fn.include? "gem" }

  spec.add_development_dependency "jekyll", ">= 3.6.3"
  spec.add_development_dependency "bundler", "~> 1.6"  
end