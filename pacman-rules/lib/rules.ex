defmodule Rules do

  def eat_ghost?(power_pellet_active?, touching_ghost?) do
    # true + true = true
    # else false
    power_pellet_active? and touching_ghost?
  end

  def score?(touching_power_pellet?, touching_dot?) do
    # 'or' looks at each boolean for true, and if either is true
    # else false
    touching_power_pellet? or touching_dot?
  end

  def lose?(power_pellet_active?, touching_ghost?) do
    # must be touching ghost true + power pellet false
    # else false
    touching_ghost? and not power_pellet_active?
  end

  def win?(has_eaten_all_dots?, power_pellet_active?, touching_ghost?) do
    # only if true + true + true ('and' condition)
    # else false
    has_eaten_all_dots? and not lose?(power_pellet_active?, touching_ghost?)
  end

end
