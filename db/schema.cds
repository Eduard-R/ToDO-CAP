using {
    cuid,
    managed
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

// Todo Liste
entity Todos : cuid, managed {
    title : String @UI.Placeholder : 'Aufgabe';
    date  : Date;
    time  : Time;
    text  : String @UI             : {
        MultiLineText,
        Placeholder : 'Beschreibung der Aufgabe'
    };
}

// Kopfschmerzkalender
entity Ereignisse : cuid, managed {
    title           : Date;
    ausloeser       : Ausloeser; // ValueList
    staerke         : Staerke; // ValueList
    dauer           : Integer;
    art             : Art; // ValueList
    ort             : Ort; // ValueList (Augen)
    zeitpunkt       : Zeitpunkt; // ValueList - Morgens, Mittags, Abends, Nachts
    vorbote         : Vorbote; // ValueList
    symptom1        : Symptom1; // ValueList
    symptom2        : Symptom2; // ValueList
    symptom3        : Symptom3; // ValueList
    symptom4        : Symptom4; // ValueList
    symptom5        : Symptom5; // ValueList
    symptom6        : Symptom6; // ValueList
    medikamenttext  : String;
    medikamentmenge : Integer;
    wirkung         : Wirkung; // ValueList
}
