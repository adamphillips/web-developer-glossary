#Glossary.define_term Glossary::Term.new('HTTP')

Glossary.define do
  term 'HTTP' do
    subtitle 'The glue that binds the web'
    body 'HTTP is the protocol that is used to control the flow of web sessions. It consists of two parts, the request and the response.'
  end

  term 'HTTP Request' do
    subtitle 'How to ask nicely'
    body 'When a client want something they ask for it'
  end

  term 'HTTP Response' do
    subtitle 'Getting something back'
    body 'The counter part to an HTTP Request'
  end

  term 'DNS' do
    subtitle 'Phonebooks for computers'
    body 'Computers use IP Addresses'
  end

  term 'HTML' do
    subtitle 'Hypertext Markup Language'
    body 'Web pages are written using html'
  end
end
