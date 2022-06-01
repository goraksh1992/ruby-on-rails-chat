// Loads all Semantic javascripts
//= require jquery
//= require semantic-ui
//= require jquery_ujs


$(document).ready(function(){
    $('.ui.dropdown').dropdown();

    // Close alert message
    $('.message .close').on('click', function() {
        $(this).closest('.message').transition('fade');
    });
})