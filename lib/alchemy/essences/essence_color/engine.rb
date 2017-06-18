require "alchemy/essences/essence_color/ability"

module Alchemy::Essences::EssenceColor
  class Engine < Rails::Engine
    engine_name 'alchemy_essence_color'

    initializer "alchemy_essence_color.register_ability" do
      Alchemy.register_ability Alchemy::Essences::EssenceColor::Ability
    end
  end
end
