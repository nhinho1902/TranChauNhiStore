json.extract! marketing, :id, :Content, :Marcom_ID, :Content_Name, :Description, :File, :Social_Networking_Platform, :Person_in_Charge, :Note, :created_at, :updated_at
json.url marketing_url(marketing, format: :json)
json.File url_for(marketing.File)
