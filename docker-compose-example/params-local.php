<?php

// @check https://github.com/ganigeorgiev/presentator/blob/master/common/config/params.php for list with all parameters.
return [
    // base url of the app service used for building the absolute url of the uploaded screens
    // (required for backward compatability with the old api service)
    'publicUrl' => 'http://app.presentator.local',

    // !!! insert a secret key in the following (if it is empty) - this is required for User validation
    'activationSalt' => 'a06a77ce12624b9207abe1cfc39a559f',

    // !!! insert a secret key in the following (if it is empty) - this is required for API User authentication
    'apiUserSecretKey' => '652P_PqYpXY2o0FJC18YgBQn6zIeTqDP',

    // service email addresses
    'noreplyEmail' => 'no-reply@example.com',
    'supportEmail' => 'support@example.com',
];
