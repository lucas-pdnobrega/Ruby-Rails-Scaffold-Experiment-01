module PeopleHelper
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
                #{ button_to 'Deletar', person, method: :delete, form_class: 'link-opacity-100'}
            </td>
        </tr>")
    end
end
