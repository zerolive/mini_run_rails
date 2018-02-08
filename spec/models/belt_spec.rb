require 'rails_helper'

describe 'Belt' do
  it 'belongs to a kata' do
    kata = Kata.new(title: 'name', description: 'desc')
    kata.save
    belt = Belt.new(
      name: 'name',
      description: 'desc',
      kata_id: kata.id
    )

    belt.save

    expect(belt.kata).to eq(kata)
    expect(kata.belts).to eq([belt])
  end
end
