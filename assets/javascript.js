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

var categories = 0;

document.querySelectorAll('a[href="#categories"] > ul > li').forEach(element => {
    categories += categories + 1;
});

const count = document.createElement('p');
count.textContent = 'A collection of ' + total_tils + ' tils in total, divided on ' + categories + ' categories';

var sidebar = document.getElementById('sidebar');
sidebar.appendChild(count);
