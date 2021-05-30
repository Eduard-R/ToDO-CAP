using {verri} from '../db/schema';

service ProjektService {
    
    entity Projekte as projection on verri.Projekte;
    entity Zeiterfassungen as projection on verri.Zeiterfassungen;
}