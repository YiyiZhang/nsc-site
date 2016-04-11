class FileAttachmentsController < ApplicationController
  before_action :set_file_attachment, only: [:destroy, :update]

  def destroy
    @file_attachment.destroy
    if @file_attachment.attachable_type == 'StaticPage'
      redirect_to edit_static_page_path(@file_attachment.attachable.id)
    end
  end
  def update
  end
  private
  def set_file_attachment
    @file_attachment = FileAttachment.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def file_attachment_params
    params.require(:file_attachment).permit(:attachment, :attachment_name)
  end
end
