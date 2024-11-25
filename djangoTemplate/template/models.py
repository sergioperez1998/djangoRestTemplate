from django.db import models

# Create your models here.

class Template(models.Model):
    template_name = models.CharField(max_length=100)
