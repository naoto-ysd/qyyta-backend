test command for sign up
curl -X POST -H "Content-Type: application/json" -d '{"email":"test@example.com", "password":"password", "password_confirmation":"password", "confirm_success_url":"http://localhost:3000/confirmation_success"}' http://localhost:3001/api/v1/auth


curl -X POST -H "Content-Type: application/json" -d '{"email":"test5@example.com", "password":"password", "password_confirmation":"password"}' http://localhost:3001/api/v1/auth

test command for sign in
firstly, confirm test user
docker-compose run backend rails c
user = User.find_by(email: 'test@example.com')
user.confirm
user.save
execute following command after above commands
curl -X POST -H "Content-Type: application/json" -d '{"email":"test@example.com", "password":"password"}' http://localhost:3001/api/v1/auth/sign_in




