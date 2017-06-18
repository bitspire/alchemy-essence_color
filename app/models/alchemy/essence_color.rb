module Alchemy
  class EssenceColor < ActiveRecord::Base
    acts_as_essence ingredient_column: 'value', preview_text_method: 'value'
  end
end
