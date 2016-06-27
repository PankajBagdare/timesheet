# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#= require bootstrap
#= require bootstrap-datepicker

 $(document).on "focus", "[data-behaviour~='datepicker']", (e) ->
 - $(this).datepicker
 - format: "dd-mm-yyyy"
 - weekStart: 1
 - autoclose: true

