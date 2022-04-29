resource "oci_sch_service_connector" "test_service_connector" {
    #Required
    compartment_id = var.compartment_id
    display_name = var.service_connector_display_name
    source {
        #Required
        kind = var.service_connector_source_kind

        log_sources {

            #Optional
            compartment_id = var.compartment_id
            log_group_id = var.log_group_id
            log_id = var.log_id
        }
    }
    target {
        #Required
        kind = var.service_connector_target_kind
        compartment_id = var.compartment_id
        #log_group_id = var.log_group_id
        metric_namespace = var.metric_namespace
        metric = var.metric
        #dimensions = var.dimension_list
        dimensions {
            #Optional
            dimension_value {
                #Required
                kind = var.service_connector_target_dimensions_dimension_value_kind

                #Optional
                #path = var.service_connector_target_dimensions_dimension_value_path
                value = var.service_connector_target_dimensions_dimension_value_value
                
            }
            name = var.service_connector_target_dimensions_name
        }
          
        #enable_formatted_messaging = var.service_connector_target_enable_formatted_messaging
        #topic_id = oci_ons_notification_topic.test_notification_topic.id
    }
    
    tasks {
    condition = "logContent='root' and 'authentication failures'"
    kind      = "logRule"
    }

}

data "oci_sch_service_connector" "test_service_connector" {
  service_connector_id = oci_sch_service_connector.test_service_connector.id
}

output "oci_sch_service_connector_id" {
  value = [data.oci_sch_service_connector.test_service_connector.id]
}