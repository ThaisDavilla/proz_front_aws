let user01 = {
  userName: "thais",
  email: "thais@email.com",
  id: 100,
  senha: 987654,
  admin: true
}

console.log(user01.email)





const  email = "thais@email.com";
const id = 100;
let senha = 987654;
let username = "thais";

const isUserAdmin = false;

const emailDigitado = "thais@email.com";
const senhaDigitada = 987654;

if (emailDigitado == email && senhaDigitada == senha){
  console.log("Usuário logado com sucesso, insira sua nova senha.")
} else {
  console.log("Usuário ou senha icorretos")
}
if (isUserAdmin){
  console.log("Bem vindo Administrador!")
} else {
  console.log("Você não pode acessar essa área.")
}