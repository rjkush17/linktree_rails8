class TreesController < ApplicationController
  before_action :set_tree, only: %i[show edit update destroy]

  def index
    @trees = Tree.all
  end

  def show
  end

  def new
    @tree = Tree.new
  end


  def create
    @tree = Tree.new(tree_params)
    if @tree.save
      redirect_to @tree, notice: "Tree created succesfully"
    else
      puts @tree.errors.full_messages 
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @tree.update(tree_params)
        redirect_to @tree, notice: "tree was successfully updated"
    else
      render :edit
    end
  end

  def destroy
    @tree.destroy
    redirect_to trees_url, notice: "Tree was successfully destroyed."
  end


  private

  def set_tree
    @tree = Tree.find(params[:id])
  end

  def tree_params
    params.require(:tree).permit(:name, :facebook, :x, :instagram, :website, :user_id)
  end
end
