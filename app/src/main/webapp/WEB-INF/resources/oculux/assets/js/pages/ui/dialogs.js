$(function () {
    $('.js-sweetalert').on('click', function () {
        var type = $(this).data('type');
        if (type === 'basic') {
            showBasicMessage();
        }
        else if (type === 'with-title') {
            showWithTitleMessage();
        }
        else if (type === 'success') {
            showSuccessMessage();
        }
        else if (type === 'confirm') {
            showConfirmMessage();
        }
        else if (type === 'delete') {
			var value = $(this).attr('value');
            showDeletelMessage(value);
        }
        else if (type === 'with-custom-icon') {
            showWithCustomIconMessage();
        }
        else if (type === 'html-message') {
            showHtmlMessage();
        }
        else if (type === 'autoclose-timer') {
            showAutoCloseTimerMessage();
        }
        else if (type === 'prompt') {
            showPromptMessage();
        }
        else if (type === 'ajax-loader') {
            showAjaxLoaderMessage();
        }
		else if (type === 'edit-category') {
            showCategoryAdd();
        }
		else if (type === 'update') {
			var id = $(this).attr('value');
			var name = $(this).attr('data-name');
            showCategoryUpdate(id, name);
        }
		else if (type === 'userDelete') {
			var value = $(this).attr('value');
            showUserDeletelMessage(value);
        }
    });
});

//These codes takes from http://t4t5.github.io/sweetalert/
function showBasicMessage() {
    swal("Here's a message!");
}

function showWithTitleMessage() {
    swal("Here's a message!", "It's pretty, isn't it?");
}

function showSuccessMessage() {
    swal("Good job!", "You clicked the button!", "success");
}

function showConfirmMessage() {
    swal({
        title: "Are you sure?",
        text: "You will not be able to recover this imaginary file!",
        type: "warning",
        showCancelButton: true,
        confirmButtonColor: "#dc3545",
        confirmButtonText: "Yes, delete it!",
        closeOnConfirm: false
    }, function () {
        swal("Deleted!", "Your imaginary file has been deleted.", "success");
    });
}

function showDeletelMessage(value) {
    swal({
        title: "정말 삭제할까요?",
        text: "한번 삭제하면 복구할 수 없습니다!",
        type: "warning",
        showCancelButton: true,
        confirmButtonColor: "#dc3545",
        confirmButtonText: "네",
        cancelButtonText: "아니요",
        closeOnConfirm: false,
        closeOnCancel: true
    }, function (isConfirm) {
        if (isConfirm) {
	
			$.post("/admin/categoryDelete", 
			{
			    no:value
			});
	
			
            swal("삭제 되었습니다!", "", "success");
        }
    });
}

function showWithCustomIconMessage() {
    swal({
        title: "Sweet!",
        text: "Here's a custom image.",
        imageUrl: "../assets/images/sm/avatar2.jpg"
    });
}

function showHtmlMessage() {
    swal({
        title: "HTML <small>Title</small>!",
        text: "A custom <span style=\"color: #CC0000\">html<span> message.",
        html: true
    });
}

function showAutoCloseTimerMessage() {
    swal({
        title: "Auto close alert!",
        text: "I will close in 2 seconds.",
        timer: 2000,
        showConfirmButton: false
    });
}

function showPromptMessage() {
    swal({
        title: "An input!",
        text: "Write something interesting:",
        type: "input",
        showCancelButton: true,
        closeOnConfirm: false,
        animation: "slide-from-top",
        inputPlaceholder: "Write something"
    }, function (inputValue) {
        if (inputValue === false) return false;
        if (inputValue === "") {
            swal.showInputError("You need to write something!"); return false
        }
        swal("Nice!", "You wrote: " + inputValue, "success");
    });
}

function showAjaxLoaderMessage() {
    swal({
        title: "Ajax request example",
        text: "Submit to run ajax request",
        type: "info",
        showCancelButton: true,
        closeOnConfirm: false,
        showLoaderOnConfirm: true,
    }, function () {
        setTimeout(function () {
            swal("Ajax request finished!");
        }, 2000);
    });
}

function showCategoryAdd() {
    swal({
        title: "카테고리 추가",
        text: "추가할 카테고리명을 입력해주세요.",
        type: "input",
        showCancelButton: true,
        closeOnConfirm: false,
		confirmButtonText: "추가하기",
		confirmButtonColor: "#10ac84",
        cancelButtonText: "취소하기",
        animation: "slide-from-top",
        inputPlaceholder: "원하는 이름을 입력하세요"
    }, function (inputValue) {
        if (inputValue === false){
			return false
		}
        if (inputValue === "") {
            swal.showInputError("카테고리명을 입력해주세요!"); return false
        }
        
		$.post("/admin/categoryAdd", 
		{
		    name:inputValue
		});
		
        swal("추가되었습니다!", "추가된 카테고리명: " + inputValue, "success");
    });
}

function showCategoryUpdate(id, name) {
    swal({
        title: "카테고리 수정",
        text: "수정할 카테고리명을 입력해주세요.",
        type: "input",
        showCancelButton: true,
        closeOnConfirm: false,
		confirmButtonText: "수정하기",
		confirmButtonColor: "#10ac84",
        cancelButtonText: "취소하기",
        animation: "slide-from-top",
        inputPlaceholder: "원하는 이름을 입력하세요",
		inputValue: name
    }, function (inputValue) {
	
        if (inputValue === false){
			return false
		}
        if (inputValue === "") {
            swal.showInputError("카테고리명을 입력해주세요!"); return false
        }
		if (inputValue === name) {
            swal.showInputError("변경하려는 이름이 현제 이름과 같습니다!"); return false
        }
		
		$.post("/admin/categoryUpdate", 
		{
		    id:id,
			name:inputValue
		});
		
        swal("수정되었습니다!", "변경전 -> " + name + " | 변경후 -> " + inputValue, "success");
    });
}

function showUserDeletelMessage(value) {
    swal({
        title: "정말 삭제할까요?",
        text: "한번 삭제하면 복구할 수 없습니다!",
        type: "warning",
        showCancelButton: true,
        confirmButtonColor: "#dc3545",
        confirmButtonText: "네",
        cancelButtonText: "아니요",
        closeOnConfirm: false,
        closeOnCancel: true
    }, function (isConfirm) {
        if (isConfirm) {
	
			$.post("/admin/user_delete", 
			{
			    no:value
			});
	
			
            swal("삭제 되었습니다!", "", "success");
        }
    });
}