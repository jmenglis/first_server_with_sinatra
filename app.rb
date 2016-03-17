require 'Bundler' # require bundler
Bundler.require # loads all the gems

get '/' do
  phamazon_product = {
    :name => 'New keyboard',
    :quantity => 17,
    :description => 'Generic Keyboard',
    :price => '5.99'
  }.to_json # will turn object into string // servers communicate with strings
end

not_found do {
      :message => 'The resource you requested could not be found'
    }.to_json
end

