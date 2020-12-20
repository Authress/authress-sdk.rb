# swagger_client

SwaggerClient - the Ruby gem for the Authress

<p> <h2>Authorization</h2> <p>Authorization for Authress is handled one of two different ways. Both mechanisms use oauth2 <i>Bearer</i> tokens.</p> <br> <h4>Identity Provider JWT</h4> <p>Hook up your preferred identity provider directly to Authress. Authress will verify JWTs sourced from that identify provider and allow direct integration with these APIs. Any OIDC JWT provider works, Google, Auth0, Okta, etc... With this mechanism your web app can make direct calls to the permissions API on behalf of your users. <br> <a href=\"https://authress.io/app/#/manage?focus=identity\">Link identity provider</a> </p>  <br> <h4>Authress Clients</h4> <p>Regardless of using direct identity provider integration, with the API you can create Authress clients which can call any of the methods on the API. Your users won't be able to directly make API calls, all web app integrations must go through a service which stores the Authress private key. <br> <a href=\"https://authress.io/app/#/manage?focus=clients\">Create Authress service client</a> </p>  <br> <h2>Usage</h2> <h4>Billable APIs</h4> <p>Most of the api available is completely free. Use it to populate your roles and configure your account. You'll only be charged for the ones marked as Billable.</p> <p><ul>   <li><i class=\"far fa-fw fa-money-bill-alt text-primary\"></i> <span class=\"text-primary\">Billable</span> - <small>These APIs count as calls for your account and will be charged.</small></li>   <li><i class=\"fas fa-fw fa-angle-double-right text-secondary\"></i> <span class=\"text-secondary\">Free</span> - <small>These are totally free.</small></li>   <li><i class=\"fas fa-fw fa-balance-scale text-secondary\"></i> <span class=\"text-secondary\">Condition</span> - <small>Are conditionally free, see api methods for details.</small></li> </ul></p>  <br> <h4>API Access</h4> <p>Access to the following APIs is based on Authress permissions, not the application permissions assigned in Authress to the application services. Each resource is tagged with the required permission <span class=\"badge badge-outline-secondary\">Action: Resource</span> </p>

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: v1
- Package version: 1.0.0
- Build package: io.swagger.codegen.v3.generators.ruby.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build swagger_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./swagger_client-1.0.0.gem
```
(for development, run `gem install --dev ./swagger_client-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'swagger_client', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'swagger_client', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'swagger_client'
# Setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::AccessRecordsApi.new
body = SwaggerClient::Body8.new # Body8 | 


