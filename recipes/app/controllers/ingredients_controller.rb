class IngredientsController < ApplicationController

    def index
        @ingredients = Ingredient.all.sort_by do |i|
            i.allergens.count
        end.reverse
    end

    def show
        @ingredient = Ingredient.find(params[:id])
    end

end
