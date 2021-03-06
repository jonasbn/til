var total_tils = 0;

document.querySelectorAll('h3').forEach(element => {
    count_tils(element);
});

function count_tils(element) {
    var sibling;

    if (sibling = element.nextElementSibling) {
        var list = sibling.querySelectorAll('li');
        if (list.length > 0) {
            var descriptor = 'tils';
            if (list.length == 1) {
                descriptor = 'til';
            }

            var text_content = element.textContent + ' (' + list.length + ' ' + descriptor + ')';
            element.textContent = text_content;

            total_tils += list.length;
        }
    }
}

var category_count = 0;

document.querySelectorAll('a[href="#categories"]').forEach(element => {
    var sibling;
    if (sibling = element.nextElementSibling) {
        categories = sibling.querySelectorAll('ul > li');
        category_count = categories.length;
    }
});

const count = document.createElement('p');
count.textContent = 'A collection of ' + total_tils + ' tils in total, split on ' + category_count + ' categories';

var sidebar = document.getElementById('sidebar');
sidebar.appendChild(count);
