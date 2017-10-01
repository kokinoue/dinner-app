class DinnerDataController < ApplicationController
  before_action :authenticate_user!

  def index
    @dinner_datum = DinnerDatum.where(family_group_id:current_user.family_group_id)
    if @dinner_datum.empty?
      redirect_to user_path(current_user), alert: "データが保存されていません"
    else
    end
  end

  def new
    @dinner_datum = DinnerDatum.new
  end

  def create
    @dinner_datum = DinnerDatum.new(dinner_datum_params)
    @dinner_datum.family_group_id  = current_user.family_group_id
    if @dinner_datum.save(:validate => false)
      redirect_to dinner_data_path
    else
      redirect_to root_path
    end
  end

  private
  def dinner_datum_params
    params.require(:dinner_datum).permit(:dinner_name, :family_group_id)
  end
end
