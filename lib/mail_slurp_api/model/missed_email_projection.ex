# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.MissedEmailProjection do
  @moduledoc """
  Missed email data
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"from",
    :"subject",
    :"createdAt",
    :"userId"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t,
    :"from" => String.t | nil,
    :"subject" => String.t | nil,
    :"createdAt" => DateTime.t,
    :"userId" => String.t | nil
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.MissedEmailProjection do
  def decode(value, _options) do
    value
  end
end

