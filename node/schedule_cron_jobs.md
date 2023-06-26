# Schedule Cron Jobs in Node.js

I am familiar with cron jobs from working with Unix, the other day I was presented to away to schedule cron-jobs via a Node-server.

The implementation is based on `node-cron`. It even uses the same syntax as the Unix cron jobs.

First you install the package:

```shell
npm install node-cron@3.0.0
```

Then you can create a script like this:

```javascript
const cron = require('node-cron');

// Schedule tasks to be run on the server.
cron.schedule('* * * * *', function() {
  console.log('running a task every minute');
});
```

Run the script and you will see the output every minute.

```shell
node cron-ping.js
```

This is pretty awesome for pretty basic stuff, I can feel that the approach requires some getting used to since I am used to the _old school_ Unix approach and would prefer to have this separated from the Node.js application - but I can also see the benefits of having it all in one place.

For more tips on cron jobs, see my [scheduling with cron](../cron/scheduling_with_cron) TIL.

## Resources and References

- [DigitalOcean tutorial: "How To Use node-cron to Run Scheduled Jobs in Node.js"][DOC]
- [NPM: node-cron][NPM]

[DOC]: https://www.digitalocean.com/community/tutorials/nodejs-cron-jobs-by-examples
[NPM]: https://www.npmjs.com/package/node-cron
