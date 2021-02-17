using {TodoService} from '../srv/service';
using from '@sap/cds/common';
using from '../db/schema';

annotate TodoService.Todos with @odata.draft.enabled;

annotate TodoService.Todos with {
    title @(Common.Label : 'Titel');
    date  @(Common.Label : 'Fälligkeitsdatum');
    time  @(Common.Label : 'Fälligkeitsuhrzeit');
    text  @(Common.Label : 'Aufgabenbeschreibung');
};

annotate TodoService.Todos with @UI : {
    HeaderInfo          : {
        $Type          : 'UI.HeaderInfoType',
        TypeName       : 'Aufgabe',
        TypeNamePlural : 'Aufgaben',
        Title          : {Value : title, },
    },

    SelectionFields     : [title],

    LineItem            : [
        {Value : title},
        {Value : date},
        {Value : time},
    ],

    Facets              : [{
        $Type  : 'UI.ReferenceFacet',
        Label  : 'Aufgabenbendetails',
        Target : '@UI.FieldGroup#Details'
    }, ],

    FieldGroup #Details : {Data : [
        {Value : text},
        {Value : date},
        {Value : time},
        {Value : createdAt},
        {Value : createdBy}
        
        ]

    }

};
