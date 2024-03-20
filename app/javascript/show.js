document.addEventListener("turbo:load", function(){
  const editBtn = document.getElementById("edit_btn");
  const deleteBtn = document.getElementById("delete_btn");
  if (!editBtn || !deleteBtn){
    return null;
  } else {
    // 編集ボタン
    editBtn.addEventListener("mouseover", function(){
      this.setAttribute("style", "opacity: 0.5;");
    });
    editBtn.addEventListener("mouseout", function(){
      this.removeAttribute("style");
    });
    // 削除ボタン
    deleteBtn.addEventListener("mouseover", function(){
      this.setAttribute("style", "opacity: 0.5;");
    });
    deleteBtn.addEventListener("mouseout", function(){
      this.removeAttribute("style");
    });
  }
});


