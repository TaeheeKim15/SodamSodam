var deleteCookie = function(name) {
			document.cookie = name + '=; expires=Thu, 01 Jan 1999 00:00:10 GMT;';
			alert("쿠키 정보가 삭제되었습니다.")
		}
		
		
var headerProfileAvatar = document.getElementById("user__info")
var headerProfileDropdown = document.getElementById("dropdownWrapper");

document.addEventListener("click", function(event) {
  var headerProfileDropdownClickedWithin = headerProfileDropdown.contains(event.target);
  
  if (!headerProfileDropdownClickedWithin) {
    if (headerProfileDropdown.classList.contains("active")) {
      headerProfileDropdown.classList.remove("active");
    }
  }
});

headerProfileAvatar.addEventListener("click", function(event) {
  headerProfileDropdown.classList.toggle("active");
  event.stopPropagation();
});