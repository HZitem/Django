# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey has `on_delete` set to the desired behavior.
#   * Remove `managed = True` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class SqlmodelName(models.Model):
    name = models.CharField(max_length=11)

    class Meta:
        managed = True
        db_table = 'sqlmodel_name'


class SqlmodelPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type_id = models.IntegerField()
    codename = models.CharField(max_length=100)

    class Meta:
        managed = True
        db_table = 'sqlmodel_permission'
        unique_together = (('content_type_id', 'codename'),)


class SqlmodelRole(models.Model):
    permission_id = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    class Meta:
        managed = True
        db_table = 'sqlmodel_role'
        unique_together = (('permission_id'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.IntegerField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=30)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    role = models.CharField(max_length=254)
    is_staff = models.IntegerField()
    is_active = models.IntegerField()
    date_joined = models.DateTimeField(auto_now_add=True)

    class Meta:
        managed = False
        db_table = 'auth_user'
