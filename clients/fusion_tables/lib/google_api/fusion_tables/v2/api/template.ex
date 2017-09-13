# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.FusionTables.V2.Api.Template do
  @moduledoc """
  API calls for all endpoints tagged `Template`.
  """

  alias GoogleApi.FusionTables.V2.Connection
  import GoogleApi.FusionTables.V2.RequestBuilder


  @doc """
  Deletes a template

  ## Parameters

  - connection (GoogleApi.FusionTables.V2.Connection): Connection to server
  - table_id (String): Table from which the template is being deleted
  - template_id (Integer): Identifier for the template which is being deleted
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec fusiontables_template_delete(Tesla.Env.client, String.t, Integer.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def fusiontables_template_delete(connection, table_id, template_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query
    }
    %{}
    |> method(:delete)
    |> url("/fusiontables/v2/tables/#{table_id}/templates/#{template_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Retrieves a specific template by its id

  ## Parameters

  - connection (GoogleApi.FusionTables.V2.Connection): Connection to server
  - table_id (String): Table to which the template belongs
  - template_id (Integer): Identifier for the template that is being requested
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.FusionTables.V2.Model.Template{}} on success
  {:error, info} on failure
  """
  @spec fusiontables_template_get(Tesla.Env.client, String.t, Integer.t, keyword()) :: {:ok, GoogleApi.FusionTables.V2.Model.Template.t} | {:error, Tesla.Env.t}
  def fusiontables_template_get(connection, table_id, template_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query
    }
    %{}
    |> method(:get)
    |> url("/fusiontables/v2/tables/#{table_id}/templates/#{template_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.FusionTables.V2.Model.Template{})
  end

  @doc """
  Creates a new template for the table.

  ## Parameters

  - connection (GoogleApi.FusionTables.V2.Connection): Connection to server
  - table_id (String): Table for which a new template is being created
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (Template): 

  ## Returns

  {:ok, %GoogleApi.FusionTables.V2.Model.Template{}} on success
  {:error, info} on failure
  """
  @spec fusiontables_template_insert(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.FusionTables.V2.Model.Template.t} | {:error, Tesla.Env.t}
  def fusiontables_template_insert(connection, table_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/fusiontables/v2/tables/#{table_id}/templates")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.FusionTables.V2.Model.Template{})
  end

  @doc """
  Retrieves a list of templates.

  ## Parameters

  - connection (GoogleApi.FusionTables.V2.Connection): Connection to server
  - table_id (String): Identifier for the table whose templates are being requested
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :max_results (Integer): Maximum number of templates to return. Optional. Default is 5.
    - :page_token (String): Continuation token specifying which results page to return. Optional.

  ## Returns

  {:ok, %GoogleApi.FusionTables.V2.Model.TemplateList{}} on success
  {:error, info} on failure
  """
  @spec fusiontables_template_list(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.FusionTables.V2.Model.TemplateList.t} | {:error, Tesla.Env.t}
  def fusiontables_template_list(connection, table_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"maxResults" => :query,
      :"pageToken" => :query
    }
    %{}
    |> method(:get)
    |> url("/fusiontables/v2/tables/#{table_id}/templates")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.FusionTables.V2.Model.TemplateList{})
  end

  @doc """
  Updates an existing template. This method supports patch semantics.

  ## Parameters

  - connection (GoogleApi.FusionTables.V2.Connection): Connection to server
  - table_id (String): Table to which the updated template belongs
  - template_id (Integer): Identifier for the template that is being updated
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (Template): 

  ## Returns

  {:ok, %GoogleApi.FusionTables.V2.Model.Template{}} on success
  {:error, info} on failure
  """
  @spec fusiontables_template_patch(Tesla.Env.client, String.t, Integer.t, keyword()) :: {:ok, GoogleApi.FusionTables.V2.Model.Template.t} | {:error, Tesla.Env.t}
  def fusiontables_template_patch(connection, table_id, template_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"body" => :body
    }
    %{}
    |> method(:patch)
    |> url("/fusiontables/v2/tables/#{table_id}/templates/#{template_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.FusionTables.V2.Model.Template{})
  end

  @doc """
  Updates an existing template

  ## Parameters

  - connection (GoogleApi.FusionTables.V2.Connection): Connection to server
  - table_id (String): Table to which the updated template belongs
  - template_id (Integer): Identifier for the template that is being updated
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (Template): 

  ## Returns

  {:ok, %GoogleApi.FusionTables.V2.Model.Template{}} on success
  {:error, info} on failure
  """
  @spec fusiontables_template_update(Tesla.Env.client, String.t, Integer.t, keyword()) :: {:ok, GoogleApi.FusionTables.V2.Model.Template.t} | {:error, Tesla.Env.t}
  def fusiontables_template_update(connection, table_id, template_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"body" => :body
    }
    %{}
    |> method(:put)
    |> url("/fusiontables/v2/tables/#{table_id}/templates/#{template_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.FusionTables.V2.Model.Template{})
  end
end
