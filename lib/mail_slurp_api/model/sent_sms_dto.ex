# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.SentSmsDto do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"userId",
    :"phoneNumber",
    :"fromNumber",
    :"toNumber",
    :"body",
    :"sid",
    :"replyToSid",
    :"replyToId",
    :"createdAt",
    :"updatedAt"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t,
    :"userId" => String.t,
    :"phoneNumber" => String.t,
    :"fromNumber" => String.t,
    :"toNumber" => String.t,
    :"body" => String.t,
    :"sid" => String.t,
    :"replyToSid" => String.t,
    :"replyToId" => String.t,
    :"createdAt" => DateTime.t,
    :"updatedAt" => DateTime.t
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.SentSmsDto do
  def decode(value, _options) do
    value
  end
end
