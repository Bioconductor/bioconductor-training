document.addEventListener("DOMContentLoaded", function () {
  const hamburger = document.querySelector(".hamburger");
  const navMenu = document.querySelector(".header-nav");

  if (!hamburger || !navMenu) return;

  function closeMenu() {
    hamburger.classList.remove("active");
    navMenu.classList.remove("active");
    hamburger.setAttribute("aria-expanded", "false");
  }

  hamburger.addEventListener("click", function () {
    const isOpen = hamburger.classList.toggle("active");

    navMenu.classList.toggle("active", isOpen);
    hamburger.setAttribute("aria-expanded", String(isOpen));
  });

  document.querySelectorAll(".header-nav a").forEach((link) => {
    link.addEventListener("click", closeMenu);
  });
});