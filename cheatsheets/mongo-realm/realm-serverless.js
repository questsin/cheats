exports = async function (changeEvent) {
    // Simple access to stored values/secrets
    const twilioSID = context.values.get("twilioSID");
    const twilioToken = context.values.get("twilioToken");

    // Import key packages from NPM 
    const twilioClient = require('twilio')(twilioSID, twilioToken, {
        lazyLoading: true
    });

    const orderDetails = changeEvent.fullDocument.orderDetails;

    // Combine multiple Functions into a single request
    const ordertextTemplate = await context.functions.execute("orderTextTemplate", orderDetails);

    // Send a text message alert 
    twilioClient.messages
        .create(orderTextTemplate)
        .then(message => console.log("Message sent: " + message.sid))
        .catch(error => console.log("Error encountered: " + error));
};