class AnswerCountsController < ApplicationController

  def new
    answer_counts = AnswerCount.new
  end

  def create
    answer_counts = AnswerCount.new(answer_count_params)
    answer_counts.questionnaire_id = params[:questionnaire_id]
    if answer_counts.save!
      redirect_to family_group_path(current_user.family_group.family_group_id), success: 'アンケートに答えました'
    else
      redirect_to root_path
    end

  end


  private
  def answer_count_params
    params.require(:answer_count).permit(:dinner, :questionnaire_id)
  end

end
