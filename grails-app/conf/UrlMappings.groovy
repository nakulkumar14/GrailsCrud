class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?" {
            constraints {
                // apply constraints here
            }
        }

        // first page is login
//        "/"(controller: 'login', action: 'index')
        "/login/$action?"(controller: "login")
        "/logout/$action?"(controller: "logout")
		"/"(controller:"Student",view:"/index")
        "500"(view: '/error')
    }
}
