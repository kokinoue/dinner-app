class QuestionnairesController < ApplicationController

  def show
    @questionnaire = Questionnaire.find(params[:id])
  end

  def new
    @questionnaire = Questionnaire.new
  end

  def edit

  end

  def update
    if @questionnaire.update(dinner1: params[:questionnaire][:dinner1], dinner2: params[:questionnaire][:dinner2], dinner3: params[:questionnaire][:dinner3], dinner4: params[:questionnaire][:dinner4])
      redirect_to "/family_groups/#{current_user.family_group_id}"
    else
      render root_path
    end
  end

  def create
    @questionnaire = Questionnaire.new(questionnaire_params)
    @questionnaire.save
    if @questionnaire.save
      redirect_to "/family_groups/#{current_user.family_group_id}"
    else
      redirect_to new_questionnaire_path
    end

  end

  def update

  end


  private
  def questionnaire_params
    params.require(:questionnaire).permit(:dinner_name1, :dinner_name2, :dinner_name3, :dinner_name4, :family_group_id)
  end

end
