.class Lcom/android/providers/telephony/CbDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "CbDatabaseHelper.java"


# static fields
.field static final ADDRESS_TABLE:Ljava/lang/String; = "address"

.field static final CBMESSAGE_TABLE:Ljava/lang/String; = "messages"

.field private static final CB_UPDATE_THREAD_DATE_SNIPPET_COUNT_ON_UPDATE:Ljava/lang/String; = "BEGIN  UPDATE threads SET    date = (strftime(\'%s\',\'now\') * 1000),     snippet = new.body   WHERE threads._id = new.thread_id;   UPDATE threads SET msg_count =      (SELECT COUNT(messages._id) FROM messages LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id )  WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM messages          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

.field private static final CB_UPDATE_THREAD_READ_BODY:Ljava/lang/String; = "  UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM messages          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; "

.field static final CHANNEL_TABLE:Ljava/lang/String; = "channel"

.field static final CHANNEL_TABLE1:Ljava/lang/String; = "channel1"

.field static final CHANNEL_TABLE2:Ljava/lang/String; = "channel2"

.field static final CHANNEL_TABLE3:Ljava/lang/String; = "channel3"

.field static final CONVERSATION_TABLE:Ljava/lang/String; = "threads"

.field static final DATABASE_NAME:Ljava/lang/String; = "cb.db"

.field private static final SMS_UPDATE_THREAD_READ_BODY:Ljava/lang/String; = "  UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM messages          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; "

.field private static final UPDATE_THREAD_COUNT_ON_NEW:Ljava/lang/String; = "  UPDATE threads SET msg_count =      (SELECT COUNT(messages._id) FROM messages LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id )  WHERE threads._id = new.thread_id; "

.field private static final UPDATE_THREAD_COUNT_ON_OLD:Ljava/lang/String; = "  UPDATE threads SET msg_count =      (SELECT COUNT(messages._id) FROM messages LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id)  WHERE threads._id = old.thread_id; "

.field private static final UPDATE_THREAD_DATE_ON_DELETE:Ljava/lang/String; = "  UPDATE threads SET date =    (SELECT date FROM     (SELECT date, body, thread_id FROM messages)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id; "

.field private static final UPDATE_THREAD_SNIPPET_ON_DELETE:Ljava/lang/String; = "  UPDATE threads SET snippet =    (SELECT body FROM     (SELECT date, body, thread_id FROM messages)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id; "


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 134
    const-string v0, "cb.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 135
    iput-object p1, p0, Lcom/android/providers/telephony/CbDatabaseHelper;->mContext:Landroid/content/Context;

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0
    .parameter "context"
    .parameter "name"
    .parameter "factory"
    .parameter "version"

    .prologue
    .line 140
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 141
    iput-object p1, p0, Lcom/android/providers/telephony/CbDatabaseHelper;->mContext:Landroid/content/Context;

    .line 142
    return-void
.end method

.method private createCommonTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 189
    const-string v0, "CREATE TRIGGER cb_update_thread_on_insert AFTER INSERT ON messages BEGIN  UPDATE threads SET    date = (strftime(\'%s\',\'now\') * 1000),     snippet = new.body   WHERE threads._id = new.thread_id;   UPDATE threads SET msg_count =      (SELECT COUNT(messages._id) FROM messages LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id )  WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM messages          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 191
    const-string v0, "CREATE TRIGGER cb_update_thread_read_on_update AFTER  UPDATE OF read  ON messages BEGIN   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM messages          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 195
    const-string v0, "CREATE TRIGGER cb_update_thread_on_delete AFTER DELETE ON messages BEGIN   UPDATE threads SET      date = (strftime(\'%s\',\'now\') * 1000)  WHERE threads._id = old.thread_id;   UPDATE threads SET msg_count =      (SELECT COUNT(messages._id) FROM messages LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id)  WHERE threads._id = old.thread_id;   UPDATE threads SET snippet =    (SELECT body FROM     (SELECT date, body, thread_id FROM messages)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET date =    (SELECT date FROM     (SELECT date, body, thread_id FROM messages)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method private createTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 145
    const-string v0, "CREATE TABLE channel(_id INTEGER PRIMARY KEY,name TEXT,number TEXT,enable BOOLEAN);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 149
    const-string v0, "CREATE TABLE channel1(_id INTEGER PRIMARY KEY,name TEXT,number TEXT,enable BOOLEAN);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 153
    const-string v0, "CREATE TABLE channel2(_id INTEGER PRIMARY KEY,name TEXT,number TEXT,enable BOOLEAN);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 157
    const-string v0, "CREATE TABLE channel3(_id INTEGER PRIMARY KEY,name TEXT,number TEXT,enable BOOLEAN);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 161
    const-string v0, "CREATE TABLE messages(_id INTEGER PRIMARY KEY,sim_id INTEGER,body TEXT,channel_id INTEGER,thread_id INTEGER,read INTEGER DEFAULT 0,date_sent INTEGER DEFAULT 0,date INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 166
    const-string v0, "CREATE TABLE threads(_id INTEGER PRIMARY KEY,date INTEGER,msg_count INTEGER,address_id INTEGER,read INTEGER DEFAULT 0,snippet TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 170
    const-string v0, "CREATE TABLE address(_id INTEGER PRIMARY KEY,address TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 177
    const-string v0, "CREATE TABLE cbraw (_id INTEGER PRIMARY KEY,msgID INTEGER,serialNum INTEGER,sequence INTEGER,count INTEGER,pdu TEXT,sim_id INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public static updateAllThreads(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .parameter "db"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 231
    if-nez p1, :cond_0

    .line 232
    const-string p1, ""

    .line 237
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT _id FROM threads WHERE _id NOT IN (SELECT DISTINCT thread_id FROM messages "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, query:Ljava/lang/String;
    invoke-virtual {p0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 240
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 241
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 242
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    invoke-static {p0, v2, v3}, Lcom/android/providers/telephony/CbDatabaseHelper;->updateThread(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_1

    .line 234
    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #query:Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WHERE ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 244
    .restart local v0       #c:Landroid/database/Cursor;
    .restart local v1       #query:Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 246
    :cond_2
    return-void
.end method

.method public static updateThread(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 6
    .parameter "db"
    .parameter "thread_id"

    .prologue
    const/4 v3, 0x0

    .line 219
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    .line 220
    invoke-static {p0, v3, v3}, Lcom/android/providers/telephony/CbDatabaseHelper;->updateAllThreads(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 227
    :goto_0
    return-void

    .line 224
    :cond_0
    const-string v1, "threads"

    const-string v2, "_id = ? AND _id NOT IN          (SELECT thread_id FROM messages)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 227
    .local v0, rows:I
    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/CbDatabaseHelper;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 210
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/CbDatabaseHelper;->createCommonTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 211
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 216
    return-void
.end method
