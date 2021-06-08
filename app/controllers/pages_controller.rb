class PagesController < ApplicationController
  def home
  end

  def contact
    @students = ['Leeten', 'Kim', 'Anna', 'Tallina']

    if params[:student]
      @students = @students.select { |student| student.start_with?(params[:student]) }
    end
  end
end