begin
  #Claim a resource by an allowed user.
  result = api_instance.create_claim(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccessRecordsApi->create_claim: #{e}"
end
# Setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::AccessRecordsApi.new
body = SwaggerClient::Body5.new # Body5 | 


begin
  #Create a new invite.
  api_instance.create_invite(body)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccessRecordsApi->create_invite: #{e}"
end
# Setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::AccessRecordsApi.new
body = SwaggerClient::Body3.new # Body3 | 


begin
  #Create a new access record.
  result = api_instance.create_record(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccessRecordsApi->create_record: #{e}"
end
# Setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::AccessRecordsApi.new
invite_id = 'invite_id_example' # String | The identifier of the invite.


begin
  #Delete an invite.
  api_instance.delete_invite(invite_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccessRecordsApi->delete_invite: #{e}"
end
# Setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::AccessRecordsApi.new
record_id = 'record_id_example' # String | The identifier of the access record.


begin
  #Deletes an access record.
  api_instance.delete_record(record_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccessRecordsApi->delete_record: #{e}"
end
# Setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::AccessRecordsApi.new
record_id = 'record_id_example' # String | The identifier of the access record.


begin
  #Get an access record for the account.
  result = api_instance.get_record(record_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccessRecordsApi->get_record: #{e}"
end
# Setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::AccessRecordsApi.new
opts = { 
  limit: 20, # Integer | Max number of results to return
  cursor: 'cursor_example', # String | Continuation cursor for paging (will automatically be set)
  filter: 'filter_example', # String | Filter to search records by. This is a case insensitive search through every text field.
  status: 'status_example' # String | Filter records by their current status.
}

begin
  #Get all account records.
  result = api_instance.get_records(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccessRecordsApi->get_records: #{e}"
end
# Setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::AccessRecordsApi.new
invite_id = 'invite_id_example' # String | The identifier of the invite.


begin
  #Accept an invite.
  result = api_instance.respond_to_invite(invite_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccessRecordsApi->respond_to_invite: #{e}"
end
# Setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::AccessRecordsApi.new
body = SwaggerClient::Body4.new # Body4 | 
record_id = 'record_id_example' # String | The identifier of the access record.


begin
  #Update an access record.
  result = api_instance.update_record(body, record_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccessRecordsApi->update_record: #{e}"
end
# Setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::AccountsApi.new
account_id = 'account_id_example' # String | The unique identifier for the account


begin
  #Get account information.
  result = api_instance.get_account(account_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountsApi->get_account: #{e}"
end
# Setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::AccountsApi.new

begin
  #Get all linked identities for this account.
  result = api_instance.get_account_identities
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountsApi->get_account_identities: #{e}"
end
# Setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::AccountsApi.new

begin
  #Get all accounts user has access to
  result = api_instance.get_accounts
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountsApi->get_accounts: #{e}"
end
# Setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::AccountsApi.new
body = SwaggerClient::Body9.new # Body9 | 


begin
  #Link a new account identity.
  api_instance.link_identity(body)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountsApi->link_identity: #{e}"
end
# Setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::MetadataApi.new
user_id = 'user_id_example' # String | The owner of the data.
resource_uri = 'resource_uri_example' # String | The resource the data is attached to.


begin
  #Get the metadata for a resource.
  result = api_instance.get_user_metadata(user_id, resource_uri)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MetadataApi->get_user_metadata: #{e}"
end
# Setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::MetadataApi.new
body = SwaggerClient::Body.new # Body | <strong>Important</strong>: Data request object which contains properties identifying the data as well as the metadata itself. While there is limited access, the data saved here should be considered encrypted with best practices (Encrypted in Transit and Encrypted at Rest only). However, while Authress will to store and access in the data in a safe way, usage of this endpoint affirms this data must be application data and not user data. If there are explicit regulations or compliances regarding the data and how it should be saved here, this endpoint must not be used. That includes, but is not limited to--user personal data, data that is protected by GDPR and similar data protection regulations.
user_id = 'user_id_example' # String | The owner of the data.
resource_uri = 'resource_uri_example' # String | The resource the data is attached to.


begin
  #Update the metadata for a resource.
  result = api_instance.update_user_metadata(body, user_id, resource_uri)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MetadataApi->update_user_metadata: #{e}"
end
# Setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::ResourcePermissionsApi.new
resource_uri = 'resource_uri_example' # String | The uri path of a resource to validate, must be URL encoded, uri segments are allowed.


begin
  #Get a resource permissions object.
  result = api_instance.get_resource_permissions(resource_uri)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ResourcePermissionsApi->get_resource_permissions: #{e}"
end
# Setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::ResourcePermissionsApi.new
resource_uri = 'resource_uri_example' # String | The uri path of a resource to validate, must be URL encoded, uri segments are allowed.
opts = { 
  limit: 20, # Integer | Max number of results to return
  cursor: 'cursor_example' # String | Continuation cursor for paging (will automatically be set)
}

begin
  #Get the users that have explicit access to this resource.
  result = api_instance.get_resource_users(resource_uri, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ResourcePermissionsApi->get_resource_users: #{e}"
end
# Setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::ResourcePermissionsApi.new

begin
  #List resource configurations.
  result = api_instance.get_resources
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ResourcePermissionsApi->get_resources: #{e}"
end
# Setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::ResourcePermissionsApi.new
body = SwaggerClient::Body2.new # Body2 | The contents of the permission to set on the resource. Overwrites existing data.
resource_uri = 'resource_uri_example' # String | The uri path of a resource to validate, must be URL encoded, uri segments are allowed.


begin
  #Update a resource permissions object.
  api_instance.update_resource_permissions(body, resource_uri)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ResourcePermissionsApi->update_resource_permissions: #{e}"
end
# Setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::RolesApi.new
body = SwaggerClient::Body6.new # Body6 | 


begin
  #Create a role.
  result = api_instance.create_role(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RolesApi->create_role: #{e}"
end
# Setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::RolesApi.new
role_id = 'role_id_example' # String | The identifier of the role.


begin
  #Deletes a role.
  api_instance.delete_role(role_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RolesApi->delete_role: #{e}"
end
# Setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::RolesApi.new
role_id = 'role_id_example' # String | The identifier of the role.


begin
  #Get a role.
  result = api_instance.get_role(role_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RolesApi->get_role: #{e}"
end
# Setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::RolesApi.new
body = SwaggerClient::Body7.new # Body7 | 
role_id = 'role_id_example' # String | The identifier of the role.


begin
  #Update a role.
  result = api_instance.update_role(body, role_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RolesApi->update_role: #{e}"
end
# Setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::ServiceClientsApi.new
body = SwaggerClient::Body10.new # Body10 | 


begin
  #Create a new client.
  result = api_instance.create_client(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ServiceClientsApi->create_client: #{e}"
end
# Setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::ServiceClientsApi.new
client_id = 'client_id_example' # String | The unique identifier of the client.
key_id = 'key_id_example' # String | The id of the access key to remove from the client.


begin
  #Remove an access key for a client.
  api_instance.delete_access_key(client_id, key_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ServiceClientsApi->delete_access_key: #{e}"
end
# Setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::ServiceClientsApi.new
client_id = 'client_id_example' # String | The unique identifier for the client.


begin
  #Delete a client.
  api_instance.delete_client(client_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ServiceClientsApi->delete_client: #{e}"
end
# Setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::ServiceClientsApi.new
client_id = 'client_id_example' # String | The unique identifier for the client.


begin
  #Get a client.
  result = api_instance.get_client(client_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ServiceClientsApi->get_client: #{e}"
end
# Setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::ServiceClientsApi.new

begin
  #Get clients collection.
  result = api_instance.get_clients
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ServiceClientsApi->get_clients: #{e}"
end
# Setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::ServiceClientsApi.new
client_id = 'client_id_example' # String | The unique identifier of the client.


begin
  #Request a new access key.
  result = api_instance.request_access_key(client_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ServiceClientsApi->request_access_key: #{e}"
end
# Setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::ServiceClientsApi.new
body = SwaggerClient::Body11.new # Body11 | 
client_id = 'client_id_example' # String | The unique identifier for the client.


begin
  #Update a client.
  result = api_instance.update_client(body, client_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ServiceClientsApi->update_client: #{e}"
end
# Setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::UserPermissionsApi.new
user_id = 'user_id_example' # String | The user to check permissions on
resource_uri = 'resource_uri_example' # String | The uri path of a resource to validate, must be URL encoded, uri segments are allowed, the resource must be a full path, and permissions are not inherited by sub-resources.
permission = 'permission_example' # String | Permission to check, '*' and scoped permissions can also be checked here.


begin
  #Check to see if a user has permissions to a resource.
  api_instance.authorize_user(user_id, resource_uri, permission)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UserPermissionsApi->authorize_user: #{e}"
end
# Setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::UserPermissionsApi.new
user_id = 'user_id_example' # String | The user to create an impersonation token for.
token_id = 'token_id_example' # String | The relevant token identifier


begin
  #Disable a token.
  api_instance.disable_user_token(user_id, token_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UserPermissionsApi->disable_user_token: #{e}"
end
# Setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::UserPermissionsApi.new
user_id = 'user_id_example' # String | The user to check permissions on
resource_uri = 'resource_uri_example' # String | The uri path of a resource to validate, must be URL encoded, uri segments are allowed.


begin
  #Get the permissions a user has to a resource.
  result = api_instance.get_user_permissions_for_resource(user_id, resource_uri)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UserPermissionsApi->get_user_permissions_for_resource: #{e}"
end
# Setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::UserPermissionsApi.new
user_id = 'user_id_example' # String | The user to check permissions on
opts = { 
  resource_uri: '*', # String | The top level uri path of a resource to query for. Will only match explicit or collection resource children. Will not partial match resource names.
  permissions: 'permissions_example', # String | Permission to check, '*' and scoped permissions can also be checked here. By default if the user has any permission explicitly to a resource, it will be included in the list.
  limit: 20, # Integer | Max number of results to return
  cursor: 'cursor_example' # String | Continuation cursor for paging (will automatically be set)
}

begin
  #Get the resources a user has to permission to.
  result = api_instance.get_user_resources(user_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UserPermissionsApi->get_user_resources: #{e}"
end
# Setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::UserPermissionsApi.new
body = SwaggerClient::Body1.new # Body1 | The contents of the permission to set on the token. Will be used instead of the users or clients full permissions. Cannot include permissions that the user or client do not have.
user_id = 'user_id_example' # String | The user to create an impersonation token for.


begin
  #Request a user token with additional configuration.
  result = api_instance.request_user_token(body, user_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UserPermissionsApi->request_user_token: #{e}"
end
```
