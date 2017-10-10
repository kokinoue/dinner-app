class AnswerCountsController < ApplicationController

  def new
    answer_counts = AnswerCount.new
  end

  def create
    answer_counts = AnswerCount.new(answer_count_params)
    answer_counts.questionnaire_id = params[:questionnaire_id]
    if answer_counts.save
      redirect_to "/family_groups/#{current_user.family_group_id}", success: 'アンケートに答えました'
    else
      redirect_to "/family_groups/#{current_user.family_group_id}", alert: '回答は1人1回です！'
    end

  end


  private
  def answer_count_params
    params.require(:answer_count).permit(:dinner, :questionnaire_id, :user_id)
  end

end
