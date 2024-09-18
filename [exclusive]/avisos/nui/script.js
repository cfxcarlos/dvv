function startTimer(duration, display) {
    let timer = duration, minutes, seconds;
    const interval = setInterval(() => {
        minutes = parseInt(timer / 60, 10);
        seconds = parseInt(timer % 60, 10);

        minutes = minutes < 10 ? "0" + minutes : minutes;
        seconds = seconds < 10 ? "0" + seconds : seconds;

        display.textContent = minutes + ":" + seconds;

        if (--timer < 0) {
            clearInterval(interval);
            display.textContent = "Desconectando os cabos...";
        }
    }, 1000);
}

window.onload = () => {
    const fiveMinutes = 60 * 5;
    const display = document.querySelector('#countdown');
    startTimer(fiveMinutes, display);
};
