function post (){
  const Post = document.querySelectorAll(".center-post")
  Post.forEach(function(post_list) {
    post_list.addEventListener("mouseover", function() {
      this.setAttribute("style", "box-shadow: 0 10px 25px 0 rgba(0,0,0,0.5)");
    });
    post_list.addEventListener("mouseout", function() {
      this.removeAttribute("style");
    });
  });
};

window.addEventListener("turbo:load", post);