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

defmodule GoogleApi.Logging.V2.Model.MonitoredResource do
  @moduledoc """
  An object representing a resource that can be used for monitoring, logging, billing, or other purposes. Examples include virtual machine instances, databases, and storage devices such as disks. The type field identifies a MonitoredResourceDescriptor object that describes the resource&#39;s schema. Information in the labels field identifies the actual resource and its attributes according to the schema. For example, a particular Compute Engine VM instance could be represented by the following object, because the MonitoredResourceDescriptor for \&quot;gce_instance\&quot; has labels \&quot;instance_id\&quot; and \&quot;zone\&quot;: { \&quot;type\&quot;: \&quot;gce_instance\&quot;,   \&quot;labels\&quot;: { \&quot;instance_id\&quot;: \&quot;12345678901234\&quot;,               \&quot;zone\&quot;: \&quot;us-central1-a\&quot; }} 
  """

  @derive [Poison.Encoder]
  defstruct [
    :"labels",
    :"type"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Logging.V2.Model.MonitoredResource do
  def decode(value, _options) do
    value
  end
end

