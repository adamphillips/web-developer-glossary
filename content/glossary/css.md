CSS is the standard way of styling [HTML](/glossary/terms/HTML) pages. We do
this by defining style attributes for the different HTML elements in the page.

Assume we have the following HTML page

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

By default, our page will have black text on a white background. What if we
wanted to switch it around so that we have white text on a black background.
In our *css/styles.css* we can add the following

~~~ css
body {
  background-color: black;
  color: white;
}
~~~

This says that for everything inside the body tag (which is basically
everything visible) the background color should be black and the foreground
colour should be white. Now say that we want to make the heading red. We can
add more styles for the *h1* tag.

~~~ css
body {
  background-color: black;
  color: white;
}

h1 {
  color: red;
}
~~~

*[CSS]: Cascading Style Sheets

