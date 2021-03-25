using {verri} from '../db/schema';

service TodoService {

    entity Todos as projection on verri.Todos;
    entity Ereignisse as projection on verri.Ereignisse;
}
