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

defmodule GoogleApi.DFAReporting.V28.Api.Subaccounts do
  @moduledoc """
  API calls for all endpoints tagged `Subaccounts`.
  """

  alias GoogleApi.DFAReporting.V28.Connection
  import GoogleApi.DFAReporting.V28.RequestBuilder


  @doc """
  Gets one subaccount by ID.

  ## Parameters

  - connection (GoogleApi.DFAReporting.V28.Connection): Connection to server
  - profile_id (String): User profile ID associated with this request.
  - id (String): Subaccount ID.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.DFAReporting.V28.Model.Subaccount{}} on success
  {:error, info} on failure
  """
  @spec dfareporting_subaccounts_get(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.DFAReporting.V28.Model.Subaccount.t} | {:error, Tesla.Env.t}
  def dfareporting_subaccounts_get(connection, profile_id, id, opts \\ []) do
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
    |> url("/dfareporting/v2.8/userprofiles/#{profile_id}/subaccounts/#{id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.DFAReporting.V28.Model.Subaccount{})
  end

  @doc """
  Inserts a new subaccount.

  ## Parameters

  - connection (GoogleApi.DFAReporting.V28.Connection): Connection to server
  - profile_id (String): User profile ID associated with this request.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (Subaccount): 

  ## Returns

  {:ok, %GoogleApi.DFAReporting.V28.Model.Subaccount{}} on success
  {:error, info} on failure
  """
  @spec dfareporting_subaccounts_insert(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.DFAReporting.V28.Model.Subaccount.t} | {:error, Tesla.Env.t}
  def dfareporting_subaccounts_insert(connection, profile_id, opts \\ []) do
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
    |> url("/dfareporting/v2.8/userprofiles/#{profile_id}/subaccounts")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.DFAReporting.V28.Model.Subaccount{})
  end

  @doc """
  Gets a list of subaccounts, possibly filtered. This method supports paging.

  ## Parameters

  - connection (GoogleApi.DFAReporting.V28.Connection): Connection to server
  - profile_id (String): User profile ID associated with this request.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :ids (List[String]): Select only subaccounts with these IDs.
    - :max_results (Integer): Maximum number of results to return.
    - :page_token (String): Value of the nextPageToken from the previous result page.
    - :search_string (String): Allows searching for objects by name or ID. Wildcards (*) are allowed. For example, \&quot;subaccount*2015\&quot; will return objects with names like \&quot;subaccount June 2015\&quot;, \&quot;subaccount April 2015\&quot;, or simply \&quot;subaccount 2015\&quot;. Most of the searches also add wildcards implicitly at the start and the end of the search string. For example, a search string of \&quot;subaccount\&quot; will match objects with name \&quot;my subaccount\&quot;, \&quot;subaccount 2015\&quot;, or simply \&quot;subaccount\&quot;.
    - :sort_field (String): Field by which to sort the list.
    - :sort_order (String): Order of sorted results.

  ## Returns

  {:ok, %GoogleApi.DFAReporting.V28.Model.SubaccountsListResponse{}} on success
  {:error, info} on failure
  """
  @spec dfareporting_subaccounts_list(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.DFAReporting.V28.Model.SubaccountsListResponse.t} | {:error, Tesla.Env.t}
  def dfareporting_subaccounts_list(connection, profile_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"ids" => :query,
      :"maxResults" => :query,
      :"pageToken" => :query,
      :"searchString" => :query,
      :"sortField" => :query,
      :"sortOrder" => :query
    }
    %{}
    |> method(:get)
    |> url("/dfareporting/v2.8/userprofiles/#{profile_id}/subaccounts")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.DFAReporting.V28.Model.SubaccountsListResponse{})
  end

  @doc """
  Updates an existing subaccount. This method supports patch semantics.

  ## Parameters

  - connection (GoogleApi.DFAReporting.V28.Connection): Connection to server
  - profile_id (String): User profile ID associated with this request.
  - id (String): Subaccount ID.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (Subaccount): 

  ## Returns

  {:ok, %GoogleApi.DFAReporting.V28.Model.Subaccount{}} on success
  {:error, info} on failure
  """
  @spec dfareporting_subaccounts_patch(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.DFAReporting.V28.Model.Subaccount.t} | {:error, Tesla.Env.t}
  def dfareporting_subaccounts_patch(connection, profile_id, id, opts \\ []) do
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
    |> url("/dfareporting/v2.8/userprofiles/#{profile_id}/subaccounts")
    |> add_param(:query, :"id", id)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.DFAReporting.V28.Model.Subaccount{})
  end

  @doc """
  Updates an existing subaccount.

  ## Parameters

  - connection (GoogleApi.DFAReporting.V28.Connection): Connection to server
  - profile_id (String): User profile ID associated with this request.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (Subaccount): 

  ## Returns

  {:ok, %GoogleApi.DFAReporting.V28.Model.Subaccount{}} on success
  {:error, info} on failure
  """
  @spec dfareporting_subaccounts_update(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.DFAReporting.V28.Model.Subaccount.t} | {:error, Tesla.Env.t}
  def dfareporting_subaccounts_update(connection, profile_id, opts \\ []) do
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
    |> url("/dfareporting/v2.8/userprofiles/#{profile_id}/subaccounts")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.DFAReporting.V28.Model.Subaccount{})
  end
end
