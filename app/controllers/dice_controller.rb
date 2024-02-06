class DiceController < ApplicationController
  def dice_roll

      @num_dice = params[:num_dice].to_i
    
      @sides = params[:sides].to_i
    
      @rolls = []
    
      @num_dice.times do
        die = rand(1..@sides)
    
        @rolls.push(die)
      end
    render({:template => "page_templates/flexible"})
  end

  def home
    render({:template => "page_templates/home"})
  end
end
