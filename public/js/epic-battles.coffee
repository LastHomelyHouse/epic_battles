EpicBattles =
  run: ->
    $(document).ready ->
      $("#battleForm").submit (event) ->
        $form = $(this) 
        $.ajax
          type: "POST"
          url: "/battles"
          data: $form.serialize()
          success: EpicBattles.successCallback
          error: EpicBattles.errorCallback
          dataType: "text"

        event.preventDefault()
      
      $("#add-another").click (event) ->
        $(this).hide()
        $(".combatant3").show()
        event.preventDefault()

  itsWorking: ->
    console.log 'Coffeescript script is working'

  successCallback: (responseData) ->
    $("#battle-result").text responseData 

  errorCallback: (error) ->
    $("#battle-result").text "Sorry, there was an error."

EpicBattles.run()
