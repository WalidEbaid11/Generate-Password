#!/bin/bash


echo "Welcome to the simple password and username generator"
sleep 1


echo -n "Please enter your username: "
read username


echo -n "Please enter the length of the password: "
read PASS_LENGTH


password=$(openssl rand -base64 48 | cut -c1-$PASS_LENGTH)
sleep 1

echo "Username: $username"
echo "Generated Password: $password"


echo "Username: $username" > "D:\shell\Generate password/output.txt"
echo "Generated Password: $password" >> "D:\shell\Generate password/output.txt"

echo "Output saved to output.txt"
sleep 10