(function () {
    const descTempChildren = $('#descTemp').children()
    const elGameDesc = $('.game_desc')
    const writeDescTags = ['P', 'H6']
    let written = false
    for (let i = 0; i < descTempChildren.length; i++) {
        const el = descTempChildren[i]
        if (writeDescTags.includes(el.tagName)) {
            written = true
        }

        switch (el.tagName) {
            case 'H5':
                $('.game_name').text(el.innerText)
                break
            case 'H6':
                elGameDesc.append(`<div class="game_desc_title">${el.innerText}</div>`)
                break
            case 'BR':
                if (written) {
                    elGameDesc.append('<br>')
                }
                break
            case 'P':
                elGameDesc.append(`<div class="game_desc_detail">${el.innerText}</div>`)
                break
        }
    }
})()