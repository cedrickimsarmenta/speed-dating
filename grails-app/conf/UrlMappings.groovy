class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

        "/console/$action?"(controller: 'console')

		"/"(view:"/index")
		"500"(view:'/error')
	}
}
