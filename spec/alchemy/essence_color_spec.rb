require "spec_helper"

RSpec.describe Alchemy::EssenceColor do
  it_behaves_like "an essence" do
    let(:essence)          { Alchemy::EssenceColor.new }
    let(:ingredient_value) { "#FFCC00" }
  end
end
