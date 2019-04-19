global.expect = require('expect');

const jsdom = require('jsdom');
const path = require('path');

before(function(done) {
  const src = path.resolve(__dirname, '..', './src/createStore.js');
  const babelResult = require('babel-core').transformFileSync(src, {
    presets: ['env']
  });
  const html = path.resolve(__dirname, '..', 'index.html');

  jsdom.env(html, [], {
    src: babelResult.code
  }, (err, window) => {
    if (err) {
      return done(err);
    }

    return done();
  });
});
