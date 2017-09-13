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

defmodule GoogleApi.Plus.V1.Model.Person do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"aboutMe",
    :"ageRange",
    :"birthday",
    :"braggingRights",
    :"circledByCount",
    :"cover",
    :"currentLocation",
    :"displayName",
    :"domain",
    :"emails",
    :"etag",
    :"gender",
    :"id",
    :"image",
    :"isPlusUser",
    :"kind",
    :"language",
    :"name",
    :"nickname",
    :"objectType",
    :"occupation",
    :"organizations",
    :"placesLived",
    :"plusOneCount",
    :"relationshipStatus",
    :"skills",
    :"tagline",
    :"url",
    :"urls",
    :"verified"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Plus.V1.Model.Person do
  import GoogleApi.Plus.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"ageRange", :struct, GoogleApi.Plus.V1.Model.Person_ageRange, options)
    |> deserialize(:"cover", :struct, GoogleApi.Plus.V1.Model.Person_cover, options)
    |> deserialize(:"emails", :list, GoogleApi.Plus.V1.Model.Person_emails, options)
    |> deserialize(:"image", :struct, GoogleApi.Plus.V1.Model.Person_image, options)
    |> deserialize(:"name", :struct, GoogleApi.Plus.V1.Model.Person_name, options)
    |> deserialize(:"organizations", :list, GoogleApi.Plus.V1.Model.Person_organizations, options)
    |> deserialize(:"placesLived", :list, GoogleApi.Plus.V1.Model.Person_placesLived, options)
    |> deserialize(:"urls", :list, GoogleApi.Plus.V1.Model.Person_urls, options)
  end
end

