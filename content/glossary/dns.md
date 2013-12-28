DNS stands for Domain Name System.  When we talk about websites, we
usually refer to them by their domain name, for example facebook.com,
twitter.com etc. Computers connected in a network, like the internet refer to
each other in terms of ip addresses, eg 173.252.110.27, 199.16.156.230.

DNS is the mechanism that converts human-friendly domain names into
machine-friendly ip addresses.

### Nameservers

Each domain name has an associated set of nameservers. These are the servers
that have been assigned the job of managing details for the given domain. For
example, facebook.com has 2 nameservers, a.ns.facebook.com and
b.ns.facebook.com. This means that when a computer wants to lookup an IP
address for a domain name that ends in facebook.com, it will ask one of these 2
servers. Each domain will usually have at least 2 nameservers. Queries are
shared between the two and if one becomes unavailable for any reason, the other
one can temporarily handle all the queries.

### Domain records

Domain records are all the different bits of information kept about a domain.
The primary type of domain record is an *A* record. This maps the domain to an IP
address. For example, the A record for facebook.com is 173.252.110.27.

What this means is that when I, as a human, tell my computer to do something
using facebook.com, my computer knows that I am talking about the computer it
knows as 173.252.110.27.

Records can also be created for subdomains. One of the most commonly used
subdomains is *www*. If we wanted www.facebook.com to be available on the same
IP address one way of doing this would be to add an *A* record to the
facebook.com nameservers for www.facebook.com and point it to the same IP
address.

#### Types of domain record

There are many other types of domain record. For example, *CNAME* records allow
us to create aliases from one domain to another. In the example above, we
created a separate *A* record for www.facebook.com. The obvious problem with
this is that if we ever need to move the server for facebook.com to a different
IP address, we now have 2 domain records to update. A better way would to
create a *CNAME* record for www.facebook.com and point that to facebook.com.

There is a [list of domain record types available on
wikipedia](http://en.wikipedia.org/wiki/List_of_DNS_record_types).


*[DNS]: Domain Name System

