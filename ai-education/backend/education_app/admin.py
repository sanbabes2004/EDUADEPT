from django.contrib import admin
from .models import *
# Register your models here.

class ParentAdmin(admin.ModelAdmin):
    list_display = ('name','phone_number','email','password')
    fields = ('name','phone_number','email','password')

class StudentAdmin(admin.ModelAdmin):
    list_display = ('parent','name','phone_number','email','password','department','batch')
    fields = ('parent','name','phone_number','email','password','department','batch')

class ImageAdmin(admin.ModelAdmin):
    list_display = ('title','description','tags','image_url')

class QuizAdmin(admin.ModelAdmin):
    list_display = ('student','quiz_data','response')
    fields = ('student','quiz_data','response')

class AssignmentAdmin(admin.ModelAdmin):
    list_display = ('quiz','student','parent','assigned_at')
    fields = ('quiz','student','parent')

admin.site.register(Parent,ParentAdmin)
admin.site.register(Student,StudentAdmin)
admin.site.register(Image,ImageAdmin)
admin.site.register(Quiz,QuizAdmin)
admin.site.register(Assignment,AssignmentAdmin)