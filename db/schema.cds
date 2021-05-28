using {
    cuid,
    managed,
    sap
} from '@sap/cds/common';

namespace verri;

using Ausloeser from '../srv/common';
using Staerke from '../srv/common';
using Art from '../srv/common';
using Ort from '../srv/common';
using Vorbote from '../srv/common';
using Symptom1 from '../srv/common';
using Symptom2 from '../srv/common';
using Symptom3 from '../srv/common';
using Symptom4 from '../srv/common';
using Symptom5 from '../srv/common';
using Symptom6 from '../srv/common';
using Wirkung from '../srv/common';
using Zeitpunkt from '../srv/common';
using Faktura from '../srv/common';

// Todo App ////////////////////////////////////////////
entity Todos : cuid, managed {
    title : String @UI.Placeholder : 'Aufgabe';
    date  : Date;
    time  : Time;
    text  : String @UI             : {
        MultiLineText,
        Placeholder : 'Beschreibung der Aufgabe'
    };
}

// Kopfschmerzkalender App //////////////////////////////
entity Ereignisse : cuid, managed {
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
entity Projekte : cuid, managed {
    projektNummer : String;
    projektName   : String;
    kunde         : String;
    faktura       : Faktura;
    stunden       : Time;
    taetigkeit    : String;
}
