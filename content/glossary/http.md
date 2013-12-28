HTTP is the protocol that is used to control the flow of web sessions. It
consists of two parts, the request and the response. The request is sent from
the client (your web browser) to the server (the place where this website is
hosted) and the response is returned back from the server to the client.

The easiest way to understand HTTP is through an example. When you requested
this page, you entered a web address or URL into your web browser. The browser
translates this in an HTTP request based on the component parts of the url.

For example, imagine we entered the url `http://en.wikipedia.org/wiki/HTTP`. The
browser interprets this as follows:

| http://          | This means that we want the browser to make an HTTP request.
| en.wikipedia.org | The domain name of the server to send the request to.
| /wiki/HTTP       | The path of the file that we want

The server process this request and replies with an HTTP response. This tells
your computer whether the request was processed successfully and if so,
includes the content produced as a result of the request, in this case the HTML
page about HTTP.

*[HTTP]: HyperText Transfer Protocol
*[URL]: Uniform Resource Locater

