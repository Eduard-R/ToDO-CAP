using {verri} from '../db/schema';

service TodoService {

    entity Todos as projection on verri.Todos;
}
