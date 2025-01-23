import './bootstrap';

// let delete_btn = getElementByName('delete_btn');

let password = 'root';
function CheckAccess() {
    let alert_answer = alert("Please, write the password");
    if(alert_answer == password) {
        console.log('okokokok')
    } else {
        console.log('fafafaf')
    }
}
