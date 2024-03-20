function header (){
  const loginUser = document.getElementById("login_user");
  const optionBtn = document.getElementById("option_btn0");
  const userAccount = document.getElementById("option_btn1");
  const userLogout = document.getElementById("option_btn2");
  // アカウントネームにマウスを被せたときの挙動
  loginUser.addEventListener("mouseover", function (){
    this.setAttribute("style", "opacity: 0.5;");
  });
  loginUser.addEventListener("mouseout", function (){
    this.removeAttribute("style");
  });
  // アカウントネームをクリックしたときの挙動 
  loginUser.addEventListener("click", function(){
    this.setAttribute("style", "opacity:0.5;");
    if (optionBtn.getAttribute("style") == "display:block;"){
      optionBtn.removeAttribute("style");
    } else{
      optionBtn.setAttribute("style", "display:block;")
    }
  })
  loginUser.addEventListener("click", function(){
    this.removeAttribute("style");
  })
  // アカウントとログアウトにマウスを被せたときの挙動
  userAccount.addEventListener("mouseover", function () {
    this.setAttribute("style", "opacity: 0.5;");
  });
  userAccount.addEventListener("mouseout", function () {
    this.removeAttribute("style");
  });
  userLogout.addEventListener("mouseover", function () {
    this.setAttribute("style", "opacity: 0.5;");
  });
  userLogout.addEventListener("mouseout", function () {
    this.removeAttribute("style");
  });
};

window.addEventListener("turbo:load", header);