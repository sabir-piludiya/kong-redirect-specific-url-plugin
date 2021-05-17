return {
    no_consumer = true, -- This means our plugin will not apply to specific service consumers
    fields = {
        status_code = {
            type     = "number",
            required = true,
            default  = 301
        },
        path = {
            type     = "string",
            required = true,
            default  = "/"
        },
        redirect_url = {
            type     = "string",
            required = true,
            default  = "https://github.com/sabir-piludiya/kong-plugin-redirect-test"
        }
    }
}
