defmodule Secrets do

  def secret_add(secret) do
    fn adds_secret ->
      adds_secret + secret
    end
  end

  def secret_subtract(secret) do
    fn subs_secret ->
      subs_secret - secret
    end
  end

  def secret_multiply(secret) do
    fn multi_secret ->
      multi_secret * secret
    end
  end

  def secret_divide(secret) do
    fn div_secret ->
      div(div_secret, secret)
    end
  end

  def secret_and(secret) do
    &Bitwise.band(&1, secret)
  end

  def secret_xor(secret) do
    &Bitwise.bxor(&1, secret)
  end

  def secret_combine(secret_function1, secret_function2) do
    fn combine -> secret_function2.(secret_function1.(combine)) end
  end

end
