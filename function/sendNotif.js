
var admin = require("firebase-admin");

var serviceAccount = require("F:/flutter/projects/messenger_plus/keyJson.json");

admin.initializeApp({
    credential: admin.credential.cert(serviceAccount)
});

var registrationtoken = 'dMXui_GgQN2kdr5qPNfGZR:APA91bGeY8qiPeLDa9_LTQZGAQNxqLFAMrMRQwq9qTZblp3kUwav6dx3n0ZTZ0YWX5G-nhCzIG_K-fwdVLoPoF58ZKN3QhVrHTTGN8KOiGDurUi_cEhOfCO_LyAcTu_XdBAvRipgtYCU';


var message = {
    data: {
        title: 'Новое Сообщение',
        body: 'че то важное походу хз'
    },
    token: registrationtoken,
};

// Send a message to the device corresponding to the provided
// registration token.
admin.messaging().send(message)
    .then((response) => {
        // Response is a message ID string.
        console.log('Successfully sent message:', response);
    })
    .catch((error) => {
        console.log('Error sending message:', error);
    });