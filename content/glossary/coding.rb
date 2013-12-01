Glossary.define do
  term 'MVC' do
    subtitle 'Model View Controller'
    body '
MVC is a common way of organising applications. It works by defining 3 types of files:

### Models

Models represent objects in the system. Often they are backed by a database.
For example, in Ruby on Rails, you will typically have a model to represent
each table in the database.

### Views

Views transform data into the appropriate format, for example HTML, XML, JSON
etc. Often these are written using a templating language such as HAML or ERB.

### Controllers

Each request is handled by a controller. Controllers have actions. One action
represents one particular type of HTML request to be handled. For example, an
e-commerce site might have a Products controller for handling product related
requests. This has an action for showing a product, for adding the product to a
shopping basket and so on.

In each action data is loaded, calculations performed and commands run as
needed in order to complete the job of that action. Finally the action will
issue some kind of response that corresponds to an HTTP response. This could be
rendering a view in order to return some HTML. It could also be redirecting to
another action or issuing an error message.

### The flow

It helps to think about what actually happens when the server receives an HTML
request.

Say we are writing a product page for an e-commerce site. We have decided that
the urls we want to use to show our products will take the form
`/products/1234` where the `1234` represents the id of the product in our
database.

#### Routing

So the first thing that happens when we receive a request for `/products/1234`
is that this needs to be mapped to a controller and action. This is called routing.

#### Controller

The controller action is run. This will load the product with id `1234` from
the database. It so happens that our product page includes reviews so they are
also loaded in the controller.

#### Rendering

Once all the necessary data is loaded, the view is rendered. It is given the
information loaded in the controller to use. This generates the appropriate
HTML for the product page which is then returned back to the client.
'
  end

  term 'Design Patterns' do
    subtitle 'Don\'t re-invent the wheel'
    body '
Design patterns are templated solutions to common software development
problems. Identifying patterns in code be useful in providing a guide. They are
also useful in expressing ideas and concepts to colleagues.
'
  end
end

