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

defmodule GoogleApi.Monitoring.V3.Model.Trigger do
  @moduledoc """
  Specifies how many time series must fail a predicate to trigger a condition. If not specified, then a {count: 1} trigger is used.

  ## Attributes

  - count (integer()): The absolute number of time series that must fail the predicate for the condition to be triggered. Defaults to: `null`.
  - percent (float()): The percentage of time series that must fail the predicate for the condition to be triggered. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :count => any(),
          :percent => any()
        }

  field(:count)
  field(:percent)
end

defimpl Poison.Decoder, for: GoogleApi.Monitoring.V3.Model.Trigger do
  def decode(value, options) do
    GoogleApi.Monitoring.V3.Model.Trigger.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Monitoring.V3.Model.Trigger do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
