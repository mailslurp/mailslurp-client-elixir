# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.PageConnector do
  @moduledoc """
  Paginated inbox connectors. Page index starts at zero. Projection results may omit larger entity fields. For fetching a full entity use the projection ID with individual method calls.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"content",
    :"pageable",
    :"total",
    :"last",
    :"totalElements",
    :"totalPages",
    :"size",
    :"number",
    :"sort",
    :"first",
    :"numberOfElements",
    :"empty"
  ]

  @type t :: %__MODULE__{
    :"content" => [ConnectorProjection] | nil,
    :"pageable" => PageableObject | nil,
    :"total" => integer() | nil,
    :"last" => boolean() | nil,
    :"totalElements" => integer() | nil,
    :"totalPages" => integer() | nil,
    :"size" => integer() | nil,
    :"number" => integer() | nil,
    :"sort" => Sort | nil,
    :"first" => boolean() | nil,
    :"numberOfElements" => integer() | nil,
    :"empty" => boolean() | nil
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.PageConnector do
  import MailSlurpAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"content", :list, MailSlurpAPI.Model.ConnectorProjection, options)
    |> deserialize(:"pageable", :struct, MailSlurpAPI.Model.PageableObject, options)
    |> deserialize(:"sort", :struct, MailSlurpAPI.Model.Sort, options)
  end
end

