# get-configs

This script will allow you to view all YAML's in a directory as a single JSON object using [JLESS](https://jless.io)

It is also necessary for [JQ](https://stedolan.github.io/jq/) to be installed for processing JSON unmarshall requests.

The best way to run this is to place the .sh file in your home directory and create an alias in your .zshrc (or equivalent) like so:

`alias get-configs=~./get-configs.sh`

Then, all you need to do is navigate to a directory full of YAML's and run `get-configs`

To quit, you can use `q`
