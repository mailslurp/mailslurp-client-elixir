# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.PageableObject do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"offset",
    :"sort",
    :"pageNumber",
    :"pageSize",
    :"paged",
    :"unpaged"
  ]

  @type t :: %__MODULE__{
    :"offset" => integer() | nil,
    :"sort" => Sort | nil,
    :"pageNumber" => integer() | nil,
    :"pageSize" => integer() | nil,
    :"paged" => boolean() | nil,
    :"unpaged" => boolean() | nil
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.PageableObject do
  import MailSlurpAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"sort", :struct, MailSlurpAPI.Model.Sort, options)
  end
end

