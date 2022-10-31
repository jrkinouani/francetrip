require 'rails_helper'

RSpec.describe User, type: :model do
  it 'Should in email valid after create'do
    user = User.create(email: "kinouani@gmail.com")
    expect(user.email).to eq 'kinouani@gmail.com'
  end
end
