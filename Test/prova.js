var input = document.querySelector("#add");


function aaa() {
    let div = document.createElement("div");

    let texto = document.createElement("p");
    texto.innerHTML = input.value;

    let botao = document.createElement("button");
    botao.innerHTML = "X";

    botao.addEventListener("click", () => {
        div.remove();
    });
    div.appendChild(texto);

    console.log(div);

}