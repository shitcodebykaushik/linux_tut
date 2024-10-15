- The jwt is the stateless as the server dont need to store the session information.
- Session means the period of the activity/time  or with a system often involving temporary sessions or involving temporary sessions data storage and user-specific information .
- The jwt acts as the self-contained representation of the the users autthencated state .
- The jwt are the digital signed ensure the data integrity and the preventing tampering .
- Due to their comapact size jwt are suitable for transmission over the network and are easly parsed .
- "Parsed by client" means that the process of analyzing and interpreting data (parsing) is done on the client-side, which is typically the user's web browser .
- Avoid storing the senstive data in the jwt payload.
- The jwt token is always unique .
- // Here we have removed the duplication of the user and have allowed the multiple signup.
// We are using the FindOne() method to check if the user is already .
//  Trying to build the system for the milisecond . 
- Example of the Complete Postman Request To chek the jwt key authentication .:
Method: GET
URL: http://localhost:8080/protected/profile
Headers:
Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3Mjg4MTc0MTMsInVzZXJuYW1lIjoiS2F1aCJ9.lNaLQyU-1ikIXQuXs0K0BYKxjfvEezfLtZIt0gCi6W

