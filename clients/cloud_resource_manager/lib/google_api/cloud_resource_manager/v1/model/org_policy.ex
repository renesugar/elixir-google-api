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

defmodule GoogleApi.CloudResourceManager.V1.Model.OrgPolicy do
  @moduledoc """
  Defines a Cloud Organization &#x60;Policy&#x60; which is used to specify &#x60;Constraints&#x60; for configurations of Cloud Platform resources.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"booleanPolicy",
    :"constraint",
    :"etag",
    :"listPolicy",
    :"restoreDefault",
    :"updateTime",
    :"version"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.CloudResourceManager.V1.Model.OrgPolicy do
  import GoogleApi.CloudResourceManager.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"booleanPolicy", :struct, GoogleApi.CloudResourceManager.V1.Model.BooleanPolicy, options)
    |> deserialize(:"listPolicy", :struct, GoogleApi.CloudResourceManager.V1.Model.ListPolicy, options)
    |> deserialize(:"restoreDefault", :struct, GoogleApi.CloudResourceManager.V1.Model.RestoreDefault, options)
  end
end

