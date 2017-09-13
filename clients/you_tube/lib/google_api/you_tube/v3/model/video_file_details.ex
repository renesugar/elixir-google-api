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

defmodule GoogleApi.YouTube.V3.Model.VideoFileDetails do
  @moduledoc """
  Describes original video file properties, including technical details about audio and video streams, but also metadata information like content length, digitization time, or geotagging information.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"audioStreams",
    :"bitrateBps",
    :"container",
    :"creationTime",
    :"durationMs",
    :"fileName",
    :"fileSize",
    :"fileType",
    :"videoStreams"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.VideoFileDetails do
  import GoogleApi.YouTube.V3.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"audioStreams", :list, GoogleApi.YouTube.V3.Model.VideoFileDetailsAudioStream, options)
    |> deserialize(:"videoStreams", :list, GoogleApi.YouTube.V3.Model.VideoFileDetailsVideoStream, options)
  end
end

