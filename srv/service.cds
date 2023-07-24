using {com.yokogawa as db} from '../db/data-model';

service ZAPIHPS999 {
    entity ZTHBT0053 as projection on db.ZTHBT0053;
    entity ZTHBT0054 as projection on db.ZTHBT0054;
}
