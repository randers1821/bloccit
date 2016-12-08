require 'rails_helper'
include RandomData

RSpec.describe Topic, type: :model do

  let(:topic) { Topic.create!(name: RandomData.random_sentence, description: RandomData.random_paragraph) }

  it { is_expected.to have_many(:posts) }
  it { should validate_length_of(:name).is_at_least(5) }
    it { should validate_length_of(:description).is_at_least(15) }
    it { should validate_prescence_of(:name) }
    it { should validate_prescence_of(:description) }

  describe "attributes" do
    it "has name, description, and public attributes" do
      expect(topic).to have_attributes(name: name, description: description, public: public)
  end

  it "is public by default" do
    expect(topic.public).to be(true)
  end
  end

end
