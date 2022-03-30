Jane Go Guidelines
==================

Hello!

There are many, many, many guidelines on what "good" or "idiomatic" Go code
looks like out there.

This is Jane's!

# Who's This For?

## Jane!

The _intended_ audience of this repository is developers writing Go code at Jane. 

If you work at Jane, the documentation in this repository is definitely for
you. Here, you will find a comprehensive guideline on what your leads and fellow
developers will be looking for when they review your code. It's highly
recommended that you take a day to read through the main documentation, and
maybe peruse some examples or linked articles.

## Everybody Else?

The secondary audience is anyone who writes Go code. This set of guidelines
tries to collect best practices and community wisdom into a single living
document. There's stuff we're going to miss or ignore because it's not pertinent
to how we write code at Jane. That's okay!

We might also make decisions you heartily disagree with; maybe you don't like
how we use `context.Context`, or something else gets stuck in your craw. That's
totally fine -- so long as you don't try to make it our problem. 

This is not meant to be the best guideline on how to write perfect or
"idiomatic" Go code. Rather, this guide cribs from a lot of sources to assemble
a set of guidelines and best practices on how to write clean, clear,
maintainable Go code.

If you like the style, feel free to use it yourself! Fork the repo!

If you don't like it, that's fine. Maybe keep that to yourself though; we're
busy over here writing Go code.

# Changes

As the _intended_ audience is `developers at Jane writing Go`, that's who we'll
be listening to for feedback.

That means we'll only be accepting PRs from folks who work at Jane. 

# Use & Updates

The output of this repository is an HTML page, hosted by GitHub pages.

The source for that HTML are a set of [Org](https://orgmode.org/) files that
describe specific sections.

Additionally, the repo may contain example code that can be used to explain
certain concepts in the clearest way possible.

## Quick Org Primer 

Org is quite similar to Markdown, so with a few tips you should be able to get
up and running quite quickly.

### Headings 

Headings in Org use `*` rather than `#` like Markdown. If your editor has an Org
mode plugin it should also support folding sections under a heading.

### Links 

Links only use square brackets, and the link comes first.

So rather than:

```
[link text](http://example.com) -> <a href="http://example.com">link text</a>
```

It looks like this:

```
[[http://example.com][link text]] -> <a href="http://example.com">link text</a>
```

### Source Blocks 

Org actually gets us multiple 'blocks'; it actually gives us whatever blocks we
want -- some of those block types just have special things attached.

For example, a source block in Markdown uses three backticks before and after:

```
\`\`\` go
// some source code 
func doer(ctx context.Context, id int) error {...
\`\`\`
```

In Org, we use this:

```
#+BEGIN_SRC go
// some source code
func doer(ctx context.Context, id int) error {...
#+END_SRC
```

But we also get note blocks:

```
#+BEGIN_NOTE 
I'm a note!
#+END_NOTE
```

As well as a few others:

```
#+BEGIN_QUOTE
This is what a quote looks like
#+END_QUOTE

#+BEGIN_WARNING
This is what a warning looks like
#+END_WARNING

#+BEGIN_TIP
This is what a tip looks like
#+END_TIP
```

Notes, quotes, warnings, and tips just become div's with a class based on what
comes after the underscore. So `#+BEGIN_QUOTE` turns into `<div class="QUOTE">`.

Meaning that adding a new type of block just means using a different name after
`#+BEGIN_` and adding some CSS rules for the new block type.

Neat!
