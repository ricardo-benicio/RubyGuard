# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  it 'create a valid user' do
    user = User.new(email: 'teste@teste.com',
                    password: '12345678')
    expect(user).to be_valid
  end

  it 'create an invalid user due to empty email' do
    user = User.new(email: ' ',
                    password: '12345678')
    expect(user).to_not be_valid
    expect(user.errors[:email][0]).to be == "can't be blank"
  end
end
