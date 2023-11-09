locals {
  resource_group_name = "1234-dev"
  azurerm_storage_account = "sayantan1234"

}
resource "azurerm_stream_analytics_job" "example" {
  name                                     = "testing78906"
  resource_group_name                      = local.resource_group_name
  location                                 = "East Us"
  compatibility_level                      = "1.2"
  data_locale                              = "en-GB"
  events_late_arrival_max_delay_in_seconds = 60
  events_out_of_order_max_delay_in_seconds = 50
  events_out_of_order_policy               = "Adjust"
  output_error_policy                      = "Drop"
  streaming_units                          = 1








  
  job_storage_account {
    account_name = "sayantan1234"
    account_key = "aebkxWVun+3EfvQ5/tHRe3O4ICvM1OGCLDpRwHkXP84PpKhCIPoLB3lZZ6Cb16SNEAkp30F4BqIx+AStYivLAA=="
    authentication_mode = "ConnectionString"
  }

  tags = {
    environment = "Development"
  }

  transformation_query = <<QUERY
    SELECT *
    INTO [YourOutputAlias]
    FROM [YourInputAlias]
QUERY

}
