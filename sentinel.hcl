policy "allowed-terraform-version" {
  enforcement_level = "soft-mandatory"
}

policy "less-than-100-month" {
  enforcement_level = "soft-mandatory"
}

import "tfrun"
import "decimal"

delta_monthly_cost = decimal.new(tfrun.cost_estimate.delta_monthly_cost)

main = rule {
    delta_monthly_cost.less_than(100)
}
