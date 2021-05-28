// Mehrfach verwendete Entities / ValueLists

type Ausloeser : Association to verri.common.Ausloeser;
type Staerke : Association to verri.common.Staerke;
type Art : Association to verri.common.Art;
type Ort : Association to verri.common.Ort;
type Vorbote : Association to verri.common.Vorbote;
type Symptom1 : Association to verri.common.Symptom1;
type Symptom2 : Association to verri.common.Symptom2;
type Symptom3 : Association to verri.common.Symptom3;
type Symptom4 : Association to verri.common.Symptom4;
type Symptom5 : Association to verri.common.Symptom5;
type Symptom6 : Association to verri.common.Symptom6;
type Wirkung : Association to verri.common.Wirkung;
type Zeitpunkt : Association to verri.common.Zeitpunkt;
type Faktura : Association to verri.common.Faktura;


context verri.common {

    entity Ausloeser : CodeList {
        key name : String;
    }

    entity Zeitpunkt : CodeList {
        key name : String;
    }

    entity Staerke : CodeList {
        key name : String;
    }

    entity Art : CodeList {
        key name : String;
    }

    entity Ort : CodeList {
        key name : String;
    }

    entity Vorbote : CodeList {
        key name : String;
    }

    entity Symptom1 : CodeList {
        key name : String;
    }

    entity Symptom2 : CodeList {
        key name : String;
    }

    entity Symptom3 : CodeList {
        key name : String;
    }

    entity Symptom4 : CodeList {
        key name : String;
    }

    entity Symptom5 : CodeList {
        key name : String;
    }

    entity Symptom6 : CodeList {
        key name : String;
    }

    entity Wirkung : CodeList {
        key name : String;
    }

    entity Faktura : CodeList {
        key name : String;
    }

    aspect CodeList @(
        cds.autoexpose,
        cds.persistence.skip : 'if-unused'
    ) {}
}

annotate verri.common.CodeList with @cds.odata.valuelist;

annotate Ausloeser with @(
    title       : 'Auslöser',
    description : 'Beschreibung'
);

annotate Zeitpunkt with @(
    title       : 'Zeitpunkt',
    description : 'Beschreibung'
);

annotate Staerke with @(
    title       : 'Stärke der Schmerzen',
    description : 'Beschreibung'
);

annotate Art with @(
    title       : 'Art der Schmerzen',
    description : 'Beschreibung'
);

annotate Ort with @(
    title       : 'Ort der Schmerzen',
    description : 'Beschreibung'
);

annotate Vorbote with @(
    title       : 'Vorbote',
    description : 'Beschreibung'
);

annotate Symptom1 with @(
    title       : 'Symptom',
    description : 'Beschreibung'
);

annotate Symptom2 with @(
    title       : 'Symptom',
    description : 'Beschreibung'
);

annotate Symptom3 with @(
    title       : 'Symptom',
    description : 'Beschreibung'
);

annotate Symptom4 with @(
    title       : 'Symptom',
    description : 'Beschreibung'
);

annotate Symptom5 with @(
    title       : 'Symptom',
    description : 'Beschreibung'
);

annotate Symptom6 with @(
    title       : 'Symptom',
    description : 'Beschreibung'
);

annotate Wirkung with @(
    title       : 'Wirkung des Medikamentes',
    description : 'Beschreibung'
);

annotate Faktura with @(
    title       : 'Faktura',
    description : 'Beschreibung'
);
