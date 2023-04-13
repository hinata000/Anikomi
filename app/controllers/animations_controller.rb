class AnimationsController < ApplicationController

  def index
    @animations = Animation.all.order(created_at: :desc).page(params[:page]).per(16)
  end

  def show
    @animation = Animation.find_by(id: params[:id])
    @animations = Animation.where(id: params[:id])
    @animations_detail = AnimationDetail.where(animation_id: params[:id])
    @review = @animation.reviews.order(id: :desc)
  end

  def search_results
  end
end
