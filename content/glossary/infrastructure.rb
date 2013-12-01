Glossary.define do
  term 'DNS' do
    subtitle 'Phonebooks for computers'
    body '
DNS stands for Domain Name System.  When we talk about websites, we
usually refer to them by their domain name, for example facebook.com,
twitter.com etc. Computers connected in a network, like the internet refer to
each other in terms of ip addresses, eg 173.252.110.27, 199.16.156.230.

DNS is the mechanism that converts human-friendly domain names into
machine-friendly ip addresses.

*[DNS]: Domain Name System
'
  end

  term 'HTTP' do
    subtitle 'The glue that binds the web'
    body '
HTTP is the protocol that is used to control the flow of web sessions. It
consists of two parts, the request and the response. The request is sent from
the client (your web browser) to the server (the place where this website is
hosted) and the response is returned back from the server to the client.

The easiest way to understand HTTP is through an example. When you requested
this page, you entered a web address or URL into your web browser. The browser
translates this in an HTTP request based on the component parts of the url.

For example, image we entered the url `http://en.wikipedia.org/wiki/HTTP`. The
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
'
  end

  term 'HTTP Request' do
    subtitle 'How to ask nicely'
    body 'When a client want something they ask for it'
  end

  term 'HTTP Response' do
    subtitle 'Getting something back'
    body 'The counter part to an HTTP Request'
  end
end
