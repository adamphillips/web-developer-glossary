Glossary.define do
  term 'JavaScript' do
    subtitle 'Coding in the client'
    body '
JavaScript is an interpreted language.
'
  end

  term 'HTML' do
    subtitle ''
    body '
HTML is one of the fundamental building blocks of the web. It is a way of
tagging content to include additional information that can be read by the
client (web browser). It works by **tagging** the content to include this
additional data.

Consider the following piece of content describing HTML.

~~~ html
All about HTML.

HTML is a wonderful little language that has enabled lots of great things.
~~~

When a human reads this, they can understand that the first line of the content
is a title whilst the second is the actual description. Since a computer has no
understanding of the text, there is no way for it to know this. By tagging the
parts of the page, we can tell it what the different sections mean.

We do this using HTML tags. Typically, these wrap-around the text that we are
looking to describe.

~~~ html
<h1>All about HTML.</h1>

<p>HTML is a wonderful little language that has enabled lots of great things.</p>
~~~

The **h1** tag denotes a top level heading. The **p** tag denotes a paragraph
of text. As you can see in the above examples, there are two parts to each tag
- an opening tag `<p>` and a closing tag `</p>`. Tags can be nested inside each
other. They can also have attributes containing additional data. For example,
assume we want the first word in our paragrapht to be a link to the Wikipedia
page for HTML. The tag for linking to other pages is called an anchor tag -
`<a>` and has the `href` attribute which specifies a url to link to.

~~~ html
<h1>All about HTML.</h1>

<p>
  <a href="http://en.wikipedia.org/wiki/HTML">HTML</a> is a wonderful little
  language that has enabled lots of great things.
</p>
~~~

*[HTML]: Hypertext Markup Language
'
  end
end

