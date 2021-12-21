# pip install mailer
# This Module Support Gmail & Microsoft Accounts (hotmail, outlook etc..)
from mailer import Mailer
import sys

mail = Mailer(email='', password='')
mail.send(receiver='', subject='TEST', message=sys.argv[1])
