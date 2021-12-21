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
Enter SendMail.py and fill in the blanks of the sender mails and receiver mails.

## Usage
```
bash MailNotify.sh /location/file.txt
```
