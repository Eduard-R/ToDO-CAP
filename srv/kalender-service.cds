using {verri} from '../db/schema';

service KalenderService {
    
    entity Ereignisse as projection on verri.Ereignisse;
}