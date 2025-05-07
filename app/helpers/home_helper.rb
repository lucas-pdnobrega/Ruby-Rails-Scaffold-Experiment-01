module HomeHelper
    def render_navbar(content)
        raw("
        <nav class='navbar navbar-expand-lg bg-body-tertiary'>
            <div class='container-fluid'>
                <span class='navbar-brand mb-0 h1'>Home</span>
                <div class='collapse navbar-collapse' id='navbarNav'>
                    #{content}
                </div>
            </div>
        </nav>
        ")
    end

    def render_home_navbar()
        render_navbar(
            "<span class='navbar-item'>
                <%= link_to 'Pessoas',
                people_path,
                class: 'nav-link'%>
            </span>"
        )
    end
end
