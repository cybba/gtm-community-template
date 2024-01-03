___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "displayName": "Cybba Container Tag Template",
  "categories": ["AFFILIATE_MARKETING", "ADVERTISING", "EMAIL_MARKETING", "ANALYTICS", "ATTRIBUTION", "CONVERSIONS", "LEAD_GENERATION", "MARKETING", "PERSONALIZATION", "REMARKETING"],
  // additional template properties, etc...
}

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Cybba",
  "brand": {
    "id": "brand_dummy",
    "displayName": "",
    "thumbnail": "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAAAAAAD/2wBDAAICAgICAQICAgIDAgIDAwYEAwMDAwcFBQQGCAcJCAgHCAgJCg0LCQoMCggICw8LDA0ODg8OCQsQERAOEQ0ODg7/2wBDAQIDAwMDAwcEBAcOCQgJDg4ODg4ODg4ODg4ODg4ODg4ODg4ODg4ODg4ODg4ODg4ODg4ODg4ODg4ODg4ODg4ODg7/wAARCAAYABgDAREAAhEBAxEB/8QAGQAAAgMBAAAAAAAAAAAAAAAAAAgFBgcJ/8QAIhAAAgMAAgICAwEAAAAAAAAAAQMCBAUGEQASEyEHJDJR/8QAGQEBAQEAAwAAAAAAAAAAAAAAAAMCAQQF/8QAIhEAAQQBBAIDAAAAAAAAAAAAAAECAxESBAUTIRQxQWGR/9oADAMBAAIRAxEAPwDvTf0aWXkOvaVxOdSUAWWLLoqXAE9DuUiAPs9ffmHuZG3Jy0hWGGbUSJHC1Xvd8Ilr+AzTzV0rVlmhWVWrTELDZviIKkREgSJPQPUon7/0ebJEn4ArnJ+PfknPnybRo07+3vM3C/Esp3W2Kl2DHy+CpZoyEVpQpMjCcxL+oRn2ST0qzhFVi5N9oZzs/jfZdR5TxPD5VSY3R1GNZo6HILE5XImupc6z63xmMGTembBYHsV+g9Sf58h5Gnc7HLs767buDY+Tj6q7+i45efzKxz7EYjlFPPwBvIt59GHJrNp9VcrCfmrydMfsrctbjGPqfSTTD2EeurnmjceCgeAHgH//2Q\u003d\u003d"
  },
  "description": "Template for Cybba\u0027s Marketing Automation and Advertising Container Tag",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "siteID",
    "displayName": "Cybba Site ID",
    "simpleValueType": true,
    "help": "Copy-paste the Site ID provided by cybba. Will appear similar to xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
    "valueValidators": [
      {
        "type": "REGEX",
        "errorMessage": "ID cannot be empty and must be the correct format",
        "enablingConditions": [],
        "args": [
          "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$"
        ]
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

// Require the necessary APIs
const logToConsole = require('logToConsole');
const injectScript = require('injectScript');
const queryPermission = require('queryPermission');

// Get the Site ID the user input into the text field
const cybbaID = data.siteID;

// If the user chose to log debug output, initialize the logging method
const log = data.debug ? logToConsole : (() => {});

log('Cybba: Loading script from ' + cybbaID);

// If the script loaded successfully, log a message and signal success
const onSuccess = () => {
  log('Cybba: Script loaded successfully.');
  data.gtmOnSuccess();
};

// If the script fails to load, log a message and signal failure
const onFailure = () => {
  log('Cybba: Script load failed.');
  data.gtmOnFailure();
};

// If the cybbaID input by the user matches the permissions set for the template,
// inject the script with the onSuccess and onFailure methods as callbacks.
if (queryPermission('inject_script', 'https://www.rtb123.com/tags/' + cybbaID + '/btp.js')) {
  injectScript('https://www.rtb123.com/tags/' + cybbaID + '/btp.js', onSuccess, onFailure);
} else {
  log('Cybba: Script load failed due to permissions mismatch.');
  data.gtmOnFailure();
}


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://www.rtb123.com/tags/*/btp.js"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 12/22/2023, 1:26:40 PM


