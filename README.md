# MailNotify
A bash and python script that sends a notification via email when a file changes.

## Prerequisites
For gmail, you need to make sure the option for less secure apps is activated.
You can go https://myaccount.google.com/lesssecureapps to activate the option.

Mailer is the python package that sends the mail.
```
pip install mailer
```

## Preparation for first time
Enter SendMail.py and enter the following:
- credentials (mail and password) of the sender
- mail of the receiver
- subject of the mail
- Optional: change the syntax of the message received in the bash script

## Usage
```
bash MailNotify.sh /location/file.txt
```
