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

defmodule GoogleApi.TagManager.V2.Model.FolderEntities do
  @moduledoc """
  Represents a Google Tag Manager Folder&#39;s contents.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"nextPageToken",
    :"tag",
    :"trigger",
    :"variable"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.TagManager.V2.Model.FolderEntities do
  import GoogleApi.TagManager.V2.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"tag", :list, GoogleApi.TagManager.V2.Model.Tag, options)
    |> deserialize(:"trigger", :list, GoogleApi.TagManager.V2.Model.Trigger, options)
    |> deserialize(:"variable", :list, GoogleApi.TagManager.V2.Model.Variable, options)
  end
end

