using {
    cuid,
    managed
} from '@sap/cds/common';

namespace todo;

entity Todos : cuid, managed {
    title : String @UI.Placeholder : 'Aufgabe';
    date : Date;
    time : Time;
    text : String @UI: {MultiLineText, Placeholder : 'Beschreibung der Aufgabe'};
}
