const linkPerfil = document.getElementById("link-perfil");
const navPerfil = document.getElementById("nav-perfil");
const linkDados = document.getElementById("link-perfil-dados");
console.log(linkDados);

linkPerfil.addEventListener("mouseover", () => {
  navPerfil.style.display = "block";
});

document.addEventListener("keyup", (event) => {
  console.log(event.key);
  console.log(event.code);

  if (event.code == "KeyQ") {
    console.log("Abre o menu de perfil");
    navPerfil.style.display = "block";
  } else if (event.code == "Escape") {
    console.log("Fecha o menu");
    navPerfil.style.display = "none";
  }

  // Verifica se o menu de navegação está ativo
  if (navPerfil.style.display == "block") {
    if (event.code == "KeyW") {
      linkDados.click();
    }
  }
});
