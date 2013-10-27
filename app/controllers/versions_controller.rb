class VersionsController < ApplicationController
  before_action :set_post, only: [:revert]

  def revert
    ap @version.reify
    @version.reify.save!
    redirect_to :back, :notice => "back to ver.#{@version.event}"
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_post
    @version = Version.find(params[:id])
  end


end

# <a data-method="post" href="/versions/3/revert" rel="nofollow">back to this version</a>
# <a data-method="post" href="/versions/4/revert" rel="nofollow">undo</a>
