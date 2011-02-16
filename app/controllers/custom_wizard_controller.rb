class CustomWizardController < Gendalf::WizardController
  layout "application"
  set_model_name :user_info
  
  def step0
  end
    
  def step1
  end
  
  def step2
    @user_info = session[:user_info]
  end
  
protected
  def wizard_model
    session[:user_info] ||= UserInfo.new
  end  

  def current_step
    session[:current_step] ||= 0
  end
  
  def current_step=(step)
    session[:current_step] = step
  end
end
