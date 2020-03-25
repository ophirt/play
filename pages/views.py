from django.shortcuts import render

# Create your views here.

from django.http import HttpResponse, JsonResponse


def home_page_view(request):
    return HttpResponse('Hello, World!')


def json_view(request):
    return JsonResponse({'Hello': 'World!'})
