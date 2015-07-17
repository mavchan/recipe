class PagesController < ApplicationController
  def show
    render template: "pages/#{params[:page]}"
  end

  def policy_quiz
    render 'pages/policy match/quiz/policy-match-quiz.html'
  end

  def profile_match
    render 'pages/policy match/results/party match/profile-match.html'
  end

  def profile_share
    render 'pages/policy match/results/party match/profile-match-share.html'
  end

  def friends_match
    render 'pages/policy match/results/friends compare/friends-match.html'
  end

  def population_compare
    render 'pages/policy match/results/population compare/population-compare.html'
  end

  def edit_more_info
    render 'pages/edit_more_info.html'
  end

  def register_new_user
    render 'devise/registrations/index_1.html'
  end

  def home_logged_in
    render 'pages/home-page-logged-in.html'
  end

  def survey_page
    render 'pages/survey-page.html'
  end

  def survey_results
    render 'pages/survey-results.html'
  end



end
