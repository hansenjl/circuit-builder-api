# Circuit Builder API

This is the back end for the Circuit Builder React app found here: https://github.com/hansenjl/circuit-builder-client


## Overview

This App allows you to easily create simple series, parallel, and combination circuits. Its intended use is for physics teachers who need to create many different circuit problems. Keep in mind that the values are rounded to two decimal places so current and resistance values may vary from the exact value by 0.01 or 0.02.

### Models
The circuit problems consist of three models. At the highest level, each circuit is represented by a problem with attributes to represent the total current, total voltage, and total resistance. The problem is made up of many loops. Each loop keeps track of the loop voltage, loop current, and loop resistance. The loop is also made up of many resistors.

---
## Installation
To use the application locally, fork and clone the repo. Then run `bundle install` from the directory. Next run `rake db:migrate` to load the databases. Then, run `rails s` and navigate to `localhost:3000` in your browser. To use with the client-side, start the server on a different port by instead running `rails s -p 3001` and allow it to run in the background while using Circuit-Builder-Client found here: https://github.com/hansenjl/circuit-builder-client

---

## Contributing
Feel free to submit a pull request.

---

## License

This is created with a MIT license.
