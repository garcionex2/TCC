const nav = document.querySelector("nav"),
    hamburger = document.querySelector(".hamburger"),
    navLinks = document.querySelector(".nav-links"),
    links = document.querySelectorAll(".nav-links li"),
    hambFirstLine = document.querySelector("#firstLine"),
    hambSecondLine = document.querySelector("#secondLine"),
    hambThirdLine = document.querySelector("#thirdLine");



hamburger.addEventListener("click", () => {
    navLinks.classList.toggle("open");
    hambFirstLine.classList.toggle("nav-close-icon-firstLine");
    hambSecondLine.classList.toggle("nav-close-icon-secondLine");
    hambThirdLine.classList.toggle("nav-close-icon-thirdLine");
    document.body.classList.toggle("remove-scroll");
    links.forEach(link => {
        link.classList.toggle("fade");
    });
});

//============Close menu after clik on the link =
links.forEach(link => {
    link.addEventListener("click", () => {
        navLinks.classList.toggle("open");
        hambFirstLine.classList.toggle("nav-close-icon-firstLine");
        hambSecondLine.classList.toggle("nav-close-icon-secondLine");
        hambThirdLine.classList.toggle("nav-close-icon-thirdLine");
        document.body.classList.toggle("remove-scroll");
        setTimeout(() => {
            nav.style.top = "0";
            sections.classList.remove("sections-modbile-onScrollDown");
        }, 200);
        links.forEach(link => {
            link.classList.toggle("fade");
        });
    });
});


//=========================NAV SCROLL ANIMATION==============
const sections = document.querySelector(".sections");

let prevScrollpos = window.pageYOffset;
window.onscroll = function () {
    let currentScrollPos = window.pageYOffset;

    if (prevScrollpos > currentScrollPos && prevScrollpos > 0 && prevScrollpos < (document.body.clientHeight - window.innerHeight)) {
        nav.classList.remove("nav-mobile");

        sections.classList.remove("sections-modbile-onScrollDown");
    } else {
        if (prevScrollpos > 0) {
            nav.classList.add("nav-mobile");
            sections.classList.add("sections-modbile-onScrollDown");
        }
    }
    prevScrollpos = currentScrollPos;
}