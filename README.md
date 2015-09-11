# Docker Hubot
A base image for Hubot based on the official node image

## Example Usage
Create a minimal Dockerfile

    FROM judoole/hubot:latest

Create a ```package.json``` with the modules you would like to use, including hubot.

    {
      "name": "hubot",
      "version": "0.1.0",
      "private": true,
      "description": "The company bot!",
      "dependencies": {
        "hubot": "^2.16.0",
        "hubot-help": "^0.1.1",
        "hubot-diagnostics": "^0.0.1"
      },
      "engines": {
        "node": "0.12.x"
      }
    }

Also a ```external-scripts.json``` is needed

    [
      "hubot-help",
      "hubot-diagnostics"
    ]

Add a folder with scripts at your own convenience.

If you would like to use an adapter start like so ```docker run hubot hubot --adapter=slack```

## Redis
### Docker compose
TODO
