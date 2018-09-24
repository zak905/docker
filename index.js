const Consumer = require('sqs-consumer');

const app = Consumer.create({
  queueUrl: process.env.SQS_URL,
  handleMessage: (message, done) => {
    console.log(JSON.parse(unescape(JSON.stringify(message.Body))))
    console.log("-------------------------------------------------------------------------------------------------------------------")
    done();
  }
});

app.on('error', (err) => {
  console.log(err.message);
});

app.start();