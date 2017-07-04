#The readme

JENKINS DOES NOT TERMINATE ON JEST TEST
-Did this: add --forceExit to package.json
  "scripts": {
    "start": "react-scripts start",
    "build": "react-scripts build",
    "test": "react-scripts test --env=jsdom --forceExit",
    "eject": "react-scripts eject"
  }
-Result: Didn't work
-Conclusion: Avoid using jest for testing with Jenkins(except for manual testing)
-Action: Use Mocha instead.



First setup docker registry and install files by running
#installed in this order
create-react-app
jenkins
docker
