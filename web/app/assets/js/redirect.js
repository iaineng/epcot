(function () {
    const historyStr = localStorage.getItem('history')
    const histories = historyStr ? JSON.parse(historyStr) : []

    if (histories.length === 0) {
        return
    }

    window.location.href = histories[histories.length - 1].url
})()