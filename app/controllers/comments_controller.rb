class CommentsController < ApplicationController
  before_action :get_ad
  before_action :set_comment, only: %i[show update destroy]

  # GET /comments
  def index
    @comments = @ad.comments

    render json: @comments
  end

  # GET /comments/1
  def show
    render json: @comment
  end

  # POST /comments
  def create
    @comment = @ad.comments.build(comment_params)

    if @comment.save
      render json: @comment, status: :created
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /comments/1
  def update
    if @comment.update(comment_params)
      render json: @comment
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /comments/1
  def destroy
    render json: @comment.destroy!
  end

  private

    def get_ad
      @ad = Ad.find(params[:ad_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = @ad.comments.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def comment_params
      params.require(:comment).permit(:content, :customer_id)
    end
end
