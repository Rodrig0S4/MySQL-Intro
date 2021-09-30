import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { User } from '../model/User';
import { UserLogin } from '../model/UserLogin';

@Injectable({
  providedIn: 'root'
})
export class AuthService {

  constructor(
    private htpp: HttpClient
  ) { }

  entrar(userLogin: UserLogin): Observable<UserLogin> {
    return this.htpp.post<UserLogin>('https://blogpessoalrodrigo.herokuapp.com/usuarios/logar', userLogin)

  }

  cadastrar(user: User): Observable<User> {
    return this.htpp.post<User>("https://blogpessoalrodrigo.herokuapp.com/usuarios/cadastrar", user)

  }

}
