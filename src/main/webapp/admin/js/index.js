const sideLinks = document.querySelectorAll('.sidebar .side-menu li a:not(.logout)');

sideLinks.forEach(item => {
    const li = item.parentElement;
    item.addEventListener('click', () => {
        sideLinks.forEach(i => {
            i.parentElement.classList.remove('active');
        })
        li.classList.add('active');
    })
});

const menuBar = document.querySelector('.content nav .bx.bx-menu');
const sideBar = document.querySelector('.sidebar');

menuBar.addEventListener('click', () => {
    sideBar.classList.toggle('close');
});

const searchBtn = document.querySelector('.content nav form .form-input button');
const searchBtnIcon = document.querySelector('.content nav form .form-input button .bx');
const searchForm = document.querySelector('.content nav form');

searchBtn.addEventListener('click', function (e) {
    if (window.innerWidth < 576) {
        e.preventDefault;
        searchForm.classList.toggle('show');
        if (searchForm.classList.contains('show')) {
            searchBtnIcon.classList.replace('bx-search', 'bx-x');
        } else {
            searchBtnIcon.classList.replace('bx-x', 'bx-search');
        }
    }
});

window.addEventListener('resize', () => {
    if (window.innerWidth < 768) {
        sideBar.classList.add('close');
    } else {
        sideBar.classList.remove('close');
    }
    if (window.innerWidth > 576) {
        searchBtnIcon.classList.replace('bx-x', 'bx-search');
        searchForm.classList.remove('show');
    }
});

const toggler = document.getElementById('theme-toggle');

toggler.addEventListener('change', function () {
    if (this.checked) {
        document.body.classList.add('dark');
    } else {
        document.body.classList.remove('dark');
    }
});
function saveText() {
    // Lấy nội dung của phần tử có id là 'editableText'
    var editedText = document.getElementById('editableText').innerText;

    // Gửi yêu cầu HTTP POST (có thể sử dụng fetch hoặc XMLHttpRequest) đến máy chủ
    // Với nội dung cần lưu trữ, ví dụ: editedText
    // Đây chỉ là một ví dụ, bạn cần điều chỉnh để phản ánh cấu trúc máy chủ của bạn
    fetch('/api/saveText', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify({ text: editedText }),
    })
        .then(response => response.json())
        .then(data => {
            // Xử lý phản hồi từ máy chủ (nếu cần)
            console.log('Đã lưu thành công:', data);
        })
        .catch(error => {
            console.error('Lỗi khi gửi yêu cầu:', error);
        });
}