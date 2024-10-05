module "test" {
    source = "module/test"
    environment = "dev"
    app_id = "gcp"
    lz_specs = {
        dev = {
            repo_extension = "0001-0004"
            projects = {
                "0108" = {
                    number_of_projects = "<+stage.variables.number_of_projects>"
                    project_extension = "<stage.variables.project_extension>"
                    group = "<stage.variables.group>"
                    au = "<stage.variables.au>"
                    ticket = "<stage.variables.ticket>"
                }
            }
        }
    }
}
