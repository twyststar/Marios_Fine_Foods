require 'rails_helper'

describe Review do
  it { should validate_presence_of :name }
  it { should validate_presence_of :rating }
  it { should validate_presence_of :content_body }

  it { should belong_to :product }
end
