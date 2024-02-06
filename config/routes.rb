Rails.application.routes.draw do
  get("/", { :controller => "dice", :action => "home" })
  get("/dice/:num_dice/:sides", { :controller => "dice", :action => "dice_roll" })
end
