class SinatraAppSample < Sinatra::Base

   use TorqueBox::Session::ServletStore

   get "/message" do
      session[:message] = "Setting message to session"
      "Message setting up"
   end


   get "/show_message" do 
      session[:message]
   end

end
