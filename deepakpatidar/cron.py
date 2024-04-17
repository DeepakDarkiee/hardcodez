from django.core.management import call_command

def db_back():
    call_command('dbbackup')