var total_tils = 0;

document.querySelectorAll('h3').forEach(element => {
    count_tils(element);
});

function count_tils(element) {
    var sibling;

    if (sibling = element.nextElementSibling) {
        var list = sibling.querySelectorAll('li');
        if (list.length > 0) {
            var text_content = element.textContent + ' (' + list.length + ' tils)';
            element.textContent = text_content;

            total_tils += list.length;
        }
    }
}

var total = document.getElementById('header-1');
text_content = total.textContent + ' (' + total_tils + ' tils)';
total.textContent = text_content;
