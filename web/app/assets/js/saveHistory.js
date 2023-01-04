(function () {
    const historyStr = localStorage.getItem('history')
    const histories = historyStr ? JSON.parse(historyStr) : []
    histories.push({
        url: window.location.href,
    })

    if (histories.length > 10) {
        histories.shift()
    }

    localStorage.setItem('history', JSON.stringify(histories))
})()