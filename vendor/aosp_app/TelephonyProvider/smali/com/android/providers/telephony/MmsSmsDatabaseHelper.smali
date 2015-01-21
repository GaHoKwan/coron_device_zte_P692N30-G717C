.class public Lcom/android/providers/telephony/MmsSmsDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MmsSmsDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/telephony/MmsSmsDatabaseHelper$LowStorageMonitor;
    }
.end annotation


# static fields
.field private static final CB_UPDATE_THREAD_COUNT_ON_NEW:Ljava/lang/String; = "  UPDATE threads SET message_count =      (SELECT COUNT(cellbroadcast._id) FROM cellbroadcast LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id )  WHERE threads._id = new.thread_id; "

.field private static final CB_UPDATE_THREAD_COUNT_ON_OLD:Ljava/lang/String; = "  UPDATE threads SET message_count =      (SELECT COUNT(cellbroadcast._id) FROM cellbroadcast LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id)  WHERE threads._id = old.thread_id; "

.field private static final CB_UPDATE_THREAD_DATE_ON_DELETE:Ljava/lang/String; = "  UPDATE threads SET date =    (SELECT date FROM     (SELECT date, body, thread_id FROM cellbroadcast)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id; "

.field private static final CB_UPDATE_THREAD_DATE_SNIPPET_COUNT_ON_UPDATE:Ljava/lang/String; = "BEGIN  UPDATE threads SET    date = (strftime(\'%s\',\'now\') * 1000),     type= 3,     snippet = new.body   WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(cellbroadcast._id) FROM cellbroadcast LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id )  WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM cellbroadcast          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET readcount =   (SELECT count(_id)FROM   (SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM sms     WHERE ((read=1) AND thread_id = new.thread_id AND (type != 3))   UNION SELECT DISTINCT date * 1000 AS normalized_date, pdu._id, read   FROM pdu LEFT JOIN pending_msgs ON pdu._id = pending_msgs.msg_id   WHERE ((read=1) AND thread_id = new.thread_id AND msg_box != 3 AND (msg_box != 3         AND (m_type = 128 OR m_type = 132 OR m_type = 130)))   UNION SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM cellbroadcast    WHERE ((read=1) AND thread_id = new.thread_id) ORDER BY normalized_date ASC))    WHERE threads._id = new.thread_id; END;"

.field private static final CB_UPDATE_THREAD_READ_BODY:Ljava/lang/String; = "  UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM cellbroadcast          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; "

.field private static final CB_UPDATE_THREAD_READ_BODY_DELETE:Ljava/lang/String; = "  UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM cellbroadcast          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = old.thread_id; "

.field private static final CB_UPDATE_THREAD_SNIPPET_ON_DELETE:Ljava/lang/String; = "  UPDATE threads SET snippet =    (SELECT body FROM     (SELECT date, body, thread_id FROM cellbroadcast)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id; "

.field static final DATABASE_NAME:Ljava/lang/String; = "mmssms.db"

.field static final DATABASE_VERSION:I = 0x88cac

.field private static final PART_UPDATE_THREADS_ON_DELETE_TRIGGER:Ljava/lang/String; = "CREATE TRIGGER update_threads_on_delete_part  AFTER DELETE ON part  WHEN old.ct != \'text/plain\' AND old.ct != \'application/smil\'  BEGIN   UPDATE threads SET has_attachment =    CASE     (SELECT COUNT(*) FROM part JOIN pdu      ON pdu._id=old.mid AND part.mid=pdu._id      WHERE part.ct != \'text/plain\' AND part.ct != \'application/smil\')    WHEN 0 THEN 0    ELSE 1    END    WHERE threads._id=(SELECT thread_id FROM pdu WHERE _id=old.mid);  END"

.field private static final PART_UPDATE_THREADS_ON_INSERT_TRIGGER:Ljava/lang/String; = "CREATE TRIGGER update_threads_on_insert_part  AFTER INSERT ON part  WHEN new.ct != \'text/plain\' AND new.ct != \'application/smil\'  BEGIN   UPDATE threads SET has_attachment=1 WHERE _id IN    (SELECT pdu.thread_id FROM part JOIN pdu ON pdu._id=part.mid      WHERE part._id=new._id LIMIT 1);  END"

.field private static final PART_UPDATE_THREADS_ON_UPDATE_TRIGGER:Ljava/lang/String; = "CREATE TRIGGER update_threads_on_update_part  AFTER UPDATE of mid ON part  WHEN new.ct != \'text/plain\' AND new.ct != \'application/smil\'  BEGIN   UPDATE threads SET has_attachment=1 WHERE _id IN    (SELECT pdu.thread_id FROM part JOIN pdu ON pdu._id=part.mid      WHERE part._id=new._id LIMIT 1);  END"

.field private static final PDU_UPDATE_THREADS_ON_UPDATE_TRIGGER:Ljava/lang/String; = "CREATE TRIGGER update_threads_on_update_pdu  AFTER UPDATE of thread_id ON pdu  BEGIN   UPDATE threads SET has_attachment=1 WHERE _id IN    (SELECT pdu.thread_id FROM part JOIN pdu      WHERE part.ct != \'text/plain\' AND part.ct != \'application/smil\'      AND part.mid = pdu._id); END"

.field private static final PDU_UPDATE_THREAD_CONSTRAINTS:Ljava/lang/String; = "  WHEN new.m_type=132    OR new.m_type=130    OR new.m_type=128 "

.field private static final PDU_UPDATE_THREAD_DATE:Ljava/lang/String; = "UPDATE threads  SET  date =    (SELECT date FROM        (SELECT date * 1000 AS date, thread_id FROM pdu          WHERE (new.m_type=132 OR new.m_type=130 OR new.m_type=128) AND (thread_id = new.thread_id)          UNION SELECT date, thread_id FROM sms          WHERE thread_id = new.thread_id)      WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;"

.field private static final PDU_UPDATE_THREAD_DATE_SNIPPET_COUNT_ON_INSERT:Ljava/lang/String; = "  BEGIN  UPDATE threads  SET  date =    (SELECT date FROM        (SELECT date * 1000 AS date, thread_id FROM pdu          WHERE (new.m_type=132 OR new.m_type=130 OR new.m_type=128) AND (thread_id = new.thread_id)          UNION SELECT date, thread_id FROM sms          WHERE thread_id = new.thread_id)      WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id; UPDATE threads  SET  snippet =    (SELECT snippet FROM        (SELECT sub AS snippet, thread_id, date * 1000 AS date FROM pdu          WHERE (m_type=132 OR m_type=130 OR m_type=128) AND (thread_id = new.thread_id)          UNION SELECT body AS snippet, thread_id, date FROM sms          WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1 )      WHERE thread_id = new.thread_id )   WHERE threads._id = new.thread_id;  UPDATE threads  SET  snippet_cs =    (SELECT snippet_cs FROM        (SELECT sub_cs AS snippet_cs, thread_id, date * 1000 AS date FROM pdu          WHERE (m_type=132 OR m_type=130 OR m_type=128) AND (thread_id = new.thread_id)          UNION SELECT 0 AS snippet_cs, thread_id, date FROM sms          WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1 )      WHERE thread_id = new.thread_id )   WHERE threads._id = new.thread_id;  UPDATE threads  SET  date_sent =    (SELECT date_sent FROM        (SELECT date_sent * 1000 AS date_sent, thread_id FROM pdu          WHERE (m_type=132 OR m_type=130 OR m_type=128) AND (thread_id = new.thread_id)          UNION SELECT date_sent, thread_id FROM sms          WHERE thread_id = new.thread_id)      WHERE thread_id = new.thread_id ORDER BY date_sent DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128)) +          (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET readcount =   (SELECT count(_id)FROM   (SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM sms     WHERE ((read=1) AND thread_id = new.thread_id AND (type != 3))   UNION SELECT DISTINCT date * 1000 AS normalized_date, pdu._id, read   FROM pdu LEFT JOIN pending_msgs ON pdu._id = pending_msgs.msg_id   WHERE ((read=1) AND thread_id = new.thread_id AND msg_box != 3 AND (msg_box != 3         AND (m_type = 128 OR m_type = 132 OR m_type = 130)))   UNION SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM cellbroadcast    WHERE ((read=1) AND thread_id = new.thread_id) ORDER BY normalized_date ASC))    WHERE threads._id = new.thread_id;   UPDATE threads SET status = 0   WHERE (new.m_type=132 OR new.m_type=130 OR new.m_type=128) AND threads._id=new.thread_id;   END;"

.field private static final PDU_UPDATE_THREAD_DATE_SNIPPET_COUNT_ON_UPDATE:Ljava/lang/String; = " BEGIN  UPDATE threads  SET  date =    (SELECT date FROM        (SELECT date * 1000 AS date, thread_id FROM pdu          WHERE (m_type=132 OR m_type=130 OR m_type=128) AND (thread_id = new.thread_id)          UNION SELECT date, thread_id FROM sms          WHERE thread_id = new.thread_id)      WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;  UPDATE threads  SET  snippet =    (SELECT snippet FROM        (SELECT sub AS snippet, thread_id, date * 1000 AS date FROM pdu          WHERE (m_type=132 OR m_type=130 OR m_type=128) AND (thread_id = new.thread_id)          UNION SELECT body AS snippet, thread_id, date FROM sms          WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1 )      WHERE thread_id = new.thread_id )   WHERE threads._id = new.thread_id;  UPDATE threads  SET  snippet_cs =    (SELECT snippet_cs FROM        (SELECT sub_cs AS snippet_cs, thread_id, date * 1000 AS date FROM pdu          WHERE (m_type=132 OR m_type=130 OR m_type=128) AND (thread_id = new.thread_id)          UNION SELECT 0 AS snippet_cs, thread_id, date FROM sms          WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1 )      WHERE thread_id = new.thread_id )   WHERE threads._id = new.thread_id;  UPDATE threads  SET  date_sent =    (SELECT date_sent FROM        (SELECT date_sent * 1000 AS date_sent, thread_id FROM pdu          WHERE (m_type=132 OR m_type=130 OR m_type=128) AND (thread_id = new.thread_id)          UNION SELECT date_sent, thread_id FROM sms          WHERE thread_id = new.thread_id)      WHERE thread_id = new.thread_id ORDER BY date_sent DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128)) +          (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET readcount =   (SELECT count(_id)FROM   (SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM sms     WHERE ((read=1) AND thread_id = new.thread_id AND (type != 3))   UNION SELECT DISTINCT date * 1000 AS normalized_date, pdu._id, read   FROM pdu LEFT JOIN pending_msgs ON pdu._id = pending_msgs.msg_id   WHERE ((read=1) AND thread_id = new.thread_id AND msg_box != 3 AND (msg_box != 3         AND (m_type = 128 OR m_type = 132 OR m_type = 130)))   UNION SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM cellbroadcast    WHERE ((read=1) AND thread_id = new.thread_id) ORDER BY normalized_date ASC))    WHERE threads._id = new.thread_id;  END;"

.field private static final PDU_UPDATE_THREAD_READ_BODY:Ljava/lang/String; = "  UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128)) +          (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; "

.field private static final PDU_UPDATE_THREAD_STATUS:Ljava/lang/String; = "  UPDATE threads SET status = 0   WHERE (new.m_type=132 OR new.m_type=130 OR new.m_type=128) AND threads._id=new.thread_id; "

.field private static final SMS_UPDATE_OLD_THREAD_DATE_CT:Ljava/lang/String; = "UPDATE threads SET date = (SELECT max(date) as date FROM (SELECT date * 1000 as date FROM pdu WHERE (thread_id = old.thread_id AND m_type=132 OR m_type=130 OR m_type=128) UNION SELECT date FROM sms WHERE (thread_id = old.thread_id))) WHERE _id = old.thread_id;UPDATE threads SET date_sent = (SELECT max(date_sent) as date_sent FROM (SELECT date_sent * 1000 as date_sent FROM pdu WHERE (thread_id = old.thread_id AND m_type=132 OR m_type=130 OR m_type=128) UNION SELECT date_sent FROM sms WHERE (thread_id = old.thread_id))) WHERE _id = old.thread_id;"

.field private static final SMS_UPDATE_OLD_THREAD_ERROR_CT:Ljava/lang/String; = "UPDATE threads SET error = (SELECT count(_id) FROM (SELECT _id FROM sms WHERE thread_id = old.thread_id and type = 5 UNION SELECT pdu._id FROM pdu WHERE thread_id = old.thread_id and st = 135)) WHERE _id = old.thread_id;"

.field private static final SMS_UPDATE_OLD_THREAD_MESSAGE_COUNT_CT:Ljava/lang/String; = "UPDATE threads SET message_count = (SELECT count(_id) FROM (SELECT _id FROM sms WHERE thread_id = old.thread_id UNION SELECT _id FROM pdu WHERE thread_id = old.thread_id)) WHERE _id = old.thread_id;UPDATE threads SET readcount = (SELECT count(_id) FROM (SELECT _id FROM sms WHERE (thread_id = old.thread_id AND (read = 1) AND (type != 3)) UNION SELECT _id FROM pdu WHERE (thread_id = old.thread_id AND read = 1 AND msg_box != 3))) WHERE _id = old.thread_id;"

.field private static final SMS_UPDATE_OLD_THREAD_SNIPPET_CT:Ljava/lang/String; = "UPDATE threads SET snippet = (SELECT snippet FROM (SELECT max(date), snippet FROM (SELECT max(date) * 1000 as date, sub as snippet FROM pdu WHERE (thread_id = old.thread_id AND m_type=132 OR m_type=130 OR m_type=128) UNION SELECT max(date), body as snippet FROM sms WHERE (thread_id = old.thread_id)) WHERE snippet is not null)) WHERE _id = old.thread_id;UPDATE threads SET snippet_cs = (SELECT snippet_cs FROM (SELECT max(date), snippet_cs FROM (SELECT max(date) * 1000 as date, sub_cs as snippet_cs FROM pdu WHERE (thread_id = old.thread_id AND m_type=132 OR m_type=130 OR m_type=128) UNION SELECT max(date), 0 as snippet_cs FROM sms WHERE (thread_id = old.thread_id)))) WHERE _id = old.thread_id;"

.field private static final SMS_UPDATE_THREAD_DATE:Ljava/lang/String; = " UPDATE threads  SET  date =    (SELECT date FROM        (SELECT date * 1000 AS date, thread_id FROM pdu          WHERE (m_type=132 OR m_type=130 OR m_type=128) AND (thread_id = new.thread_id)          UNION SELECT date, thread_id FROM sms          WHERE thread_id = new.thread_id)      WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id; "

.field private static final SMS_UPDATE_THREAD_DATE_CT:Ljava/lang/String; = "UPDATE threads SET date = (SELECT max(date) as date FROM (SELECT date * 1000 as date FROM pdu WHERE (thread_id = new.thread_id AND m_type=132 OR m_type=130 OR m_type=128) UNION SELECT date FROM sms WHERE (thread_id = new.thread_id))) WHERE _id = new.thread_id;UPDATE threads SET date_sent = (SELECT max(date_sent) as date_sent FROM (SELECT date_sent * 1000 as date_sent FROM pdu WHERE (thread_id = new.thread_id AND m_type=132 OR m_type=130 OR m_type=128) UNION SELECT date_sent FROM sms WHERE (thread_id = new.thread_id))) WHERE _id = new.thread_id;"

.field private static final SMS_UPDATE_THREAD_DATE_SENT:Ljava/lang/String; = " UPDATE threads  SET  date_sent =    (SELECT date_sent FROM        (SELECT date_sent * 1000 AS date_sent, thread_id FROM pdu          WHERE (m_type=132 OR m_type=130 OR m_type=128) AND (thread_id = new.thread_id)          UNION SELECT date_sent, thread_id FROM sms          WHERE thread_id = new.thread_id)      WHERE thread_id = new.thread_id ORDER BY date_sent DESC LIMIT 1)   WHERE threads._id = new.thread_id; "

.field private static final SMS_UPDATE_THREAD_DATE_SNIPPET_COUNT_ON_INSERT:Ljava/lang/String; = "BEGIN UPDATE threads  SET  date =    (SELECT date FROM        (SELECT date * 1000 AS date, thread_id FROM pdu          WHERE (m_type=132 OR m_type=130 OR m_type=128) AND (thread_id = new.thread_id)          UNION SELECT date, thread_id FROM sms          WHERE thread_id = new.thread_id)      WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;  UPDATE threads  SET  date_sent =    (SELECT date_sent FROM        (SELECT date_sent * 1000 AS date_sent, thread_id FROM pdu          WHERE (m_type=132 OR m_type=130 OR m_type=128) AND (thread_id = new.thread_id)          UNION SELECT date_sent, thread_id FROM sms          WHERE thread_id = new.thread_id)      WHERE thread_id = new.thread_id ORDER BY date_sent DESC LIMIT 1)   WHERE threads._id = new.thread_id;  UPDATE threads  SET  snippet =    (SELECT snippet FROM        (SELECT sub AS snippet, thread_id, date * 1000 AS date FROM pdu          WHERE (m_type=132 OR m_type=130 OR m_type=128) AND (thread_id = new.thread_id)          UNION SELECT body AS snippet, thread_id, date FROM sms          WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1 )      WHERE thread_id = new.thread_id )   WHERE threads._id = new.thread_id;  UPDATE threads  SET  snippet_cs =    (SELECT snippet_cs FROM        (SELECT sub_cs AS snippet_cs, thread_id, date * 1000 AS date FROM pdu          WHERE (m_type=132 OR m_type=130 OR m_type=128) AND (thread_id = new.thread_id)          UNION SELECT 0 AS snippet_cs, thread_id, date FROM sms          WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1 )      WHERE thread_id = new.thread_id )   WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE ((SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id) +          (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128)))       WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET readcount =   (SELECT count(_id)FROM   (SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM sms     WHERE ((read=1) AND thread_id = new.thread_id AND (type != 3))   UNION SELECT DISTINCT date * 1000 AS normalized_date, pdu._id, read   FROM pdu LEFT JOIN pending_msgs ON pdu._id = pending_msgs.msg_id   WHERE ((read=1) AND thread_id = new.thread_id AND msg_box != 3 AND (msg_box != 3         AND (m_type = 128 OR m_type = 132 OR m_type = 130)))   UNION SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM cellbroadcast    WHERE ((read=1) AND thread_id = new.thread_id) ORDER BY normalized_date ASC))    WHERE threads._id = new.thread_id; END;"

.field private static final SMS_UPDATE_THREAD_DATE_SNIPPET_COUNT_ON_UPDATE:Ljava/lang/String; = "BEGIN  UPDATE threads SET    date = new.date,     date_sent = new.date_sent,     snippet = new.body,     snippet_cs = 0  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE ((SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id) +          (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128)))       WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET readcount =   (SELECT count(_id)FROM   (SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM sms     WHERE ((read=1) AND thread_id = new.thread_id AND (type != 3))   UNION SELECT DISTINCT date * 1000 AS normalized_date, pdu._id, read   FROM pdu LEFT JOIN pending_msgs ON pdu._id = pending_msgs.msg_id   WHERE ((read=1) AND thread_id = new.thread_id AND msg_box != 3 AND (msg_box != 3         AND (m_type = 128 OR m_type = 132 OR m_type = 130)))   UNION SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM cellbroadcast    WHERE ((read=1) AND thread_id = new.thread_id) ORDER BY normalized_date ASC))    WHERE threads._id = new.thread_id; END;"

.field private static final SMS_UPDATE_THREAD_ERROR_CT:Ljava/lang/String; = "UPDATE threads SET error = (SELECT count(_id) FROM (SELECT _id FROM sms WHERE thread_id = new.thread_id and type = 5 UNION SELECT _id FROM pdu WHERE thread_id = new.thread_id and st = 135)) WHERE _id = new.thread_id;"

.field private static final SMS_UPDATE_THREAD_MESSAGE_COUNT_CT:Ljava/lang/String; = "UPDATE threads SET message_count = (SELECT count(_id) FROM (SELECT _id FROM sms WHERE thread_id = new.thread_id UNION SELECT _id FROM pdu WHERE thread_id = new.thread_id)) WHERE _id = new.thread_id;UPDATE threads SET readcount = (SELECT count(_id) FROM (SELECT _id FROM sms WHERE (thread_id = new.thread_id AND (read = 1) AND (type != 3)) UNION SELECT _id FROM pdu WHERE (thread_id = new.thread_id AND read = 1 AND msg_box != 3))) WHERE _id = new.thread_id;"

.field private static final SMS_UPDATE_THREAD_READ_BODY:Ljava/lang/String; = "  UPDATE threads SET read =     CASE ((SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id) +          (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128)))       WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; "

.field private static final SMS_UPDATE_THREAD_SNIPPET:Ljava/lang/String; = " UPDATE threads  SET  snippet =    (SELECT snippet FROM        (SELECT sub AS snippet, thread_id, date * 1000 AS date FROM pdu          WHERE (m_type=132 OR m_type=130 OR m_type=128) AND (thread_id = new.thread_id)          UNION SELECT body AS snippet, thread_id, date FROM sms          WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1 )      WHERE thread_id = new.thread_id )   WHERE threads._id = new.thread_id; "

.field private static final SMS_UPDATE_THREAD_SNIPPET_CS:Ljava/lang/String; = " UPDATE threads  SET  snippet_cs =    (SELECT snippet_cs FROM        (SELECT sub_cs AS snippet_cs, thread_id, date * 1000 AS date FROM pdu          WHERE (m_type=132 OR m_type=130 OR m_type=128) AND (thread_id = new.thread_id)          UNION SELECT 0 AS snippet_cs, thread_id, date FROM sms          WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1 )      WHERE thread_id = new.thread_id )   WHERE threads._id = new.thread_id; "

.field private static final SMS_UPDATE_THREAD_SNIPPET_CT:Ljava/lang/String; = "UPDATE threads SET snippet = (SELECT snippet FROM (SELECT max(date), snippet FROM (SELECT max(date) * 1000 as date, sub as snippet FROM pdu WHERE (thread_id = new.thread_id AND m_type=132 OR m_type=130 OR m_type=128) UNION SELECT max(date), body as snippet FROM sms WHERE (thread_id = new.thread_id)) WHERE snippet is not null)) WHERE _id = new.thread_id;UPDATE threads SET snippet_cs = (SELECT snippet_cs FROM (SELECT max(date), snippet_cs FROM (SELECT max(date) * 1000 as date, sub_cs as snippet_cs FROM pdu WHERE (thread_id = new.thread_id AND m_type=132 OR m_type=130 OR m_type=128) UNION SELECT max(date), 0 as snippet_cs FROM sms WHERE (thread_id = new.thread_id)))) WHERE _id = new.thread_id;"

.field static final TABLE_CELLBROADCAST:Ljava/lang/String; = "cellbroadcast"

.field private static final TAG:Ljava/lang/String; = "Mms/Provider/MmsSmsDatabaseHelper"

.field private static final UPDATE_THREAD_COUNT_ON_NEW:Ljava/lang/String; = "  UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id; "

.field private static final UPDATE_THREAD_COUNT_ON_OLD:Ljava/lang/String; = "  UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = old.thread_id; "

.field private static final UPDATE_THREAD_LIDATE_LISNIPPET_LISNIPPETSC_ON_UPDATE_AND_DELETE:Ljava/lang/String; = "  UPDATE threads SET li_date =     CASE (SELECT COUNT(*) FROM       (SELECT date * 1000 AS date, sub AS snippet, thread_id, locked FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128       UNION SELECT date, body AS snippet, thread_id, locked FROM sms)      WHERE thread_id = OLD.thread_id AND locked=1 ORDER BY date DESC LIMIT 1)    WHEN 0 THEN 0    ELSE       (SELECT date FROM        (SELECT date * 1000 AS date, sub AS snippet, thread_id, locked FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128         UNION SELECT date, body AS snippet, thread_id, locked FROM sms)      WHERE thread_id = OLD.thread_id AND locked=1 ORDER BY date DESC LIMIT 1)    END  WHERE _id = OLD.thread_id;   UPDATE threads SET li_snippet =     CASE (SELECT COUNT(*) FROM       (SELECT date * 1000 AS date, sub AS snippet, thread_id, locked FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128       UNION SELECT date, body AS snippet, thread_id, locked FROM sms)      WHERE thread_id = OLD.thread_id AND locked=1 ORDER BY date DESC LIMIT 1)    WHEN 0 THEN \'\'    ELSE       (SELECT snippet FROM        (SELECT date * 1000 AS date, sub AS snippet, thread_id, locked FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128         UNION SELECT date, body AS snippet, thread_id, locked FROM sms)      WHERE thread_id = OLD.thread_id AND locked=1 ORDER BY date DESC LIMIT 1)    END  WHERE _id = OLD.thread_id;   UPDATE threads SET li_snippet_cs =     CASE (SELECT COUNT(*) FROM       (SELECT date * 1000 AS date, sub AS snippet, thread_id, locked FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128       UNION SELECT date, body AS snippet, thread_id, locked FROM sms)      WHERE thread_id = OLD.thread_id AND locked=1 ORDER BY date DESC LIMIT 1)    WHEN 0 THEN 0    ELSE       (SELECT snippet_cs FROM        (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id, locked FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128         UNION SELECT date, 0 AS snippet_cs, thread_id, locked FROM sms)      WHERE thread_id = OLD.thread_id AND locked=1 ORDER BY date DESC LIMIT 1)    END  WHERE _id = OLD.thread_id; "

