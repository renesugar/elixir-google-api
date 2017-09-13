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

defmodule GoogleApi.CustomerInteractionHistory.V3.Model.Uaid do
  @moduledoc """
  CIH copy of the UAID proto. We don&#39;t store UAIDs as a 64-bit number instead we store them into two different fields: Product and Account Id. Account Id is string so it can be anything, for example in +Pages it&#39;s a Gaia Id.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"account_id",
    :"product"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.CustomerInteractionHistory.V3.Model.Uaid do
  def decode(value, _options) do
    value
  end
end

