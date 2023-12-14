const linkHome = document.getElementById("pagina-principal");
console.log(linkHome);

document.addEventListener("keyup", (e) => {
  console.log(e.key);
  console.log(e.code);

  if (e.code == "Space") {
    console.log("volta pra home");
    linkHome.click();
  }
});
