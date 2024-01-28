let titulo = document.createElement("h1");

titulo.id = "titulo";
titulo.innerText = "Suqueria";

let body = document.querySelector("body");

body.appendChild(titulo);

let suco = document.createElement("div");

suco.innerHTML = `
  <div>
  <h2>Limonada Suíça</h2>
    <img src="https://s2-receitas.glbimg.com/bMkzvSyvdBjsAe1rqhJDwaEXOfw=/0x0:1920x1080/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_1f540e0b94d8437dbbc39d567a1dee68/internal_photos/bs/2023/I/r/U7gF5eSaytqQGpzFwTBQ/limonada-suica-cremosa.jpg" alt="Foto de uma jarra de limonada suiça">
    <p>Limões, 1 litro de água, Leite condensado a gosto.</p>
    <p id="preco-limonada-suica">R$ 12,49</p>
  </div>
`;

capturarElemento.appendChild(suco);
