using {todo} from '../db/schema';

service TodoService {

    entity Todos as projection on todo.Todos;

}
