class FamilyGroupsController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def show
    @family_group = FamilyGroup.find_by(family_group_id: params[:family_group_id])
    @dinner_datum = DinnerDatum.new
    if @family_group.blank?
      redirect_to user_path(current_user), alert: "設定したグループは存在しません！グループを作成しましょう！"
    else
      @questionnaires = @family_group.questionnaires
      if @questionnaires.blank?
      else
        @answer_counts1 = AnswerCount.where(questionnaire_id:@questionnaires.last.id, dinner:@questionnaires.last.dinner_name1)
        @answer_counts2 = AnswerCount.where(questionnaire_id:@questionnaires.last.id, dinner:@questionnaires.last.dinner_name2)
        @answer_counts3 = AnswerCount.where(questionnaire_id:@questionnaires.last.id, dinner:@questionnaires.last.dinner_name3)
        @answer_counts4 = AnswerCount.where(questionnaire_id:@questionnaires.last.id, dinner:@questionnaires.last.dinner_name4)
      end
    end
  end

  def new
    @family_group = FamilyGroup.new
  end

  def create
    @family_group = FamilyGroup.new(family_group_params)

      if @family_group.save
        redirect_to user_path(current_user)
      else
        redirect_to new_family_group_path(current_user), alert: '間違っている部分があります'
      end

  end


  private

   def family_group_params
     params.require(:family_group).permit(:family_name, :family_group_id)
   end
end
