class KittensController < ApplicationController

  def index
    @kittens = Kitten.all
    respond_to do |format|
      format.html { render 'kittens/index' }
      format.json { render json: @kittens }
    end
  end

  def show
    @kitten = Kitten.find(params[:id])
    respond_to do |format|
      format.html { render 'kittens/show' }
      format.json { render json: @kitten }
    end
  end

  def new
    @kitten = Kitten.new
  end

  def create
    @kitten = Kitten.new kitten_params
    if @kitten.save
      respond_to do |format|
        format.html { redirect_to @kitten, notice: 'New kitten joins the family!' }
        format.json { head :no_content }
      end
    else
      respond_to do |format|
        format.html { redirect_to '/', notice: 'Kitten could not be created. That is not how kittens are made' }
        format.json { head :no_content }
      end
    end
  end

  def edit
    @kitten = Kitten.find(params[:id])
  end

  def update
    @kitten = Kitten.find(params[:id])
    if @kitten.update kitten_params
      respond_to do |format|
        format.html { redirect_to @kitten, notice: 'Kitten successfully updated to another kitten.' }
      end
    else
      respond_to do |format|
        format.html { redirect_to '/', alert: 'Kitten could not be updated...' }
      end
    end
  end

  def destroy
    @kitten = Kitten.find(params[:id])
    if @kitten.destroy
      respond_to do |format|
        format.html { redirect_to '/', notice: 'Nice, you just destroyed a cute kitten...' }
      end
    else
      respond_to do |format|
        format.html { redirect_to '/', alert: 'Kitten could not be destroyed... Too cute...' }
      end
    end

  end

  private

  def kitten_params
    params.require(:kitten).permit(:name, :age, :cuteness, :softness)
  end

end
