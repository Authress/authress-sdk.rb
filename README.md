# authress-sdk.rb
This is the Authress SDK used to integrate with the authorization as a service provider Authress at https://authress.io.

[![Gem Version](https://badge.fury.io/rb/authress-sdk.svg)](http://badge.fury.io/rb/authress-sdk)


## Usage

```sh
gem install authress-sdk
```

Then required the package:
```rb
const { AuthressClient } = require('authress-sdk');
```

## Getting started examples

### Authorize using a user token
```rb
const { AuthressClient } = require('authress-sdk');

# create an instance of the API class during service initialization
# Replace DOMAIN with the Authress domain for your account
const authressClient = new AuthressClient({ baseUrl: 'https://DOMAIN.api-REGION.authress.io' })
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::UserPermissionsApi.new

# on api route
[route('/resources/<resourceId>')]
function getResource(resourceId) {
  # Get the user token and pass it to authress
  const authorizationToken = request.headers.get('authorization');
  authressClient.setToken(authorizationToken);

  # Check Authress to authorize the user
  user_id = 'user_id_example' # String | The user to check permissions on
  resource_uri = `resources/${resourceId}` # String | The uri path of a resource to validate, must be URL encoded, uri segments are allowed, the resource must be a full path, and permissions are not inherited by sub-resources.
  permission = 'READ' # String | Permission to check, '*' and scoped permissions can also be checked here.
  begin
    #Check to see if a user has permissions to a resource.
    api_instance.authorize_user(user_id, resource_uri, permission)
  rescue SwaggerClient::ApiError => e
    # Will throw except if the user is not authorized to read the resource
    if (e.status === 404) {
      return { statusCode: 404 };
    }
    puts "Exception when calling UserPermissionsApi->authorize_user: #{e}"
    throw e;
  end

  # On success, continue with the route code to load resource and return it
  return { resource: {}, statusCode: 200 };
```

### Authorize with a service client
```rb
const { AuthressClient, ServiceClientTokenProvider } = require('authress-sdk');

# create an instance of the API class during service initialization
# Replace DOMAIN with the Authress domain for your account

# Create a service client in the Authress management portal and past the access token here
# This will generate a token automatically instead of passing the user token to the api
const accessToken = 'eyJrZXlJ....';
const authressClient = new AuthressClient({ baseUrl: 'https://DOMAIN.api-REGION.authress.io' }, new ServiceClientTokenProvider(accessToken));
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::UserPermissionsApi.new

# on api route
[route('/resources/<resourceId>')]
function getResource(resourceId) {
  # Check Authress to authorize the user
  user_id = 'user_id_example' # String | The user to check permissions on
  resource_uri = `resources/${resourceId}` # String | The uri path of a resource to validate, must be URL encoded, uri segments are allowed, the resource must be a full path, and permissions are not inherited by sub-resources.
  permission = 'READ' # String | Permission to check, '*' and scoped permissions can also be checked here.
  begin
    #Check to see if a user has permissions to a resource.
    api_instance.authorize_user(user_id, resource_uri, permission)
  rescue SwaggerClient::ApiError => e
    # Will throw except if the user is not authorized to read the resource
    if (e.status === 404) {
      return { statusCode: 404 };
    }
    puts "Exception when calling UserPermissionsApi->authorize_user: #{e}"
    throw e;
  end

  # On success, continue with the route code to load resource and return it
  return { resource: {}, statusCode: 200 };
```

### Creating resources
When a user creates a resource in your application, we want to ensure that they get access own that resource.

You may receive **User does not have sufficient access to grant permissions to resources** as an error along with the status code **403**. This means that the service client or user jwt does not have access to create the access record. If using a service client, go to the Authress portal and create a one time record which grants the service client `Authress:Owner` to `Resources/` so that it can manage access records for these types of resources.

```rb
begin
  #Create a new access record.
  newRecord = SwaggerClient::Body3.new {
    name: `Access To New Resource ${NewResourceId}`,
    users: [{ userId: requestUserId }],
    statements: [{
      resources: [{ resourceUri: `Resources/${NewResourceId}` }],
      # Owner by default gives full control over this new resource, including the ability to grant others access as well.
      roles: ['Authress:Owner']
    }]
  };
  api_instance = SwaggerClient::AccessRecordsApi.new
  result = api_instance.create_record(newRecord)
  puts result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccessRecordsApi->create_record: #{e}"
end
```

### Verifying a token using the token verifier
```rb
const { TokenVerifier } = require('authress-sdk');
const cookieManager = require('cookie');

begin
  # Grab authorization cookie from the request, the best way to do this will be framework specific.
  const cookies = cookieManager.parse(request.headers.cookie || '');
  const userToken = cookies.authorization || request.headers.Authorization.split(' ')[1];
  # Specify your custom domain for tokens. Configurable at https://authress.io/app/#/manage?focus=applications
  # Replacing the domain with your login url
  const userIdentity = await TokenVerifier('https://login.application.com', userToken);
rescue SwaggerClient::ApiError => e
  console.log('User is unauthorized', error);
  return { statusCode: 401 };
}
```
