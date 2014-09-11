class TagsController < ApplicationController
  before_action :set_tag, only: :show

  before_action :authorize_user, only: :show

  # GET /tags
  # GET /tags.json
  def index
    @tags = current_user.owned_tags
    @tags = Photo.tag_counts_on(:tags).order(:name)
  end

  # GET /tags/1
  # GET /tags/1.json
  def show
  end

  private
    def authorize_user
      unless current_user.owned_tags.include?(@tag)
        redirect_to root_url, :alert => "You are not authorized for that."
      end
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_tag
      @tag = ActsAsTaggableOn::Tag.find(params[:id])
    end
end
