from django.shortcuts import render, redirect
from django.http import HttpResponse
from .utils import password_is_valid
from django.contrib.auth.models import User
from django.contrib.messages import constants
from django.contrib import messages

# Create your views here.


def cadastro(request):
    if request.method == "GET":
        return render(request, 'cadastro.html')
    elif request.method == "POST":
        username = request.POST.get('username')
        email = request.POST.get('email')
        password = request.POST.get('password')
        confirm_password = request.POST.get('confirm-password')

        if not username or not email or not password:
            return redirect('/auth/cadastro', {'error: Todos os campos são obrigatórios.'})

        if not password_is_valid(request, password, confirm_password):
            return redirect('/auth/cadastro')

        try:
            user = User.objects.create_user(username=username,
                                            email=email,
                                            password=password,
                                            is_active=False)
            user.save()
            messages.add_message(request, constants.SUCCESS, 'Usuário cadastrado com sucesso!')
            return redirect('/auth/logar')
        except:
            messages.add_message(request, constants.ERROR, 'Erro interno do sistema')
            return redirect('/auth/cadastro')

def logar(request):
    return HttpResponse('pagina de login')


def index(request):
    return HttpResponse('pagina inicial')
