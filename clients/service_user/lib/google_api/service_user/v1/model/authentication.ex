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

defmodule GoogleApi.ServiceUser.V1.Model.Authentication do
  @moduledoc """
  &#x60;Authentication&#x60; defines the authentication configuration for an API.  Example for an API targeted for external use:      name: calendar.googleapis.com     authentication:       providers:       - id: google_calendar_auth         jwks_uri: https://www.googleapis.com/oauth2/v1/certs         issuer: https://securetoken.google.com       rules:       - selector: \&quot;*\&quot;         requirements:           provider_id: google_calendar_auth
  """

  @derive [Poison.Encoder]
  defstruct [
    :"providers",
    :"rules"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.ServiceUser.V1.Model.Authentication do
  import GoogleApi.ServiceUser.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"providers", :list, GoogleApi.ServiceUser.V1.Model.AuthProvider, options)
    |> deserialize(:"rules", :list, GoogleApi.ServiceUser.V1.Model.AuthenticationRule, options)
  end
end