.field private static final UPDATE_THREAD_READ_COUNT:Ljava/lang/String; = "  UPDATE threads SET readcount =   (SELECT count(_id)FROM   (SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM sms     WHERE ((read=1) AND thread_id = new.thread_id AND (type != 3))   UNION SELECT DISTINCT date * 1000 AS normalized_date, pdu._id, read   FROM pdu LEFT JOIN pending_msgs ON pdu._id = pending_msgs.msg_id   WHERE ((read=1) AND thread_id = new.thread_id AND msg_box != 3 AND (msg_box != 3         AND (m_type = 128 OR m_type = 132 OR m_type = 130)))   UNION SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM cellbroadcast    WHERE ((read=1) AND thread_id = new.thread_id) ORDER BY normalized_date ASC))    WHERE threads._id = new.thread_id; "

.field private static final UPDATE_THREAD_READ_COUNT_OLD:Ljava/lang/String; = "  UPDATE threads SET readcount =   (SELECT count(_id) FROM   (SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM sms     WHERE ((read=1) AND thread_id = old.thread_id AND (type != 3))   UNION SELECT DISTINCT date * 1000 AS normalized_date, pdu._id, read   FROM pdu LEFT JOIN pending_msgs ON pdu._id = pending_msgs.msg_id   WHERE ((read=1) AND thread_id = old.thread_id AND msg_box != 3 AND (msg_box != 3         AND (m_type = 128 OR m_type = 132 OR m_type = 130)))   UNION SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM cellbroadcast    WHERE ((read=1) AND thread_id = old.thread_id) ORDER BY normalized_date ASC))    WHERE threads._id = old.thread_id; "

.field private static final UPDATE_THREAD_SNIPPET_SNIPPET_CS_ON_DELETE:Ljava/lang/String; = "  UPDATE threads SET snippet =    (SELECT snippet FROM     (SELECT date * 1000 AS date, sub AS snippet, thread_id FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128      UNION SELECT date, body AS snippet, thread_id FROM sms)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET snippet_cs =    (SELECT snippet_cs FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET date_sent =    (SELECT date_sent FROM     (SELECT date_sent * 1000 as date_sent, date * 1000 AS date, thread_id FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128      UNION SELECT date_sent, date, thread_id FROM sms)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id; "

.field private static final WALLPAPER_PATH:Ljava/lang/String; = "/data/data/com.android.providers.telephony/app_wallpaper"

.field private static sFakeLowStorageTest:Z

.field private static sInstance:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

.field private static sTriedAutoIncrement:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLowStorageMonitor:Lcom/android/providers/telephony/MmsSmsDatabaseHelper$LowStorageMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 590
    const/4 v0, 0x0

    sput-object v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->sInstance:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    .line 591
    sput-boolean v1, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->sTriedAutoIncrement:Z

    .line 592
    sput-boolean v1, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->sFakeLowStorageTest:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 602
    const-string v0, "mmssms.db"

    const/4 v1, 0x0

    const v2, 0x88cac

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 604
    iput-object p1, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mContext:Landroid/content/Context;

    .line 605
    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    sput-boolean p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->sTriedAutoIncrement:Z

    return p0
.end method

.method private createCBTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3159
    const-string v0, "CREATE TABLE cellbroadcast(_id INTEGER PRIMARY KEY,sim_id INTEGER,locked INTEGER DEFAULT 0,body TEXT,channel_id INTEGER,thread_id INTEGER,read INTEGER DEFAULT 0,seen INTEGER DEFAULT 0,date_sent INTEGER DEFAULT 0,date INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3164
    return-void
.end method

.method private createCommonTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1525
    const-string v0, "CREATE TABLE canonical_addresses (_id INTEGER PRIMARY KEY AUTOINCREMENT,address TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1537
    const-string v0, "CREATE TABLE threads (_id INTEGER PRIMARY KEY AUTOINCREMENT,date INTEGER DEFAULT 0,date_sent INTEGER DEFAULT 0,message_count INTEGER DEFAULT 0,readcount INTEGER DEFAULT 0,recipient_ids TEXT,snippet TEXT,snippet_cs INTEGER DEFAULT 0,read INTEGER DEFAULT 1,type INTEGER DEFAULT 0,error INTEGER DEFAULT 0,has_attachment INTEGER DEFAULT 0,li_date INTEGER DEFAULT 0,li_snippet TEXT,li_snippet_cs INTEGER DEFAULT 0,status INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1564
    const-string v0, "CREATE TABLE pending_msgs (_id INTEGER PRIMARY KEY,proto_type INTEGER,msg_id INTEGER,msg_type INTEGER,err_type INTEGER,err_code INTEGER,retry_index INTEGER NOT NULL DEFAULT 0,due_time INTEGER,pending_sim_id INTEGER DEFAULT 0,last_try INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1577
    return-void
.end method

.method private createCommonTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1584
    const-string v0, "CREATE TRIGGER pdu_update_thread_on_insert AFTER INSERT ON pdu   WHEN new.m_type=132    OR new.m_type=130    OR new.m_type=128   BEGIN  UPDATE threads  SET  date =    (SELECT date FROM        (SELECT date * 1000 AS date, thread_id FROM pdu          WHERE (new.m_type=132 OR new.m_type=130 OR new.m_type=128) AND (thread_id = new.thread_id)          UNION SELECT date, thread_id FROM sms          WHERE thread_id = new.thread_id)      WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id; UPDATE threads  SET  snippet =    (SELECT snippet FROM        (SELECT sub AS snippet, thread_id, date * 1000 AS date FROM pdu          WHERE (m_type=132 OR m_type=130 OR m_type=128) AND (thread_id = new.thread_id)          UNION SELECT body AS snippet, thread_id, date FROM sms          WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1 )      WHERE thread_id = new.thread_id )   WHERE threads._id = new.thread_id;  UPDATE threads  SET  snippet_cs =    (SELECT snippet_cs FROM        (SELECT sub_cs AS snippet_cs, thread_id, date * 1000 AS date FROM pdu          WHERE (m_type=132 OR m_type=130 OR m_type=128) AND (thread_id = new.thread_id)          UNION SELECT 0 AS snippet_cs, thread_id, date FROM sms          WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1 )      WHERE thread_id = new.thread_id )   WHERE threads._id = new.thread_id;  UPDATE threads  SET  date_sent =    (SELECT date_sent FROM        (SELECT date_sent * 1000 AS date_sent, thread_id FROM pdu          WHERE (m_type=132 OR m_type=130 OR m_type=128) AND (thread_id = new.thread_id)          UNION SELECT date_sent, thread_id FROM sms          WHERE thread_id = new.thread_id)      WHERE thread_id = new.thread_id ORDER BY date_sent DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128)) +          (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET readcount =   (SELECT count(_id)FROM   (SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM sms     WHERE ((read=1) AND thread_id = new.thread_id AND (type != 3))   UNION SELECT DISTINCT date * 1000 AS normalized_date, pdu._id, read   FROM pdu LEFT JOIN pending_msgs ON pdu._id = pending_msgs.msg_id   WHERE ((read=1) AND thread_id = new.thread_id AND msg_box != 3 AND (msg_box != 3         AND (m_type = 128 OR m_type = 132 OR m_type = 130)))   UNION SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM cellbroadcast    WHERE ((read=1) AND thread_id = new.thread_id) ORDER BY normalized_date ASC))    WHERE threads._id = new.thread_id;   UPDATE threads SET status = 0   WHERE (new.m_type=132 OR new.m_type=130 OR new.m_type=128) AND threads._id=new.thread_id;   END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1591
    const-string v0, "CREATE TRIGGER sms_update_thread_on_insert AFTER INSERT ON sms BEGIN UPDATE threads  SET  date =    (SELECT date FROM        (SELECT date * 1000 AS date, thread_id FROM pdu          WHERE (m_type=132 OR m_type=130 OR m_type=128) AND (thread_id = new.thread_id)          UNION SELECT date, thread_id FROM sms          WHERE thread_id = new.thread_id)      WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;  UPDATE threads  SET  date_sent =    (SELECT date_sent FROM        (SELECT date_sent * 1000 AS date_sent, thread_id FROM pdu          WHERE (m_type=132 OR m_type=130 OR m_type=128) AND (thread_id = new.thread_id)          UNION SELECT date_sent, thread_id FROM sms          WHERE thread_id = new.thread_id)      WHERE thread_id = new.thread_id ORDER BY date_sent DESC LIMIT 1)   WHERE threads._id = new.thread_id;  UPDATE threads  SET  snippet =    (SELECT snippet FROM        (SELECT sub AS snippet, thread_id, date * 1000 AS date FROM pdu          WHERE (m_type=132 OR m_type=130 OR m_type=128) AND (thread_id = new.thread_id)          UNION SELECT body AS snippet, thread_id, date FROM sms          WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1 )      WHERE thread_id = new.thread_id )   WHERE threads._id = new.thread_id;  UPDATE threads  SET  snippet_cs =    (SELECT snippet_cs FROM        (SELECT sub_cs AS snippet_cs, thread_id, date * 1000 AS date FROM pdu          WHERE (m_type=132 OR m_type=130 OR m_type=128) AND (thread_id = new.thread_id)          UNION SELECT 0 AS snippet_cs, thread_id, date FROM sms          WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1 )      WHERE thread_id = new.thread_id )   WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE ((SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id) +          (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128)))       WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET readcount =   (SELECT count(_id)FROM   (SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM sms     WHERE ((read=1) AND thread_id = new.thread_id AND (type != 3))   UNION SELECT DISTINCT date * 1000 AS normalized_date, pdu._id, read   FROM pdu LEFT JOIN pending_msgs ON pdu._id = pending_msgs.msg_id   WHERE ((read=1) AND thread_id = new.thread_id AND msg_box != 3 AND (msg_box != 3         AND (m_type = 128 OR m_type = 132 OR m_type = 130)))   UNION SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM cellbroadcast    WHERE ((read=1) AND thread_id = new.thread_id) ORDER BY normalized_date ASC))    WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1596
    const-string v0, "CREATE TRIGGER sms_update_thread_date_subject_on_update AFTER  UPDATE OF date, body, type  ON sms BEGIN  UPDATE threads SET    date = new.date,     date_sent = new.date_sent,     snippet = new.body,     snippet_cs = 0  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE ((SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id) +          (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128)))       WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET readcount =   (SELECT count(_id)FROM   (SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM sms     WHERE ((read=1) AND thread_id = new.thread_id AND (type != 3))   UNION SELECT DISTINCT date * 1000 AS normalized_date, pdu._id, read   FROM pdu LEFT JOIN pending_msgs ON pdu._id = pending_msgs.msg_id   WHERE ((read=1) AND thread_id = new.thread_id AND msg_box != 3 AND (msg_box != 3         AND (m_type = 128 OR m_type = 132 OR m_type = 130)))   UNION SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM cellbroadcast    WHERE ((read=1) AND thread_id = new.thread_id) ORDER BY normalized_date ASC))    WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1602
    const-string v0, "CREATE TRIGGER sms_update_thread_read_on_update AFTER  UPDATE OF read  ON sms BEGIN   UPDATE threads SET read =     CASE ((SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id) +          (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128)))       WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET readcount =   (SELECT count(_id)FROM   (SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM sms     WHERE ((read=1) AND thread_id = new.thread_id AND (type != 3))   UNION SELECT DISTINCT date * 1000 AS normalized_date, pdu._id, read   FROM pdu LEFT JOIN pending_msgs ON pdu._id = pending_msgs.msg_id   WHERE ((read=1) AND thread_id = new.thread_id AND msg_box != 3 AND (msg_box != 3         AND (m_type = 128 OR m_type = 132 OR m_type = 130)))   UNION SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM cellbroadcast    WHERE ((read=1) AND thread_id = new.thread_id) ORDER BY normalized_date ASC))    WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1612
    const-string v0, "CREATE TRIGGER sms_update_thread_on_add AFTER  UPDATE OF thread_id ON sms BEGIN UPDATE threads SET date = (SELECT max(date) as date FROM (SELECT date * 1000 as date FROM pdu WHERE (thread_id = new.thread_id AND m_type=132 OR m_type=130 OR m_type=128) UNION SELECT date FROM sms WHERE (thread_id = new.thread_id))) WHERE _id = new.thread_id;UPDATE threads SET date_sent = (SELECT max(date_sent) as date_sent FROM (SELECT date_sent * 1000 as date_sent FROM pdu WHERE (thread_id = new.thread_id AND m_type=132 OR m_type=130 OR m_type=128) UNION SELECT date_sent FROM sms WHERE (thread_id = new.thread_id))) WHERE _id = new.thread_id;UPDATE threads SET message_count = (SELECT count(_id) FROM (SELECT _id FROM sms WHERE thread_id = new.thread_id UNION SELECT _id FROM pdu WHERE thread_id = new.thread_id)) WHERE _id = new.thread_id;UPDATE threads SET readcount = (SELECT count(_id) FROM (SELECT _id FROM sms WHERE (thread_id = new.thread_id AND (read = 1) AND (type != 3)) UNION SELECT _id FROM pdu WHERE (thread_id = new.thread_id AND read = 1 AND msg_box != 3))) WHERE _id = new.thread_id;UPDATE threads SET snippet = (SELECT snippet FROM (SELECT max(date), snippet FROM (SELECT max(date) * 1000 as date, sub as snippet FROM pdu WHERE (thread_id = new.thread_id AND m_type=132 OR m_type=130 OR m_type=128) UNION SELECT max(date), body as snippet FROM sms WHERE (thread_id = new.thread_id)) WHERE snippet is not null)) WHERE _id = new.thread_id;UPDATE threads SET snippet_cs = (SELECT snippet_cs FROM (SELECT max(date), snippet_cs FROM (SELECT max(date) * 1000 as date, sub_cs as snippet_cs FROM pdu WHERE (thread_id = new.thread_id AND m_type=132 OR m_type=130 OR m_type=128) UNION SELECT max(date), 0 as snippet_cs FROM sms WHERE (thread_id = new.thread_id)))) WHERE _id = new.thread_id;UPDATE threads SET error = (SELECT count(_id) FROM (SELECT _id FROM sms WHERE thread_id = new.thread_id and type = 5 UNION SELECT _id FROM pdu WHERE thread_id = new.thread_id and st = 135)) WHERE _id = new.thread_id;END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1616
    const-string v0, "CREATE TRIGGER sms_update_thread_on_split AFTER  UPDATE OF thread_id ON sms BEGIN UPDATE threads SET date = (SELECT max(date) as date FROM (SELECT date * 1000 as date FROM pdu WHERE (thread_id = old.thread_id AND m_type=132 OR m_type=130 OR m_type=128) UNION SELECT date FROM sms WHERE (thread_id = old.thread_id))) WHERE _id = old.thread_id;UPDATE threads SET date_sent = (SELECT max(date_sent) as date_sent FROM (SELECT date_sent * 1000 as date_sent FROM pdu WHERE (thread_id = old.thread_id AND m_type=132 OR m_type=130 OR m_type=128) UNION SELECT date_sent FROM sms WHERE (thread_id = old.thread_id))) WHERE _id = old.thread_id;UPDATE threads SET message_count = (SELECT count(_id) FROM (SELECT _id FROM sms WHERE thread_id = old.thread_id UNION SELECT _id FROM pdu WHERE thread_id = old.thread_id)) WHERE _id = old.thread_id;UPDATE threads SET readcount = (SELECT count(_id) FROM (SELECT _id FROM sms WHERE (thread_id = old.thread_id AND (read = 1) AND (type != 3)) UNION SELECT _id FROM pdu WHERE (thread_id = old.thread_id AND read = 1 AND msg_box != 3))) WHERE _id = old.thread_id;UPDATE threads SET snippet = (SELECT snippet FROM (SELECT max(date), snippet FROM (SELECT max(date) * 1000 as date, sub as snippet FROM pdu WHERE (thread_id = old.thread_id AND m_type=132 OR m_type=130 OR m_type=128) UNION SELECT max(date), body as snippet FROM sms WHERE (thread_id = old.thread_id)) WHERE snippet is not null)) WHERE _id = old.thread_id;UPDATE threads SET snippet_cs = (SELECT snippet_cs FROM (SELECT max(date), snippet_cs FROM (SELECT max(date) * 1000 as date, sub_cs as snippet_cs FROM pdu WHERE (thread_id = old.thread_id AND m_type=132 OR m_type=130 OR m_type=128) UNION SELECT max(date), 0 as snippet_cs FROM sms WHERE (thread_id = old.thread_id)))) WHERE _id = old.thread_id;UPDATE threads SET error = (SELECT count(_id) FROM (SELECT _id FROM sms WHERE thread_id = old.thread_id and type = 5 UNION SELECT pdu._id FROM pdu WHERE thread_id = old.thread_id and st = 135)) WHERE _id = old.thread_id;END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1641
    const-string v0, "CREATE TRIGGER wappush_update_thread_on_update AFTER  UPDATE OF read  ON wappush BEGIN   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM wappush          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1681
    const-string v0, "CREATE TRIGGER delete_obsolete_threads_when_update_pdu AFTER UPDATE OF thread_id ON pdu WHEN old.thread_id != new.thread_id BEGIN   DELETE FROM threads   WHERE     _id = old.thread_id     AND _id NOT IN     (SELECT thread_id FROM sms     UNION SELECT thread_id FROM wappush      UNION SELECT thread_id from pdu      UNION SELECT thread_id from cellbroadcast); END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1727
    const-string v0, "CREATE TRIGGER update_threads_error_on_update_mms   AFTER UPDATE OF err_type ON pending_msgs   WHEN (OLD.err_type < 10 AND NEW.err_type >= 10 AND NEW.proto_type = 1 AND NEW.msg_type = 128)    OR (OLD.err_type >= 10 AND NEW.err_type < 10) BEGIN  UPDATE threads SET error =     CASE      WHEN NEW.err_type >= 10 THEN error + 1      ELSE error - 1    END   WHERE _id =   (SELECT DISTINCT thread_id    FROM pdu    WHERE _id = NEW.msg_id); END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1746
    const-string v0, "CREATE TRIGGER update_threads_error_on_update_sms   AFTER UPDATE OF type ON sms  WHEN (OLD.type != 5 AND NEW.type = 5)    OR (OLD.type = 5 AND NEW.type != 5) BEGIN   UPDATE threads SET error =     CASE      WHEN NEW.type = 5 THEN error + 1      ELSE error - 1    END   WHERE _id = NEW.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1762
    const-string v0, "CREATE TRIGGER update_threads_lirelated_on_sms_locked   AFTER UPDATE OF locked ON sms  WHEN (OLD.locked != 1 AND NEW.locked = 1)    AND (NEW.date > (SELECT li_date FROM threads WHERE _id= NEW.thread_id)) BEGIN   UPDATE threads SET    li_date = NEW.date,     li_snippet = NEW.body  WHERE _id = NEW.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1773
    const-string v0, "CREATE TRIGGER update_threads_lirelated_on_sms_unlock   AFTER UPDATE OF locked ON sms  WHEN (OLD.locked = 1 AND NEW.locked != 1)    AND (NEW.date = (SELECT li_date FROM threads WHERE _id= NEW.thread_id)) BEGIN   UPDATE threads SET li_date =     CASE (SELECT COUNT(*) FROM       (SELECT date * 1000 AS date, sub AS snippet, thread_id, locked FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128       UNION SELECT date, body AS snippet, thread_id, locked FROM sms)      WHERE thread_id = OLD.thread_id AND locked=1 ORDER BY date DESC LIMIT 1)    WHEN 0 THEN 0    ELSE       (SELECT date FROM        (SELECT date * 1000 AS date, sub AS snippet, thread_id, locked FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128         UNION SELECT date, body AS snippet, thread_id, locked FROM sms)      WHERE thread_id = OLD.thread_id AND locked=1 ORDER BY date DESC LIMIT 1)    END  WHERE _id = OLD.thread_id;   UPDATE threads SET li_snippet =     CASE (SELECT COUNT(*) FROM       (SELECT date * 1000 AS date, sub AS snippet, thread_id, locked FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128       UNION SELECT date, body AS snippet, thread_id, locked FROM sms)      WHERE thread_id = OLD.thread_id AND locked=1 ORDER BY date DESC LIMIT 1)    WHEN 0 THEN \'\'    ELSE       (SELECT snippet FROM        (SELECT date * 1000 AS date, sub AS snippet, thread_id, locked FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128         UNION SELECT date, body AS snippet, thread_id, locked FROM sms)      WHERE thread_id = OLD.thread_id AND locked=1 ORDER BY date DESC LIMIT 1)    END  WHERE _id = OLD.thread_id;   UPDATE threads SET li_snippet_cs =     CASE (SELECT COUNT(*) FROM       (SELECT date * 1000 AS date, sub AS snippet, thread_id, locked FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128       UNION SELECT date, body AS snippet, thread_id, locked FROM sms)      WHERE thread_id = OLD.thread_id AND locked=1 ORDER BY date DESC LIMIT 1)    WHEN 0 THEN 0    ELSE       (SELECT snippet_cs FROM        (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id, locked FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128         UNION SELECT date, 0 AS snippet_cs, thread_id, locked FROM sms)      WHERE thread_id = OLD.thread_id AND locked=1 ORDER BY date DESC LIMIT 1)    END  WHERE _id = OLD.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1781
    const-string v0, "CREATE TRIGGER update_threads_lirelated_on_sms_delete   AFTER DELETE ON sms  WHEN OLD.locked = 1     AND OLD.date = (SELECT li_date FROM threads WHERE _id= OLD.thread_id) BEGIN   UPDATE threads SET li_date =     CASE (SELECT COUNT(*) FROM       (SELECT date * 1000 AS date, sub AS snippet, thread_id, locked FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128       UNION SELECT date, body AS snippet, thread_id, locked FROM sms)      WHERE thread_id = OLD.thread_id AND locked=1 ORDER BY date DESC LIMIT 1)    WHEN 0 THEN 0    ELSE       (SELECT date FROM        (SELECT date * 1000 AS date, sub AS snippet, thread_id, locked FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128         UNION SELECT date, body AS snippet, thread_id, locked FROM sms)      WHERE thread_id = OLD.thread_id AND locked=1 ORDER BY date DESC LIMIT 1)    END  WHERE _id = OLD.thread_id;   UPDATE threads SET li_snippet =     CASE (SELECT COUNT(*) FROM       (SELECT date * 1000 AS date, sub AS snippet, thread_id, locked FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128       UNION SELECT date, body AS snippet, thread_id, locked FROM sms)      WHERE thread_id = OLD.thread_id AND locked=1 ORDER BY date DESC LIMIT 1)    WHEN 0 THEN \'\'    ELSE       (SELECT snippet FROM        (SELECT date * 1000 AS date, sub AS snippet, thread_id, locked FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128         UNION SELECT date, body AS snippet, thread_id, locked FROM sms)      WHERE thread_id = OLD.thread_id AND locked=1 ORDER BY date DESC LIMIT 1)    END  WHERE _id = OLD.thread_id;   UPDATE threads SET li_snippet_cs =     CASE (SELECT COUNT(*) FROM       (SELECT date * 1000 AS date, sub AS snippet, thread_id, locked FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128       UNION SELECT date, body AS snippet, thread_id, locked FROM sms)      WHERE thread_id = OLD.thread_id AND locked=1 ORDER BY date DESC LIMIT 1)    WHEN 0 THEN 0    ELSE       (SELECT snippet_cs FROM        (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id, locked FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128         UNION SELECT date, 0 AS snippet_cs, thread_id, locked FROM sms)      WHERE thread_id = OLD.thread_id AND locked=1 ORDER BY date DESC LIMIT 1)    END  WHERE _id = OLD.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1789
    const-string v0, "CREATE TRIGGER update_threads_lirelated_on_pdu_locked   AFTER UPDATE OF locked ON pdu  WHEN (OLD.locked != 1 AND NEW.locked = 1)    AND (NEW.date > (SELECT li_date FROM threads WHERE _id= NEW.thread_id)) BEGIN   UPDATE threads SET    li_date = NEW.date,     li_snippet = NEW.sub,     li_snippet_cs = NEW.sub_cs  WHERE _id = NEW.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1801
    const-string v0, "CREATE TRIGGER update_threads_lirelated_on_pdu_unlock   AFTER UPDATE OF locked ON pdu  WHEN (OLD.locked = 1 AND NEW.locked != 1)    AND (NEW.date = (SELECT li_date FROM threads WHERE _id= NEW.thread_id)) BEGIN   UPDATE threads SET li_date =     CASE (SELECT COUNT(*) FROM       (SELECT date * 1000 AS date, sub AS snippet, thread_id, locked FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128       UNION SELECT date, body AS snippet, thread_id, locked FROM sms)      WHERE thread_id = OLD.thread_id AND locked=1 ORDER BY date DESC LIMIT 1)    WHEN 0 THEN 0    ELSE       (SELECT date FROM        (SELECT date * 1000 AS date, sub AS snippet, thread_id, locked FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128         UNION SELECT date, body AS snippet, thread_id, locked FROM sms)      WHERE thread_id = OLD.thread_id AND locked=1 ORDER BY date DESC LIMIT 1)    END  WHERE _id = OLD.thread_id;   UPDATE threads SET li_snippet =     CASE (SELECT COUNT(*) FROM       (SELECT date * 1000 AS date, sub AS snippet, thread_id, locked FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128       UNION SELECT date, body AS snippet, thread_id, locked FROM sms)      WHERE thread_id = OLD.thread_id AND locked=1 ORDER BY date DESC LIMIT 1)    WHEN 0 THEN \'\'    ELSE       (SELECT snippet FROM        (SELECT date * 1000 AS date, sub AS snippet, thread_id, locked FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128         UNION SELECT date, body AS snippet, thread_id, locked FROM sms)      WHERE thread_id = OLD.thread_id AND locked=1 ORDER BY date DESC LIMIT 1)    END  WHERE _id = OLD.thread_id;   UPDATE threads SET li_snippet_cs =     CASE (SELECT COUNT(*) FROM       (SELECT date * 1000 AS date, sub AS snippet, thread_id, locked FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128       UNION SELECT date, body AS snippet, thread_id, locked FROM sms)      WHERE thread_id = OLD.thread_id AND locked=1 ORDER BY date DESC LIMIT 1)    WHEN 0 THEN 0    ELSE       (SELECT snippet_cs FROM        (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id, locked FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128         UNION SELECT date, 0 AS snippet_cs, thread_id, locked FROM sms)      WHERE thread_id = OLD.thread_id AND locked=1 ORDER BY date DESC LIMIT 1)    END  WHERE _id = OLD.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1809
    const-string v0, "CREATE TRIGGER update_threads_lirelated_on_pdu_delete   AFTER DELETE ON pdu  WHEN OLD.locked = 1     AND OLD.date = (SELECT li_date FROM threads WHERE _id= OLD.thread_id) BEGIN   UPDATE threads SET li_date =     CASE (SELECT COUNT(*) FROM       (SELECT date * 1000 AS date, sub AS snippet, thread_id, locked FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128       UNION SELECT date, body AS snippet, thread_id, locked FROM sms)      WHERE thread_id = OLD.thread_id AND locked=1 ORDER BY date DESC LIMIT 1)    WHEN 0 THEN 0    ELSE       (SELECT date FROM        (SELECT date * 1000 AS date, sub AS snippet, thread_id, locked FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128         UNION SELECT date, body AS snippet, thread_id, locked FROM sms)      WHERE thread_id = OLD.thread_id AND locked=1 ORDER BY date DESC LIMIT 1)    END  WHERE _id = OLD.thread_id;   UPDATE threads SET li_snippet =     CASE (SELECT COUNT(*) FROM       (SELECT date * 1000 AS date, sub AS snippet, thread_id, locked FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128       UNION SELECT date, body AS snippet, thread_id, locked FROM sms)      WHERE thread_id = OLD.thread_id AND locked=1 ORDER BY date DESC LIMIT 1)    WHEN 0 THEN \'\'    ELSE       (SELECT snippet FROM        (SELECT date * 1000 AS date, sub AS snippet, thread_id, locked FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128         UNION SELECT date, body AS snippet, thread_id, locked FROM sms)      WHERE thread_id = OLD.thread_id AND locked=1 ORDER BY date DESC LIMIT 1)    END  WHERE _id = OLD.thread_id;   UPDATE threads SET li_snippet_cs =     CASE (SELECT COUNT(*) FROM       (SELECT date * 1000 AS date, sub AS snippet, thread_id, locked FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128       UNION SELECT date, body AS snippet, thread_id, locked FROM sms)      WHERE thread_id = OLD.thread_id AND locked=1 ORDER BY date DESC LIMIT 1)    WHEN 0 THEN 0    ELSE       (SELECT snippet_cs FROM        (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id, locked FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128         UNION SELECT date, 0 AS snippet_cs, thread_id, locked FROM sms)      WHERE thread_id = OLD.thread_id AND locked=1 ORDER BY date DESC LIMIT 1)    END  WHERE _id = OLD.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1819
    const-string v0, "CREATE TRIGGER cb_update_thread_on_insert AFTER INSERT ON cellbroadcast BEGIN  UPDATE threads SET    date = (strftime(\'%s\',\'now\') * 1000),     type= 3,     snippet = new.body   WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(cellbroadcast._id) FROM cellbroadcast LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id )  WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM cellbroadcast          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET readcount =   (SELECT count(_id)FROM   (SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM sms     WHERE ((read=1) AND thread_id = new.thread_id AND (type != 3))   UNION SELECT DISTINCT date * 1000 AS normalized_date, pdu._id, read   FROM pdu LEFT JOIN pending_msgs ON pdu._id = pending_msgs.msg_id   WHERE ((read=1) AND thread_id = new.thread_id AND msg_box != 3 AND (msg_box != 3         AND (m_type = 128 OR m_type = 132 OR m_type = 130)))   UNION SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM cellbroadcast    WHERE ((read=1) AND thread_id = new.thread_id) ORDER BY normalized_date ASC))    WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1821
    const-string v0, "CREATE TRIGGER cb_update_thread_read_on_update AFTER  UPDATE OF read  ON cellbroadcast BEGIN   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM cellbroadcast          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET readcount =   (SELECT count(_id)FROM   (SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM sms     WHERE ((read=1) AND thread_id = new.thread_id AND (type != 3))   UNION SELECT DISTINCT date * 1000 AS normalized_date, pdu._id, read   FROM pdu LEFT JOIN pending_msgs ON pdu._id = pending_msgs.msg_id   WHERE ((read=1) AND thread_id = new.thread_id AND msg_box != 3 AND (msg_box != 3         AND (m_type = 128 OR m_type = 132 OR m_type = 130)))   UNION SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM cellbroadcast    WHERE ((read=1) AND thread_id = new.thread_id) ORDER BY normalized_date ASC))    WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1829
    const-string v0, "CREATE TRIGGER cb_update_thread_on_delete AFTER DELETE ON cellbroadcast BEGIN   UPDATE threads SET      date = (strftime(\'%s\',\'now\') * 1000)  WHERE threads._id = old.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(cellbroadcast._id) FROM cellbroadcast LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id)  WHERE threads._id = old.thread_id;   UPDATE threads SET snippet =    (SELECT body FROM     (SELECT date, body, thread_id FROM cellbroadcast)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET date =    (SELECT date FROM     (SELECT date, body, thread_id FROM cellbroadcast)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM cellbroadcast          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = old.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1843
    const-string v0, "CREATE TRIGGER insert_thread_settings_when_insert_threads AFTER INSERT ON threads BEGIN   INSERT INTO thread_settings     (thread_id    ,spam    ,notification_enable    ,mute    ,mute_start    ,ringtone    ,_data    ,vibrate)   VALUES     (new._id,     0,1,0,0,\'\',\'\',1); END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1861
    const-string v0, "CREATE TRIGGER delete_thread_settings_when_delete_threads AFTER DELETE ON threads BEGIN   DELETE FROM thread_settings     WHERE thread_id=old._id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1868
    return-void
