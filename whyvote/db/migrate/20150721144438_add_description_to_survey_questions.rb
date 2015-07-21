class AddDescriptionToSurveyQuestions < ActiveRecord::Migration
  def change
    add_column :survey_questions, :description, :text
  end
end
