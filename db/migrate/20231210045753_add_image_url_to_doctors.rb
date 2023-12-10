class AddImageUrlToDoctors < ActiveRecord::Migration[7.1]
  def change
 add_column :doctors, :image_url, :string, default: 'https://shutterstock.7eer.net/c/38919/1636620/1305?trafcat=T3&trafsrc=Direct&u=https://www.shutterstock.com/image-photo/1933069292&sharedid=www.vecteezy.com&subId1=search-top-show_page_similar_button-test&subId2=6895137c-9d42-41ec-9433-40bc9f230c32&adtype=vector&adplacement=SRP&subId3=female-doctor_1933069292_top' 
 end
end
