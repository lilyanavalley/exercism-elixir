
defmodule FreelancerRates do

  def daily_rate(hourly_rate) do
    8.0 * hourly_rate # notice float, converts to float type
  end

  def apply_discount(before_discount, discount) do
    discount_fraction = discount / 100
    discount_amount = before_discount * discount_fraction
    before_discount - discount_amount
  end

  def monthly_rate(hourly_rate, discount) do
    monthly_rate = daily_rate(hourly_rate) * 22
    discounted_rate = apply_discount(monthly_rate, discount)
    Kernel.trunc(Float.ceil(discounted_rate))
  end

  def days_in_budget(budget, hourly_rate, discount) do
    discounted = apply_discount(daily_rate(hourly_rate), discount)
    Float.floor(budget / discounted, 1)
  end

end
