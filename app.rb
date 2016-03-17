require 'Bundler' # require bundler
Bundler.require # loads all the gems

get '/' do
  phamason product = {
    :name => 'New keyboard',
    :quantity => 17
    :description => 'Generic Keyboard',
    :price => '5.99'
  }.to_json # will turn object into string // servers communicate with strings

  not_found do {
      :message => 'The resource you requested could not be found'
    }.to_json
  end
end

