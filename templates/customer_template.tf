module "test" {
    source = "module/test"
    environment = "dev"
    app_id = "gcp"
    lz_specs = {
        dev = {
            repo_extension = "0001-0004"
            projects = {
                "0108" = {
                    number_of_projects = <<number_of_projects>>
                    project_extension = ["<<project_extension>>"]
                    group = ["<<group>>"]
                    au = "<<au>>"
                    ticket = [<<ticket>>]
                }
            }
        }
    }
}
