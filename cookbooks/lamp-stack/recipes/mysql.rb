# MySQL setup

mysql_service 'database' do
    initial_root_password 'change_me'
    action [:create, :start]
end
