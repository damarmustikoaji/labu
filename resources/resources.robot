*** Variables ***
${url}                  http://kumparan.com
${searchField}          id:track_search_keyword
${searchResult}         xpath://div[@data-qa-id="story-result-card"]
${searchNotif}          xpath://div[@data-qa-id="story-not-found"]
${titleResult}          xpath://span[@data-qa-id="title"]
${notifikasi}           id:onesignal-slidedown-dialog
${notifikasiCancel}     id:onesignal-slidedown-cancel-button
${buttonMasuk}          xpath://button[@data-qa-id="hd-login"]
${emailField}           xpath://input[@data-qa-id="input-email"]
${passwordField}        xpath://input[@data-qa-id="input-password"]
${buttonSave}           xpath://button[@data-qa-id="btn-save"]
${buttonRegister}       xpath://a[@href="/register" and @data-qa-id="btn-register"]
${buttonProcess}        xpath://button[@data-qa-id="btn-process"]