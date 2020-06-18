require 'rails_helper'

RSpec.describe "Cats", type: :request do
  it 'gets a list of cats' do
    Cat.create(name: 'Felix', age: 2, enjoys: 'Walks in the park')

    get '/cats'

    json = JSON.parse(response.body)
    expect(response).to have_http_status(:ok)
    expect(response).to have_http_status(200)

    expect(json.length).to eq 1


  end

  it "creates a cat" do
    # The params we are going to send with the request
    cat_params = {
      cat: {
        name: 'Buster',
        age: 4,
        enjoys: 'Meow Mix, and plenty of sunshine.'
      }
    }

    # Send the request to the server
    post '/cats', params: cat_params

    # Assure that we get a success back
    expect(response).to have_http_status(:ok)
    expect(response).to have_http_status(200)

    # Look up the cat we expect to be created in the Database
    new_cat = Cat.first

    # Assure that the created cat has the correct attributes
    expect(new_cat.name).to eq 'Buster'
    # expect(new_cat.age).to eq 4
    # expect(new_cat.enjoys).to eq 'Meow Mix, and plenty of sunshine.' 

  end

  it "doesn't create a cat without a name" do
    cat_params = {
      cat: {
        age: 2,
        enjoys: 'Walks in the park'
      }
    }
    # Send the request to the  server
    post '/cats', params: cat_params
    # expect an error if the cat_params does not have a name
    expect(response.status).to eq 422
    # Convert the JSON response into a Ruby Hash
    json = JSON.parse(response.body)
    # Errors are returned as an array because there could be more than one, if there are more than one validation failures on an attribute.
    expect(json['name']).to include "can't be blank"
  end
  it "doesn't create a cat without a name" do
    cat_params = {
      cat: {
        name: 'Felix',
        enjoys: 'Walks in the park'
      }
    }
    # Send the request to the  server
    post '/cats', params: cat_params
    # expect an error if the cat_params does not have a name
    expect(response.status).to eq 422
    # Convert the JSON response into a Ruby Hash
    json = JSON.parse(response.body)
    # Errors are returned as an array because there could be more than one, if there are more than one validation failures on an attribute.
    expect(json['age']).to include "can't be blank"
  end

  it "doesn't create a cat without a name" do
    cat_params = {
      cat: {
        name: 'Felix',
        age: 2
        
      }
    }
    # Send the request to the  server
    post '/cats', params: cat_params
    # expect an error if the cat_params does not have a name
    expect(response.status).to eq 422
    # Convert the JSON response into a Ruby Hash
    json = JSON.parse(response.body)
    # Errors are returned as an array because there could be more than one, if there are more than one validation failures on an attribute.
    expect(json['enjoys']).to include "can't be blank"
  end

  it "doesn't create a cat without enjoys at least 10 chars long" do
    cat_params = {
      cat: {
        name: 'Felix',
        age: 2,
        enjoys: 'hi'
        
      }
    }
    # Send the request to the  server
    post '/cats', params: cat_params
    expect(response.status).to eq 422
    json = JSON.parse(response.body)
    expect(json['enjoys']).to include "is too short (minimum is 10 characters)"
  end


end
