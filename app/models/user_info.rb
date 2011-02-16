class UserInfo < Gendalf::WizardModel
  define_step 0, :name do
    validates_presence_of :name
  end
  
  define_step 1, :surname do
    validates_presence_of :surname
  end
  
  define_final_step 2
end