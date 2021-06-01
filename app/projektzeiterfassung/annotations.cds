using ProjektService as service from '../../srv/projekt-service';
using from '@sap/cds/common';
using from '../../db/schema';

annotate ProjektService.Projekte with @odata.draft.enabled;

annotate ProjektService.Projekte with {
    projektNummer @Common.Label : 'Projekt Nummer';
    projektName   @Common.Label : 'Projekt Name';
    kunde         @Common.Label : 'Projekt Kunde';
};

annotate ProjektService.Zeiterfassungen with {
    faktura    @Common.Label :                              'Faktura';
    stunden    @Common.Label :                              'Geleistete Stunden';
    datum      @Common.Label :                              'Datum';
    taetigkeit @(Common.Label : 'Art der Tätigkeit')  @UI : {MultiLineText, };
};


annotate ProjektService.Projekte with @UI : {
    HeaderInfo          : {
        $Type          : 'UI.HeaderInfoType',
        TypeName       : 'Projekt',
        TypeNamePlural : 'Projekte',
        Title          : {Value : projektName}
    },

    SelectionFields     : [
        projektNummer,
        kunde
    ],

    LineItem            : [
        {
            $Type : 'UI.DataField',
            Value : projektNummer,
        },
        {
            $Type : 'UI.DataField',
            Value : projektName,
        },
        {
            $Type : 'UI.DataField',
            Value : kunde,
        },
    ],

    Facets              : [
        {
            $Type  : 'UI.ReferenceFacet',
            Label  : 'Projekt',
            Target : '@UI.FieldGroup#Details',
        },
        {
            $Type  : 'UI.ReferenceFacet',
            Label  : 'Zeiterfassung',
            Target : 'zeiterfassung/@UI.LineItem',
        },
    ],

    FieldGroup #Details : {
        $Type : 'UI.FieldGroupType',
        Data  : [
            {
                $Type : 'UI.DataField',
                Value : projektNummer,
            },
            {
                $Type : 'UI.DataField',
                Value : kunde,
            },
            {
                $Type : 'UI.DataField',
                Value : createdAt,
            },
        ],
    },


};

annotate ProjektService.Zeiterfassungen with @UI : {LineItem : [
    {
        $Type : 'UI.DataField',
        Value : faktura_name,
    },
    {
        $Type : 'UI.DataField',
        Value : datum,
    },
    {
        $Type : 'UI.DataField',
        Value : stunden,
    },
    {
        $Type : 'UI.DataField',
        Value : taetigkeit,
    },
], };
