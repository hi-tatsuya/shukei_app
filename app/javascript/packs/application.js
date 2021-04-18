import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "bootstrap/dist/js/bootstrap"
import "@fortawesome/fontawesome-free/js/all"


Rails.start()
Turbolinks.start()
ActiveStorage.start()

$(document).on('turbolinks:load', function () {
  function filterTableRows() {
      const value = $(this).val().toLowerCase();
      $("#language-tbody tr").filter(function () {
          $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
      });
  }

  $("#language-search").on("input", filterTableRows);
});

