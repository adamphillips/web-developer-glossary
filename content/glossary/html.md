HTML is one of the fundamental building blocks of the web. It is a way of
tagging content to include additional information that can be read by the
client (web browser). It works by *tagging* the content to include this
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

### Structuring pages

HTML pages have a defined structure in order to include all the information
needed for a successful web page. Before we start on the HTML, we need to say
which version of HTML we are using. We do this using something called a
**doctype**. There are a few different versions but the good news is that if
you are just starting out, the main one you need to know is the HTML5 doctype,
which is also the simplest. Just put the following as the first line of your
file.

~~~ html
<!DOCTYPE html>
~~~

After that, we have an **html** tag that encloses everything. So now our
document looks like this

~~~ html
<!DOCTYPE html>
<html>
</html>
~~~

We can broadly separate the information about the page into information that we
want to be seen and other meta-information that we want to tell the client
about such as which styles to use, any javascript files that need to be loaded
and so on. So HTML lets us have a **head** section for all the technical stuff
whilst the actual content of the page goes in the **body** section. So we can
add tags for each to our document.

~~~ html
<!DOCTYPE html>
<html>
  <head></head>
  <body></body>
</html>
~~~

#### The document head

We have an idea of what might go in our body section based on the first
examples we looked at so let\'s leave the body for the moment and look at the
head section.

The first useful thing we could tell the client is the title of our document.
Unsurpisingly, there is a **title** tag we can use.

~~~ html
<!DOCTYPE html>
<html>
  <head>
    <title>All about HTML</title>
  </head>
  <body></body>
</html>
~~~

We haven\'t yet look at how make our web pages look nice. We\'re not going to
here but the standard way to do this is to include stylesheets written using
[CSS](/glossary/terms/CSS). Assume that we\'ve already written some CSS that we want to include and
we\'ve saved in a file called *styles.css* that we have placed in a sub folder
of our project called *css*. We can include this stylesheets using the **link**
tag.

~~~ html
<!DOCTYPE html>
<html>
  <head>
    <title>All about HTML</title>
    <link rel="stylesheet" href="css/styles.css">
  </head>
  <body></body>
</html>
~~~

You may have noticed something strange about this tag - there is no matching
`</link>`. In actual fact, there are a number of special tags that do not need
to be closed. Usually this is due to the nature of the tag. In our case, we
don\'t have anything for the link tag to apply to. All the information we need
is already there.

Finally we can copy our original copy into the body section of the document.

~~~ html
<!DOCTYPE html>
<html>
  <head>
    <title>All about HTML</title>
    <link rel="stylesheet" href="css/styles.css">
  </head>
  <body>
    <h1>All about HTML.</h1>

    <p>
      <a href="http://en.wikipedia.org/wiki/HTML">HTML</a> is a wonderful little
      language that has enabled lots of great things.
    </p>
  </body>
</html>
~~~

And there we have it - a very simple HTML page. In order to expand on this, we
can add more styling information using [CSS](/glossary/terms/CSS) and
interactivity using JavaScript.

*[HTML]: Hypertext Markup Language

