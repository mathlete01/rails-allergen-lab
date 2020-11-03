class RecipesController < ApplicationController

    before_action :find_recipe, only: [:show, :edit, :update, :destroy]

    def index
        if params[:sort] 
            @recipes = Recipe.all.sort_by do |recipe|
                recipe.ingredients.count
            end.reverse
        else
            @recipes = Recipe.all
        end
    end

    # def show
    # end

    def new
        @recipe = Recipe.new
    end

    def create
        @recipe = Recipe.new(r_params)
        if @recipe.save
            redirect_to :show
        else
            render :new
        end
    end

    def edit
    end

    def update
        @recipe = Recipe.update(r_params)
        if @recipe.save
            redirect_to recipe_path(@recipe)
        else
            render edit_recipe_path
        end
    end

    def destroy
        @recipe.destroy
        redirect_to recipes_path
    end

    private

    def find_recipe
        @recipe = Recipe.find(params[:id])
    end
    
    def r_params
        params.require(:recipe).permit(:name, :mealtype, :user_id)
    end

end
