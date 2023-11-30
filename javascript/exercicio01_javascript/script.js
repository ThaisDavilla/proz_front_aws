let titulo = document.getElementById("titulo");
let link = document.querySelector("a");

titulo.innerText = "Sucos Preferidos";
link.innerText = "Proz Educação";

let listaNaoOrdenada = document.querySelector("ul");
let listaOrdenada = document.querySelector("ol");

listaNaoOrdenada.innerHTML = `
  <li>Abacaxi com hortelã</li>
  <li>Goiaba</li>
  <li>Limonada Suíssa</li>
`;

listaOrdenada.innerHTML = `
  <li><a href="https://www.linkedin.com/in/thaisdavilla/">Linkedin</a></li>
  <li><a href="https://github.com/ThaisDavilla">GitHub</a></li>
  <li><a href="https://portifolio-sigma-dun.vercel.app/">Portifólio</a></li>
`;
