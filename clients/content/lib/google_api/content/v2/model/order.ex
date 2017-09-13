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

defmodule GoogleApi.Content.V2.Model.Order do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"acknowledged",
    :"channelType",
    :"customer",
    :"deliveryDetails",
    :"id",
    :"kind",
    :"lineItems",
    :"merchantId",
    :"merchantOrderId",
    :"netAmount",
    :"paymentMethod",
    :"paymentStatus",
    :"placedDate",
    :"promotions",
    :"refunds",
    :"shipments",
    :"shippingCost",
    :"shippingCostTax",
    :"shippingOption",
    :"status"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.Order do
  import GoogleApi.Content.V2.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"customer", :struct, GoogleApi.Content.V2.Model.OrderCustomer, options)
    |> deserialize(:"deliveryDetails", :struct, GoogleApi.Content.V2.Model.OrderDeliveryDetails, options)
    |> deserialize(:"lineItems", :list, GoogleApi.Content.V2.Model.OrderLineItem, options)
    |> deserialize(:"netAmount", :struct, GoogleApi.Content.V2.Model.Price, options)
    |> deserialize(:"paymentMethod", :struct, GoogleApi.Content.V2.Model.OrderPaymentMethod, options)
    |> deserialize(:"promotions", :list, GoogleApi.Content.V2.Model.OrderPromotion, options)
    |> deserialize(:"refunds", :list, GoogleApi.Content.V2.Model.OrderRefund, options)
    |> deserialize(:"shipments", :list, GoogleApi.Content.V2.Model.OrderShipment, options)
    |> deserialize(:"shippingCost", :struct, GoogleApi.Content.V2.Model.Price, options)
    |> deserialize(:"shippingCostTax", :struct, GoogleApi.Content.V2.Model.Price, options)
  end
end

