//= require rails-ujs
//= require turbolinks
//= require jquery
//= require jquery_ujs
//= require bootstrap.min
//= require datatables
//= require_tree .

$(document).ready(function() {
    $('#tv_show_listing').DataTable({
        columns: [
            { sortable: false, searchable: false },
            { sortable: false, searchable: true },
            { sortable: false, searchable: true },
            { sortable: false, searchable: false },
            { sortable: false, searchable: false }
          ]
        }
    );
    favorite_show();
});

function favorite_show(){
    $('.favorite_show').click(function(){
        $.ajax({
            url: "/favorite_shows",
            type: 'POST',
            data: {
                show_id: $(this).data('show-id'),
                favorite: $(this).prop('checked') 
            }
        });
    })
}