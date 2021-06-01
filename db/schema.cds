using {
    cuid,
    managed,
    sap
} from '@sap/cds/common';

namespace verri;

using Ausloeser from '../srv/valuelist';
using Staerke from '../srv/valuelist';
using Art from '../srv/valuelist';
using Ort from '../srv/valuelist';
using Vorbote from '../srv/valuelist';
using Symptom1 from '../srv/valuelist';
using Symptom2 from '../srv/valuelist';
using Symptom3 from '../srv/valuelist';
using Symptom4 from '../srv/valuelist';
using Symptom5 from '../srv/valuelist';
using Symptom6 from '../srv/valuelist';
using Wirkung from '../srv/valuelist';
using Zeitpunkt from '../srv/valuelist';
using Faktura from '../srv/valuelist';

// Todo App ////////////////////////////////////////////
entity Todos : managed {
    key ID    : UUID   @Core.Computed;
        title : String @UI.Placeholder : 'Aufgabe';
        date  : Date;
        time  : Time;
        text  : String @UI             : {
            MultiLineText,
            Placeholder : 'Beschreibung der Aufgabe'
        };
}

// Kopfschmerzkalender App //////////////////////////////
entity Ereignisse : managed {
    key ID              : UUID @Core.Computed;
        title           : Date;
        ausloeser       : Ausloeser;
        staerke         : Staerke;
        dauer           : Integer;
        art             : Art;
        ort             : Ort;
        zeitpunkt       : Zeitpunkt;
        vorbote         : Vorbote;
        symptom1        : Symptom1;
        symptom2        : Symptom2;
        symptom3        : Symptom3;
        symptom4        : Symptom4;
        symptom5        : Symptom5;
        symptom6        : Symptom6;
        medikamenttext  : String;
        medikamentmenge : Integer;
        wirkung         : Wirkung;
}

// Projektzeiterfassung /////////////////////////////////
entity Projekte : managed {
    key ID            : UUID @Core.Computed;
        projektNummer : String;
        projektName   : String;
        kunde         : String;
        zeiterfassung : Composition of many Zeiterfassungen
                            on zeiterfassung.projekt = $self;
}

entity Zeiterfassungen : cuid, managed {
    faktura    : Faktura;
    datum      : Date;
    stunden    : Integer;
    taetigkeit : String;
    projekt    : Association to Projekte;
}
