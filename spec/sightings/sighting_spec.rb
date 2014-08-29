require 'rails_helper'

describe Sighting do
  it { should validate_presence_of :latitude }

  it { should validate_presence_of :longitude }
end
