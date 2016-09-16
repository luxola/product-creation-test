require 'test_helper'

class Api::V1::ProductCreationRoutingTest < ActionDispatch::IntegrationTest
  it 'routes to index' do
    assert_routing '/api/v1/products', controller: 'api/v1/products', action: 'index'
  end

  it 'routes to create' do
    assert_routing({method: :post, path: '/api/v1/products'}, controller: 'api/v1/products', action: 'create')
  end

  it 'routes to merchandiser_update' do
    assert_routing({method: :put, path: '/api/v1/products/1/merchandiser_update'}, controller: 'api/v1/products', action: 'merchandiser_update', id: '1')
  end

  it 'routes to admin_update' do
    assert_routing({method: :put, path: '/api/v1/products/1/admin_update'}, controller: 'api/v1/products', action: 'admin_update', id: '1')
  end
end
