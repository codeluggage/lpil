module EventForm.View exposing (form)

import Date exposing (Date)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput, onSubmit)
import EventForm.Types exposing (..)
import EventForm.Date exposing (dateYyMmDd)


form : Model -> Maybe Date -> Html Msg
form event maybeDate =
    let
        field =
            eventInput maybeDate
    in
        Html.form [ onSubmit Submit ]
            [ h1 [] [ text "New event form" ]
            , div [ class "hexagon" ] []
            , field event.name Name
            , field event.dateStart DateStart
            , field event.dateEnd DateEnd
            , div [] [ button [] [ text "Submit" ] ]
            ]


eventInput : Maybe Date -> String -> EventField -> Html Msg
eventInput date currentValue field =
    let
        attrs =
            [ type_ <| inputType field
            , value currentValue
            , required True
            , onInput (Input field)
            ]
                ++ extraAttrs date field
    in
        div [ class "event-form__field" ]
            [ label [] [ text <| labelText field ]
            , input attrs []
            ]


extraAttrs : Maybe Date -> EventField -> List (Attribute Msg)
extraAttrs maybeDate field =
    case ( field, maybeDate ) of
        ( _, Nothing ) ->
            []

        ( Name, _ ) ->
            []

        ( DateStart, Just date ) ->
            [ Html.Attributes.min (dateYyMmDd date) ]

        ( DateEnd, Just date ) ->
            [ Html.Attributes.min (dateYyMmDd date) ]


inputType : EventField -> String
inputType field =
    case field of
        Name ->
            "text"

        DateStart ->
            "date"

        DateEnd ->
            "date"


labelText : EventField -> String
labelText field =
    case field of
        Name ->
            "Name"

        DateStart ->
            "Start Date"

        DateEnd ->
            "End Date"
