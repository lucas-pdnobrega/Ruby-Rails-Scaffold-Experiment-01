module PeopleHelper

    def render_people_navbar()
        render_navbar(
            raw("<span class='navbar-item'>
                    <%= link_to 'Pessoas',
                    people_path,
                    class: 'nav-link'%>
                </span>")
        )
    end

    def render_table_row(person)
        raw("<tr>
            <th scope='row'>#{person.id}</th>
            <td>#{person.nome}</td>
            <td>#{person.abreviacao}</td>
            <td>#{person.nascimento}</td>
            <td>
                #{ link_to 'Detalhar', person, class: 'link-opacity-100'}
                #{ link_to 'Editar', edit_person_path(person), class: 'link-opacity-100'}
            </td>
            <td>
                #{ button_to 'Deletar', person, method: :delete, class: 'btn btn-outline-secondary'}
            </td>
        </tr>")
    end
end