.end method

.method private createIndices(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 1152
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createThreadIdIndex(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1153
    return-void
.end method

.method private createMmsTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1167
    const-string v0, "CREATE TABLE pdu (_id INTEGER PRIMARY KEY AUTOINCREMENT,thread_id INTEGER,date INTEGER,date_sent INTEGER DEFAULT 0,msg_box INTEGER,read INTEGER DEFAULT 0,m_id TEXT,sub TEXT,sub_cs INTEGER,ct_t TEXT,ct_l TEXT,exp INTEGER,m_cls TEXT,m_type INTEGER,v INTEGER,m_size INTEGER,pri INTEGER,rr INTEGER,rpt_a INTEGER,resp_st INTEGER,st INTEGER,st_ext INTEGER DEFAULT 0,tr_id TEXT,retr_st INTEGER,retr_txt TEXT,retr_txt_cs INTEGER,read_status INTEGER,ct_cls INTEGER,resp_txt TEXT,d_tm INTEGER,d_rpt INTEGER,locked INTEGER DEFAULT 0,sim_id INTEGER DEFAULT -1,service_center TEXT,seen INTEGER DEFAULT 0,text_only INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1213
    const-string v0, "CREATE TABLE addr (_id INTEGER PRIMARY KEY,msg_id INTEGER,contact_id INTEGER,address TEXT,type INTEGER,charset INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1221
    const-string v0, "CREATE TABLE part (_id INTEGER PRIMARY KEY AUTOINCREMENT,mid INTEGER,seq INTEGER DEFAULT 0,ct TEXT,name TEXT,chset INTEGER,cd TEXT,fn TEXT,cid TEXT,cl TEXT,ctt_s INTEGER,ctt_t TEXT,_data TEXT,text TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1237
    const-string v0, "CREATE TABLE rate (sent_time INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1240
    const-string v0, "CREATE TABLE drm (_id INTEGER PRIMARY KEY,_data TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1243
    return-void
.end method

.method private createMmsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1249
    const-string v0, "DROP TRIGGER IF EXISTS part_cleanup"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1250
    const-string v0, "CREATE TRIGGER part_cleanup DELETE ON pdu BEGIN   DELETE FROM part  WHERE mid=old._id;END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1257
    const-string v0, "DROP TRIGGER IF EXISTS addr_cleanup"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1258
    const-string v0, "CREATE TRIGGER addr_cleanup DELETE ON pdu BEGIN   DELETE FROM addr  WHERE msg_id=old._id;END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1266
    const-string v0, "DROP TRIGGER IF EXISTS cleanup_delivery_and_read_report"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1267
    const-string v0, "CREATE TRIGGER cleanup_delivery_and_read_report AFTER DELETE ON pdu WHEN old.m_type=128 BEGIN   DELETE FROM pdu  WHERE (m_type=134    OR m_type=136)    AND m_id=old.m_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1278
    const-string v0, "DROP TRIGGER IF EXISTS update_threads_on_insert_part"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1279
    const-string v0, "CREATE TRIGGER update_threads_on_insert_part  AFTER INSERT ON part  WHEN new.ct != \'text/plain\' AND new.ct != \'application/smil\'  BEGIN   UPDATE threads SET has_attachment=1 WHERE _id IN    (SELECT pdu.thread_id FROM part JOIN pdu ON pdu._id=part.mid      WHERE part._id=new._id LIMIT 1);  END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1281
    const-string v0, "DROP TRIGGER IF EXISTS update_threads_on_update_part"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1282
    const-string v0, "CREATE TRIGGER update_threads_on_update_part  AFTER UPDATE of mid ON part  WHEN new.ct != \'text/plain\' AND new.ct != \'application/smil\'  BEGIN   UPDATE threads SET has_attachment=1 WHERE _id IN    (SELECT pdu.thread_id FROM part JOIN pdu ON pdu._id=part.mid      WHERE part._id=new._id LIMIT 1);  END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1284
    const-string v0, "DROP TRIGGER IF EXISTS update_threads_on_delete_part"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1285
    const-string v0, "CREATE TRIGGER update_threads_on_delete_part  AFTER DELETE ON part  WHEN old.ct != \'text/plain\' AND old.ct != \'application/smil\'  BEGIN   UPDATE threads SET has_attachment =    CASE     (SELECT COUNT(*) FROM part JOIN pdu      ON pdu._id=old.mid AND part.mid=pdu._id      WHERE part.ct != \'text/plain\' AND part.ct != \'application/smil\')    WHEN 0 THEN 0    ELSE 1    END    WHERE threads._id=(SELECT thread_id FROM pdu WHERE _id=old.mid);  END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1287
    const-string v0, "DROP TRIGGER IF EXISTS update_threads_on_update_pdu"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1288
    const-string v0, "CREATE TRIGGER update_threads_on_update_pdu  AFTER UPDATE of thread_id ON pdu  BEGIN   UPDATE threads SET has_attachment=1 WHERE _id IN    (SELECT pdu.thread_id FROM part JOIN pdu      WHERE part.ct != \'text/plain\' AND part.ct != \'application/smil\'      AND part.mid = pdu._id); END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1291
    const-string v0, "DROP TRIGGER IF EXISTS delete_mms_pending_on_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1292
    const-string v0, "CREATE TRIGGER delete_mms_pending_on_delete AFTER DELETE ON pdu BEGIN   DELETE FROM pending_msgs  WHERE msg_id=old._id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1300
    const-string v0, "DROP TRIGGER IF EXISTS delete_mms_pending_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1301
    const-string v0, "CREATE TRIGGER delete_mms_pending_on_update AFTER UPDATE ON pdu WHEN old.msg_box=4  AND new.msg_box!=4 BEGIN   DELETE FROM pending_msgs  WHERE msg_id=new._id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1312
    const-string v0, "DROP TRIGGER IF EXISTS insert_mms_pending_on_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1313
    const-string v0, "CREATE TRIGGER insert_mms_pending_on_insert AFTER INSERT ON pdu WHEN new.m_type=130  OR new.m_type=135 BEGIN   INSERT INTO pending_msgs    (proto_type,     msg_id,     msg_type,     err_type,     err_code,     retry_index,     due_time)   VALUES     (1,      new._id,      new.m_type,0,0,0,0);END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1334
    const-string v0, "DROP TRIGGER IF EXISTS insert_mms_pending_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1335
    const-string v0, "CREATE TRIGGER insert_mms_pending_on_update AFTER UPDATE ON pdu WHEN new.m_type=128  AND new.msg_box=4  AND old.msg_box!=4 BEGIN   INSERT INTO pending_msgs    (proto_type,     msg_id,     msg_type,     err_type,     err_code,     retry_index,     due_time)   VALUES     (1,      new._id,      new.m_type,0,0,0,0);END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1356
    const-string v0, "DROP TRIGGER IF EXISTS mms_words_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1357
    const-string v0, "CREATE TRIGGER mms_words_update AFTER UPDATE ON part BEGIN UPDATE words  SET index_text = NEW.text WHERE (source_id=NEW._id AND table_to_use=2);  END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1361
    const-string v0, "DROP TRIGGER IF EXISTS mms_words_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1362
    const-string v0, "CREATE TRIGGER mms_words_delete AFTER DELETE ON part BEGIN DELETE FROM  words WHERE source_id = OLD._id AND table_to_use = 2; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1366
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_date_subject_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1367
    const-string v0, "CREATE TRIGGER pdu_update_thread_date_subject_on_update AFTER  UPDATE OF date, sub, msg_box  ON pdu   WHEN new.m_type=132    OR new.m_type=130    OR new.m_type=128  BEGIN  UPDATE threads  SET  date =    (SELECT date FROM        (SELECT date * 1000 AS date, thread_id FROM pdu          WHERE (m_type=132 OR m_type=130 OR m_type=128) AND (thread_id = new.thread_id)          UNION SELECT date, thread_id FROM sms          WHERE thread_id = new.thread_id)      WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;  UPDATE threads  SET  snippet =    (SELECT snippet FROM        (SELECT sub AS snippet, thread_id, date * 1000 AS date FROM pdu          WHERE (m_type=132 OR m_type=130 OR m_type=128) AND (thread_id = new.thread_id)          UNION SELECT body AS snippet, thread_id, date FROM sms          WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1 )      WHERE thread_id = new.thread_id )   WHERE threads._id = new.thread_id;  UPDATE threads  SET  snippet_cs =    (SELECT snippet_cs FROM        (SELECT sub_cs AS snippet_cs, thread_id, date * 1000 AS date FROM pdu          WHERE (m_type=132 OR m_type=130 OR m_type=128) AND (thread_id = new.thread_id)          UNION SELECT 0 AS snippet_cs, thread_id, date FROM sms          WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1 )      WHERE thread_id = new.thread_id )   WHERE threads._id = new.thread_id;  UPDATE threads  SET  date_sent =    (SELECT date_sent FROM        (SELECT date_sent * 1000 AS date_sent, thread_id FROM pdu          WHERE (m_type=132 OR m_type=130 OR m_type=128) AND (thread_id = new.thread_id)          UNION SELECT date_sent, thread_id FROM sms          WHERE thread_id = new.thread_id)      WHERE thread_id = new.thread_id ORDER BY date_sent DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128)) +          (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET readcount =   (SELECT count(_id)FROM   (SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM sms     WHERE ((read=1) AND thread_id = new.thread_id AND (type != 3))   UNION SELECT DISTINCT date * 1000 AS normalized_date, pdu._id, read   FROM pdu LEFT JOIN pending_msgs ON pdu._id = pending_msgs.msg_id   WHERE ((read=1) AND thread_id = new.thread_id AND msg_box != 3 AND (msg_box != 3         AND (m_type = 128 OR m_type = 132 OR m_type = 130)))   UNION SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM cellbroadcast    WHERE ((read=1) AND thread_id = new.thread_id) ORDER BY normalized_date ASC))    WHERE threads._id = new.thread_id;  END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1374
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_on_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1391
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_on_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1392
    const-string v0, "CREATE TRIGGER pdu_update_thread_on_insert AFTER INSERT ON pdu   WHEN new.m_type=132    OR new.m_type=130    OR new.m_type=128   BEGIN  UPDATE threads  SET  date =    (SELECT date FROM        (SELECT date * 1000 AS date, thread_id FROM pdu          WHERE (new.m_type=132 OR new.m_type=130 OR new.m_type=128) AND (thread_id = new.thread_id)          UNION SELECT date, thread_id FROM sms          WHERE thread_id = new.thread_id)      WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id; UPDATE threads  SET  snippet =    (SELECT snippet FROM        (SELECT sub AS snippet, thread_id, date * 1000 AS date FROM pdu          WHERE (m_type=132 OR m_type=130 OR m_type=128) AND (thread_id = new.thread_id)          UNION SELECT body AS snippet, thread_id, date FROM sms          WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1 )      WHERE thread_id = new.thread_id )   WHERE threads._id = new.thread_id;  UPDATE threads  SET  snippet_cs =    (SELECT snippet_cs FROM        (SELECT sub_cs AS snippet_cs, thread_id, date * 1000 AS date FROM pdu          WHERE (m_type=132 OR m_type=130 OR m_type=128) AND (thread_id = new.thread_id)          UNION SELECT 0 AS snippet_cs, thread_id, date FROM sms          WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1 )      WHERE thread_id = new.thread_id )   WHERE threads._id = new.thread_id;  UPDATE threads  SET  date_sent =    (SELECT date_sent FROM        (SELECT date_sent * 1000 AS date_sent, thread_id FROM pdu          WHERE (m_type=132 OR m_type=130 OR m_type=128) AND (thread_id = new.thread_id)          UNION SELECT date_sent, thread_id FROM sms          WHERE thread_id = new.thread_id)      WHERE thread_id = new.thread_id ORDER BY date_sent DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128)) +          (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET readcount =   (SELECT count(_id)FROM   (SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM sms     WHERE ((read=1) AND thread_id = new.thread_id AND (type != 3))   UNION SELECT DISTINCT date * 1000 AS normalized_date, pdu._id, read   FROM pdu LEFT JOIN pending_msgs ON pdu._id = pending_msgs.msg_id   WHERE ((read=1) AND thread_id = new.thread_id AND msg_box != 3 AND (msg_box != 3         AND (m_type = 128 OR m_type = 132 OR m_type = 130)))   UNION SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM cellbroadcast    WHERE ((read=1) AND thread_id = new.thread_id) ORDER BY normalized_date ASC))    WHERE threads._id = new.thread_id;   UPDATE threads SET status = 0   WHERE (new.m_type=132 OR new.m_type=130 OR new.m_type=128) AND threads._id=new.thread_id;   END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1398
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_read_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1399
    const-string v0, "CREATE TRIGGER pdu_update_thread_read_on_update AFTER  UPDATE OF read  ON pdu   WHEN new.m_type=132    OR new.m_type=130    OR new.m_type=128 BEGIN   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128)) +          (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET readcount =   (SELECT count(_id)FROM   (SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM sms     WHERE ((read=1) AND thread_id = new.thread_id AND (type != 3))   UNION SELECT DISTINCT date * 1000 AS normalized_date, pdu._id, read   FROM pdu LEFT JOIN pending_msgs ON pdu._id = pending_msgs.msg_id   WHERE ((read=1) AND thread_id = new.thread_id AND msg_box != 3 AND (msg_box != 3         AND (m_type = 128 OR m_type = 132 OR m_type = 130)))   UNION SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM cellbroadcast    WHERE ((read=1) AND thread_id = new.thread_id) ORDER BY normalized_date ASC))    WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1410
    const-string v0, "DROP TRIGGER IF EXISTS update_threads_error_on_delete_mms"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1411
    const-string v0, "CREATE TRIGGER update_threads_error_on_delete_mms   BEFORE DELETE ON pdu  WHEN OLD._id IN (SELECT DISTINCT msg_id                   FROM pending_msgs                   WHERE err_type >= 10) BEGIN   UPDATE threads SET error = error - 1  WHERE _id = OLD.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1423
    const-string v0, "DROP TRIGGER IF EXISTS update_threads_error_on_move_mms"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1424
    const-string v0, "CREATE TRIGGER update_threads_error_on_move_mms   BEFORE UPDATE OF msg_box ON pdu   WHEN (OLD.msg_box = 4 AND NEW.msg_box != 4)   AND (OLD._id IN (SELECT DISTINCT msg_id                   FROM pending_msgs                   WHERE err_type >= 10)) BEGIN   UPDATE threads SET error = error - 1  WHERE _id = OLD.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1434
    return-void
.end method

.method private createQuickText(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3152
    const-string v0, "CREATE TABLE quicktext (_id INTEGER PRIMARY KEY,text TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3155
    return-void
.end method

.method private createSmsTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1439
    const-string v0, "CREATE TABLE sms (_id INTEGER PRIMARY KEY,thread_id INTEGER,address TEXT,m_size INTEGER,person INTEGER,date INTEGER,date_sent INTEGER DEFAULT 0,protocol INTEGER,read INTEGER DEFAULT 0,status INTEGER DEFAULT -1,type INTEGER,reply_path_present INTEGER,subject TEXT,body TEXT,service_center TEXT,locked INTEGER DEFAULT 0,sim_id INTEGER DEFAULT -1,error_code INTEGER DEFAULT 0,seen INTEGER DEFAULT 0,ipmsg_id INTEGER DEFAULT 0,ref_id INTEGER,total_len INTEGER,rec_len INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1480
    const-string v0, "CREATE TABLE raw (_id INTEGER PRIMARY KEY,date INTEGER,reference_number INTEGER,count INTEGER,sequence INTEGER,destination_port INTEGER,address TEXT,sim_id INTEGER DEFAULT 0,pdu TEXT,recv_time INTEGER,upload_flag INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1497
    const-string v0, "CREATE TABLE attachments (sms_id INTEGER,content_url TEXT,offset INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1506
    const-string v0, "CREATE TABLE sr_pending (reference_number INTEGER,action TEXT,data TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1510
    return-void
.end method

.method private createThreadIdIndex(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 1157
    :try_start_0
    const-string v1, "CREATE INDEX IF NOT EXISTS typeThreadIdIndex ON sms (type, thread_id);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1162
    :goto_0
    return-void

    .line 1159
    :catch_0
    move-exception v0

    .line 1160
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "Mms/Provider/MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got exception creating indices: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createThreadSettingsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3168
    const-string v0, "CREATE TABLE thread_settings(_id INTEGER PRIMARY KEY,thread_id INTEGER,spam INTEGER DEFAULT 0,notification_enable INTEGER DEFAULT 1,mute INTEGER DEFAULT 0,mute_start INTEGER DEFAULT 0,ringtone TEXT,_data TEXT,vibrate INTEGER DEFAULT 1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3179
    const-string v0, "INSERT INTO thread_settings (_id,thread_id) VALUES (0,0)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3181
    return-void
.end method

.method private createUserCBTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3207
    const-string v0, "CREATE TABLE usercb (_id INTEGER PRIMARY KEY,action TEXT,pdus TEXT,simId INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3213
    return-void
.end method

.method private createUserMmsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3194
    const-string v0, "CREATE TABLE usermms (_id INTEGER PRIMARY KEY,transactionId INTEGER,pduType INTEGER,header TEXT,data TEXT,address TEXT,service_center TEXT,simId INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3204
    return-void
.end method

.method private createUserSmsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3185
    const-string v0, "CREATE TABLE usersms (_id INTEGER PRIMARY KEY,pdus TEXT,format TEXT,simId INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3191
    return-void
.end method

.method private createWapPushTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3129
    const-string v0, "CREATE TABLE wappush (_id INTEGER PRIMARY KEY,thread_id INTEGER,address TEXT NOT NULL,service_center TEXT NOT NULL,seen INTEGER DEFAULT 0,read INTEGER DEFAULT 0,locked INTEGER DEFAULT 0,error INTEGER DEFAULT 0,sim_id INTEGER DEFAULT 0,date INTEGER,type INTEGER DEFAULT 0,siid TEXT,url TEXT,action INTEGER,created INTEGER,expiration INTEGER,text TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3147
    return-void
.end method

.method private createWordsTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 1125
    :try_start_0
    const-string v1, "CREATE VIRTUAL TABLE words USING FTS3 (_id INTEGER PRIMARY KEY, index_text TEXT, source_id INTEGER, table_to_use INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1133
    const-string v1, "CREATE TRIGGER sms_words_update AFTER UPDATE OF body ON sms BEGIN UPDATE words  SET index_text = NEW.body WHERE (source_id=NEW._id AND table_to_use=1);  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1136
    const-string v1, "CREATE TRIGGER sms_words_delete AFTER DELETE ON sms BEGIN DELETE FROM   words WHERE source_id = OLD._id AND table_to_use = 1; END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1140
    const-string v1, "CREATE TRIGGER wp_words_update AFTER UPDATE ON wappush BEGIN UPDATE words  SET index_text = coalesce(NEW.text||\' \'||NEW.url,NEW.text,NEW.url) WHERE (source_id=NEW._id AND table_to_use=3); END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1142
    const-string v1, "CREATE TRIGGER wp_words_delete AFTER DELETE ON wappush BEGIN DELETE FROM  words WHERE source_id = OLD._id AND table_to_use = 3; END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1145
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->populateWordsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1149
    :goto_0
    return-void

    .line 1146
    :catch_0
    move-exception v0

    .line 1147
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "Mms/Provider/MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got exception creating words table: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static deleteOneSms(Landroid/database/sqlite/SQLiteDatabase;I)I
    .locals 12
    .parameter "db"
    .parameter "message_id"

    .prologue
    const/4 v11, 0x0

    const/4 v4, 0x0

    .line 969
    const/4 v10, -0x1

    .line 971
    .local v10, thread_id:I
    const-string v1, "sms"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "thread_id"

    aput-object v0, v2, v11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 973
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 974
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 975
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 977
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 981
    :cond_1
    const-string v0, "sms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 982
    .local v9, rows:I
    if-lez v10, :cond_2

    .line 984
    int-to-long v0, v10

    invoke-static {p0, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThread(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 986
    :cond_2
    return v9
.end method

.method private dropAll(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 2255
    const-string v0, "DROP TABLE IF EXISTS canonical_addresses"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2256
    const-string v0, "DROP TABLE IF EXISTS threads"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2257
    const-string v0, "DROP TABLE IF EXISTS pending_msgs"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2258
    const-string v0, "DROP TABLE IF EXISTS sms"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2259
    const-string v0, "DROP TABLE IF EXISTS cellbroadcast"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2260
    const-string v0, "DROP TABLE IF EXISTS words"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2261
    const-string v0, "DROP TABLE IF EXISTS quicktext"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2264
    const-string v0, "DROP TABLE IF EXISTS wappush"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2267
    const-string v0, "DROP TABLE IF EXISTS raw"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2268
    const-string v0, "DROP TABLE IF EXISTS attachments"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2269
    const-string v0, "DROP TABLE IF EXISTS thread_ids"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2270
    const-string v0, "DROP TABLE IF EXISTS sr_pending"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2272
    const-string v0, "DROP TABLE IF EXISTS thread_settings"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2273
    const-string v0, "DROP TABLE IF EXISTS pdu;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2274
    const-string v0, "DROP TABLE IF EXISTS addr;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2275
    const-string v0, "DROP TABLE IF EXISTS part;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2276
    const-string v0, "DROP TABLE IF EXISTS rate;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2277
    const-string v0, "DROP TABLE IF EXISTS drm;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2278
    return-void
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;
    .locals 2
    .parameter "context"

    .prologue
    .line 612
    const-class v1, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->sInstance:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    if-nez v0, :cond_0

    .line 613
    new-instance v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    invoke-direct {v0, p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->sInstance:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    .line 615
    :cond_0
    sget-object v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->sInstance:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 612
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private hasAutoIncrement(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 7
    .parameter "db"
    .parameter "tableName"

    .prologue
    const/4 v4, 0x0

    .line 2972
    const/4 v2, 0x0

    .line 2973
    .local v2, result:Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SELECT sql FROM sqlite_master WHERE type=\'table\' AND name=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2975
    .local v1, query:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {p1, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2976
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 2978
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2979
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2980
    .local v3, schema:Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v4, "AUTOINCREMENT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 2981
    :goto_0
    const-string v4, "Mms/Provider/MmsSmsDatabaseHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MmsSmsDb] tableName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " hasAutoIncrement: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2985
    .end local v3           #schema:Ljava/lang/String;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2988
    :cond_1
    return v2

    .restart local v3       #schema:Ljava/lang/String;
    :cond_2
    move v2, v4

    .line 2980
    goto :goto_0

    .line 2985
    .end local v3           #schema:Ljava/lang/String;
    :catchall_0
    move-exception v4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v4
.end method

.method private populateWordsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 18
    .parameter "db"

    .prologue
    .line 1021
    const-string v9, "words"

    .line 1023
    .local v9, TABLE_WORDS:Ljava/lang/String;
    const-string v2, "sms"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    const-string v4, "body"

    aput-object v4, v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1032
    .local v15, smsRows:Landroid/database/Cursor;
    if-eqz v15, :cond_1

    .line 1033
    const/4 v1, -0x1

    :try_start_0
    invoke-interface {v15, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1034
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1035
    .local v11, cv:Landroid/content/ContentValues;
    :goto_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1036
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    .line 1038
    const/4 v1, 0x0

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1039
    .local v12, id:J
    const/4 v1, 0x1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1041
    .local v10, body:Ljava/lang/String;
    const-string v1, "_id"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1042
    const-string v1, "index_text"

    invoke-virtual {v11, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    const-string v1, "source_id"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1044
    const-string v1, "table_to_use"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1045
    const-string v1, "words"

    const-string v2, "index_text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1049
    .end local v10           #body:Ljava/lang/String;
    .end local v11           #cv:Landroid/content/ContentValues;
    .end local v12           #id:J
    :catchall_0
    move-exception v1

    if-eqz v15, :cond_0

    .line 1050
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v1

    .line 1049
    :cond_1
    if-eqz v15, :cond_2

    .line 1050
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1056
    :cond_2
    const-string v2, "part"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    const-string v4, "text"

    aput-object v4, v3, v1

    const-string v4, "ct = \'text/plain\'"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1065
    .local v14, mmsRows:Landroid/database/Cursor;
    if-eqz v14, :cond_4

    .line 1066
    const/4 v1, -0x1

    :try_start_1
    invoke-interface {v14, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1067
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1068
    .restart local v11       #cv:Landroid/content/ContentValues;
    :goto_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1069
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    .line 1071
    const/4 v1, 0x0

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1072
    .restart local v12       #id:J
    const/4 v1, 0x1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1074
    .restart local v10       #body:Ljava/lang/String;
    const-string v1, "_id"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1075
    const-string v1, "index_text"

    invoke-virtual {v11, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    const-string v1, "source_id"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1077
    const-string v1, "table_to_use"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1078
    const-string v1, "words"

    const-string v2, "index_text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 1082
    .end local v10           #body:Ljava/lang/String;
    .end local v11           #cv:Landroid/content/ContentValues;
    .end local v12           #id:J
    :catchall_1
    move-exception v1

    if-eqz v14, :cond_3

    .line 1083
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1

    .line 1082
    :cond_4
    if-eqz v14, :cond_5

    .line 1083
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1089
    :cond_5
    const-string v2, "wappush"

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    const-string v4, "url"

    aput-object v4, v3, v1

    const/4 v1, 0x2

    const-string v4, "text"

    aput-object v4, v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 1098
    .local v17, wpRows:Landroid/database/Cursor;
    if-eqz v17, :cond_7

    .line 1099
    const/4 v1, -0x1

    :try_start_2
    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1100
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1101
    .restart local v11       #cv:Landroid/content/ContentValues;
    :goto_2
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1102
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    .line 1104
    const/4 v1, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1105
    .restart local v12       #id:J
    const/4 v1, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1106
    .restart local v10       #body:Ljava/lang/String;
    const/4 v1, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1108
    .local v16, url:Ljava/lang/String;
    const-string v1, "_id"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1109
    const-string v1, "index_text"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    const-string v1, "source_id"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1111
    const-string v1, "table_to_use"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1112
    const-string v1, "words"

    const-string v2, "index_text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    .line 1116
    .end local v10           #body:Ljava/lang/String;
    .end local v11           #cv:Landroid/content/ContentValues;
    .end local v12           #id:J
    .end local v16           #url:Ljava/lang/String;
    :catchall_2
    move-exception v1

    if-eqz v17, :cond_6

    .line 1117
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1

    .line 1116
    :cond_7
    if-eqz v17, :cond_8

    .line 1117
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 1121
    :cond_8
    return-void
.end method

.method protected static removeOrphanedAddresses(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9
    .parameter "db"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 934
    const-string v5, "SELECT DISTINCT recipient_ids FROM threads"

    invoke-virtual {p0, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 935
    .local v0, c:Landroid/database/Cursor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 936
    .local v3, recipientIds:Ljava/lang/StringBuilder;
    const-string v4, ","

    .line 938
    .local v4, separator:Ljava/lang/String;
    if-eqz v0, :cond_2

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 940
    :cond_0
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 941
    .local v1, id:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 942
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 943
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 944
    const-string v5, " "

    const-string v6, ","

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 945
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 948
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_0

    .line 951
    .end local v1           #id:Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_3

    .line 952
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 955
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 956
    .local v2, ids:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 957
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 959
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 960
    const/4 v5, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 962
    :cond_5
    const-string v5, "Mms/Provider/MmsSmsDatabaseHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeOrphanedAddresses, recipient ids = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    const-string v5, "canonical_addresses"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id NOT IN ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 966
    return-void

    .line 951
    .end local v2           #ids:Ljava/lang/String;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_6

    .line 952
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v5
.end method

.method private static removeUnferencedCanonicalAddresses(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 19
    .parameter "db"

    .prologue
    .line 623
    const-string v2, "threads"

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "recipient_ids"

    aput-object v4, v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 625
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_1

    .line 627
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 629
    const-string v1, "canonical_addresses"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 658
    :cond_0
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 661
    :cond_1
    return-void

    .line 633
    :cond_2
    :try_start_1
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 634
    .local v16, recipientIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 635
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 636
    .local v17, recips:[Ljava/lang/String;
    move-object/from16 v9, v17

    .local v9, arr$:[Ljava/lang/String;
    array-length v13, v9

    .local v13, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_1
    if-ge v11, v13, :cond_3

    aget-object v14, v9, v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 638
    .local v14, recip:Ljava/lang/String;
    :try_start_2
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 639
    .local v15, recipientId:I
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 636
    .end local v15           #recipientId:I
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 645
    .end local v9           #arr$:[Ljava/lang/String;
    .end local v11           #i$:I
    .end local v13           #len$:I
    .end local v14           #recip:Ljava/lang/String;
    .end local v17           #recips:[Ljava/lang/String;
    :cond_4
    :try_start_3
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 646
    .local v18, sb:Ljava/lang/StringBuilder;
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 647
    .local v12, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_5
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 648
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 650
    const-string v1, " AND "

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 658
    .end local v12           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v16           #recipientIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v18           #sb:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1

    .line 653
    .restart local v12       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .restart local v16       #recipientIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v18       #sb:Ljava/lang/StringBuilder;
    :cond_6
    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 654
    const-string v1, "canonical_addresses"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 640
    .end local v12           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v18           #sb:Ljava/lang/StringBuilder;
    .restart local v9       #arr$:[Ljava/lang/String;
    .restart local v11       #i$:I
    .restart local v13       #len$:I
    .restart local v14       #recip:Ljava/lang/String;
    .restart local v17       #recips:[Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method public static updateAllThreads(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .parameter "db"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 879
    const-string v3, "Mms/Provider/MmsSmsDatabaseHelper"

    const-string v4, "updateAllThreads start"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 882
    if-nez p1, :cond_0

    .line 883
    :try_start_0
    const-string p1, ""

    .line 888
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT _id FROM threads WHERE _id IN (SELECT DISTINCT thread_id FROM sms "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " UNION SELECT DISTINCT thread_id FROM pdu "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 891
    .local v2, query:Ljava/lang/String;
    const-string v3, "Mms/Provider/MmsSmsDatabaseHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAllThreads query "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    invoke-virtual {p0, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 894
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 896
    :goto_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 897
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    invoke-static {p0, v3, v4}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThread(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 900
    :catchall_0
    move-exception v3

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 925
    .end local v0           #c:Landroid/database/Cursor;
    .end local v2           #query:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 926
    .local v1, ex:Ljava/lang/Throwable;
    :try_start_3
    const-string v3, "Mms/Provider/MmsSmsDatabaseHelper"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 928
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 930
    .end local v1           #ex:Ljava/lang/Throwable;
    :goto_2
    const-string v3, "Mms/Provider/MmsSmsDatabaseHelper"

    const-string v4, "updateAllThreads end"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    return-void

    .line 885
    :cond_0
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WHERE ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 900
    .restart local v0       #c:Landroid/database/Cursor;
    .restart local v2       #query:Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 908
    :cond_2
    const-string v3, "threads"

    const-string v4, "_id NOT IN (SELECT DISTINCT thread_id FROM sms where thread_id NOT NULL UNION SELECT DISTINCT thread_id FROM pdu where thread_id NOT NULL) AND type <> 2"

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 922
    invoke-static {p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->removeOrphanedAddresses(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 924
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 928
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    .end local v0           #c:Landroid/database/Cursor;
    .end local v2           #query:Ljava/lang/String;
    :catchall_1
    move-exception v3

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method

.method public static updateMultiThreads(Landroid/database/sqlite/SQLiteDatabase;[J)V
    .locals 24
    .parameter "db"
    .parameter "deletedThreads"

    .prologue
    .line 3324
    const-string v19, "Mms/Provider/MmsSmsDatabaseHelper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "updateMultiThreads start, deletedThreads.length = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3326
    const-string v19, "threads"

    const-string v20, "type <> ? AND _id NOT IN          (SELECT thread_id FROM sms where thread_id is not null            UNION SELECT thread_id FROM pdu where thread_id is not null            UNION SELECT DISTINCT thread_id FROM cellbroadcast where thread_id is not null)"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x2

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3340
    invoke-static/range {p0 .. p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->removeOrphanedAddresses(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3341
    const-string v19, "Mms/Provider/MmsSmsDatabaseHelper"

    const-string v20, "delete obsolete threads and addresses end"

    invoke-static/range {v19 .. v20}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3343
    const-string v15, "SELECT _id FROM threads WHERE _id IN (SELECT DISTINCT thread_id FROM sms  UNION SELECT DISTINCT thread_id FROM cellbroadcast  UNION SELECT DISTINCT thread_id FROM pdu)"

    .line 3348
    .local v15, query:Ljava/lang/String;
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v15, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 3349
    .local v5, c:Landroid/database/Cursor;
    const/16 v16, 0x0

    .line 3350
    .local v16, threadIds:[J
    if-eqz v5, :cond_1

    .line 3351
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [J

    move-object/from16 v16, v0

    .line 3352
    const/4 v9, 0x0

    .local v9, i:I
    move v10, v9

    .line 3354
    .end local v9           #i:I
    .local v10, i:I
    :goto_0
    :try_start_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v19

    if-eqz v19, :cond_0

    .line 3355
    add-int/lit8 v9, v10, 0x1

    .end local v10           #i:I
    .restart local v9       #i:I
    const/16 v19, 0x0

    :try_start_1
    move/from16 v0, v19

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    aput-wide v19, v16, v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v10, v9

    .end local v9           #i:I
    .restart local v10       #i:I
    goto :goto_0

    .line 3358
    :cond_0
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 3362
    .end local v10           #i:I
    :cond_1
    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->sort([J)V

    .line 3364
    move-object/from16 v4, p1

    .local v4, arr$:[J
    array-length v13, v4

    .local v13, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_1
    if-ge v11, v13, :cond_5

    aget-wide v7, v4, v11

    .line 3365
    .local v7, deletedThread:J
    move-object/from16 v0, v16

    invoke-static {v0, v7, v8}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v19

    if-ltz v19, :cond_3

    .line 3366
    move-object/from16 v0, p0

    invoke-static {v0, v7, v8}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThread(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 3364
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 3358
    .end local v4           #arr$:[J
    .end local v7           #deletedThread:J
    .end local v11           #i$:I
    .end local v13           #len$:I
    .restart local v10       #i:I
    :catchall_0
    move-exception v19

    move v9, v10

    .end local v10           #i:I
    .restart local v9       #i:I
    :goto_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    throw v19

    .line 3367
    .end local v9           #i:I
    .restart local v4       #arr$:[J
    .restart local v7       #deletedThread:J
    .restart local v11       #i$:I
    .restart local v13       #len$:I
    :cond_3
    const-wide/16 v19, 0x0

    cmp-long v19, v7, v19

    if-ltz v19, :cond_2

    .line 3368
    const-string v19, "Mms/Provider/MmsSmsDatabaseHelper"

    const-string v20, "Delete wallpaper: begin"

    invoke-static/range {v19 .. v20}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3369
    new-instance v18, Ljava/io/File;

    const-string v19, "/data/data/com.android.providers.telephony/app_wallpaper"

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3370
    .local v18, wallpaperPath:Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 3371
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ".jpeg"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 3372
    .local v17, threadWallpaperName:Ljava/lang/String;
    const-string v19, "Mms/Provider/MmsSmsDatabaseHelper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "ThreadId: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3374
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v14

    .line 3375
    .local v14, oldFile:[Ljava/lang/String;
    array-length v9, v14

    .line 3376
    .restart local v9       #i:I
    const-string v19, "Mms/Provider/MmsSmsDatabaseHelper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "i: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3377
    if-lez v9, :cond_2

    .line 3378
    const/4 v12, 0x0

    .local v12, j:I
    :goto_3
    if-ge v12, v9, :cond_2

    .line 3379
    aget-object v19, v14, v12

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 3380
    new-instance v19, Ljava/io/File;

    const-string v20, "/data/data/com.android.providers.telephony/app_wallpaper"

    aget-object v21, v14, v12

    invoke-direct/range {v19 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    move-result v6

    .line 3381
    .local v6, d:Z
    const-string v19, "Mms/Provider/MmsSmsDatabaseHelper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "isDelete "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3378
    .end local v6           #d:Z
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 3388
    .end local v7           #deletedThread:J
    .end local v9           #i:I
    .end local v12           #j:I
    .end local v14           #oldFile:[Ljava/lang/String;
    .end local v17           #threadWallpaperName:Ljava/lang/String;
    .end local v18           #wallpaperPath:Ljava/io/File;
    :cond_5
    const-string v19, "Mms/Provider/MmsSmsDatabaseHelper"

    const-string v20, "updateMultiThreads end"

    invoke-static/range {v19 .. v20}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3389
    return-void

    .line 3358
    .end local v4           #arr$:[J
    .end local v11           #i$:I
    .end local v13           #len$:I
    .restart local v9       #i:I
    :catchall_1
    move-exception v19

    goto/16 :goto_2
.end method

.method public static updateThread(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 28
    .parameter "db"
    .parameter "thread_id"

    .prologue
    .line 664
    const-wide/16 v23, 0x0

    cmp-long v23, p1, v23

    if-gez v23, :cond_0

    .line 665
    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateAllThreads(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 876
    :goto_0
    return-void

    .line 669
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 674
    :try_start_0
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "select * from threads where type=2 AND _id="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 675
    .local v17, pushCursor:Landroid/database/Cursor;
    if-eqz v17, :cond_2

    .line 677
    :try_start_1
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v23

    if-eqz v23, :cond_1

    .line 681
    :try_start_2
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 874
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 681
    :cond_1
    :try_start_3
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 690
    :cond_2
    const/16 v19, 0x0

    .line 692
    .local v19, rows:I
    const-string v23, "threads"

    const-string v24, "_id = ? AND type <> ? AND _id NOT IN          (SELECT thread_id FROM sms where thread_id is not null            UNION SELECT thread_id FROM pdu where thread_id is not null)"

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    const/16 v27, 0x2

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v19

    .line 705
    if-lez v19, :cond_7

    .line 708
    invoke-static {}, Lcom/android/providers/telephony/ThreadCache;->getInstance()Lcom/android/providers/telephony/ThreadCache;

    move-result-object v23

    if-eqz v23, :cond_3

    .line 709
    invoke-static {}, Lcom/android/providers/telephony/ThreadCache;->getInstance()Lcom/android/providers/telephony/ThreadCache;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/telephony/ThreadCache;->remove(J)V

    .line 715
    :cond_3
    const-string v23, "Mms/Provider/MmsSmsDatabaseHelper"

    const-string v24, "Delete wallpaper: begin"

    invoke-static/range {v23 .. v24}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    new-instance v22, Ljava/io/File;

    const-string v23, "/data/data/com.android.providers.telephony/app_wallpaper"

    invoke-direct/range {v22 .. v23}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 717
    .local v22, wallpaperPath:Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_5

    .line 718
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ".jpeg"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 719
    .local v21, threadWallpaperName:Ljava/lang/String;
    const-string v23, "Mms/Provider/MmsSmsDatabaseHelper"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "ThreadId: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v15

    .line 721
    .local v15, oldFile:[Ljava/lang/String;
    array-length v11, v15

    .line 722
    .local v11, i:I
    const-string v23, "Mms/Provider/MmsSmsDatabaseHelper"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "i: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    if-lez v11, :cond_5

    .line 724
    const/4 v13, 0x0

    .local v13, j:I
    :goto_1
    if-ge v13, v11, :cond_5

    .line 725
    aget-object v23, v15, v13

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 726
    new-instance v23, Ljava/io/File;

    const-string v24, "/data/data/com.android.providers.telephony/app_wallpaper"

    aget-object v25, v15, v13

    invoke-direct/range {v23 .. v25}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    move-result v8

    .line 727
    .local v8, d:Z
    const-string v23, "Mms/Provider/MmsSmsDatabaseHelper"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "isDelete "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    .end local v8           #d:Z
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 681
    .end local v11           #i:I
    .end local v13           #j:I
    .end local v15           #oldFile:[Ljava/lang/String;
    .end local v19           #rows:I
    .end local v21           #threadWallpaperName:Ljava/lang/String;
    .end local v22           #wallpaperPath:Ljava/io/File;
    :catchall_0
    move-exception v23

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    throw v23
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 871
    .end local v17           #pushCursor:Landroid/database/Cursor;
    :catch_0
    move-exception v10

    .line 872
    .local v10, ex:Ljava/lang/Throwable;
    :try_start_4
    const-string v23, "Mms/Provider/MmsSmsDatabaseHelper"

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 874
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 736
    .end local v10           #ex:Ljava/lang/Throwable;
    .restart local v17       #pushCursor:Landroid/database/Cursor;
    .restart local v19       #rows:I
    .restart local v22       #wallpaperPath:Ljava/io/File;
    :cond_5
    :try_start_5
    invoke-static/range {p0 .. p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->removeOrphanedAddresses(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 870
    .end local v22           #wallpaperPath:Ljava/io/File;
    :cond_6
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 874
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 740
    :cond_7
    :try_start_6
    invoke-static/range {p0 .. p2}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThreadReadAfterDeleteMessage(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 744
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "        AND sms."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "type"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " != 3) + "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "     (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "      ON threads._id = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "thread_id"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "      WHERE "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "thread_id"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "        AND (m_type=132 OR m_type=130 OR m_type=128)"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "        AND "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "msg_box"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " != 3) "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "  WHERE threads._id = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ";"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 758
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  UPDATE threads  SET  readcount =    (SELECT count(_id) FROM       (SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM sms        WHERE ((read=1) AND thread_id = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " AND (type != 3)) "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "       UNION "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "       SELECT DISTINCT date * 1000 AS normalized_date, pdu._id, read "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "       FROM pdu LEFT JOIN pending_msgs ON pdu._id = pending_msgs.msg_id "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "       WHERE ((read=1) AND thread_id = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " AND msg_box != 3 AND (msg_box != 3 "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "       AND (m_type = 128 OR m_type = 132 OR m_type = 130))) "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "       UNION "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "       SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM cellbroadcast "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "       WHERE ((read=1) AND thread_id = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ") ORDER BY normalized_date ASC)), "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "  date_sent ="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "    (SELECT date_sent FROM"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "      (SELECT date_sent * 1000 as date_sent, date * 1000 AS date, thread_id FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "      UNION SELECT date_sent, date, thread_id FROM sms)"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "    WHERE thread_id = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " ORDER BY date DESC LIMIT 1) "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "  WHERE threads._id = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "; "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 786
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  UPDATE threads  SET  date =    (SELECT date FROM        (SELECT date * 1000 AS date, thread_id FROM pdu         UNION SELECT date, thread_id FROM sms)     WHERE thread_id = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " ORDER BY date DESC LIMIT 1),"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "  snippet ="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "    (SELECT snippet FROM"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "        (SELECT date * 1000 AS date, sub AS snippet, thread_id FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "         UNION SELECT date, body AS snippet, thread_id FROM sms)"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "     WHERE thread_id = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " ORDER BY date DESC LIMIT 1),"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "  snippet_cs ="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "    (SELECT snippet_cs FROM"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "        (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "         UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms)"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "     WHERE thread_id = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " ORDER BY date DESC LIMIT 1),"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "  has_attachment = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "   CASE "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "    (SELECT COUNT(*) FROM part JOIN pdu "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "     WHERE pdu.thread_id = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "     AND part.ct != \'text/plain\' AND part.ct != \'application/smil\' "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "     AND part.mid = pdu._id)"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "   WHEN 0 THEN 0 "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "   ELSE 1 "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "   END "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "  WHERE threads._id = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ";"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 818
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "SELECT thread_id FROM sms WHERE type=5 AND thread_id = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 822
    .local v18, query:Ljava/lang/String;
    const/16 v20, 0x0

    .line 823
    .local v20, setError:I
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 825
    .local v4, c:Landroid/database/Cursor;
    if-eqz v4, :cond_8

    .line 826
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v20

    .line 827
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 829
    :cond_8
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "SELECT _id FROM pdu WHERE thread_id = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " AND m_type = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x80

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 831
    .local v14, mms_query:Ljava/lang/String;
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v14, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 832
    .local v5, c_mms:Landroid/database/Cursor;
    const-string v12, " IN ("

    .line 833
    .local v12, in:Ljava/lang/String;
    if-eqz v5, :cond_b

    .line 834
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v23

    if-eqz v23, :cond_9

    .line 835
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 837
    :cond_9
    :goto_3
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v23

    if-eqz v23, :cond_a

    .line 838
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    .line 840
    :cond_a
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 842
    :cond_b
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ")"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 843
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "SELECT _id, err_type FROM pending_msgs WHERE err_type >= 10 AND msg_id "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 844
    .local v16, pending_query:Ljava/lang/String;
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 845
    .local v6, c_pending:Landroid/database/Cursor;
    if-eqz v6, :cond_c

    .line 846
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v23

    add-int v20, v20, v23

    .line 847
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 849
    :cond_c
    const-string v23, "Mms/Provider/MmsSmsDatabaseHelper"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "updateThread, set error with mms id "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "; setError = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "SELECT error FROM threads WHERE _id = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 854
    .local v9, errorQuery:Ljava/lang/String;
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v9, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v4

    .line 855
    if-eqz v4, :cond_6

    .line 857
    :try_start_7
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v23

    if-eqz v23, :cond_d

    .line 858
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 859
    .local v7, curError:I
    move/from16 v0, v20

    if-eq v7, v0, :cond_d

    .line 861
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "UPDATE threads SET error="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " WHERE _id = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 866
    .end local v7           #curError:I
    :cond_d
    :try_start_8
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_2

    .line 874
    .end local v4           #c:Landroid/database/Cursor;
    .end local v5           #c_mms:Landroid/database/Cursor;
    .end local v6           #c_pending:Landroid/database/Cursor;
    .end local v9           #errorQuery:Ljava/lang/String;
    .end local v12           #in:Ljava/lang/String;
    .end local v14           #mms_query:Ljava/lang/String;
    .end local v16           #pending_query:Ljava/lang/String;
    .end local v17           #pushCursor:Landroid/database/Cursor;
    .end local v18           #query:Ljava/lang/String;
    .end local v19           #rows:I
    .end local v20           #setError:I
    :catchall_1
    move-exception v23

    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v23

    .line 866
    .restart local v4       #c:Landroid/database/Cursor;
    .restart local v5       #c_mms:Landroid/database/Cursor;
    .restart local v6       #c_pending:Landroid/database/Cursor;
    .restart local v9       #errorQuery:Ljava/lang/String;
    .restart local v12       #in:Ljava/lang/String;
    .restart local v14       #mms_query:Ljava/lang/String;
    .restart local v16       #pending_query:Ljava/lang/String;
    .restart local v17       #pushCursor:Landroid/database/Cursor;
    .restart local v18       #query:Ljava/lang/String;
    .restart local v19       #rows:I
    .restart local v20       #setError:I
    :catchall_2
    move-exception v23

    :try_start_9
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v23
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
.end method

.method public static updateThreadReadAfterDeleteMessage(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 2
    .parameter "db"
    .parameter "thread_id"

    .prologue
    .line 3084
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " UPDATE threads SET read =     CASE (SELECT COUNT(sms._id) FROM sms               WHERE sms.thread_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "              AND sms.read=0) + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "          (SELECT COUNT(pdu._id) FROM pdu "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "              WHERE pdu.thread_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "              AND (pdu.m_type=132 OR pdu.m_type=130 OR pdu.m_type=128) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "              AND pdu.read=0) + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "           (SELECT COUNT(wappush._id) FROM wappush "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "               WHERE  wappush.thread_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "               AND wappush.read=0) + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "           (SELECT COUNT(cellbroadcast._id) FROM cellbroadcast "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "               WHERE  cellbroadcast.thread_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "               AND cellbroadcast.read=0) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    WHEN 0 THEN 1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    ELSE 0 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    END "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE threads._id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3121
    return-void
.end method

.method private updateThreadsAttachmentColumn(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3074
    const-string v0, "UPDATE threads SET has_attachment=1 WHERE _id IN   (SELECT DISTINCT pdu.thread_id FROM part    JOIN pdu ON pdu._id=part.mid    WHERE part.ct != \'text/plain\' AND part.ct != \'application/smil\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3078
    return-void
.end method

.method private upgradeAddressTableToAutoIncrement(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 3038
    const-string v0, "canonical_addresses"

    invoke-direct {p0, p1, v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->hasAutoIncrement(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3039
    const-string v0, "Mms/Provider/MmsSmsDatabaseHelper"

    const-string v1, "[MmsSmsDb] upgradeAddressTableToAutoIncrement: already upgraded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3053
    :goto_0
    return-void

    .line 3042
    :cond_0
    const-string v0, "Mms/Provider/MmsSmsDatabaseHelper"

    const-string v1, "[MmsSmsDb] upgradeAddressTableToAutoIncrement: upgrading"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3047
    const-string v0, "CREATE TABLE canonical_addresses_temp (_id INTEGER PRIMARY KEY AUTOINCREMENT,address TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3050
    const-string v0, "INSERT INTO canonical_addresses_temp SELECT * from canonical_addresses;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3051
    const-string v0, "DROP TABLE canonical_addresses;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3052
    const-string v0, "ALTER TABLE canonical_addresses_temp RENAME TO canonical_addresses;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private upgradeDatabaseToVersion41(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 2281
    const-string v0, "DROP TRIGGER IF EXISTS update_threads_error_on_move_mms"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2282
    const-string v0, "CREATE TRIGGER update_threads_error_on_move_mms   BEFORE UPDATE OF msg_box ON pdu   WHEN (OLD.msg_box = 4 AND NEW.msg_box != 4)   AND (OLD._id IN (SELECT DISTINCT msg_id                   FROM pending_msgs                   WHERE err_type >= 10)) BEGIN   UPDATE threads SET error = error - 1  WHERE _id = OLD.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2292
    return-void
.end method

.method private upgradeDatabaseToVersion42(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 2295
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_on_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2296
    const-string v0, "DROP TRIGGER IF EXISTS delete_obsolete_threads_sms"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2297
    const-string v0, "DROP TRIGGER IF EXISTS update_threads_error_on_delete_sms"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2298
    return-void
.end method

.method private upgradeDatabaseToVersion43(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 2302
    const-string v0, "ALTER TABLE threads ADD COLUMN has_attachment INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2304
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThreadsAttachmentColumn(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2307
    const-string v0, "CREATE TRIGGER update_threads_on_insert_part  AFTER INSERT ON part  WHEN new.ct != \'text/plain\' AND new.ct != \'application/smil\'  BEGIN   UPDATE threads SET has_attachment=1 WHERE _id IN    (SELECT pdu.thread_id FROM part JOIN pdu ON pdu._id=part.mid      WHERE part._id=new._id LIMIT 1);  END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2308
    const-string v0, "CREATE TRIGGER update_threads_on_delete_part  AFTER DELETE ON part  WHEN old.ct != \'text/plain\' AND old.ct != \'application/smil\'  BEGIN   UPDATE threads SET has_attachment =    CASE     (SELECT COUNT(*) FROM part JOIN pdu      ON pdu._id=old.mid AND part.mid=pdu._id      WHERE part.ct != \'text/plain\' AND part.ct != \'application/smil\')    WHEN 0 THEN 0    ELSE 1    END    WHERE threads._id=(SELECT thread_id FROM pdu WHERE _id=old.mid);  END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2309
    return-void
.end method

.method private upgradeDatabaseToVersion44(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 2312
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThreadsAttachmentColumn(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2315
    const-string v0, "CREATE TRIGGER update_threads_on_update_part  AFTER UPDATE of mid ON part  WHEN new.ct != \'text/plain\' AND new.ct != \'application/smil\'  BEGIN   UPDATE threads SET has_attachment=1 WHERE _id IN    (SELECT pdu.thread_id FROM part JOIN pdu ON pdu._id=part.mid      WHERE part._id=new._id LIMIT 1);  END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2316
    return-void
.end method

.method private upgradeDatabaseToVersion45(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 2320
    const-string v0, "ALTER TABLE sms ADD COLUMN locked INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2323
    const-string v0, "ALTER TABLE pdu ADD COLUMN locked INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2324
    return-void
.end method

.method private upgradeDatabaseToVersion46(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 20
    .parameter "db"

    .prologue
    .line 2329
    const-string v1, "ALTER TABLE part ADD COLUMN text TEXT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2331
    const-string v2, "part"

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    const-string v4, "_data"

    aput-object v4, v3, v1

    const/4 v1, 0x2

    const-string v4, "text"

    aput-object v4, v3, v1

    const-string v4, "ct = \'text/plain\' OR ct == \'application/smil\'"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 2339
    .local v18, textRows:Landroid/database/Cursor;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 2341
    .local v12, filesToDelete:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2342
    if-eqz v18, :cond_1

    .line 2343
    const-string v1, "_data"

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 2349
    .local v15, partDataColumn:I
    :cond_0
    :goto_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2350
    move-object/from16 v0, v18

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v16

    .line 2351
    .local v16, path:Ljava/lang/String;
    if-eqz v16, :cond_0

    .line 2353
    :try_start_1
    new-instance v14, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 2354
    .local v14, is:Ljava/io/InputStream;
    invoke-virtual {v14}, Ljava/io/FileInputStream;->available()I

    move-result v1

    new-array v9, v1, [B

    .line 2355
    .local v9, data:[B
    invoke-virtual {v14, v9}, Ljava/io/InputStream;->read([B)I

    .line 2356
    new-instance v19, Lcom/google/android/mms/pdu/EncodedStringValue;

    move-object/from16 v0, v19

    invoke-direct {v0, v9}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V

    .line 2357
    .local v19, v:Lcom/google/android/mms/pdu/EncodedStringValue;
    const-string v1, "UPDATE part SET _data = NULL, text = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2359
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V

    .line 2360
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2361
    .end local v9           #data:[B
    .end local v14           #is:Ljava/io/InputStream;
    .end local v19           #v:Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_0
    move-exception v10

    .line 2363
    .local v10, e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2370
    .end local v10           #e:Ljava/io/IOException;
    .end local v15           #partDataColumn:I
    .end local v16           #path:Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2371
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 2373
    .local v17, pathToDelete:Ljava/lang/String;
    :try_start_3
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 2374
    :catch_1
    move-exception v11

    .line 2375
    .local v11, ex:Ljava/lang/SecurityException;
    const-string v2, "Mms/Provider/MmsSmsDatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to clean up old mms file for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2368
    .end local v11           #ex:Ljava/lang/SecurityException;
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v17           #pathToDelete:Ljava/lang/String;
    :cond_1
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2370
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2371
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 2373
    .restart local v17       #pathToDelete:Ljava/lang/String;
    :try_start_5
    new-instance v1, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 2374
    :catch_2
    move-exception v11

    .line 2375
    .restart local v11       #ex:Ljava/lang/SecurityException;
    const-string v1, "Mms/Provider/MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to clean up old mms file for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 2378
    .end local v11           #ex:Ljava/lang/SecurityException;
    .end local v17           #pathToDelete:Ljava/lang/String;
    :cond_2
    if-eqz v18, :cond_3

    .line 2379
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 2382
    :cond_3
    return-void

    .line 2378
    :cond_4
    if-eqz v18, :cond_5

    .line 2379
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1
.end method

.method private upgradeDatabaseToVersion47(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 2385
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThreadsAttachmentColumn(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2388
    const-string v0, "CREATE TRIGGER update_threads_on_update_pdu  AFTER UPDATE of thread_id ON pdu  BEGIN   UPDATE threads SET has_attachment=1 WHERE _id IN    (SELECT pdu.thread_id FROM part JOIN pdu      WHERE part.ct != \'text/plain\' AND part.ct != \'application/smil\'      AND part.mid = pdu._id); END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2389
    return-void
.end method

.method private upgradeDatabaseToVersion48(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 2393
    const-string v0, "ALTER TABLE sms ADD COLUMN error_code INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2394
    return-void
.end method

.method private upgradeDatabaseToVersion51(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .parameter "db"

    .prologue
    .line 2397
    const-string v3, "ALTER TABLE sms add COLUMN seen INTEGER DEFAULT 0"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2398
    const-string v3, "ALTER TABLE pdu add COLUMN seen INTEGER DEFAULT 0"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2403
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2404
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v3, "seen"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2405
    const-string v3, "sms"

    const-string v4, "read=1"

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 2406
    .local v1, count:I
    const-string v3, "Mms/Provider/MmsSmsDatabaseHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MmsSmsDb] upgradeDatabaseToVersion51: updated "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rows in sms table to have READ=1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2408
    const-string v3, "pdu"

    const-string v4, "read=1"

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 2409
    const-string v3, "Mms/Provider/MmsSmsDatabaseHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MmsSmsDb] upgradeDatabaseToVersion51: updated "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rows in pdu table to have READ=1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2414
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v1           #count:I
    :goto_0
    return-void

    .line 2411
    :catch_0
    move-exception v2

    .line 2412
    .local v2, ex:Ljava/lang/Exception;
    const-string v3, "Mms/Provider/MmsSmsDatabaseHelper"

    const-string v4, "[MmsSmsDb] upgradeDatabaseToVersion51 caught "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private upgradeDatabaseToVersion53(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 2417
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_read_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2420
    const-string v0, "CREATE TRIGGER pdu_update_thread_read_on_update AFTER  UPDATE OF read  ON pdu   WHEN new.m_type=132    OR new.m_type=130    OR new.m_type=128 BEGIN   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128)) +          (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2427
    return-void
.end method

.method private upgradeDatabaseToVersion530100(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 2430
    const-string v0, "ALTER TABLE pdu ADD COLUMN service_center TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2431
    return-void
.end method

.method private upgradeDatabaseToVersion530200(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 2434
    const-string v0, "ALTER TABLE threads ADD COLUMN readcount INTEGER"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2436
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_on_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2438
    const-string v0, "CREATE TRIGGER sms_update_thread_on_insert AFTER INSERT ON sms BEGIN  UPDATE threads SET    date = new.date,     date_sent = new.date_sent,     snippet = new.body,     snippet_cs = 0  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE ((SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id) +          (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128)))       WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET readcount =   (SELECT count(_id)FROM   (SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM sms     WHERE ((read=1) AND thread_id = new.thread_id AND (type != 3))   UNION SELECT DISTINCT date * 1000 AS normalized_date, pdu._id, read   FROM pdu LEFT JOIN pending_msgs ON pdu._id = pending_msgs.msg_id   WHERE ((read=1) AND thread_id = new.thread_id AND msg_box != 3 AND (msg_box != 3         AND (m_type = 128 OR m_type = 132 OR m_type = 130)))   UNION SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM cellbroadcast    WHERE ((read=1) AND thread_id = new.thread_id) ORDER BY normalized_date ASC))    WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2441
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_date_subject_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2443
    const-string v0, "CREATE TRIGGER sms_update_thread_date_subject_on_update AFTER  UPDATE OF date, body, type  ON sms BEGIN  UPDATE threads SET    date = new.date,     date_sent = new.date_sent,     snippet = new.body,     snippet_cs = 0  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE ((SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id) +          (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128)))       WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET readcount =   (SELECT count(_id)FROM   (SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM sms     WHERE ((read=1) AND thread_id = new.thread_id AND (type != 3))   UNION SELECT DISTINCT date * 1000 AS normalized_date, pdu._id, read   FROM pdu LEFT JOIN pending_msgs ON pdu._id = pending_msgs.msg_id   WHERE ((read=1) AND thread_id = new.thread_id AND msg_box != 3 AND (msg_box != 3         AND (m_type = 128 OR m_type = 132 OR m_type = 130)))   UNION SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM cellbroadcast    WHERE ((read=1) AND thread_id = new.thread_id) ORDER BY normalized_date ASC))    WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2448
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_read_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2450
    const-string v0, "CREATE TRIGGER sms_update_thread_read_on_update AFTER  UPDATE OF read  ON sms BEGIN   UPDATE threads SET read =     CASE ((SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id) +          (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128)))       WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2457
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_on_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2459
    const-string v0, "CREATE TRIGGER pdu_update_thread_on_insert AFTER INSERT ON pdu   WHEN new.m_type=132    OR new.m_type=130    OR new.m_type=128  BEGIN  UPDATE threads  SET  date =    (SELECT date FROM        (SELECT date * 1000 AS date, thread_id FROM pdu          WHERE (m_type=132 OR m_type=130 OR m_type=128) AND (thread_id = new.thread_id)          UNION SELECT date, thread_id FROM sms          WHERE thread_id = new.thread_id)      WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;  UPDATE threads  SET  snippet =    (SELECT snippet FROM        (SELECT sub AS snippet, thread_id, date * 1000 AS date FROM pdu          WHERE (m_type=132 OR m_type=130 OR m_type=128) AND (thread_id = new.thread_id)          UNION SELECT body AS snippet, thread_id, date FROM sms          WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1 )      WHERE thread_id = new.thread_id )   WHERE threads._id = new.thread_id;  UPDATE threads  SET  snippet_cs =    (SELECT snippet_cs FROM        (SELECT sub_cs AS snippet_cs, thread_id, date * 1000 AS date FROM pdu          WHERE (m_type=132 OR m_type=130 OR m_type=128) AND (thread_id = new.thread_id)          UNION SELECT 0 AS snippet_cs, thread_id, date FROM sms          WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1 )      WHERE thread_id = new.thread_id )   WHERE threads._id = new.thread_id;  UPDATE threads  SET  date_sent =    (SELECT date_sent FROM        (SELECT date_sent * 1000 AS date_sent, thread_id FROM pdu          WHERE (m_type=132 OR m_type=130 OR m_type=128) AND (thread_id = new.thread_id)          UNION SELECT date_sent, thread_id FROM sms          WHERE thread_id = new.thread_id)      WHERE thread_id = new.thread_id ORDER BY date_sent DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128)) +          (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET readcount =   (SELECT count(_id)FROM   (SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM sms     WHERE ((read=1) AND thread_id = new.thread_id AND (type != 3))   UNION SELECT DISTINCT date * 1000 AS normalized_date, pdu._id, read   FROM pdu LEFT JOIN pending_msgs ON pdu._id = pending_msgs.msg_id   WHERE ((read=1) AND thread_id = new.thread_id AND msg_box != 3 AND (msg_box != 3         AND (m_type = 128 OR m_type = 132 OR m_type = 130)))   UNION SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM cellbroadcast    WHERE ((read=1) AND thread_id = new.thread_id) ORDER BY normalized_date ASC))    WHERE threads._id = new.thread_id;  END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2464
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_date_subject_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2466
    const-string v0, "CREATE TRIGGER pdu_update_thread_date_subject_on_update AFTER  UPDATE OF date, sub, msg_box  ON pdu   WHEN new.m_type=132    OR new.m_type=130    OR new.m_type=128  BEGIN  UPDATE threads  SET  date =    (SELECT date FROM        (SELECT date * 1000 AS date, thread_id FROM pdu          WHERE (m_type=132 OR m_type=130 OR m_type=128) AND (thread_id = new.thread_id)          UNION SELECT date, thread_id FROM sms          WHERE thread_id = new.thread_id)      WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;  UPDATE threads  SET  snippet =    (SELECT snippet FROM        (SELECT sub AS snippet, thread_id, date * 1000 AS date FROM pdu          WHERE (m_type=132 OR m_type=130 OR m_type=128) AND (thread_id = new.thread_id)          UNION SELECT body AS snippet, thread_id, date FROM sms          WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1 )      WHERE thread_id = new.thread_id )   WHERE threads._id = new.thread_id;  UPDATE threads  SET  snippet_cs =    (SELECT snippet_cs FROM        (SELECT sub_cs AS snippet_cs, thread_id, date * 1000 AS date FROM pdu          WHERE (m_type=132 OR m_type=130 OR m_type=128) AND (thread_id = new.thread_id)          UNION SELECT 0 AS snippet_cs, thread_id, date FROM sms          WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1 )      WHERE thread_id = new.thread_id )   WHERE threads._id = new.thread_id;  UPDATE threads  SET  date_sent =    (SELECT date_sent FROM        (SELECT date_sent * 1000 AS date_sent, thread_id FROM pdu          WHERE (m_type=132 OR m_type=130 OR m_type=128) AND (thread_id = new.thread_id)          UNION SELECT date_sent, thread_id FROM sms          WHERE thread_id = new.thread_id)      WHERE thread_id = new.thread_id ORDER BY date_sent DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128)) +          (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET readcount =   (SELECT count(_id)FROM   (SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM sms     WHERE ((read=1) AND thread_id = new.thread_id AND (type != 3))   UNION SELECT DISTINCT date * 1000 AS normalized_date, pdu._id, read   FROM pdu LEFT JOIN pending_msgs ON pdu._id = pending_msgs.msg_id   WHERE ((read=1) AND thread_id = new.thread_id AND msg_box != 3 AND (msg_box != 3         AND (m_type = 128 OR m_type = 132 OR m_type = 130)))   UNION SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM cellbroadcast    WHERE ((read=1) AND thread_id = new.thread_id) ORDER BY normalized_date ASC))    WHERE threads._id = new.thread_id;  END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2472
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_read_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2474
    const-string v0, "CREATE TRIGGER pdu_update_thread_read_on_update AFTER  UPDATE OF read  ON pdu   WHEN new.m_type=132    OR new.m_type=130    OR new.m_type=128 BEGIN   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128)) +          (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2482
    const-string v0, "DROP TRIGGER IF EXISTS cb_update_thread_on_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2484
    const-string v0, "CREATE TRIGGER cb_update_thread_on_insert AFTER INSERT ON cellbroadcast BEGIN  UPDATE threads SET    date = (strftime(\'%s\',\'now\') * 1000),     type= 3,     snippet = new.body   WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(cellbroadcast._id) FROM cellbroadcast LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id )  WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM cellbroadcast          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET readcount =   (SELECT count(_id)FROM   (SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM sms     WHERE ((read=1) AND thread_id = new.thread_id AND (type != 3))   UNION SELECT DISTINCT date * 1000 AS normalized_date, pdu._id, read   FROM pdu LEFT JOIN pending_msgs ON pdu._id = pending_msgs.msg_id   WHERE ((read=1) AND thread_id = new.thread_id AND msg_box != 3 AND (msg_box != 3         AND (m_type = 128 OR m_type = 132 OR m_type = 130)))   UNION SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM cellbroadcast    WHERE ((read=1) AND thread_id = new.thread_id) ORDER BY normalized_date ASC))    WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2487
    const-string v0, "DROP TRIGGER IF EXISTS cb_update_thread_read_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2488
    const-string v0, "CREATE TRIGGER cb_update_thread_read_on_update AFTER  UPDATE OF read  ON cellbroadcast BEGIN   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM cellbroadcast          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2492
    return-void
.end method

.method private upgradeDatabaseToVersion530300(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 2495
    const-string v0, "ALTER TABLE threads ADD COLUMN status INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2496
    return-void
.end method

.method private upgradeDatabaseToVersion540000(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 2499
    const-string v0, "ALTER TABLE sms ADD COLUMN date_sent INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2502
    const-string v0, "ALTER TABLE pdu ADD COLUMN date_sent INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2505
    const-string v0, "ALTER TABLE cellbroadcast ADD COLUMN date_sent INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2507
    return-void
.end method

.method private upgradeDatabaseToVersion550000(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 2511
    const-string v0, "DROP TRIGGER IF EXISTS delete_obsolete_threads_pdu"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2512
    const-string v0, "DROP TRIGGER IF EXISTS delete_obsolete_threads_when_update_pdu"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2513
    return-void
.end method

.method private upgradeDatabaseToVersion550100(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13
    .parameter "db"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2518
    const-string v0, "ALTER TABLE sms ADD COLUMN ipmsg_id INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2521
    const-string v0, "CREATE TABLE thread_settings(_id INTEGER PRIMARY KEY,thread_id INTEGER,spam INTEGER DEFAULT 0,notification_enable INTEGER DEFAULT 1,mute INTEGER DEFAULT 0,mute_start INTEGER DEFAULT 0,ringtone TEXT,_data TEXT,vibrate INTEGER DEFAULT 1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2533
    const-string v0, "CREATE TRIGGER insert_thread_settings_when_insert_threads AFTER INSERT ON threads BEGIN   INSERT INTO thread_settings     (thread_id    ,spam    ,notification_enable    ,mute    ,mute_start    ,ringtone    ,_data    ,vibrate)   VALUES     (new._id,     0,1,0,0,\'\',\'\',1); END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2551
    const-string v0, "CREATE TRIGGER delete_thread_settings_when_delete_threads AFTER DELETE ON threads BEGIN   DELETE FROM thread_settings     WHERE thread_id=old._id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2559
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_on_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2561
    const-string v0, "CREATE TRIGGER sms_update_thread_on_insert AFTER INSERT ON sms BEGIN  UPDATE threads SET    date = new.date,     date_sent = new.date_sent,     snippet = new.body,     snippet_cs = 0  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE ((SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id) +          (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128)))       WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET readcount =   (SELECT count(_id)FROM   (SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM sms     WHERE ((read=1) AND thread_id = new.thread_id AND (type != 3))   UNION SELECT DISTINCT date * 1000 AS normalized_date, pdu._id, read   FROM pdu LEFT JOIN pending_msgs ON pdu._id = pending_msgs.msg_id   WHERE ((read=1) AND thread_id = new.thread_id AND msg_box != 3 AND (msg_box != 3         AND (m_type = 128 OR m_type = 132 OR m_type = 130)))   UNION SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM cellbroadcast    WHERE ((read=1) AND thread_id = new.thread_id) ORDER BY normalized_date ASC))    WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2564
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_date_subject_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2566
    const-string v0, "CREATE TRIGGER sms_update_thread_date_subject_on_update AFTER  UPDATE OF date, body, type  ON sms BEGIN  UPDATE threads SET    date = new.date,     date_sent = new.date_sent,     snippet = new.body,     snippet_cs = 0  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE ((SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id) +          (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128)))       WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET readcount =   (SELECT count(_id)FROM   (SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM sms     WHERE ((read=1) AND thread_id = new.thread_id AND (type != 3))   UNION SELECT DISTINCT date * 1000 AS normalized_date, pdu._id, read   FROM pdu LEFT JOIN pending_msgs ON pdu._id = pending_msgs.msg_id   WHERE ((read=1) AND thread_id = new.thread_id AND msg_box != 3 AND (msg_box != 3         AND (m_type = 128 OR m_type = 132 OR m_type = 130)))   UNION SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM cellbroadcast    WHERE ((read=1) AND thread_id = new.thread_id) ORDER BY normalized_date ASC))    WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2571
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_read_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2573
    const-string v0, "CREATE TRIGGER sms_update_thread_read_on_update AFTER  UPDATE OF read  ON sms BEGIN   UPDATE threads SET read =     CASE ((SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id) +          (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128)))       WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET readcount =   (SELECT count(_id)FROM   (SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM sms     WHERE ((read=1) AND thread_id = new.thread_id AND (type != 3))   UNION SELECT DISTINCT date * 1000 AS normalized_date, pdu._id, read   FROM pdu LEFT JOIN pending_msgs ON pdu._id = pending_msgs.msg_id   WHERE ((read=1) AND thread_id = new.thread_id AND msg_box != 3 AND (msg_box != 3         AND (m_type = 128 OR m_type = 132 OR m_type = 130)))   UNION SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM cellbroadcast    WHERE ((read=1) AND thread_id = new.thread_id) ORDER BY normalized_date ASC))    WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2581
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_on_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2583
    const-string v0, "CREATE TRIGGER pdu_update_thread_on_insert AFTER INSERT ON pdu   WHEN new.m_type=132    OR new.m_type=130    OR new.m_type=128   BEGIN  UPDATE threads  SET  date =    (SELECT date FROM        (SELECT date * 1000 AS date, thread_id FROM pdu          WHERE (new.m_type=132 OR new.m_type=130 OR new.m_type=128) AND (thread_id = new.thread_id)          UNION SELECT date, thread_id FROM sms          WHERE thread_id = new.thread_id)      WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id; UPDATE threads  SET  snippet =    (SELECT snippet FROM        (SELECT sub AS snippet, thread_id, date * 1000 AS date FROM pdu          WHERE (m_type=132 OR m_type=130 OR m_type=128) AND (thread_id = new.thread_id)          UNION SELECT body AS snippet, thread_id, date FROM sms          WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1 )      WHERE thread_id = new.thread_id )   WHERE threads._id = new.thread_id;  UPDATE threads  SET  snippet_cs =    (SELECT snippet_cs FROM        (SELECT sub_cs AS snippet_cs, thread_id, date * 1000 AS date FROM pdu          WHERE (m_type=132 OR m_type=130 OR m_type=128) AND (thread_id = new.thread_id)          UNION SELECT 0 AS snippet_cs, thread_id, date FROM sms          WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1 )      WHERE thread_id = new.thread_id )   WHERE threads._id = new.thread_id;  UPDATE threads  SET  date_sent =    (SELECT date_sent FROM        (SELECT date_sent * 1000 AS date_sent, thread_id FROM pdu          WHERE (m_type=132 OR m_type=130 OR m_type=128) AND (thread_id = new.thread_id)          UNION SELECT date_sent, thread_id FROM sms          WHERE thread_id = new.thread_id)      WHERE thread_id = new.thread_id ORDER BY date_sent DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128)) +          (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET readcount =   (SELECT count(_id)FROM   (SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM sms     WHERE ((read=1) AND thread_id = new.thread_id AND (type != 3))   UNION SELECT DISTINCT date * 1000 AS normalized_date, pdu._id, read   FROM pdu LEFT JOIN pending_msgs ON pdu._id = pending_msgs.msg_id   WHERE ((read=1) AND thread_id = new.thread_id AND msg_box != 3 AND (msg_box != 3         AND (m_type = 128 OR m_type = 132 OR m_type = 130)))   UNION SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM cellbroadcast    WHERE ((read=1) AND thread_id = new.thread_id) ORDER BY normalized_date ASC))    WHERE threads._id = new.thread_id;   UPDATE threads SET status = 0   WHERE (new.m_type=132 OR new.m_type=130 OR new.m_type=128) AND threads._id=new.thread_id;   END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2588
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_date_subject_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2590
    const-string v0, "CREATE TRIGGER pdu_update_thread_date_subject_on_update AFTER  UPDATE OF date, sub, msg_box  ON pdu   WHEN new.m_type=132    OR new.m_type=130    OR new.m_type=128  BEGIN  UPDATE threads  SET  date =    (SELECT date FROM        (SELECT date * 1000 AS date, thread_id FROM pdu          WHERE (m_type=132 OR m_type=130 OR m_type=128) AND (thread_id = new.thread_id)          UNION SELECT date, thread_id FROM sms          WHERE thread_id = new.thread_id)      WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;  UPDATE threads  SET  snippet =    (SELECT snippet FROM        (SELECT sub AS snippet, thread_id, date * 1000 AS date FROM pdu          WHERE (m_type=132 OR m_type=130 OR m_type=128) AND (thread_id = new.thread_id)          UNION SELECT body AS snippet, thread_id, date FROM sms          WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1 )      WHERE thread_id = new.thread_id )   WHERE threads._id = new.thread_id;  UPDATE threads  SET  snippet_cs =    (SELECT snippet_cs FROM        (SELECT sub_cs AS snippet_cs, thread_id, date * 1000 AS date FROM pdu          WHERE (m_type=132 OR m_type=130 OR m_type=128) AND (thread_id = new.thread_id)          UNION SELECT 0 AS snippet_cs, thread_id, date FROM sms          WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1 )      WHERE thread_id = new.thread_id )   WHERE threads._id = new.thread_id;  UPDATE threads  SET  date_sent =    (SELECT date_sent FROM        (SELECT date_sent * 1000 AS date_sent, thread_id FROM pdu          WHERE (m_type=132 OR m_type=130 OR m_type=128) AND (thread_id = new.thread_id)          UNION SELECT date_sent, thread_id FROM sms          WHERE thread_id = new.thread_id)      WHERE thread_id = new.thread_id ORDER BY date_sent DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128)) +          (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET readcount =   (SELECT count(_id)FROM   (SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM sms     WHERE ((read=1) AND thread_id = new.thread_id AND (type != 3))   UNION SELECT DISTINCT date * 1000 AS normalized_date, pdu._id, read   FROM pdu LEFT JOIN pending_msgs ON pdu._id = pending_msgs.msg_id   WHERE ((read=1) AND thread_id = new.thread_id AND msg_box != 3 AND (msg_box != 3         AND (m_type = 128 OR m_type = 132 OR m_type = 130)))   UNION SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM cellbroadcast    WHERE ((read=1) AND thread_id = new.thread_id) ORDER BY normalized_date ASC))    WHERE threads._id = new.thread_id;  END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2596
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_read_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2598
    const-string v0, "CREATE TRIGGER pdu_update_thread_read_on_update AFTER  UPDATE OF read  ON pdu   WHEN new.m_type=132    OR new.m_type=130    OR new.m_type=128 BEGIN   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128)) +          (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET readcount =   (SELECT count(_id)FROM   (SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM sms     WHERE ((read=1) AND thread_id = new.thread_id AND (type != 3))   UNION SELECT DISTINCT date * 1000 AS normalized_date, pdu._id, read   FROM pdu LEFT JOIN pending_msgs ON pdu._id = pending_msgs.msg_id   WHERE ((read=1) AND thread_id = new.thread_id AND msg_box != 3 AND (msg_box != 3         AND (m_type = 128 OR m_type = 132 OR m_type = 130)))   UNION SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM cellbroadcast    WHERE ((read=1) AND thread_id = new.thread_id) ORDER BY normalized_date ASC))    WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2607
    const-string v0, "DROP TRIGGER IF EXISTS cb_update_thread_on_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2609
    const-string v0, "CREATE TRIGGER cb_update_thread_on_insert AFTER INSERT ON cellbroadcast BEGIN  UPDATE threads SET    date = (strftime(\'%s\',\'now\') * 1000),     type= 3,     snippet = new.body   WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(cellbroadcast._id) FROM cellbroadcast LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id )  WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM cellbroadcast          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET readcount =   (SELECT count(_id)FROM   (SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM sms     WHERE ((read=1) AND thread_id = new.thread_id AND (type != 3))   UNION SELECT DISTINCT date * 1000 AS normalized_date, pdu._id, read   FROM pdu LEFT JOIN pending_msgs ON pdu._id = pending_msgs.msg_id   WHERE ((read=1) AND thread_id = new.thread_id AND msg_box != 3 AND (msg_box != 3         AND (m_type = 128 OR m_type = 132 OR m_type = 130)))   UNION SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM cellbroadcast    WHERE ((read=1) AND thread_id = new.thread_id) ORDER BY normalized_date ASC))    WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2612
    const-string v0, "DROP TRIGGER IF EXISTS cb_update_thread_read_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2613
    const-string v0, "CREATE TRIGGER cb_update_thread_read_on_update AFTER  UPDATE OF read  ON cellbroadcast BEGIN   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM cellbroadcast          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET readcount =   (SELECT count(_id)FROM   (SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM sms     WHERE ((read=1) AND thread_id = new.thread_id AND (type != 3))   UNION SELECT DISTINCT date * 1000 AS normalized_date, pdu._id, read   FROM pdu LEFT JOIN pending_msgs ON pdu._id = pending_msgs.msg_id   WHERE ((read=1) AND thread_id = new.thread_id AND msg_box != 3 AND (msg_box != 3         AND (m_type = 128 OR m_type = 132 OR m_type = 130)))   UNION SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM cellbroadcast    WHERE ((read=1) AND thread_id = new.thread_id) ORDER BY normalized_date ASC))    WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2618
    const-string v0, "ALTER TABLE threads ADD COLUMN li_date INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2621
    const-string v0, "ALTER TABLE threads ADD COLUMN li_snippet TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2624
    const-string v0, "ALTER TABLE threads ADD COLUMN li_snippet_cs INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2627
    const-string v0, "CREATE TRIGGER update_threads_lirelated_on_sms_locked   AFTER UPDATE OF locked ON sms  WHEN (OLD.locked != 1 AND NEW.locked = 1)    AND (NEW.date > (SELECT li_date FROM threads WHERE _id= NEW.thread_id)) BEGIN   UPDATE threads SET    li_date = NEW.date,     li_snippet = NEW.body  WHERE _id = NEW.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2638
    const-string v0, "CREATE TRIGGER update_threads_lirelated_on_sms_unlock   AFTER UPDATE OF locked ON sms  WHEN (OLD.locked = 1 AND NEW.locked != 1)    AND (NEW.date = (SELECT li_date FROM threads WHERE _id= NEW.thread_id)) BEGIN   UPDATE threads SET li_date =     CASE (SELECT COUNT(*) FROM       (SELECT date * 1000 AS date, sub AS snippet, thread_id, locked FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128       UNION SELECT date, body AS snippet, thread_id, locked FROM sms)      WHERE thread_id = OLD.thread_id AND locked=1 ORDER BY date DESC LIMIT 1)    WHEN 0 THEN 0    ELSE       (SELECT date FROM        (SELECT date * 1000 AS date, sub AS snippet, thread_id, locked FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128         UNION SELECT date, body AS snippet, thread_id, locked FROM sms)      WHERE thread_id = OLD.thread_id AND locked=1 ORDER BY date DESC LIMIT 1)    END  WHERE _id = OLD.thread_id;   UPDATE threads SET li_snippet =     CASE (SELECT COUNT(*) FROM       (SELECT date * 1000 AS date, sub AS snippet, thread_id, locked FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128       UNION SELECT date, body AS snippet, thread_id, locked FROM sms)      WHERE thread_id = OLD.thread_id AND locked=1 ORDER BY date DESC LIMIT 1)    WHEN 0 THEN \'\'    ELSE       (SELECT snippet FROM        (SELECT date * 1000 AS date, sub AS snippet, thread_id, locked FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128         UNION SELECT date, body AS snippet, thread_id, locked FROM sms)      WHERE thread_id = OLD.thread_id AND locked=1 ORDER BY date DESC LIMIT 1)    END  WHERE _id = OLD.thread_id;   UPDATE threads SET li_snippet_cs =     CASE (SELECT COUNT(*) FROM       (SELECT date * 1000 AS date, sub AS snippet, thread_id, locked FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128       UNION SELECT date, body AS snippet, thread_id, locked FROM sms)      WHERE thread_id = OLD.thread_id AND locked=1 ORDER BY date DESC LIMIT 1)    WHEN 0 THEN 0    ELSE       (SELECT snippet_cs FROM        (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id, locked FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128         UNION SELECT date, 0 AS snippet_cs, thread_id, locked FROM sms)      WHERE thread_id = OLD.thread_id AND locked=1 ORDER BY date DESC LIMIT 1)    END  WHERE _id = OLD.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2646
    const-string v0, "CREATE TRIGGER update_threads_lirelated_on_sms_delete   AFTER DELETE ON sms  WHEN OLD.locked = 1     AND OLD.date = (SELECT li_date FROM threads WHERE _id= OLD.thread_id) BEGIN   UPDATE threads SET li_date =     CASE (SELECT COUNT(*) FROM       (SELECT date * 1000 AS date, sub AS snippet, thread_id, locked FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128       UNION SELECT date, body AS snippet, thread_id, locked FROM sms)      WHERE thread_id = OLD.thread_id AND locked=1 ORDER BY date DESC LIMIT 1)    WHEN 0 THEN 0    ELSE       (SELECT date FROM        (SELECT date * 1000 AS date, sub AS snippet, thread_id, locked FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128         UNION SELECT date, body AS snippet, thread_id, locked FROM sms)      WHERE thread_id = OLD.thread_id AND locked=1 ORDER BY date DESC LIMIT 1)    END  WHERE _id = OLD.thread_id;   UPDATE threads SET li_snippet =     CASE (SELECT COUNT(*) FROM       (SELECT date * 1000 AS date, sub AS snippet, thread_id, locked FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128       UNION SELECT date, body AS snippet, thread_id, locked FROM sms)      WHERE thread_id = OLD.thread_id AND locked=1 ORDER BY date DESC LIMIT 1)    WHEN 0 THEN \'\'    ELSE       (SELECT snippet FROM        (SELECT date * 1000 AS date, sub AS snippet, thread_id, locked FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128         UNION SELECT date, body AS snippet, thread_id, locked FROM sms)      WHERE thread_id = OLD.thread_id AND locked=1 ORDER BY date DESC LIMIT 1)    END  WHERE _id = OLD.thread_id;   UPDATE threads SET li_snippet_cs =     CASE (SELECT COUNT(*) FROM       (SELECT date * 1000 AS date, sub AS snippet, thread_id, locked FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128       UNION SELECT date, body AS snippet, thread_id, locked FROM sms)      WHERE thread_id = OLD.thread_id AND locked=1 ORDER BY date DESC LIMIT 1)    WHEN 0 THEN 0    ELSE       (SELECT snippet_cs FROM        (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id, locked FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128         UNION SELECT date, 0 AS snippet_cs, thread_id, locked FROM sms)      WHERE thread_id = OLD.thread_id AND locked=1 ORDER BY date DESC LIMIT 1)    END  WHERE _id = OLD.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2654
    const-string v0, "CREATE TRIGGER update_threads_lirelated_on_pdu_locked   AFTER UPDATE OF locked ON pdu  WHEN (OLD.locked != 1 AND NEW.locked = 1)    AND (NEW.date > (SELECT li_date FROM threads WHERE _id= NEW.thread_id)) BEGIN   UPDATE threads SET    li_date = NEW.date,     li_snippet = NEW.sub,     li_snippet_cs = NEW.sub_cs  WHERE _id = NEW.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2666
    const-string v0, "CREATE TRIGGER update_threads_lirelated_on_pdu_unlock   AFTER UPDATE OF locked ON pdu  WHEN (OLD.locked = 1 AND NEW.locked != 1)    AND (NEW.date = (SELECT li_date FROM threads WHERE _id= NEW.thread_id)) BEGIN   UPDATE threads SET li_date =     CASE (SELECT COUNT(*) FROM       (SELECT date * 1000 AS date, sub AS snippet, thread_id, locked FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128       UNION SELECT date, body AS snippet, thread_id, locked FROM sms)      WHERE thread_id = OLD.thread_id AND locked=1 ORDER BY date DESC LIMIT 1)    WHEN 0 THEN 0    ELSE       (SELECT date FROM        (SELECT date * 1000 AS date, sub AS snippet, thread_id, locked FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128         UNION SELECT date, body AS snippet, thread_id, locked FROM sms)      WHERE thread_id = OLD.thread_id AND locked=1 ORDER BY date DESC LIMIT 1)    END  WHERE _id = OLD.thread_id;   UPDATE threads SET li_snippet =     CASE (SELECT COUNT(*) FROM       (SELECT date * 1000 AS date, sub AS snippet, thread_id, locked FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128       UNION SELECT date, body AS snippet, thread_id, locked FROM sms)      WHERE thread_id = OLD.thread_id AND locked=1 ORDER BY date DESC LIMIT 1)    WHEN 0 THEN \'\'    ELSE       (SELECT snippet FROM        (SELECT date * 1000 AS date, sub AS snippet, thread_id, locked FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128         UNION SELECT date, body AS snippet, thread_id, locked FROM sms)      WHERE thread_id = OLD.thread_id AND locked=1 ORDER BY date DESC LIMIT 1)    END  WHERE _id = OLD.thread_id;   UPDATE threads SET li_snippet_cs =     CASE (SELECT COUNT(*) FROM       (SELECT date * 1000 AS date, sub AS snippet, thread_id, locked FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128       UNION SELECT date, body AS snippet, thread_id, locked FROM sms)      WHERE thread_id = OLD.thread_id AND locked=1 ORDER BY date DESC LIMIT 1)    WHEN 0 THEN 0    ELSE       (SELECT snippet_cs FROM        (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id, locked FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128         UNION SELECT date, 0 AS snippet_cs, thread_id, locked FROM sms)      WHERE thread_id = OLD.thread_id AND locked=1 ORDER BY date DESC LIMIT 1)    END  WHERE _id = OLD.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2674
    const-string v0, "CREATE TRIGGER update_threads_lirelated_on_pdu_delete   AFTER DELETE ON pdu  WHEN OLD.locked = 1     AND OLD.date = (SELECT li_date FROM threads WHERE _id= OLD.thread_id) BEGIN   UPDATE threads SET li_date =     CASE (SELECT COUNT(*) FROM       (SELECT date * 1000 AS date, sub AS snippet, thread_id, locked FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128       UNION SELECT date, body AS snippet, thread_id, locked FROM sms)      WHERE thread_id = OLD.thread_id AND locked=1 ORDER BY date DESC LIMIT 1)    WHEN 0 THEN 0    ELSE       (SELECT date FROM        (SELECT date * 1000 AS date, sub AS snippet, thread_id, locked FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128         UNION SELECT date, body AS snippet, thread_id, locked FROM sms)      WHERE thread_id = OLD.thread_id AND locked=1 ORDER BY date DESC LIMIT 1)    END  WHERE _id = OLD.thread_id;   UPDATE threads SET li_snippet =     CASE (SELECT COUNT(*) FROM       (SELECT date * 1000 AS date, sub AS snippet, thread_id, locked FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128       UNION SELECT date, body AS snippet, thread_id, locked FROM sms)      WHERE thread_id = OLD.thread_id AND locked=1 ORDER BY date DESC LIMIT 1)    WHEN 0 THEN \'\'    ELSE       (SELECT snippet FROM        (SELECT date * 1000 AS date, sub AS snippet, thread_id, locked FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128         UNION SELECT date, body AS snippet, thread_id, locked FROM sms)      WHERE thread_id = OLD.thread_id AND locked=1 ORDER BY date DESC LIMIT 1)    END  WHERE _id = OLD.thread_id;   UPDATE threads SET li_snippet_cs =     CASE (SELECT COUNT(*) FROM       (SELECT date * 1000 AS date, sub AS snippet, thread_id, locked FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128       UNION SELECT date, body AS snippet, thread_id, locked FROM sms)      WHERE thread_id = OLD.thread_id AND locked=1 ORDER BY date DESC LIMIT 1)    WHEN 0 THEN 0    ELSE       (SELECT snippet_cs FROM        (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id, locked FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128         UNION SELECT date, 0 AS snippet_cs, thread_id, locked FROM sms)      WHERE thread_id = OLD.thread_id AND locked=1 ORDER BY date DESC LIMIT 1)    END  WHERE _id = OLD.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2682
    const-string v0, "Mms/Provider/MmsSmsDatabaseHelper"

    const-string v1, "old thread thread_setting update begin"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2683
    const/4 v8, 0x0

    .line 2684
    .local v8, c:Landroid/database/Cursor;
    const-string v1, "threads"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v4

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2685
    if-eqz v8, :cond_2

    .line 2687
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 2688
    .local v9, count:I
    if-lez v9, :cond_1

    .line 2689
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2690
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 2691
    .local v11, thread_id:J
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 2692
    .local v10, cv:Landroid/content/ContentValues;
    const-string v0, "thread_id"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2693
    const-string v0, "thread_settings"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2697
    .end local v9           #count:I
    .end local v10           #cv:Landroid/content/ContentValues;
    .end local v11           #thread_id:J
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_0

    .line 2698
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 2697
    .restart local v9       #count:I
    :cond_1
    if-eqz v8, :cond_2

    .line 2698
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2702
    .end local v9           #count:I
    :cond_2
    const-string v0, "Mms/Provider/MmsSmsDatabaseHelper"

    const-string v1, "old thread thread_setting update end"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2704
    return-void
.end method

.method private upgradeDatabaseToVersion560000(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 2708
    const-string v0, "DELETE FROM pdu WHERE thread_id IS NULL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2710
    const-string v0, "ALTER TABLE pdu ADD COLUMN text_only INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2713
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_on_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2714
    const-string v0, "CREATE TRIGGER pdu_update_thread_on_delete AFTER DELETE ON pdu BEGIN   UPDATE threads SET      date = (strftime(\'%s\',\'now\') * 1000)  WHERE threads._id = old.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = old.thread_id;   UPDATE threads SET readcount =   (SELECT count(_id) FROM   (SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM sms     WHERE ((read=1) AND thread_id = old.thread_id AND (type != 3))   UNION SELECT DISTINCT date * 1000 AS normalized_date, pdu._id, read   FROM pdu LEFT JOIN pending_msgs ON pdu._id = pending_msgs.msg_id   WHERE ((read=1) AND thread_id = old.thread_id AND msg_box != 3 AND (msg_box != 3         AND (m_type = 128 OR m_type = 132 OR m_type = 130)))   UNION SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM cellbroadcast    WHERE ((read=1) AND thread_id = old.thread_id) ORDER BY normalized_date ASC))    WHERE threads._id = old.thread_id;   UPDATE threads SET snippet =    (SELECT snippet FROM     (SELECT date * 1000 AS date, sub AS snippet, thread_id FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128      UNION SELECT date, body AS snippet, thread_id FROM sms)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET snippet_cs =    (SELECT snippet_cs FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET date_sent =    (SELECT date_sent FROM     (SELECT date_sent * 1000 as date_sent, date * 1000 AS date, thread_id FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128      UNION SELECT date_sent, date, thread_id FROM sms)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2725
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_on_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2726
    const-string v0, "CREATE TRIGGER sms_update_thread_on_delete AFTER DELETE ON sms BEGIN   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = old.thread_id;   UPDATE threads SET readcount =   (SELECT count(_id) FROM   (SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM sms     WHERE ((read=1) AND thread_id = old.thread_id AND (type != 3))   UNION SELECT DISTINCT date * 1000 AS normalized_date, pdu._id, read   FROM pdu LEFT JOIN pending_msgs ON pdu._id = pending_msgs.msg_id   WHERE ((read=1) AND thread_id = old.thread_id AND msg_box != 3 AND (msg_box != 3         AND (m_type = 128 OR m_type = 132 OR m_type = 130)))   UNION SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM cellbroadcast    WHERE ((read=1) AND thread_id = old.thread_id) ORDER BY normalized_date ASC))    WHERE threads._id = old.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2734
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_read_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2735
    const-string v0, "CREATE TRIGGER pdu_update_thread_read_on_update AFTER  UPDATE OF read  ON pdu   WHEN new.m_type=132    OR new.m_type=130    OR new.m_type=128 BEGIN   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128)) +          (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET readcount =   (SELECT count(_id)FROM   (SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM sms     WHERE ((read=1) AND thread_id = new.thread_id AND (type != 3))   UNION SELECT DISTINCT date * 1000 AS normalized_date, pdu._id, read   FROM pdu LEFT JOIN pending_msgs ON pdu._id = pending_msgs.msg_id   WHERE ((read=1) AND thread_id = new.thread_id AND msg_box != 3 AND (msg_box != 3         AND (m_type = 128 OR m_type = 132 OR m_type = 130)))   UNION SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM cellbroadcast    WHERE ((read=1) AND thread_id = new.thread_id) ORDER BY normalized_date ASC))    WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2744
    return-void
.end method

.method private upgradeDatabaseToVersion560100(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 2748
    const-string v0, "CREATE TABLE usersms (_id INTEGER PRIMARY KEY,pdus TEXT,format TEXT,simId INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2755
    const-string v0, "CREATE TABLE usermms (_id INTEGER PRIMARY KEY,transactionId INTEGER,pduType INTEGER,header TEXT,data TEXT,address TEXT,service_center TEXT,simId INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2766
    const-string v0, "CREATE TABLE usercb (_id INTEGER PRIMARY KEY,action TEXT,pdus TEXT,simId INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2772
    return-void
.end method

.method private upgradeDatabaseToVersion560200(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 2779
    const-string v0, "ALTER TABLE threads ADD COLUMN date_sent INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2780
    const-string v0, "ALTER TABLE pdu ADD COLUMN st_ext INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2781
    const-string v0, "ALTER TABLE sms ADD COLUMN ref_id INTEGER"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2782
    const-string v0, "ALTER TABLE sms ADD COLUMN total_len INTEGER"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2783
    const-string v0, "ALTER TABLE sms ADD COLUMN rec_len INTEGER"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2784
    const-string v0, "ALTER TABLE raw ADD COLUMN recv_time INTEGER"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2785
    const-string v0, "ALTER TABLE raw ADD COLUMN upload_flag INTEGER"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2787
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_on_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2788
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_on_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2789
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_date_subject_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2790
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_date_subject_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2791
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_on_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2792
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_on_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2793
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_on_add"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2794
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_on_split"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2796
    const-string v0, "CREATE TRIGGER pdu_update_thread_on_insert AFTER INSERT ON pdu   WHEN new.m_type=132    OR new.m_type=130    OR new.m_type=128   BEGIN  UPDATE threads  SET  date =    (SELECT date FROM        (SELECT date * 1000 AS date, thread_id FROM pdu          WHERE (new.m_type=132 OR new.m_type=130 OR new.m_type=128) AND (thread_id = new.thread_id)          UNION SELECT date, thread_id FROM sms          WHERE thread_id = new.thread_id)      WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id; UPDATE threads  SET  snippet =    (SELECT snippet FROM        (SELECT sub AS snippet, thread_id, date * 1000 AS date FROM pdu          WHERE (m_type=132 OR m_type=130 OR m_type=128) AND (thread_id = new.thread_id)          UNION SELECT body AS snippet, thread_id, date FROM sms          WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1 )      WHERE thread_id = new.thread_id )   WHERE threads._id = new.thread_id;  UPDATE threads  SET  snippet_cs =    (SELECT snippet_cs FROM        (SELECT sub_cs AS snippet_cs, thread_id, date * 1000 AS date FROM pdu          WHERE (m_type=132 OR m_type=130 OR m_type=128) AND (thread_id = new.thread_id)          UNION SELECT 0 AS snippet_cs, thread_id, date FROM sms          WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1 )      WHERE thread_id = new.thread_id )   WHERE threads._id = new.thread_id;  UPDATE threads  SET  date_sent =    (SELECT date_sent FROM        (SELECT date_sent * 1000 AS date_sent, thread_id FROM pdu          WHERE (m_type=132 OR m_type=130 OR m_type=128) AND (thread_id = new.thread_id)          UNION SELECT date_sent, thread_id FROM sms          WHERE thread_id = new.thread_id)      WHERE thread_id = new.thread_id ORDER BY date_sent DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128)) +          (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET readcount =   (SELECT count(_id)FROM   (SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM sms     WHERE ((read=1) AND thread_id = new.thread_id AND (type != 3))   UNION SELECT DISTINCT date * 1000 AS normalized_date, pdu._id, read   FROM pdu LEFT JOIN pending_msgs ON pdu._id = pending_msgs.msg_id   WHERE ((read=1) AND thread_id = new.thread_id AND msg_box != 3 AND (msg_box != 3         AND (m_type = 128 OR m_type = 132 OR m_type = 130)))   UNION SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM cellbroadcast    WHERE ((read=1) AND thread_id = new.thread_id) ORDER BY normalized_date ASC))    WHERE threads._id = new.thread_id;   UPDATE threads SET status = 0   WHERE (new.m_type=132 OR new.m_type=130 OR new.m_type=128) AND threads._id=new.thread_id;   END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2800
    const-string v0, "CREATE TRIGGER sms_update_thread_on_insert AFTER INSERT ON sms BEGIN UPDATE threads  SET  date =    (SELECT date FROM        (SELECT date * 1000 AS date, thread_id FROM pdu          WHERE (m_type=132 OR m_type=130 OR m_type=128) AND (thread_id = new.thread_id)          UNION SELECT date, thread_id FROM sms          WHERE thread_id = new.thread_id)      WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;  UPDATE threads  SET  date_sent =    (SELECT date_sent FROM        (SELECT date_sent * 1000 AS date_sent, thread_id FROM pdu          WHERE (m_type=132 OR m_type=130 OR m_type=128) AND (thread_id = new.thread_id)          UNION SELECT date_sent, thread_id FROM sms          WHERE thread_id = new.thread_id)      WHERE thread_id = new.thread_id ORDER BY date_sent DESC LIMIT 1)   WHERE threads._id = new.thread_id;  UPDATE threads  SET  snippet =    (SELECT snippet FROM        (SELECT sub AS snippet, thread_id, date * 1000 AS date FROM pdu          WHERE (m_type=132 OR m_type=130 OR m_type=128) AND (thread_id = new.thread_id)          UNION SELECT body AS snippet, thread_id, date FROM sms          WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1 )      WHERE thread_id = new.thread_id )   WHERE threads._id = new.thread_id;  UPDATE threads  SET  snippet_cs =    (SELECT snippet_cs FROM        (SELECT sub_cs AS snippet_cs, thread_id, date * 1000 AS date FROM pdu          WHERE (m_type=132 OR m_type=130 OR m_type=128) AND (thread_id = new.thread_id)          UNION SELECT 0 AS snippet_cs, thread_id, date FROM sms          WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1 )      WHERE thread_id = new.thread_id )   WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE ((SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id) +          (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128)))       WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET readcount =   (SELECT count(_id)FROM   (SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM sms     WHERE ((read=1) AND thread_id = new.thread_id AND (type != 3))   UNION SELECT DISTINCT date * 1000 AS normalized_date, pdu._id, read   FROM pdu LEFT JOIN pending_msgs ON pdu._id = pending_msgs.msg_id   WHERE ((read=1) AND thread_id = new.thread_id AND msg_box != 3 AND (msg_box != 3         AND (m_type = 128 OR m_type = 132 OR m_type = 130)))   UNION SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM cellbroadcast    WHERE ((read=1) AND thread_id = new.thread_id) ORDER BY normalized_date ASC))    WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2802
    const-string v0, "CREATE TRIGGER pdu_update_thread_date_subject_on_update AFTER  UPDATE OF date, sub, msg_box  ON pdu   WHEN new.m_type=132    OR new.m_type=130    OR new.m_type=128  BEGIN  UPDATE threads  SET  date =    (SELECT date FROM        (SELECT date * 1000 AS date, thread_id FROM pdu          WHERE (m_type=132 OR m_type=130 OR m_type=128) AND (thread_id = new.thread_id)          UNION SELECT date, thread_id FROM sms          WHERE thread_id = new.thread_id)      WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = new.thread_id;  UPDATE threads  SET  snippet =    (SELECT snippet FROM        (SELECT sub AS snippet, thread_id, date * 1000 AS date FROM pdu          WHERE (m_type=132 OR m_type=130 OR m_type=128) AND (thread_id = new.thread_id)          UNION SELECT body AS snippet, thread_id, date FROM sms          WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1 )      WHERE thread_id = new.thread_id )   WHERE threads._id = new.thread_id;  UPDATE threads  SET  snippet_cs =    (SELECT snippet_cs FROM        (SELECT sub_cs AS snippet_cs, thread_id, date * 1000 AS date FROM pdu          WHERE (m_type=132 OR m_type=130 OR m_type=128) AND (thread_id = new.thread_id)          UNION SELECT 0 AS snippet_cs, thread_id, date FROM sms          WHERE thread_id = new.thread_id ORDER BY date DESC LIMIT 1 )      WHERE thread_id = new.thread_id )   WHERE threads._id = new.thread_id;  UPDATE threads  SET  date_sent =    (SELECT date_sent FROM        (SELECT date_sent * 1000 AS date_sent, thread_id FROM pdu          WHERE (m_type=132 OR m_type=130 OR m_type=128) AND (thread_id = new.thread_id)          UNION SELECT date_sent, thread_id FROM sms          WHERE thread_id = new.thread_id)      WHERE thread_id = new.thread_id ORDER BY date_sent DESC LIMIT 1)   WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128)) +          (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET readcount =   (SELECT count(_id)FROM   (SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM sms     WHERE ((read=1) AND thread_id = new.thread_id AND (type != 3))   UNION SELECT DISTINCT date * 1000 AS normalized_date, pdu._id, read   FROM pdu LEFT JOIN pending_msgs ON pdu._id = pending_msgs.msg_id   WHERE ((read=1) AND thread_id = new.thread_id AND msg_box != 3 AND (msg_box != 3         AND (m_type = 128 OR m_type = 132 OR m_type = 130)))   UNION SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM cellbroadcast    WHERE ((read=1) AND thread_id = new.thread_id) ORDER BY normalized_date ASC))    WHERE threads._id = new.thread_id;  END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2807
    const-string v0, "CREATE TRIGGER sms_update_thread_date_subject_on_update AFTER  UPDATE OF date, body, type  ON sms BEGIN  UPDATE threads SET    date = new.date,     date_sent = new.date_sent,     snippet = new.body,     snippet_cs = 0  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE ((SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id) +          (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128)))       WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;   UPDATE threads SET readcount =   (SELECT count(_id)FROM   (SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM sms     WHERE ((read=1) AND thread_id = new.thread_id AND (type != 3))   UNION SELECT DISTINCT date * 1000 AS normalized_date, pdu._id, read   FROM pdu LEFT JOIN pending_msgs ON pdu._id = pending_msgs.msg_id   WHERE ((read=1) AND thread_id = new.thread_id AND msg_box != 3 AND (msg_box != 3         AND (m_type = 128 OR m_type = 132 OR m_type = 130)))   UNION SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM cellbroadcast    WHERE ((read=1) AND thread_id = new.thread_id) ORDER BY normalized_date ASC))    WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2811
    const-string v0, "CREATE TRIGGER pdu_update_thread_on_delete AFTER DELETE ON pdu BEGIN   UPDATE threads SET      date = (strftime(\'%s\',\'now\') * 1000)  WHERE threads._id = old.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = old.thread_id;   UPDATE threads SET readcount =   (SELECT count(_id) FROM   (SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM sms     WHERE ((read=1) AND thread_id = old.thread_id AND (type != 3))   UNION SELECT DISTINCT date * 1000 AS normalized_date, pdu._id, read   FROM pdu LEFT JOIN pending_msgs ON pdu._id = pending_msgs.msg_id   WHERE ((read=1) AND thread_id = old.thread_id AND msg_box != 3 AND (msg_box != 3         AND (m_type = 128 OR m_type = 132 OR m_type = 130)))   UNION SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM cellbroadcast    WHERE ((read=1) AND thread_id = old.thread_id) ORDER BY normalized_date ASC))    WHERE threads._id = old.thread_id;   UPDATE threads SET snippet =    (SELECT snippet FROM     (SELECT date * 1000 AS date, sub AS snippet, thread_id FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128      UNION SELECT date, body AS snippet, thread_id FROM sms)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET snippet_cs =    (SELECT snippet_cs FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET date_sent =    (SELECT date_sent FROM     (SELECT date_sent * 1000 as date_sent, date * 1000 AS date, thread_id FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128      UNION SELECT date_sent, date, thread_id FROM sms)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2821
    const-string v0, "CREATE TRIGGER sms_update_thread_on_delete AFTER DELETE ON sms BEGIN   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = old.thread_id;   UPDATE threads SET readcount =   (SELECT count(_id) FROM   (SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM sms     WHERE ((read=1) AND thread_id = old.thread_id AND (type != 3))   UNION SELECT DISTINCT date * 1000 AS normalized_date, pdu._id, read   FROM pdu LEFT JOIN pending_msgs ON pdu._id = pending_msgs.msg_id   WHERE ((read=1) AND thread_id = old.thread_id AND msg_box != 3 AND (msg_box != 3         AND (m_type = 128 OR m_type = 132 OR m_type = 130)))   UNION SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM cellbroadcast    WHERE ((read=1) AND thread_id = old.thread_id) ORDER BY normalized_date ASC))    WHERE threads._id = old.thread_id;   UPDATE threads SET date_sent =    (SELECT date_sent FROM     (SELECT date_sent * 1000 as date_sent, date * 1000 AS date, thread_id FROM pdu WHERE m_type=132 OR m_type=130 OR m_type=128      UNION SELECT date_sent, date, thread_id FROM sms)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2834
    const-string v0, "CREATE TRIGGER sms_update_thread_on_add AFTER  UPDATE OF thread_id ON sms BEGIN UPDATE threads SET date = (SELECT max(date) as date FROM (SELECT date * 1000 as date FROM pdu WHERE (thread_id = new.thread_id AND m_type=132 OR m_type=130 OR m_type=128) UNION SELECT date FROM sms WHERE (thread_id = new.thread_id))) WHERE _id = new.thread_id;UPDATE threads SET date_sent = (SELECT max(date_sent) as date_sent FROM (SELECT date_sent * 1000 as date_sent FROM pdu WHERE (thread_id = new.thread_id AND m_type=132 OR m_type=130 OR m_type=128) UNION SELECT date_sent FROM sms WHERE (thread_id = new.thread_id))) WHERE _id = new.thread_id;UPDATE threads SET message_count = (SELECT count(_id) FROM (SELECT _id FROM sms WHERE thread_id = new.thread_id UNION SELECT _id FROM pdu WHERE thread_id = new.thread_id)) WHERE _id = new.thread_id;UPDATE threads SET readcount = (SELECT count(_id) FROM (SELECT _id FROM sms WHERE (thread_id = new.thread_id AND (read = 1) AND (type != 3)) UNION SELECT _id FROM pdu WHERE (thread_id = new.thread_id AND read = 1 AND msg_box != 3))) WHERE _id = new.thread_id;UPDATE threads SET snippet = (SELECT snippet FROM (SELECT max(date), snippet FROM (SELECT max(date) * 1000 as date, sub as snippet FROM pdu WHERE (thread_id = new.thread_id AND m_type=132 OR m_type=130 OR m_type=128) UNION SELECT max(date), body as snippet FROM sms WHERE (thread_id = new.thread_id)) WHERE snippet is not null)) WHERE _id = new.thread_id;UPDATE threads SET snippet_cs = (SELECT snippet_cs FROM (SELECT max(date), snippet_cs FROM (SELECT max(date) * 1000 as date, sub_cs as snippet_cs FROM pdu WHERE (thread_id = new.thread_id AND m_type=132 OR m_type=130 OR m_type=128) UNION SELECT max(date), 0 as snippet_cs FROM sms WHERE (thread_id = new.thread_id)))) WHERE _id = new.thread_id;UPDATE threads SET error = (SELECT count(_id) FROM (SELECT _id FROM sms WHERE thread_id = new.thread_id and type = 5 UNION SELECT _id FROM pdu WHERE thread_id = new.thread_id and st = 135)) WHERE _id = new.thread_id;END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2838
    const-string v0, "CREATE TRIGGER sms_update_thread_on_split AFTER  UPDATE OF thread_id ON sms BEGIN UPDATE threads SET date = (SELECT max(date) as date FROM (SELECT date * 1000 as date FROM pdu WHERE (thread_id = old.thread_id AND m_type=132 OR m_type=130 OR m_type=128) UNION SELECT date FROM sms WHERE (thread_id = old.thread_id))) WHERE _id = old.thread_id;UPDATE threads SET date_sent = (SELECT max(date_sent) as date_sent FROM (SELECT date_sent * 1000 as date_sent FROM pdu WHERE (thread_id = old.thread_id AND m_type=132 OR m_type=130 OR m_type=128) UNION SELECT date_sent FROM sms WHERE (thread_id = old.thread_id))) WHERE _id = old.thread_id;UPDATE threads SET message_count = (SELECT count(_id) FROM (SELECT _id FROM sms WHERE thread_id = old.thread_id UNION SELECT _id FROM pdu WHERE thread_id = old.thread_id)) WHERE _id = old.thread_id;UPDATE threads SET readcount = (SELECT count(_id) FROM (SELECT _id FROM sms WHERE (thread_id = old.thread_id AND (read = 1) AND (type != 3)) UNION SELECT _id FROM pdu WHERE (thread_id = old.thread_id AND read = 1 AND msg_box != 3))) WHERE _id = old.thread_id;UPDATE threads SET snippet = (SELECT snippet FROM (SELECT max(date), snippet FROM (SELECT max(date) * 1000 as date, sub as snippet FROM pdu WHERE (thread_id = old.thread_id AND m_type=132 OR m_type=130 OR m_type=128) UNION SELECT max(date), body as snippet FROM sms WHERE (thread_id = old.thread_id)) WHERE snippet is not null)) WHERE _id = old.thread_id;UPDATE threads SET snippet_cs = (SELECT snippet_cs FROM (SELECT max(date), snippet_cs FROM (SELECT max(date) * 1000 as date, sub_cs as snippet_cs FROM pdu WHERE (thread_id = old.thread_id AND m_type=132 OR m_type=130 OR m_type=128) UNION SELECT max(date), 0 as snippet_cs FROM sms WHERE (thread_id = old.thread_id)))) WHERE _id = old.thread_id;UPDATE threads SET error = (SELECT count(_id) FROM (SELECT _id FROM sms WHERE thread_id = old.thread_id and type = 5 UNION SELECT pdu._id FROM pdu WHERE thread_id = old.thread_id and st = 135)) WHERE _id = old.thread_id;END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2841
    return-void
.end method

.method private upgradeDatabaseToVersion560300(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 2848
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_on_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2849
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_on_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2850
    return-void
.end method

.method private upgradePartTableToAutoIncrement(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 3221
    const-string v0, "part"

    invoke-direct {p0, p1, v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->hasAutoIncrement(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3222
    const-string v0, "Mms/Provider/MmsSmsDatabaseHelper"

    const-string v1, "[MmsSmsDb] upgradePartTableToAutoIncrement: already upgraded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3252
    :goto_0
    return-void

    .line 3225
    :cond_0
    const-string v0, "Mms/Provider/MmsSmsDatabaseHelper"

    const-string v1, "[MmsSmsDb] upgradePartTableToAutoIncrement: upgrading"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3230
    const-string v0, "CREATE TABLE part_temp (_id INTEGER PRIMARY KEY AUTOINCREMENT,mid INTEGER,seq INTEGER DEFAULT 0,ct TEXT,name TEXT,chset INTEGER,cd TEXT,fn TEXT,cid TEXT,cl TEXT,ctt_s INTEGER,ctt_t TEXT,_data TEXT,text TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3246
    const-string v0, "INSERT INTO part_temp SELECT * from part;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3247
    const-string v0, "DROP TABLE part;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3248
    const-string v0, "ALTER TABLE part_temp RENAME TO part;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3251
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createMmsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method

.method private upgradePduTableToAutoIncrement(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 3259
    const-string v0, "pdu"

    invoke-direct {p0, p1, v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->hasAutoIncrement(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3260
    const-string v0, "Mms/Provider/MmsSmsDatabaseHelper"

    const-string v1, "[MmsSmsDb] upgradePduTableToAutoIncrement: already upgraded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3317
    :goto_0
    return-void

    .line 3263
    :cond_0
    const-string v0, "Mms/Provider/MmsSmsDatabaseHelper"

    const-string v1, "[MmsSmsDb] upgradePduTableToAutoIncrement: upgrading"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3268
    const-string v0, "CREATE TABLE pdu_temp (_id INTEGER PRIMARY KEY AUTOINCREMENT,thread_id INTEGER,date INTEGER,date_sent INTEGER DEFAULT 0,msg_box INTEGER,read INTEGER DEFAULT 0,m_id TEXT,sub TEXT,sub_cs INTEGER,ct_t TEXT,ct_l TEXT,exp INTEGER,m_cls TEXT,m_type INTEGER,v INTEGER,m_size INTEGER,pri INTEGER,rr INTEGER,rpt_a INTEGER,resp_st INTEGER,st INTEGER,st_ext INTEGER DEFAULT 0,tr_id TEXT,retr_st INTEGER,retr_txt TEXT,retr_txt_cs INTEGER,read_status INTEGER,ct_cls INTEGER,resp_txt TEXT,d_tm INTEGER,d_rpt INTEGER,locked INTEGER DEFAULT 0,sim_id INTEGER DEFAULT -1,service_center TEXT,seen INTEGER DEFAULT 0,text_only INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3311
    const-string v0, "INSERT INTO pdu_temp SELECT * from pdu;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3312
    const-string v0, "DROP TABLE pdu;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3313
    const-string v0, "ALTER TABLE pdu_temp RENAME TO pdu;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3316
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createMmsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method

.method private upgradeThreadsTableToAutoIncrement(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 2996
    const-string v0, "threads"

    invoke-direct {p0, p1, v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->hasAutoIncrement(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2997
    const-string v0, "Mms/Provider/MmsSmsDatabaseHelper"

    const-string v1, "[MmsSmsDb] upgradeThreadsTableToAutoIncrement: already upgraded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3031
    :goto_0
    return-void

    .line 3000
    :cond_0
    const-string v0, "Mms/Provider/MmsSmsDatabaseHelper"

    const-string v1, "[MmsSmsDb] upgradeThreadsTableToAutoIncrement: upgrading"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3005
    const-string v0, "CREATE TABLE threads_temp (_id INTEGER PRIMARY KEY AUTOINCREMENT,date INTEGER DEFAULT 0,date_sent INTEGER DEFAULT 0,message_count INTEGER DEFAULT 0,readcount INTEGER DEFAULT 0,recipient_ids TEXT,snippet TEXT,snippet_cs INTEGER DEFAULT 0,read INTEGER DEFAULT 1,type INTEGER DEFAULT 0,error INTEGER DEFAULT 0,has_attachment INTEGER DEFAULT 0,li_date INTEGER DEFAULT 0,li_snippet TEXT,li_snippet_cs INTEGER DEFAULT 0,status INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3028
    const-string v0, "INSERT INTO threads_temp SELECT * from threads;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3029
    const-string v0, "DROP TABLE threads;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3030
    const-string v0, "ALTER TABLE threads_temp RENAME TO threads;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 14

    .prologue
    .line 2855
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 2857
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-boolean v11, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->sTriedAutoIncrement:Z

    if-nez v11, :cond_4

    .line 2858
    const/4 v11, 0x1

    sput-boolean v11, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->sTriedAutoIncrement:Z

    .line 2859
    const-string v11, "threads"

    invoke-direct {p0, v4, v11}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->hasAutoIncrement(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v9

    .line 2860
    .local v9, hasAutoIncrementThreads:Z
    const-string v11, "canonical_addresses"

    invoke-direct {p0, v4, v11}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->hasAutoIncrement(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v6

    .line 2861
    .local v6, hasAutoIncrementAddresses:Z
    const-string v11, "part"

    invoke-direct {p0, v4, v11}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->hasAutoIncrement(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v7

    .line 2862
    .local v7, hasAutoIncrementPart:Z
    const-string v11, "pdu"

    invoke-direct {p0, v4, v11}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->hasAutoIncrement(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v8

    .line 2863
    .local v8, hasAutoIncrementPdu:Z
    const-string v11, "Mms/Provider/MmsSmsDatabaseHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[getWritableDatabase] hasAutoIncrementThreads: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " hasAutoIncrementAddresses: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " hasAutoIncrementPart: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " hasAutoIncrementPdu: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2867
    const/4 v3, 0x1

    .line 2868
    .local v3, autoIncrementThreadsSuccess:Z
    const/4 v0, 0x1

    .line 2869
    .local v0, autoIncrementAddressesSuccess:Z
    const/4 v1, 0x1

    .line 2870
    .local v1, autoIncrementPartSuccess:Z
    const/4 v2, 0x1

    .line 2871
    .local v2, autoIncrementPduSuccess:Z
    if-nez v9, :cond_0

    .line 2872
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2879
    :try_start_1
    invoke-direct {p0, v4}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeThreadsTableToAutoIncrement(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2880
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 2885
    :try_start_2
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2888
    :cond_0
    :goto_0
    if-nez v6, :cond_1

    .line 2889
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2896
    :try_start_3
    invoke-direct {p0, v4}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeAddressTableToAutoIncrement(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2897
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 2903
    :try_start_4
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2906
    :cond_1
    :goto_1
    if-nez v7, :cond_2

    .line 2907
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2914
    :try_start_5
    invoke-direct {p0, v4}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradePartTableToAutoIncrement(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2915
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    .line 2921
    :try_start_6
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2924
    :cond_2
    :goto_2
    if-nez v8, :cond_3

    .line 2925
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2932
    :try_start_7
    invoke-direct {p0, v4}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradePduTableToAutoIncrement(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2933
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    .line 2939
    :try_start_8
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2942
    :cond_3
    :goto_3
    if-eqz v3, :cond_5

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    .line 2944
    iget-object v11, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mLowStorageMonitor:Lcom/android/providers/telephony/MmsSmsDatabaseHelper$LowStorageMonitor;

    if-eqz v11, :cond_4

    .line 2946
    const-string v11, "Mms/Provider/MmsSmsDatabaseHelper"

    const-string v12, "Unregistering mLowStorageMonitor - we\'ve upgraded"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2947
    iget-object v11, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mLowStorageMonitor:Lcom/android/providers/telephony/MmsSmsDatabaseHelper$LowStorageMonitor;

    invoke-virtual {v11, v12}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2948
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mLowStorageMonitor:Lcom/android/providers/telephony/MmsSmsDatabaseHelper$LowStorageMonitor;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2967
    .end local v0           #autoIncrementAddressesSuccess:Z
    .end local v1           #autoIncrementPartSuccess:Z
    .end local v2           #autoIncrementPduSuccess:Z
    .end local v3           #autoIncrementThreadsSuccess:Z
    .end local v6           #hasAutoIncrementAddresses:Z
    .end local v7           #hasAutoIncrementPart:Z
    .end local v8           #hasAutoIncrementPdu:Z
    .end local v9           #hasAutoIncrementThreads:Z
    :cond_4
    :goto_4
    monitor-exit p0

    return-object v4

    .line 2881
    .restart local v0       #autoIncrementAddressesSuccess:Z
    .restart local v1       #autoIncrementPartSuccess:Z
    .restart local v2       #autoIncrementPduSuccess:Z
    .restart local v3       #autoIncrementThreadsSuccess:Z
    .restart local v6       #hasAutoIncrementAddresses:Z
    .restart local v7       #hasAutoIncrementPart:Z
    .restart local v8       #hasAutoIncrementPdu:Z
    .restart local v9       #hasAutoIncrementThreads:Z
    :catch_0
    move-exception v5

    .line 2882
    .local v5, ex:Ljava/lang/Throwable;
    :try_start_9
    const-string v11, "Mms/Provider/MmsSmsDatabaseHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to add autoIncrement to threads;: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 2883
    const/4 v3, 0x0

    .line 2885
    :try_start_a
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_0

    .line 2855
    .end local v0           #autoIncrementAddressesSuccess:Z
    .end local v1           #autoIncrementPartSuccess:Z
    .end local v2           #autoIncrementPduSuccess:Z
    .end local v3           #autoIncrementThreadsSuccess:Z
    .end local v4           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v5           #ex:Ljava/lang/Throwable;
    .end local v6           #hasAutoIncrementAddresses:Z
    .end local v7           #hasAutoIncrementPart:Z
    .end local v8           #hasAutoIncrementPdu:Z
    .end local v9           #hasAutoIncrementThreads:Z
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 2885
    .restart local v0       #autoIncrementAddressesSuccess:Z
    .restart local v1       #autoIncrementPartSuccess:Z
    .restart local v2       #autoIncrementPduSuccess:Z
    .restart local v3       #autoIncrementThreadsSuccess:Z
    .restart local v4       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v6       #hasAutoIncrementAddresses:Z
    .restart local v7       #hasAutoIncrementPart:Z
    .restart local v8       #hasAutoIncrementPdu:Z
    .restart local v9       #hasAutoIncrementThreads:Z
    :catchall_1
    move-exception v11

    :try_start_b
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v11
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 2898
    :catch_1
    move-exception v5

    .line 2899
    .restart local v5       #ex:Ljava/lang/Throwable;
    :try_start_c
    const-string v11, "Mms/Provider/MmsSmsDatabaseHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to add autoIncrement to canonical_addresses: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 2901
    const/4 v0, 0x0

    .line 2903
    :try_start_d
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_1

    .end local v5           #ex:Ljava/lang/Throwable;
    :catchall_2
    move-exception v11

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v11
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 2916
    :catch_2
    move-exception v5

    .line 2917
    .restart local v5       #ex:Ljava/lang/Throwable;
    :try_start_e
    const-string v11, "Mms/Provider/MmsSmsDatabaseHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to add autoIncrement to part: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 2919
    const/4 v1, 0x0

    .line 2921
    :try_start_f
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_2

    .end local v5           #ex:Ljava/lang/Throwable;
    :catchall_3
    move-exception v11

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v11
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 2934
    :catch_3
    move-exception v5

    .line 2935
    .restart local v5       #ex:Ljava/lang/Throwable;
    :try_start_10
    const-string v11, "Mms/Provider/MmsSmsDatabaseHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to add autoIncrement to pdu: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 2937
    const/4 v2, 0x0

    .line 2939
    :try_start_11
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_3

    .end local v5           #ex:Ljava/lang/Throwable;
    :catchall_4
    move-exception v11

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v11

    .line 2951
    :cond_5
    sget-boolean v11, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->sFakeLowStorageTest:Z

    if-eqz v11, :cond_6

    .line 2952
    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->sFakeLowStorageTest:Z

    .line 2957
    :cond_6
    iget-object v11, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mLowStorageMonitor:Lcom/android/providers/telephony/MmsSmsDatabaseHelper$LowStorageMonitor;

    if-nez v11, :cond_4

    .line 2958
    const-string v11, "Mms/Provider/MmsSmsDatabaseHelper"

    const-string v12, "[getWritableDatabase] turning on storage monitor"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2959
    new-instance v11, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$LowStorageMonitor;

    invoke-direct {v11, p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$LowStorageMonitor;-><init>(Lcom/android/providers/telephony/MmsSmsDatabaseHelper;)V

    iput-object v11, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mLowStorageMonitor:Lcom/android/providers/telephony/MmsSmsDatabaseHelper$LowStorageMonitor;

    .line 2960
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    .line 2961
    .local v10, intentFilter:Landroid/content/IntentFilter;
    const-string v11, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v10, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2962
    const-string v11, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v10, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2963
    iget-object v11, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mLowStorageMonitor:Lcom/android/providers/telephony/MmsSmsDatabaseHelper$LowStorageMonitor;

    invoke-virtual {v11, v12, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_4
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 993
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createWapPushTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 996
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createMmsTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 997
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createSmsTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 998
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createCommonTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1000
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createCBTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1002
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createThreadSettingsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1003
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createCommonTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1004
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createMmsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1005
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createWordsTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1006
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createIndices(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1008
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createQuickText(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1016
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "db"
    .parameter "oldVersion"
    .parameter "currentVersion"

    .prologue
    .line 2247
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->dropAll(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2248
    invoke-virtual {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2249
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4
    .parameter "db"
    .parameter "oldVersion"
    .parameter "currentVersion"

    .prologue
    .line 1872
    const-string v1, "Mms/Provider/MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upgrading database from version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    sparse-switch p2, :sswitch_data_0

    .line 2240
    :goto_0
    const-string v1, "Mms/Provider/MmsSmsDatabaseHelper"

    const-string v2, "Destroying all old data."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2241
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->dropAll(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2242
    invoke-virtual {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2243
    :cond_0
    :goto_1
    return-void

    .line 1877
    :sswitch_0
    const/16 v1, 0x28

    if-le p3, v1, :cond_0

    .line 1881
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1883
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion41(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1884
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1889
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1893
    :sswitch_1
    const/16 v1, 0x29

    if-le p3, v1, :cond_0

    .line 1897
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1899
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion42(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1900
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1905
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1909
    :sswitch_2
    const/16 v1, 0x2a

    if-le p3, v1, :cond_0

    .line 1913
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1915
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion43(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1916
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 1921
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1925
    :sswitch_3
    const/16 v1, 0x2b

    if-le p3, v1, :cond_0

    .line 1929
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1931
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion44(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1932
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 1937
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1941
    :sswitch_4
    const/16 v1, 0x2c

    if-le p3, v1, :cond_0

    .line 1945
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1947
    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion45(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1948
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    .line 1953
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1957
    :sswitch_5
    const/16 v1, 0x2d

    if-le p3, v1, :cond_0

    .line 1960
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1962
    :try_start_5
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion46(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1963
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    .line 1968
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1972
    :sswitch_6
    const/16 v1, 0x2e

    if-le p3, v1, :cond_0

    .line 1976
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1978
    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion47(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1979
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    .line 1984
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1988
    :sswitch_7
    const/16 v1, 0x2f

    if-le p3, v1, :cond_0

    .line 1992
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1994
    :try_start_7
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion48(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1995
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7

    .line 2000
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2004
    :sswitch_8
    const/16 v1, 0x30

    if-le p3, v1, :cond_0

    .line 2008
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2010
    :try_start_8
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createWordsTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2011
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8

    .line 2016
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2020
    :sswitch_9
    const/16 v1, 0x31

    if-le p3, v1, :cond_0

    .line 2023
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2025
    :try_start_9
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createThreadIdIndex(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2026
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_9

    .line 2031
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2035
    :sswitch_a
    const/16 v1, 0x32

    if-le p3, v1, :cond_0

    .line 2039
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2041
    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion51(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2042
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_a

    .line 2047
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2051
    :sswitch_b
    const/16 v1, 0x33

    if-le p3, v1, :cond_0

    .line 2057
    :sswitch_c
    const/16 v1, 0x34

    if-le p3, v1, :cond_0

    .line 2061
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2063
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion53(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2064
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_b

    .line 2069
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2073
    :sswitch_d
    const/16 v1, 0x35

    if-le p3, v1, :cond_0

    .line 2077
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2080
    :try_start_c
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion530100(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2081
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_c

    .line 2086
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2091
    :sswitch_e
    const v1, 0x816b4

    if-le p3, v1, :cond_0

    .line 2094
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2096
    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion530200(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2097
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_d

    .line 2102
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2106
    :sswitch_f
    const v1, 0x81718

    if-le p3, v1, :cond_0

    .line 2110
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2112
    :try_start_e
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion530300(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2113
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_e

    .line 2118
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2122
    :sswitch_10
    const v1, 0x8177c

    if-le p3, v1, :cond_0

    .line 2126
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2128
    :try_start_f
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion540000(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2129
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_f

    .line 2134
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2139
    :sswitch_11
    const v1, 0x83d60

    if-le p3, v1, :cond_0

    .line 2143
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2145
    :try_start_10
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion550000(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2146
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_10

    .line 2151
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2156
    :sswitch_12
    const v1, 0x86470

    if-le p3, v1, :cond_0

    .line 2160
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2162
    :try_start_11
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion550100(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2163
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_11

    .line 2168
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2172
    :sswitch_13
    const v1, 0x864d4

    if-le p3, v1, :cond_0

    .line 2176
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2178
    :try_start_12
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion560000(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2179
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_12

    .line 2184
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2187
    :sswitch_14
    const v1, 0x88b80

    if-le p3, v1, :cond_0

    .line 2205
    :sswitch_15
    const v1, 0x88be4

    if-le p3, v1, :cond_0

    .line 2208
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2210
    :try_start_13
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion560200(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2211
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_13

    .line 2216
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2221
    :sswitch_16
    const v1, 0x88c48

    if-le p3, v1, :cond_0

    .line 2224
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2226
    :try_start_14
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion560300(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2227
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_14

    .line 2232
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_1

    .line 1885
    :catch_0
    move-exception v0

    .line 1886
    .local v0, ex:Ljava/lang/Throwable;
    :try_start_15
    const-string v1, "Mms/Provider/MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 1889
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 1901
    :catch_1
    move-exception v0

    .line 1902
    .restart local v0       #ex:Ljava/lang/Throwable;
    :try_start_16
    const-string v1, "Mms/Provider/MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 1905
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_1
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 1917
    :catch_2
    move-exception v0

    .line 1918
    .restart local v0       #ex:Ljava/lang/Throwable;
    :try_start_17
    const-string v1, "Mms/Provider/MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 1921
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_2
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 1933
    :catch_3
    move-exception v0

    .line 1934
    .restart local v0       #ex:Ljava/lang/Throwable;
    :try_start_18
    const-string v1, "Mms/Provider/MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    .line 1937
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_3
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 1949
    :catch_4
    move-exception v0

    .line 1950
    .restart local v0       #ex:Ljava/lang/Throwable;
    :try_start_19
    const-string v1, "Mms/Provider/MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    .line 1953
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_4
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 1964
    :catch_5
    move-exception v0

    .line 1965
    .restart local v0       #ex:Ljava/lang/Throwable;
    :try_start_1a
    const-string v1, "Mms/Provider/MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    .line 1968
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_5
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 1980
    :catch_6
    move-exception v0

    .line 1981
    .restart local v0       #ex:Ljava/lang/Throwable;
    :try_start_1b
    const-string v1, "Mms/Provider/MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    .line 1984
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_6
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 1996
    :catch_7
    move-exception v0

    .line 1997
    .restart local v0       #ex:Ljava/lang/Throwable;
    :try_start_1c
    const-string v1, "Mms/Provider/MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    .line 2000
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_7
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 2012
    :catch_8
    move-exception v0

    .line 2013
    .restart local v0       #ex:Ljava/lang/Throwable;
    :try_start_1d
    const-string v1, "Mms/Provider/MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_8

    .line 2016
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_8
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 2027
    :catch_9
    move-exception v0

    .line 2028
    .restart local v0       #ex:Ljava/lang/Throwable;
    :try_start_1e
    const-string v1, "Mms/Provider/MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_9

    .line 2031
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_9
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 2043
    :catch_a
    move-exception v0

    .line 2044
    .restart local v0       #ex:Ljava/lang/Throwable;
    :try_start_1f
    const-string v1, "Mms/Provider/MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_a

    .line 2047
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_a
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 2065
    :catch_b
    move-exception v0

    .line 2066
    .restart local v0       #ex:Ljava/lang/Throwable;
    :try_start_20
    const-string v1, "Mms/Provider/MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_b

    .line 2069
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_b
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 2082
    :catch_c
    move-exception v0

    .line 2083
    .restart local v0       #ex:Ljava/lang/Throwable;
    :try_start_21
    const-string v1, "Mms/Provider/MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_c

    .line 2086
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_c
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 2098
    :catch_d
    move-exception v0

    .line 2099
    .restart local v0       #ex:Ljava/lang/Throwable;
    :try_start_22
    const-string v1, "Mms/Provider/MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_d

    .line 2102
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_d
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 2114
    :catch_e
    move-exception v0

    .line 2115
    .restart local v0       #ex:Ljava/lang/Throwable;
    :try_start_23
    const-string v1, "Mms/Provider/MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_e

    .line 2118
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_e
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 2130
    :catch_f
    move-exception v0

    .line 2131
    .restart local v0       #ex:Ljava/lang/Throwable;
    :try_start_24
    const-string v1, "Mms/Provider/MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_f

    .line 2134
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_f
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 2147
    :catch_10
    move-exception v0

    .line 2148
    .restart local v0       #ex:Ljava/lang/Throwable;
    :try_start_25
    const-string v1, "Mms/Provider/MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_10

    .line 2151
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_10
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 2164
    :catch_11
    move-exception v0

    .line 2165
    .restart local v0       #ex:Ljava/lang/Throwable;
    :try_start_26
    const-string v1, "Mms/Provider/MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_11

    .line 2168
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_11
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 2180
    :catch_12
    move-exception v0

    .line 2181
    .restart local v0       #ex:Ljava/lang/Throwable;
    :try_start_27
    const-string v1, "Mms/Provider/MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_12

    .line 2184
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_12
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 2212
    :catch_13
    move-exception v0

    .line 2213
    .restart local v0       #ex:Ljava/lang/Throwable;
    :try_start_28
    const-string v1, "Mms/Provider/MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_13

    .line 2216
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_13
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 2228
    :catch_14
    move-exception v0

    .line 2229
    .restart local v0       #ex:Ljava/lang/Throwable;
    :try_start_29
    const-string v1, "Mms/Provider/MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_14

    .line 2232
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_14
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 1875
    :sswitch_data_0
    .sparse-switch
        0x28 -> :sswitch_0
        0x29 -> :sswitch_1
        0x2a -> :sswitch_2
        0x2b -> :sswitch_3
        0x2c -> :sswitch_4
        0x2d -> :sswitch_5
        0x2e -> :sswitch_6
        0x2f -> :sswitch_7
        0x30 -> :sswitch_8
        0x31 -> :sswitch_9
        0x32 -> :sswitch_a
        0x33 -> :sswitch_b
        0x34 -> :sswitch_c
        0x35 -> :sswitch_d
        0x816b4 -> :sswitch_e
        0x81718 -> :sswitch_f
        0x8177c -> :sswitch_10
        0x83d60 -> :sswitch_11
        0x86470 -> :sswitch_12
        0x864d4 -> :sswitch_13
        0x88b80 -> :sswitch_14
        0x88be4 -> :sswitch_15
        0x88c48 -> :sswitch_16
    .end sparse-switch
.end method
