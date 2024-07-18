defmodule Bfsp.Biscuit do
  use Rustler, otp_app: :bfsp, crate: :biscuit_ex

  def new_private_key(), do: :erlang.nif_error(:nif_not_loaded)
  def public_key_from_private(_private_key), do: :erlang.nif_error(:nif_not_loaded)
  def generate(_private_key, _facts, _options), do: :erlang.nif_error(:nif_not_loaded)
  def authorize(_biscuit, _public_key, _authorizer_code), do: :erlang.nif_error(:nif_not_loaded)
  def get_user_id(_biscuit, _public_key), do: :erlang.nif_error(:nif_not_loaded)
  def encrypt(_message, _key, _nonce), do: :erlang.nif_error(:nif_not_loaded)
  def decrypt(_message, _key, _nonce), do: :erlang.nif_error(:nif_not_loaded)
  def get_fact(_biscuit, _public_key, _fact), do: :erlang.nif_error(:nif_not_loaded)
end
