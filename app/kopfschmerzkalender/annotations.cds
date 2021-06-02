using KalenderService as service from '../../srv/kalender-service';
using from '@sap/cds/common';
using from '../../db/schema';

annotate KalenderService.Ereignisse with @odata.draft.enabled;

annotate KalenderService.Ereignisse with {
    title @Common.Label : 'Datum';
    dauer @Common.Label : 'Dauer der Schmerzen in Stunden';
    medikamenttext @Common.Label : 'Welches Medikament? ';
    medikamentmenge @Common.Label : 'Medikamentmenge';
    bemerkung @Common.Label : 'Sonstige Bemerkungen';
};

annotate KalenderService.Ereignisse with @UI : {
    HeaderInfo  : {
        $Type : 'UI.HeaderInfoType',
        TypeName : 'Migränetag',
        TypeNamePlural : 'Migränetage',
        Title : {
            $Type : 'UI.DataField',
            Value : title,
        },
    },

    SelectionFields  : [
        title
    ],

    LineItem  : [
        {
            $Type : 'UI.DataField',
            Value : title,
        },
        {
            $Type : 'UI.DataField',
            Value : bemerkung,
        },
    ],

    Facets  : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Details zum Eintrag',
            Target : '@UI.FieldGroup#Details',
        },
    ],

    FieldGroup #Details : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : ausloeser_name,
            },
            {
                $Type : 'UI.DataField',
                Value : staerke_name,
            },
            {
                $Type : 'UI.DataField',
                Value : dauer,
            },
            {
                $Type : 'UI.DataField',
                Value : art_name,
            },
            {
                $Type : 'UI.DataField',
                Value : ort_name,
            },
            {
                $Type : 'UI.DataField',
                Value : zeitpunkt_name,
            },
            {
                $Type : 'UI.DataField',
                Value : vorbote_name,
            },
            {
                $Type : 'UI.DataField',
                Value : symptom1_name,
            },
            {
                $Type : 'UI.DataField',
                Value : symptom2_name,
            },
            {
                $Type : 'UI.DataField',
                Value : symptom3_name,
            },
            {
                $Type : 'UI.DataField',
                Value : symptom4_name,
            },
            {
                $Type : 'UI.DataField',
                Value : symptom5_name,
            },
            {
                $Type : 'UI.DataField',
                Value : symptom6_name,
            },
            {
                $Type : 'UI.DataField',
                Value : medikamenttext,
            },
            {
                $Type : 'UI.DataField',
                Value : medikamentmenge,
            },
            {
                $Type : 'UI.DataField',
                Value : wirkung_name,
            },
            {
                $Type : 'UI.DataField',
                Value : bemerkung,
            },
            {
                $Type : 'UI.DataField',
                Value : createdAt,
            },
        ],
    },
};

