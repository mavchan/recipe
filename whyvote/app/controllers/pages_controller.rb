class PagesController < ApplicationController
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


end
