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

defmodule GoogleApi.Script.V1.Model.Operation do
  @moduledoc """
  The response will not arrive until the function finishes executing. The maximum runtime is listed in the guide to [limitations in Apps Script](https://developers.google.com/apps-script/guides/services/quotas#current_limitations). &lt;p&gt;If the script function returns successfully, the &#x60;response&#x60; field will contain an &#x60;ExecutionResponse&#x60; object with the function&#39;s return value in the object&#39;s &#x60;result&#x60; field.&lt;/p&gt; &lt;p&gt;If the script function (or Apps Script itself) throws an exception, the &#x60;error&#x60; field will contain a &#x60;Status&#x60; object. The &#x60;Status&#x60; object&#39;s &#x60;details&#x60; field will contain an array with a single &#x60;ExecutionError&#x60; object that provides information about the nature of the error.&lt;/p&gt; &lt;p&gt;If the &#x60;run&#x60; call itself fails (for example, because of a malformed request or an authorization error), the method will return an HTTP response code in the 4XX range with a different format for the response body. Client libraries will automatically convert a 4XX response into an exception class.&lt;/p&gt;
  """

  @derive [Poison.Encoder]
  defstruct [
    :"done",
    :"error",
    :"metadata",
    :"response"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Script.V1.Model.Operation do
  import GoogleApi.Script.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"error", :struct, GoogleApi.Script.V1.Model.Status, options)
    |> deserialize(:"metadata", :struct, GoogleApi.Script.V1.Model.Object, options)
    |> deserialize(:"response", :struct, GoogleApi.Script.V1.Model.Object, options)
  end
end

