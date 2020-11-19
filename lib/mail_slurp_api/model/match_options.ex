# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.MatchOptions do
  @moduledoc """
  Optional filter for matching emails based on fields. For instance filter results to only include emails whose &#x60;SUBJECT&#x60; value does &#x60;CONTAIN&#x60; given match value.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"matches"
  ]

  @type t :: %__MODULE__{
    :"matches" => [MatchOption] | nil
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.MatchOptions do
  import MailSlurpAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"matches", :list, MailSlurpAPI.Model.MatchOption, options)
  end
end
