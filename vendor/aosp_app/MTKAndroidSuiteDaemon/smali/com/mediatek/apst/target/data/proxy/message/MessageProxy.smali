.class public final Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;
.super Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;
.source "MessageProxy.java"


# static fields
.field private static final COLUMN_DATE:I = 0x1

.field private static final COLUMN_ID:I = 0x0

.field private static final COLUMN_LOCK:I = 0x2

.field private static final COLUMN_READ:I = 0x3

.field private static final COLUMN_SERVICECENTER:I = 0x4

.field private static final COLUMN_SIMID:I = 0x6

.field private static final COLUMN_SUBJECT:I = 0x6

.field private static final COLUMN_THREADID:I = 0x5

.field private static sInstance:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->sInstance:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;-><init>(Landroid/content/Context;)V

    .line 112
    const-string v0, "MessageProxy"

    invoke-virtual {p0, v0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->setProxyName(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;
    .locals 2
    .parameter "context"

    .prologue
    .line 121
    const-class v1, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->sInstance:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    invoke-direct {v0, p0}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->sInstance:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    .line 126
    :goto_0
    sget-object v0, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->sInstance:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 124
    :cond_0
    :try_start_1
    sget-object v0, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->sInstance:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    invoke-virtual {v0, p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->setContext(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private updateMmsNotifications()V
    .locals 0

    .prologue
    .line 2289
    return-void
.end method

.method private updateThread(J)V
    .locals 7
    .parameter "threadId"

    .prologue
    const/4 v2, 0x0

    .line 2292
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/apst/target/data/provider/message/SmsContent;->CONTENT_URI_CONVERSATIONS:Landroid/net/Uri;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2295
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2296
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2298
    :cond_0
    return-void
.end method


# virtual methods
.method public asyncGetAllMms(Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V
    .locals 7
    .parameter "consumer"
    .parameter "buffer"

    .prologue
    .line 177
    const/4 v6, 0x0

    .line 179
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/apst/target/data/provider/message/MmsContent;->CONTENT_URI:Landroid/net/Uri;

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "thread_id"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "date"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "m_type"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "read"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "sub"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "locked"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "msg_box"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "sim_id"

    aput-object v4, v2, v3

    const-string v3, "thread_id>0"

    const/4 v4, 0x0

    const-string v5, "date"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 194
    .end local v6           #c:Landroid/database/Cursor;
    .local v1, c:Landroid/database/Cursor;
    :try_start_1
    new-instance v0, Lcom/mediatek/apst/target/data/proxy/message/FastMmsCursorParser;

    const/4 v4, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/apst/target/data/proxy/message/FastMmsCursorParser;-><init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;ZLcom/mediatek/apst/target/data/proxy/message/MessageProxy;)V

    .line 196
    .local v0, paser:Lcom/mediatek/apst/target/data/proxy/message/FastMmsCursorParser;
    invoke-virtual {v0}, Lcom/mediatek/android/content/AsyncCursorParser;->parse()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 198
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 200
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 201
    const/4 v1, 0x0

    .line 204
    :cond_0
    return-void

    .line 198
    .end local v0           #paser:Lcom/mediatek/apst/target/data/proxy/message/FastMmsCursorParser;
    .end local v1           #c:Landroid/database/Cursor;
    .restart local v6       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    move-object v1, v6

    .end local v6           #c:Landroid/database/Cursor;
    .restart local v1       #c:Landroid/database/Cursor;
    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 200
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 201
    const/4 v1, 0x0

    :cond_1
    throw v2

    .line 198
    :catchall_1
    move-exception v2

    goto :goto_0
.end method

.method public asyncGetAllSms(Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V
    .locals 7
    .parameter "consumer"
    .parameter "buffer"

    .prologue
    .line 140
    const/4 v6, 0x0

    .line 142
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/apst/target/data/provider/message/SmsContent;->CONTENT_URI:Landroid/net/Uri;

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "thread_id"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "address"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "date"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "read"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "subject"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "locked"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "body"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "service_center"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "sim_id"

    aput-object v4, v2, v3

    const-string v3, "thread_id>0"

    const/4 v4, 0x0

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 155
    .end local v6           #c:Landroid/database/Cursor;
    .local v1, c:Landroid/database/Cursor;
    :try_start_1
    new-instance v0, Lcom/mediatek/apst/target/data/proxy/message/FastSmsCursorParser;

    const/4 v4, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/apst/target/data/proxy/message/FastSmsCursorParser;-><init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;ZLcom/mediatek/apst/target/data/proxy/message/MessageProxy;)V

    .line 157
    .local v0, paser:Lcom/mediatek/apst/target/data/proxy/message/FastSmsCursorParser;
    invoke-virtual {v0}, Lcom/mediatek/android/content/AsyncCursorParser;->parse()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 159
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 161
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 162
    const/4 v1, 0x0

    .line 165
    :cond_0
    return-void

    .line 159
    .end local v0           #paser:Lcom/mediatek/apst/target/data/proxy/message/FastSmsCursorParser;
    .end local v1           #c:Landroid/database/Cursor;
    .restart local v6       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    move-object v1, v6

    .end local v6           #c:Landroid/database/Cursor;
    .restart local v1       #c:Landroid/database/Cursor;
    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 161
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 162
    const/4 v1, 0x0

    :cond_1
    throw v2

    .line 159
    :catchall_1
    move-exception v2

    goto :goto_0
.end method

.method public asyncGetPhoneList(Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V
    .locals 9
    .parameter "consumer"
    .parameter "buffer"

    .prologue
    .line 309
    const/4 v6, 0x0

    .line 312
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "display_name"

    aput-object v4, v2, v3

    const-string v3, "deleted<>1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 318
    if-eqz v6, :cond_3

    .line 319
    new-instance v7, Ljava/util/HashMap;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 320
    .local v7, mapIdToName:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 340
    .end local v7           #mapIdToName:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 342
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 343
    const/4 v6, 0x0

    :cond_0
    throw v0

    .line 323
    .restart local v7       #mapIdToName:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 328
    :goto_1
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "data1"

    aput-object v4, v2, v3

    const-string v3, "mimetype=\'vnd.android.cursor.item/phone_v2\' AND deleted<>1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 336
    new-instance v8, Lcom/mediatek/apst/target/data/proxy/message/FastPhoneListCursorParser;

    invoke-direct {v8, v6, p1, p2, v7}, Lcom/mediatek/apst/target/data/proxy/message/FastPhoneListCursorParser;-><init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;Ljava/util/HashMap;)V

    .line 338
    .local v8, paser:Lcom/mediatek/apst/target/data/proxy/message/FastPhoneListCursorParser;
    invoke-virtual {v8}, Lcom/mediatek/android/content/AsyncCursorParser;->parse()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 340
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 342
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 343
    const/4 v6, 0x0

    .line 346
    :cond_2
    return-void

    .line 325
    .end local v7           #mapIdToName:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v8           #paser:Lcom/mediatek/apst/target/data/proxy/message/FastPhoneListCursorParser;
    :cond_3
    :try_start_2
    new-instance v7, Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Ljava/util/HashMap;-><init>(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v7       #mapIdToName:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    goto :goto_1
.end method

.method public clearMessageBox(IZ)I
    .locals 9
    .parameter "box"
    .parameter "keepLockedMessage"

    .prologue
    const/4 v8, 0x0

    .line 810
    const/4 v2, 0x0

    .line 811
    .local v2, deleteSmsCount:I
    const/4 v1, 0x0

    .line 812
    .local v1, deleteMmsCount:I
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 814
    .local v3, selection:Ljava/lang/StringBuffer;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 815
    if-eqz p2, :cond_0

    .line 816
    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 817
    const-string v4, "locked<>1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 820
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v4

    sget-object v5, Lcom/mediatek/apst/target/data/provider/message/SmsContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v8}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 825
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msg_box="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 826
    if-eqz p2, :cond_1

    .line 827
    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 828
    const-string v4, "locked<>1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 831
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v4

    sget-object v5, Lcom/mediatek/apst/target/data/provider/message/MmsContent;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "msg_box="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v8}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 835
    add-int v0, v2, v1

    .line 837
    .local v0, deleteCount:I
    const-wide/16 v4, -0x1

    invoke-direct {p0, v4, v5}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->updateThread(J)V

    .line 839
    invoke-direct {p0}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->updateMmsNotifications()V

    .line 841
    return v0
.end method

.method public deleteAllMessages(Z)I
    .locals 8
    .parameter "keepLockedMessage"

    .prologue
    const/4 v7, 0x0

    .line 851
    const/4 v2, 0x0

    .line 852
    .local v2, deleteSmsCount:I
    const/4 v1, 0x0

    .line 853
    .local v1, deleteMmsCount:I
    const/4 v3, 0x0

    .line 854
    .local v3, selection:Ljava/lang/String;
    const/4 v4, 0x0

    .line 856
    .local v4, selection2:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 857
    const-string v3, "locked<>1"

    .line 859
    const-string v4, "locked<>1"

    .line 862
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v5

    sget-object v6, Lcom/mediatek/apst/target/data/provider/message/SmsContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v3, v7}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 870
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v5

    sget-object v6, Lcom/mediatek/apst/target/data/provider/message/MmsContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4, v7}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 873
    add-int v0, v2, v1

    .line 875
    .local v0, deleteCount:I
    const-wide/16 v5, -0x1

    invoke-direct {p0, v5, v6}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->updateThread(J)V

    .line 877
    invoke-direct {p0}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->updateMmsNotifications()V

    .line 879
    return v0
.end method

.method public deleteMms(JZJ)I
    .locals 5
    .parameter "id"
    .parameter "checkDate"
    .parameter "date"

    .prologue
    .line 921
    const/4 v0, 0x0

    .line 922
    .local v0, deleteCount:I
    const/4 v1, 0x0

    .line 923
    .local v1, selection:Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 924
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "date"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 930
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v2

    sget-object v3, Lcom/mediatek/apst/target/data/provider/message/MmsContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 933
    const-wide/16 v2, -0x1

    invoke-direct {p0, v2, v3}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->updateThread(J)V

    .line 935
    invoke-direct {p0}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->updateMmsNotifications()V

    .line 937
    return v0

    .line 927
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public deleteMms([JZ[J)I
    .locals 9
    .parameter "ids"
    .parameter "checkDates"
    .parameter "dates"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 1019
    if-nez p1, :cond_0

    .line 1020
    new-array v4, v8, [Ljava/lang/Object;

    aput-object p1, v4, v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object p3, v4, v7

    const-string v5, "List is null."

    invoke-static {v4, v5}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1073
    :goto_0
    return v0

    .line 1024
    :cond_0
    array-length v4, p1

    if-gtz v4, :cond_1

    .line 1025
    new-array v4, v8, [Ljava/lang/Object;

    aput-object p1, v4, v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object p3, v4, v7

    const-string v5, "List is empty."

    invoke-static {v4, v5}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1029
    :cond_1
    if-eqz p2, :cond_2

    array-length v4, p1

    array-length v5, p3

    if-eq v4, v5, :cond_2

    .line 1030
    new-array v4, v8, [Ljava/lang/Object;

    aput-object p1, v4, v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object p3, v4, v7

    const-string v5, "Size of ID list does not match size of date list."

    invoke-static {v4, v5}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1037
    :cond_2
    const/4 v2, 0x0

    .line 1038
    .local v2, selection:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1050
    .local v3, strBuf:Ljava/lang/StringBuffer;
    const-string v4, "_id IN("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1051
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, p1

    if-ge v1, v4, :cond_3

    .line 1052
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v5, p1, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1051
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1055
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 1056
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1063
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1066
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v4

    sget-object v5, Lcom/mediatek/apst/target/data/provider/message/MmsContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v6}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1069
    .local v0, deleteCount:I
    const-wide/16 v4, -0x1

    invoke-direct {p0, v4, v5}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->updateThread(J)V

    .line 1071
    invoke-direct {p0}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->updateMmsNotifications()V

    goto :goto_0
.end method

.method public deleteSms(JZJ)I
    .locals 5
    .parameter "id"
    .parameter "checkDate"
    .parameter "date"

    .prologue
    .line 892
    const/4 v0, 0x0

    .line 893
    .local v0, deleteCount:I
    const/4 v1, 0x0

    .line 894
    .local v1, selection:Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 895
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "date"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 901
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v2

    sget-object v3, Lcom/mediatek/apst/target/data/provider/message/SmsContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 904
    const-wide/16 v2, -0x1

    invoke-direct {p0, v2, v3}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->updateThread(J)V

    .line 906
    invoke-direct {p0}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->updateMmsNotifications()V

    .line 908
    return v0

    .line 898
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public deleteSms([JZ[J)I
    .locals 9
    .parameter "ids"
    .parameter "checkDates"
    .parameter "dates"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 951
    if-nez p1, :cond_0

    .line 952
    new-array v4, v8, [Ljava/lang/Object;

    aput-object p1, v4, v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object p3, v4, v7

    const-string v5, "List is null."

    invoke-static {v4, v5}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1005
    :goto_0
    return v0

    .line 956
    :cond_0
    array-length v4, p1

    if-gtz v4, :cond_1

    .line 957
    new-array v4, v8, [Ljava/lang/Object;

    aput-object p1, v4, v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object p3, v4, v7

    const-string v5, "List is empty."

    invoke-static {v4, v5}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 961
    :cond_1
    if-eqz p2, :cond_2

    array-length v4, p1

    array-length v5, p3

    if-eq v4, v5, :cond_2

    .line 962
    new-array v4, v8, [Ljava/lang/Object;

    aput-object p1, v4, v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object p3, v4, v7

    const-string v5, "Size of ID list does not match size of date list."

    invoke-static {v4, v5}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 969
    :cond_2
    const/4 v2, 0x0

    .line 970
    .local v2, selection:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 982
    .local v3, strBuf:Ljava/lang/StringBuffer;
    const-string v4, "_id IN("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 983
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, p1

    if-ge v1, v4, :cond_3

    .line 984
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v5, p1, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 983
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 987
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 988
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 995
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 998
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v4

    sget-object v5, Lcom/mediatek/apst/target/data/provider/message/SmsContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v6}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1001
    .local v0, deleteCount:I
    const-wide/16 v4, -0x1

    invoke-direct {p0, v4, v5}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->updateThread(J)V

    .line 1003
    invoke-direct {p0}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->updateMmsNotifications()V

    goto :goto_0
.end method

.method public findSms(JLjava/lang/String;Ljava/lang/String;I)Lcom/mediatek/apst/util/entity/message/Sms;
    .locals 13
    .parameter "afterTimeOf"
    .parameter "address"
    .parameter "smsBody"
    .parameter "box"

    .prologue
    .line 689
    const/4 v11, 0x0

    .line 691
    .local v11, result:Lcom/mediatek/apst/util/entity/message/Sms;
    const/4 v7, 0x0

    .line 692
    .local v7, body:Ljava/lang/String;
    if-eqz p4, :cond_0

    .line 693
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 694
    const-string v1, "\'"

    const-string v2, "\'\'"

    invoke-virtual {v7, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 697
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/mediatek/apst/target/data/provider/message/SmsContent;->CONTENT_URI:Landroid/net/Uri;

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "date"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "locked"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "read"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "service_center"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "thread_id"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "subject"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "sim_id"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "date>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "address"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "body"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "_id ASC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 710
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 711
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 712
    new-instance v11, Lcom/mediatek/apst/util/entity/message/Sms;

    .end local v11           #result:Lcom/mediatek/apst/util/entity/message/Sms;
    invoke-direct {v11}, Lcom/mediatek/apst/util/entity/message/Sms;-><init>()V

    .line 713
    .restart local v11       #result:Lcom/mediatek/apst/util/entity/message/Sms;
    invoke-virtual {v11, v7}, Lcom/mediatek/apst/util/entity/message/Sms;->setBody(Ljava/lang/String;)V

    .line 714
    move/from16 v0, p5

    invoke-virtual {v11, v0}, Lcom/mediatek/apst/util/entity/message/Message;->setBox(I)V

    .line 715
    new-instance v1, Lcom/mediatek/apst/util/entity/message/TargetAddress;

    move-object/from16 v0, p3

    invoke-direct {v1, v0}, Lcom/mediatek/apst/util/entity/message/TargetAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Lcom/mediatek/apst/util/entity/message/Message;->setTarget(Lcom/mediatek/apst/util/entity/message/TargetAddress;)V

    .line 717
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v11, v1, v2}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->setId(J)V

    .line 718
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v11, v1, v2}, Lcom/mediatek/apst/util/entity/message/Message;->setDate(J)V

    .line 719
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v11, v1}, Lcom/mediatek/apst/util/entity/message/Message;->setLocked(Z)V

    .line 721
    const/4 v1, 0x3

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v11, v1}, Lcom/mediatek/apst/util/entity/message/Message;->setRead(Z)V

    .line 723
    const/4 v1, 0x4

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/mediatek/apst/util/entity/message/Sms;->setServiceCenter(Ljava/lang/String;)V

    .line 724
    const/4 v1, 0x5

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v11, v1, v2}, Lcom/mediatek/apst/util/entity/message/Message;->setThreadId(J)V

    .line 725
    const/4 v1, 0x6

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/mediatek/apst/util/entity/message/Message;->setSubject(Ljava/lang/String;)V

    .line 726
    const-string v1, "sim_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 728
    .local v9, colId:I
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 729
    .local v12, simId:I
    invoke-virtual {v11, v12}, Lcom/mediatek/apst/util/entity/message/Message;->setSimId(I)V

    .line 731
    invoke-static {v12}, Lcom/mediatek/apst/target/util/Global;->getSimInfoById(I)Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

    move-result-object v10

    .line 732
    .local v10, info:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;
    invoke-virtual {v10}, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/mediatek/apst/util/entity/message/Message;->setSimName(Ljava/lang/String;)V

    .line 734
    invoke-virtual {v10}, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/mediatek/apst/util/entity/message/Message;->setSimNumber(Ljava/lang/String;)V

    .line 736
    invoke-virtual {v10}, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->getICCId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/mediatek/apst/util/entity/message/Message;->setSimICCId(Ljava/lang/String;)V

    .line 738
    .end local v9           #colId:I
    .end local v10           #info:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;
    .end local v12           #simId:I
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 740
    :cond_2
    return-object v11

    .line 719
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 721
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getMaxMmsId()J
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 614
    const-wide/16 v7, 0x0

    .line 617
    .local v7, maxId:J
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/apst/target/data/provider/message/MmsContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v9

    const-string v5, "_id DESC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 620
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 621
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 622
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 624
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 626
    :cond_1
    return-wide v7
.end method

.method public getMaxMmsId(I)J
    .locals 11
    .parameter "box"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2330
    const-wide/16 v7, 0x0

    .line 2333
    .local v7, maxId:J
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/apst/target/data/provider/message/MmsContent;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msg_box="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2337
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 2338
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2339
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 2341
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2343
    :cond_1
    new-array v0, v10, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MaxMmsId is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 2344
    return-wide v7
.end method

.method public getMaxMmsIdByInsert()J
    .locals 8

    .prologue
    .line 652
    const-string v0, "-->getMaxMmsIdByInsert"

    invoke-static {v0}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 653
    const-wide/16 v1, 0x0

    .line 660
    .local v1, maxId:J
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v0

    sget-object v3, Lcom/mediatek/apst/target/data/provider/message/MmsContent;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Landroid/content/ContentValues;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    invoke-virtual {v0, v3, v4}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    .line 661
    .local v7, uri:Landroid/net/Uri;
    const-string v0, "getMaxMmsIdByInsert: insert test mms done!"

    invoke-static {v0}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 664
    :try_start_0
    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 666
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->deleteMms(JZJ)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 672
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMaxMmsIdByInsert max id: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/apst/target/util/Debugger;->logW(Ljava/lang/String;)V

    .line 673
    return-wide v1

    .line 667
    :catch_0
    move-exception v6

    .line 668
    .local v6, e:Ljava/lang/NumberFormatException;
    invoke-static {v6}, Lcom/mediatek/apst/target/util/Debugger;->logE(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 669
    .end local v6           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v6

    .line 670
    .local v6, e:Ljava/lang/NullPointerException;
    invoke-static {v6}, Lcom/mediatek/apst/target/util/Debugger;->logE(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getMaxMmsPartId()J
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 633
    const-wide/16 v7, 0x0

    .line 636
    .local v7, maxId:J
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/apst/target/data/provider/message/MmsContent;->CONTENT_URI_PART:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v9

    const-string v5, "_id DESC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 639
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 640
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 641
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 643
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 645
    :cond_1
    return-wide v7
.end method

.method public getMaxSmsId()J
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 594
    const-wide/16 v7, 0x0

    .line 596
    .local v7, maxId:J
    const-string v0, "ANR Test1"

    invoke-static {v0}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 597
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/apst/target/data/provider/message/SmsContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v9

    const-string v5, "_id DESC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 600
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 601
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 604
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 606
    :cond_1
    const-string v0, "ANR Test2"

    invoke-static {v0}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 607
    return-wide v7
.end method

.method public getMaxSmsId(I)J
    .locals 10
    .parameter "box"

    .prologue
    const/4 v9, 0x0

    .line 2306
    const-wide/16 v7, 0x0

    .line 2309
    .local v7, maxId:J
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/apst/target/data/provider/message/SmsContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2313
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 2314
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2315
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 2317
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2319
    :cond_1
    return-wide v7
.end method

.method public getMessagesCount()I
    .locals 3

    .prologue
    .line 2228
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->getSmsCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->getMmsCount()I

    move-result v2

    add-int v0, v1, v2

    .line 2230
    .local v0, count:I
    return v0
.end method

.method public getMms(J)Lcom/mediatek/apst/util/entity/message/Mms;
    .locals 10
    .parameter "id"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 2385
    const/4 v7, 0x0

    .line 2386
    .local v7, result:Lcom/mediatek/apst/util/entity/message/Mms;
    const/4 v6, 0x0

    .line 2387
    .local v6, c:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/apst/target/data/provider/message/MmsContent;->CONTENT_URI:Landroid/net/Uri;

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v8

    const-string v3, "thread_id"

    aput-object v3, v2, v9

    const/4 v3, 0x2

    const-string v5, "date"

    aput-object v5, v2, v3

    const/4 v3, 0x3

    const-string v5, "m_type"

    aput-object v5, v2, v3

    const/4 v3, 0x4

    const-string v5, "read"

    aput-object v5, v2, v3

    const/4 v3, 0x5

    const-string v5, "sub"

    aput-object v5, v2, v3

    const/4 v3, 0x6

    const-string v5, "locked"

    aput-object v5, v2, v3

    const/4 v3, 0x7

    const-string v5, "msg_box"

    aput-object v5, v2, v3

    const/16 v3, 0x8

    const-string v5, "sim_id"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2396
    if-eqz v6, :cond_3

    .line 2397
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2398
    invoke-static {v6}, Lcom/mediatek/apst/target/data/provider/message/MmsContent;->cursorToMms(Landroid/database/Cursor;)Lcom/mediatek/apst/util/entity/message/Mms;

    move-result-object v7

    .line 2402
    :cond_0
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/mediatek/apst/util/entity/message/Mms;->getM_type()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "130"

    invoke-virtual {v7}, Lcom/mediatek/apst/util/entity/message/Mms;->getM_type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2404
    invoke-virtual {p0, v7}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->getMmsAddress(Lcom/mediatek/apst/util/entity/message/Mms;)Lcom/mediatek/apst/util/entity/message/TargetAddress;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/mediatek/apst/util/entity/message/Message;->setTarget(Lcom/mediatek/apst/util/entity/message/TargetAddress;)V

    .line 2413
    :goto_0
    if-eqz v6, :cond_1

    .line 2414
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v4, v7

    .line 2416
    :goto_1
    return-object v4

    .line 2406
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2411
    :cond_3
    new-array v0, v9, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v8

    const-string v1, "Cursor is null"

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getMmsAddress(Lcom/mediatek/apst/util/entity/message/Mms;)Lcom/mediatek/apst/util/entity/message/TargetAddress;
    .locals 26
    .parameter "mms"

    .prologue
    .line 2534
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/message/Message;->getThreadId()J

    move-result-wide v24

    .line 2535
    .local v24, threadId:J
    new-instance v18, Lcom/mediatek/apst/util/entity/message/TargetAddress;

    const-string v2, ""

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Lcom/mediatek/apst/util/entity/message/TargetAddress;-><init>(Ljava/lang/String;)V

    .line 2536
    .local v18, mmsAddress:Lcom/mediatek/apst/util/entity/message/TargetAddress;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Lcom/mediatek/apst/util/entity/message/TargetAddress;->setMmsId(J)V

    .line 2537
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/message/Message;->getBox()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_a

    .line 2538
    const/4 v13, 0x0

    .line 2540
    .local v13, draftCursorRecipient:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/mediatek/apst/target/data/provider/message/MmsContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "threads.recipient_ids from pdu,threads where pdu.thread_id=threads._id and pdu.thread_id ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v24

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " --"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 2557
    if-eqz v13, :cond_9

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2559
    const-string v2, "recipient_ids"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 2562
    .local v21, recipientIds:Ljava/lang/String;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recipient_ids = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mms id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 2565
    if-eqz v21, :cond_0

    const-string v2, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2566
    :cond_0
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 2567
    const/4 v13, 0x0

    .line 2679
    .end local v13           #draftCursorRecipient:Landroid/database/Cursor;
    .end local v21           #recipientIds:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v18

    .line 2547
    .restart local v13       #draftCursorRecipient:Landroid/database/Cursor;
    :catch_0
    move-exception v14

    .line 2548
    .local v14, e:Landroid/database/sqlite/SQLiteException;
    const-string v2, "Catch SQLiteException"

    invoke-static {v2}, Lcom/mediatek/apst/target/util/Debugger;->logE(Ljava/lang/String;)V

    .line 2549
    invoke-virtual {v14}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2550
    if-eqz v13, :cond_1

    .line 2551
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 2552
    const/4 v13, 0x0

    goto :goto_0

    .line 2571
    .end local v14           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v21       #recipientIds:Ljava/lang/String;
    :cond_2
    const-string v2, " "

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 2573
    .local v20, recipientIdList:[Ljava/lang/String;
    if-eqz v20, :cond_3

    move-object/from16 v0, v20

    array-length v2, v0

    if-gtz v2, :cond_4

    .line 2574
    :cond_3
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 2575
    const/4 v13, 0x0

    .line 2576
    goto :goto_0

    .line 2579
    :cond_4
    move-object/from16 v9, v20

    .local v9, arr$:[Ljava/lang/String;
    array-length v0, v9

    move/from16 v17, v0

    .local v17, len$:I
    const/16 v16, 0x0

    .local v16, i$:I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_5

    aget-object v19, v9, v16

    .line 2580
    .local v19, recipientId:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recipientId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 2579
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 2584
    .end local v19           #recipientId:Ljava/lang/String;
    :cond_5
    const/16 v22, 0x0

    .line 2585
    .local v22, selection:Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuffer;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuffer;-><init>()V

    .line 2586
    .local v23, strBuf:Ljava/lang/StringBuffer;
    const-string v2, "canonical_addresses.address from canonical_addresses where "

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2588
    const/4 v15, 0x0

    .local v15, i:I
    :goto_2
    move-object/from16 v0, v20

    array-length v2, v0

    if-ge v15, v2, :cond_6

    .line 2589
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canonical_addresses._id ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v20, v15

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2588
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 2592
    :cond_6
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 2593
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 2594
    const-string v2, " --"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2595
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2596
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 2597
    const/4 v12, 0x0

    .line 2599
    .local v12, draftCursor:Landroid/database/Cursor;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/mediatek/apst/target/data/provider/message/MmsContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v22, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v12

    .line 2613
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 2615
    .local v11, draftAddress:Ljava/lang/StringBuffer;
    :goto_3
    if-eqz v12, :cond_7

    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2616
    const-string v2, "address"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2618
    .local v8, address:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 2602
    .end local v8           #address:Ljava/lang/String;
    .end local v11           #draftAddress:Ljava/lang/StringBuffer;
    :catch_1
    move-exception v14

    .line 2603
    .restart local v14       #e:Landroid/database/sqlite/SQLiteException;
    const-string v2, "Catch SQLiteException"

    invoke-static {v2}, Lcom/mediatek/apst/target/util/Debugger;->logE(Ljava/lang/String;)V

    .line 2604
    invoke-virtual {v14}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2605
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 2606
    if-eqz v12, :cond_1

    .line 2607
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2608
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 2621
    .end local v14           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v11       #draftAddress:Ljava/lang/StringBuffer;
    :cond_7
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_8

    .line 2622
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v11, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 2623
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "draftAddress = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mms id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 2625
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/mediatek/apst/util/entity/message/TargetAddress;->setAddress(Ljava/lang/String;)V

    .line 2628
    :cond_8
    if-eqz v12, :cond_9

    .line 2629
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2634
    .end local v9           #arr$:[Ljava/lang/String;
    .end local v11           #draftAddress:Ljava/lang/StringBuffer;
    .end local v12           #draftCursor:Landroid/database/Cursor;
    .end local v15           #i:I
    .end local v16           #i$:I
    .end local v17           #len$:I
    .end local v20           #recipientIdList:[Ljava/lang/String;
    .end local v21           #recipientIds:Ljava/lang/String;
    .end local v22           #selection:Ljava/lang/String;
    .end local v23           #strBuf:Ljava/lang/StringBuffer;
    :cond_9
    if-eqz v13, :cond_1

    .line 2635
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2639
    .end local v13           #draftCursorRecipient:Landroid/database/Cursor;
    :cond_a
    const/4 v10, 0x0

    .line 2641
    .local v10, cursorAddress:Landroid/database/Cursor;
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/mediatek/apst/target/data/provider/message/MmsContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "canonical_addresses.address from pdu,threads,canonical_addresses where pdu.thread_id=threads._id and threads.recipient_ids=canonical_addresses._id and pdu.thread_id ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v24

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " --"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v10

    .line 2660
    if-eqz v10, :cond_b

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2661
    const-string v2, "address"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2664
    .local v11, draftAddress:Ljava/lang/String;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "draftAddress = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mms id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 2666
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/mediatek/apst/util/entity/message/TargetAddress;->setAddress(Ljava/lang/String;)V

    .line 2673
    .end local v11           #draftAddress:Ljava/lang/String;
    :goto_4
    if-eqz v10, :cond_1

    .line 2674
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2650
    :catch_2
    move-exception v14

    .line 2651
    .restart local v14       #e:Landroid/database/sqlite/SQLiteException;
    const-string v2, "Catch SQLiteException"

    invoke-static {v2}, Lcom/mediatek/apst/target/util/Debugger;->logE(Ljava/lang/String;)V

    .line 2652
    invoke-virtual {v14}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2653
    if-eqz v10, :cond_1

    .line 2654
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2655
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 2668
    .end local v14           #e:Landroid/database/sqlite/SQLiteException;
    :cond_b
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No address in canonical_addresses mms id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public getMmsCount()I
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 2265
    const/4 v7, 0x0

    .line 2268
    .local v7, count:I
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/apst/target/data/provider/message/MmsContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const-string v3, "thread_id>0"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2277
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 2278
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 2279
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2282
    :cond_0
    return v7
.end method

.method public getMmsData(Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;ZLjava/util/LinkedList;)V
    .locals 12
    .parameter "consumer"
    .parameter "buffer"
    .parameter "isBackup"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;",
            "Ljava/nio/ByteBuffer;",
            "Z",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 262
    .local p4, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Long;>;"
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 263
    .local v11, selectionBuffer:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 264
    .local v3, selection:Ljava/lang/String;
    if-nez p3, :cond_2

    .line 265
    const-string v0, "_id IN("

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 266
    invoke-virtual/range {p4 .. p4}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 267
    .local v8, id:J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 269
    .end local v8           #id:J
    :cond_0
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 270
    const-string v0, ")"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 271
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 272
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p4, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selection is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    .end local v7           #i$:Ljava/util/Iterator;
    :goto_1
    const/4 v6, 0x0

    .line 281
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/apst/target/data/provider/message/MmsContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v5, "date"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 290
    new-instance v10, Lcom/mediatek/apst/target/data/proxy/message/FastMmsBackupCursorParser;

    invoke-direct {v10, v6, p1, p2, p0}, Lcom/mediatek/apst/target/data/proxy/message/FastMmsBackupCursorParser;-><init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;)V

    .line 292
    .local v10, paser:Lcom/mediatek/apst/target/data/proxy/message/FastMmsBackupCursorParser;
    invoke-virtual {v10}, Lcom/mediatek/android/content/AsyncCursorParser;->parse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 295
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 296
    const/4 v6, 0x0

    .line 299
    :cond_1
    return-void

    .line 276
    .end local v6           #c:Landroid/database/Cursor;
    .end local v10           #paser:Lcom/mediatek/apst/target/data/proxy/message/FastMmsBackupCursorParser;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isBack"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    goto :goto_1

    .line 294
    .restart local v6       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 295
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 296
    const/4 v6, 0x0

    :cond_3
    throw v0
.end method

.method public getOneMmsResource(Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;J)V
    .locals 8
    .parameter "consumer"
    .parameter "buffer"
    .parameter "id"

    .prologue
    .line 218
    const/4 v7, 0x0

    .line 220
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/apst/target/data/provider/message/MmsContent;->CONTENT_URI_PART:Landroid/net/Uri;

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "mid"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "seq"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "ct"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "chset"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "cid"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "cl"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "text"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const-string v5, "_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 234
    .end local v7           #c:Landroid/database/Cursor;
    .local v1, c:Landroid/database/Cursor;
    :try_start_1
    new-instance v0, Lcom/mediatek/apst/target/data/proxy/message/FastMmsResourceCursorParser;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/apst/target/data/proxy/message/FastMmsResourceCursorParser;-><init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;J)V

    .line 236
    .local v0, paser:Lcom/mediatek/apst/target/data/proxy/message/FastMmsResourceCursorParser;
    invoke-virtual {v0}, Lcom/mediatek/android/content/AsyncCursorParser;->parse()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 238
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 240
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 241
    const/4 v1, 0x0

    .line 244
    :cond_0
    return-void

    .line 238
    .end local v0           #paser:Lcom/mediatek/apst/target/data/proxy/message/FastMmsResourceCursorParser;
    .end local v1           #c:Landroid/database/Cursor;
    .restart local v7       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    move-object v1, v7

    .end local v7           #c:Landroid/database/Cursor;
    .restart local v1       #c:Landroid/database/Cursor;
    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 240
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 241
    const/4 v1, 0x0

    :cond_1
    throw v2

    .line 238
    :catchall_1
    move-exception v2

    goto :goto_0
.end method

.method public getOrCreateThreadId(Ljava/lang/String;)J
    .locals 3
    .parameter "recipient"

    .prologue
    .line 2150
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2152
    .local v0, recipients:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2153
    invoke-virtual {p0, v0}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->getOrCreateThreadId(Ljava/util/Set;)J

    move-result-wide v1

    return-wide v1
.end method

.method public getOrCreateThreadId(Ljava/util/Set;)J
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .prologue
    .local p1, recipients:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 2185
    const-wide/16 v9, -0x1

    .line 2186
    .local v9, threadId:J
    sget-object v0, Lcom/mediatek/apst/target/data/provider/message/ConversationsContent;->THREAD_ID_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v11

    .line 2189
    .local v11, uriBuilder:Landroid/net/Uri$Builder;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2190
    .local v8, recipient:Ljava/lang/String;
    invoke-static {v8}, Lcom/mediatek/apst/target/data/provider/message/MmsContent;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2191
    invoke-static {v8}, Lcom/mediatek/apst/target/data/provider/message/MmsContent;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2193
    :cond_0
    const-string v0, "recipient"

    invoke-virtual {v11, v0, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 2196
    .end local v8           #recipient:Ljava/lang/String;
    :cond_1
    invoke-virtual {v11}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 2197
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v0

    new-array v2, v13, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v12

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2200
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 2202
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2203
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 2204
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread ID allocated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2211
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2216
    :goto_2
    return-wide v9

    .line 2207
    :cond_2
    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const-string v2, "Fail to get or allocate a thread ID."

    invoke-static {v0, v2}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2211
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 2214
    :cond_3
    new-array v0, v13, [Ljava/lang/Object;

    aput-object p1, v0, v12

    const-string v2, "Cursor is null."

    invoke-static {v0, v2}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public getOrCreateThreadId2([Ljava/lang/String;)J
    .locals 7
    .parameter "recipientList"

    .prologue
    .line 2164
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 2165
    .local v4, recipients:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 2166
    .local v3, recipient:Ljava/lang/String;
    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2165
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2168
    .end local v3           #recipient:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v4}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->getOrCreateThreadId(Ljava/util/Set;)J

    move-result-wide v5

    return-wide v5
.end method

.method public getSms(J)Lcom/mediatek/apst/util/entity/message/Sms;
    .locals 8
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 2353
    const/4 v7, 0x0

    .line 2356
    .local v7, result:Lcom/mediatek/apst/util/entity/message/Sms;
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/apst/target/data/provider/message/SmsContent;->CONTENT_URI:Landroid/net/Uri;

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "thread_id"

    aput-object v5, v2, v3

    const/4 v3, 0x2

    const-string v5, "address"

    aput-object v5, v2, v3

    const/4 v3, 0x3

    const-string v5, "date"

    aput-object v5, v2, v3

    const/4 v3, 0x4

    const-string v5, "type"

    aput-object v5, v2, v3

    const/4 v3, 0x5

    const-string v5, "read"

    aput-object v5, v2, v3

    const/4 v3, 0x6

    const-string v5, "subject"

    aput-object v5, v2, v3

    const/4 v3, 0x7

    const-string v5, "locked"

    aput-object v5, v2, v3

    const/16 v3, 0x8

    const-string v5, "body"

    aput-object v5, v2, v3

    const/16 v3, 0x9

    const-string v5, "service_center"

    aput-object v5, v2, v3

    const/16 v3, 0xa

    const-string v5, "sim_id"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2367
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 2368
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2369
    invoke-static {v6}, Lcom/mediatek/apst/target/data/provider/message/SmsContent;->cursorToSms(Landroid/database/Cursor;)Lcom/mediatek/apst/util/entity/message/Sms;

    move-result-object v7

    .line 2371
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2373
    :cond_1
    return-object v7
.end method

.method public getSmsAddress(J)Ljava/lang/String;
    .locals 22
    .parameter "threadId"

    .prologue
    .line 2427
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 2428
    .local v10, draftAddress:Ljava/lang/StringBuffer;
    const/4 v12, 0x0

    .line 2430
    .local v12, draftCursorRecipient:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/mediatek/apst/target/data/provider/message/SmsContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "threads.recipient_ids from sms,threads where sms.thread_id=threads._id and sms.thread_id ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p1

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " --"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 2447
    if-eqz v12, :cond_b

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2448
    const-string v2, "recipient_ids"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 2451
    .local v19, recipientIds:Ljava/lang/String;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recipient_ids = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 2452
    if-eqz v19, :cond_0

    const-string v2, ""

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2453
    :cond_0
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2454
    const/4 v12, 0x0

    .line 2455
    const/4 v2, 0x0

    .line 2523
    .end local v19           #recipientIds:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 2437
    :catch_0
    move-exception v13

    .line 2438
    .local v13, e:Landroid/database/sqlite/SQLiteException;
    const-string v2, "Catch SQLiteException"

    invoke-static {v2}, Lcom/mediatek/apst/target/util/Debugger;->logE(Ljava/lang/String;)V

    .line 2439
    invoke-virtual {v13}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2440
    if-eqz v12, :cond_1

    .line 2441
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2442
    const/4 v12, 0x0

    .line 2444
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 2457
    .end local v13           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v19       #recipientIds:Ljava/lang/String;
    :cond_2
    const-string v2, " "

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 2458
    .local v18, recipientIdList:[Ljava/lang/String;
    if-eqz v18, :cond_3

    move-object/from16 v0, v18

    array-length v2, v0

    if-gtz v2, :cond_4

    .line 2459
    :cond_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2460
    const/4 v12, 0x0

    .line 2461
    const/4 v2, 0x0

    goto :goto_0

    .line 2463
    :cond_4
    move-object/from16 v9, v18

    .local v9, arr$:[Ljava/lang/String;
    array-length v0, v9

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v15, 0x0

    .local v15, i$:I
    :goto_1
    move/from16 v0, v16

    if-ge v15, v0, :cond_5

    aget-object v17, v9, v15

    .line 2464
    .local v17, recipientId:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recipient_id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 2463
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 2467
    .end local v17           #recipientId:Ljava/lang/String;
    :cond_5
    if-eqz v12, :cond_6

    .line 2468
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2469
    const/4 v12, 0x0

    .line 2473
    :cond_6
    const/16 v20, 0x0

    .line 2474
    .local v20, selection:Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuffer;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    .line 2475
    .local v21, strBuf:Ljava/lang/StringBuffer;
    const-string v2, "canonical_addresses.address from canonical_addresses where canonical_addresses._id in("

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2478
    const/4 v14, 0x0

    .local v14, i:I
    :goto_2
    move-object/from16 v0, v18

    array-length v2, v0

    if-ge v14, v2, :cond_7

    .line 2479
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v18, v14

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2478
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 2481
    :cond_7
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 2482
    const-string v2, ")"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2483
    const-string v2, " --"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2484
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    .line 2485
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 2486
    const/4 v11, 0x0

    .line 2488
    .local v11, draftCursor:Landroid/database/Cursor;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/mediatek/apst/target/data/provider/message/SmsContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v20, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    .line 2500
    if-eqz v11, :cond_a

    .line 2501
    :goto_3
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2502
    const-string v2, "address"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2504
    .local v8, address:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 2491
    .end local v8           #address:Ljava/lang/String;
    :catch_1
    move-exception v13

    .line 2492
    .restart local v13       #e:Landroid/database/sqlite/SQLiteException;
    const-string v2, "Catch SQLiteException"

    invoke-static {v2}, Lcom/mediatek/apst/target/util/Debugger;->logE(Ljava/lang/String;)V

    .line 2493
    invoke-virtual {v13}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2494
    if-eqz v11, :cond_8

    .line 2495
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 2496
    const/4 v11, 0x0

    .line 2498
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2506
    .end local v13           #e:Landroid/database/sqlite/SQLiteException;
    :cond_9
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_c

    .line 2507
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 2508
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "draftAddress = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 2518
    :cond_a
    if-eqz v11, :cond_b

    .line 2519
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 2523
    .end local v9           #arr$:[Ljava/lang/String;
    .end local v11           #draftCursor:Landroid/database/Cursor;
    .end local v14           #i:I
    .end local v15           #i$:I
    .end local v16           #len$:I
    .end local v18           #recipientIdList:[Ljava/lang/String;
    .end local v19           #recipientIds:Ljava/lang/String;
    .end local v20           #selection:Ljava/lang/String;
    .end local v21           #strBuf:Ljava/lang/StringBuffer;
    :cond_b
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 2511
    .restart local v9       #arr$:[Ljava/lang/String;
    .restart local v11       #draftCursor:Landroid/database/Cursor;
    .restart local v14       #i:I
    .restart local v15       #i$:I
    .restart local v16       #len$:I
    .restart local v18       #recipientIdList:[Ljava/lang/String;
    .restart local v19       #recipientIds:Ljava/lang/String;
    .restart local v20       #selection:Ljava/lang/String;
    .restart local v21       #strBuf:Ljava/lang/StringBuffer;
    :cond_c
    if-eqz v11, :cond_d

    .line 2512
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 2513
    const/4 v11, 0x0

    .line 2515
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public getSmsCount()I
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 2239
    const/4 v7, 0x0

    .line 2242
    .local v7, count:I
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/apst/target/data/provider/message/SmsContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const-string v3, "thread_id>0"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2251
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 2252
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 2253
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2256
    :cond_0
    return v7
.end method

.method public importMms([BLjava/util/ArrayList;)[J
    .locals 20
    .parameter "raw"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 489
    .local p2, threadIdsToReturn:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v14, p1

    .line 490
    .local v14, rawBytes:[B
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->clear()V

    .line 491
    if-nez v14, :cond_0

    .line 492
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v14, v16, v17

    const/16 v17, 0x1

    aput-object p2, v16, v17

    const-string v17, "List is null."

    invoke-static/range {v16 .. v17}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 494
    const/4 v11, 0x0

    .line 587
    :goto_0
    return-object v11

    .line 496
    :cond_0
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v14, v16, v17

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Receive rawBytes[]:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    array-length v0, v14

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 498
    invoke-static {v14}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 499
    .local v10, inBuffer:Ljava/nio/ByteBuffer;
    const/4 v14, 0x0

    .line 501
    const/4 v6, 0x0

    .line 502
    .local v6, count:I
    const/4 v7, 0x0

    .line 505
    .local v7, countTotal:I
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 506
    .local v12, mapAddress2ThreadId:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->getMaxMmsId()J

    move-result-wide v16

    const-wide/16 v18, 0x1

    add-long v4, v16, v18

    .line 510
    .local v4, beginId2:J
    :try_start_0
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .line 511
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v14, v16, v17

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "MMS count is "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 512
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v14, v16, v17

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "inBuffer position is "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v10}, Ljava/nio/Buffer;->position()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    if-gez v6, :cond_1

    .line 521
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v14, v16, v17

    const/16 v17, 0x1

    aput-object p2, v16, v17

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Invalid MMS count "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 523
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 514
    :catch_0
    move-exception v8

    .line 515
    .local v8, e:Ljava/nio/BufferUnderflowException;
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v14, v16, v17

    const/16 v17, 0x1

    aput-object p2, v16, v17

    const-string v17, "Can not get the MMS count in raw data "

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v8}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 517
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 527
    .end local v8           #e:Ljava/nio/BufferUnderflowException;
    :cond_1
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    if-ge v9, v6, :cond_3

    .line 529
    new-instance v13, Lcom/mediatek/apst/util/entity/message/Mms;

    invoke-direct {v13}, Lcom/mediatek/apst/util/entity/message/Mms;-><init>()V

    .line 531
    .local v13, newMms:Lcom/mediatek/apst/util/entity/message/Mms;
    const/16 v16, 0x51a

    :try_start_1
    move/from16 v0, v16

    invoke-virtual {v13, v10, v0}, Lcom/mediatek/apst/util/entity/message/Mms;->readAllWithVersion(Ljava/nio/ByteBuffer;I)V

    .line 532
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v14, v16, v17

    const-string v17, "readAllWithVersion over"

    invoke-static/range {v16 .. v17}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_2

    .line 541
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v14, v16, v17

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "newMms id is "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v13}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 543
    invoke-virtual {v13}, Lcom/mediatek/apst/util/entity/message/Message;->getTarget()Lcom/mediatek/apst/util/entity/message/TargetAddress;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/apst/util/entity/message/TargetAddress;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 545
    .local v2, address:Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 546
    const-string v16, ","

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 547
    .local v3, addressList:[Ljava/lang/String;
    array-length v0, v3

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_4

    .line 548
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->getOrCreateThreadId2([Ljava/lang/String;)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 558
    .local v15, threadId:Ljava/lang/Long;
    :cond_2
    :goto_2
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Lcom/mediatek/apst/util/entity/message/Message;->setThreadId(J)V

    .line 560
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v14, v16, v17

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "SMS getOrCreateThreadId: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 569
    .end local v3           #addressList:[Ljava/lang/String;
    .end local v15           #threadId:Ljava/lang/Long;
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->insertMms(Lcom/mediatek/apst/util/entity/message/Mms;)Z

    move-result v16

    if-nez v16, :cond_6

    .line 570
    const/4 v13, 0x0

    .line 571
    add-int/lit8 v6, v9, 0x1

    .line 576
    .end local v2           #address:Ljava/lang/String;
    .end local v13           #newMms:Lcom/mediatek/apst/util/entity/message/Mms;
    :cond_3
    add-int/2addr v7, v6

    .line 578
    new-array v11, v7, [J

    .line 579
    .local v11, insertedIds:[J
    const/4 v9, 0x0

    :goto_4
    if-ge v9, v7, :cond_7

    .line 580
    int-to-long v0, v9

    move-wide/from16 v16, v0

    add-long v16, v16, v4

    aput-wide v16, v11, v9

    .line 579
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 534
    .end local v11           #insertedIds:[J
    .restart local v13       #newMms:Lcom/mediatek/apst/util/entity/message/Mms;
    :catch_1
    move-exception v8

    .line 535
    .local v8, e:Ljava/lang/NullPointerException;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    .line 536
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 537
    .end local v8           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v8

    .line 538
    .local v8, e:Ljava/nio/BufferUnderflowException;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    .line 539
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 550
    .end local v8           #e:Ljava/nio/BufferUnderflowException;
    .restart local v2       #address:Ljava/lang/String;
    .restart local v3       #addressList:[Ljava/lang/String;
    :cond_4
    invoke-virtual {v12, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    .line 551
    .restart local v15       #threadId:Ljava/lang/Long;
    if-nez v15, :cond_2

    .line 552
    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "MMS address: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 554
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->getOrCreateThreadId(Ljava/lang/String;)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 555
    invoke-virtual {v12, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 565
    .end local v3           #addressList:[Ljava/lang/String;
    .end local v15           #threadId:Ljava/lang/Long;
    :cond_5
    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const-string v17, "MMS no address"

    invoke-static/range {v16 .. v17}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 566
    const-wide/16 v16, -0x1

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Lcom/mediatek/apst/util/entity/message/Message;->setThreadId(J)V

    .line 567
    const-wide/16 v16, -0x1

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 527
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 582
    .end local v2           #address:Ljava/lang/String;
    .end local v13           #newMms:Lcom/mediatek/apst/util/entity/message/Mms;
    .restart local v11       #insertedIds:[J
    :cond_7
    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Received MMS buffer size: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v10}, Ljava/nio/Buffer;->capacity()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 584
    invoke-virtual {v10}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 585
    const/4 v10, 0x0

    .line 586
    invoke-virtual {v12}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_0
.end method

.method public importSms([BLjava/util/ArrayList;)[J
    .locals 21
    .parameter "raw"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 357
    .local p2, threadIdsToReturn:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->clear()V

    .line 358
    if-nez p1, :cond_0

    .line 359
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object p1, v17, v18

    const/16 v18, 0x1

    aput-object p2, v17, v18

    const-string v18, "List is null."

    invoke-static/range {v17 .. v18}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v11, v0, [J

    .line 473
    :goto_0
    return-object v11

    .line 364
    :cond_0
    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 369
    .local v10, inBuffer:Ljava/nio/ByteBuffer;
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 372
    .local v13, mapAddress2ThreadId:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :try_start_0
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 379
    .local v7, count:I
    if-gez v7, :cond_1

    .line 380
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object p1, v17, v18

    const/16 v18, 0x1

    aput-object p2, v17, v18

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Invalid SMS count "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v11, v0, [J

    goto :goto_0

    .line 373
    .end local v7           #count:I
    :catch_0
    move-exception v8

    .line 374
    .local v8, e:Ljava/nio/BufferUnderflowException;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object p1, v17, v18

    const/16 v18, 0x1

    aput-object p2, v17, v18

    const-string v18, "Can not get the SMS count in raw data "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v8}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 376
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v11, v0, [J

    goto :goto_0

    .line 385
    .end local v8           #e:Ljava/nio/BufferUnderflowException;
    .restart local v7       #count:I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->getMaxSmsId()J

    move-result-wide v17

    const-wide/16 v19, 0x1

    add-long v5, v17, v19

    .line 387
    .local v5, beginId:J
    new-instance v12, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v12, v0, v1, v2}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy$1;-><init>(Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;[BLjava/util/ArrayList;)V

    .line 409
    .local v12, inserter:Lcom/mediatek/android/content/DefaultBulkInsertHelper;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    if-ge v9, v7, :cond_7

    .line 411
    new-instance v14, Lcom/mediatek/apst/util/entity/message/Sms;

    invoke-direct {v14}, Lcom/mediatek/apst/util/entity/message/Sms;-><init>()V

    .line 413
    .local v14, newSms:Lcom/mediatek/apst/util/entity/message/Sms;
    const/16 v17, 0x51a

    move/from16 v0, v17

    invoke-virtual {v14, v10, v0}, Lcom/mediatek/apst/util/entity/message/Sms;->readRawWithVersion(Ljava/nio/ByteBuffer;I)V

    .line 416
    int-to-long v0, v9

    move-wide/from16 v17, v0

    add-long v17, v17, v5

    move-wide/from16 v0, v17

    invoke-virtual {v14, v0, v1}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->setId(J)V

    .line 417
    invoke-virtual {v14}, Lcom/mediatek/apst/util/entity/message/Message;->getTarget()Lcom/mediatek/apst/util/entity/message/TargetAddress;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/apst/util/entity/message/TargetAddress;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 418
    .local v3, address:Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 419
    const-string v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 420
    .local v4, addressList:[Ljava/lang/String;
    array-length v0, v4

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_3

    .line 421
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->getOrCreateThreadId2([Ljava/lang/String;)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    .line 429
    .local v16, threadId:Ljava/lang/Long;
    :cond_2
    :goto_2
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    move-wide/from16 v0, v17

    invoke-virtual {v14, v0, v1}, Lcom/mediatek/apst/util/entity/message/Message;->setThreadId(J)V

    .line 431
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object p1, v17, v18

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SMS getOrCreateThreadId: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 441
    .end local v4           #addressList:[Ljava/lang/String;
    .end local v16           #threadId:Ljava/lang/Long;
    :goto_3
    const/16 v17, 0x1

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v14, v0, v1}, Lcom/mediatek/apst/target/data/provider/message/SmsContent;->createMeasuredContentValues(Lcom/mediatek/apst/util/entity/message/Sms;ZZ)Lcom/mediatek/android/content/MeasuredContentValues;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->append(Lcom/mediatek/android/content/MeasuredContentValues;)Z

    move-result v17

    if-nez v17, :cond_5

    const/4 v15, 0x1

    .line 443
    .local v15, shouldExit:Z
    :goto_4
    if-eqz v15, :cond_6

    .line 444
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object p1, v17, v18

    const/16 v18, 0x1

    aput-object p2, v17, v18

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error in bulk inserting SMS, statusCode: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v12}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->getStatusCode()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 447
    const/4 v10, 0x0

    .line 448
    invoke-virtual {v13}, Ljava/util/HashMap;->clear()V

    .line 449
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->clear()V

    .line 450
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v11, v0, [J

    goto/16 :goto_0

    .line 423
    .end local v15           #shouldExit:Z
    .restart local v4       #addressList:[Ljava/lang/String;
    :cond_3
    invoke-virtual {v13, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    .line 424
    .restart local v16       #threadId:Ljava/lang/Long;
    if-nez v16, :cond_2

    .line 425
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->getOrCreateThreadId(Ljava/lang/String;)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    .line 426
    move-object/from16 v0, v16

    invoke-virtual {v13, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 436
    .end local v4           #addressList:[Ljava/lang/String;
    .end local v16           #threadId:Ljava/lang/Long;
    :cond_4
    const-wide/16 v17, -0x1

    move-wide/from16 v0, v17

    invoke-virtual {v14, v0, v1}, Lcom/mediatek/apst/util/entity/message/Message;->setThreadId(J)V

    .line 437
    const-wide/16 v17, -0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v14, v17, v18

    const-string v18, "SMS havn\'t address!"

    invoke-static/range {v17 .. v18}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 441
    :cond_5
    const/4 v15, 0x0

    goto :goto_4

    .line 409
    .restart local v15       #shouldExit:Z
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 454
    .end local v3           #address:Ljava/lang/String;
    .end local v14           #newSms:Lcom/mediatek/apst/util/entity/message/Sms;
    .end local v15           #shouldExit:Z
    :cond_7
    invoke-virtual {v12}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->execute()Z

    move-result v17

    if-nez v17, :cond_8

    const/4 v15, 0x1

    .line 455
    .restart local v15       #shouldExit:Z
    :goto_5
    if-eqz v15, :cond_9

    .line 456
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object p1, v17, v18

    const/16 v18, 0x1

    aput-object p2, v17, v18

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error in bulk inserting SMS, statusCode: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v12}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->getStatusCode()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 459
    const/4 v10, 0x0

    .line 460
    invoke-virtual {v13}, Ljava/util/HashMap;->clear()V

    .line 461
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->clear()V

    .line 462
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v11, v0, [J

    goto/16 :goto_0

    .line 454
    .end local v15           #shouldExit:Z
    :cond_8
    const/4 v15, 0x0

    goto :goto_5

    .line 466
    .restart local v15       #shouldExit:Z
    :cond_9
    new-array v11, v7, [J

    .line 467
    .local v11, insertedIds:[J
    const/4 v9, 0x0

    :goto_6
    if-ge v9, v7, :cond_a

    .line 468
    int-to-long v0, v9

    move-wide/from16 v17, v0

    add-long v17, v17, v5

    aput-wide v17, v11, v9

    .line 467
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 471
    :cond_a
    const/4 v10, 0x0

    .line 472
    invoke-virtual {v13}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_0
.end method

.method public insertAddr(Lcom/mediatek/apst/util/entity/message/Mms;)V
    .locals 14
    .parameter "mms"

    .prologue
    const/16 v13, 0x89

    const/4 v12, 0x4

    const/16 v11, 0x6a

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2006
    new-array v5, v10, [Ljava/lang/Object;

    aput-object p1, v5, v9

    const-string v6, ">>insertMmsAddr begin"

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 2007
    new-array v5, v10, [Ljava/lang/Object;

    aput-object p1, v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">>insertMmsAddr mms id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 2008
    const/4 v4, 0x0

    .line 2009
    .local v4, valuesAddr:[Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/message/Message;->getBox()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    .line 2010
    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/message/Message;->getTarget()Lcom/mediatek/apst/util/entity/message/TargetAddress;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/apst/util/entity/message/TargetAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 2011
    .local v0, address:Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2012
    .local v1, addressList:[Ljava/lang/String;
    array-length v5, v1

    add-int/lit8 v5, v5, 0x1

    new-array v4, v5, [Landroid/content/ContentValues;

    .line 2013
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v1

    add-int/lit8 v5, v5, 0x1

    if-ge v2, v5, :cond_2

    .line 2014
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5, v12}, Landroid/content/ContentValues;-><init>(I)V

    aput-object v5, v4, v2

    .line 2015
    if-nez v2, :cond_0

    .line 2016
    aget-object v5, v4, v2

    const-string v6, "type"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2017
    aget-object v5, v4, v2

    const-string v6, "address"

    const-string v7, "insert-address-token"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2018
    aget-object v5, v4, v2

    const-string v6, "msg_id"

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2019
    aget-object v5, v4, v2

    const-string v6, "charset"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2013
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2021
    :cond_0
    aget-object v5, v4, v2

    const-string v6, "type"

    const/16 v7, 0x97

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2022
    aget-object v5, v4, v2

    const-string v6, "address"

    add-int/lit8 v7, v2, -0x1

    aget-object v7, v1, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2023
    aget-object v5, v4, v2

    const-string v6, "msg_id"

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2024
    aget-object v5, v4, v2

    const-string v6, "charset"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 2028
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #addressList:[Ljava/lang/String;
    .end local v2           #i:I
    :cond_1
    const/4 v5, 0x2

    new-array v4, v5, [Landroid/content/ContentValues;

    .line 2029
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5, v12}, Landroid/content/ContentValues;-><init>(I)V

    aput-object v5, v4, v9

    .line 2030
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5, v12}, Landroid/content/ContentValues;-><init>(I)V

    aput-object v5, v4, v10

    .line 2031
    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/message/Message;->getBox()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 2032
    aget-object v5, v4, v9

    const-string v6, "type"

    const/16 v7, 0x97

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2033
    aget-object v5, v4, v10

    const-string v6, "type"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2038
    :goto_2
    aget-object v5, v4, v9

    const-string v6, "address"

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/message/Message;->getTarget()Lcom/mediatek/apst/util/entity/message/TargetAddress;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/apst/util/entity/message/TargetAddress;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2039
    aget-object v5, v4, v9

    const-string v6, "msg_id"

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2040
    aget-object v5, v4, v9

    const-string v6, "charset"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2041
    aget-object v5, v4, v10

    const-string v6, "address"

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/message/Message;->getTarget()Lcom/mediatek/apst/util/entity/message/TargetAddress;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/apst/util/entity/message/TargetAddress;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2042
    aget-object v5, v4, v10

    const-string v6, "msg_id"

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2043
    aget-object v5, v4, v10

    const-string v6, "charset"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2045
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://mms/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/addr"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2046
    .local v3, uriAddr:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 2047
    new-array v5, v10, [Ljava/lang/Object;

    aput-object p1, v5, v9

    const-string v6, ">>insertMmsAddr end"

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 2049
    return-void

    .line 2035
    .end local v3           #uriAddr:Landroid/net/Uri;
    :cond_3
    aget-object v5, v4, v9

    const-string v6, "type"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2036
    aget-object v5, v4, v10

    const-string v6, "type"

    const/16 v7, 0x97

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2
.end method

.method public insertMms(Lcom/mediatek/apst/util/entity/message/Mms;)Z
    .locals 5
    .parameter "mms"

    .prologue
    const/4 v0, 0x0

    .line 1942
    if-nez p1, :cond_1

    .line 1952
    :cond_0
    :goto_0
    return v0

    .line 1946
    :cond_1
    const-wide/16 v1, -0x1

    invoke-virtual {p0, p1}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->insertPdu(Lcom/mediatek/apst/util/entity/message/Mms;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 1949
    invoke-virtual {p0, p1}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->insertAddr(Lcom/mediatek/apst/util/entity/message/Mms;)V

    .line 1950
    invoke-virtual {p0, p1}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->insertPart(Lcom/mediatek/apst/util/entity/message/Mms;)V

    .line 1952
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public insertMmsOld(Lcom/mediatek/apst/util/entity/message/Mms;Z)V
    .locals 26
    .parameter "mms"
    .parameter "isBackup"

    .prologue
    .line 1780
    if-eqz p1, :cond_8

    .line 1782
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object p1, v21, v22

    const-string v22, ">>insertMms begin"

    invoke-static/range {v21 .. v22}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1783
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object p1, v21, v22

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "The Mms id is"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1784
    new-instance v20, Landroid/content/ContentValues;

    const/16 v21, 0x13

    invoke-direct/range {v20 .. v21}, Landroid/content/ContentValues;-><init>(I)V

    .line 1785
    .local v20, valuesPdu:Landroid/content/ContentValues;
    const-string v21, "_id"

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1786
    const-string v21, "thread_id"

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/message/Message;->getThreadId()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1787
    const-string v21, "sub"

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/message/Message;->getSubject()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1788
    const-string v21, "ct_t"

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/message/Mms;->getContentType()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1789
    const-string v21, "msg_box"

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/message/Message;->getBox()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1790
    const-string v21, "date"

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/message/Message;->getDate()J

    move-result-wide v22

    const-wide/16 v24, 0x3e8

    div-long v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1791
    const-string v22, "read"

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/message/Message;->isRead()Z

    move-result v21

    if-eqz v21, :cond_0

    const/16 v21, 0x1

    :goto_0
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1794
    const-string v22, "locked"

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/message/Message;->isLocked()Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v21, 0x1

    :goto_1
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1798
    const-string v21, "m_id"

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/message/Mms;->getM_id()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1799
    const-string v21, "sub_cs"

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/message/Mms;->getSub_cs()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1800
    const-string v21, "m_cls"

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/message/Mms;->getM_cls()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1801
    const-string v21, "m_type"

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/message/Mms;->getM_type()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1802
    const-string v21, "v"

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/message/Mms;->getV()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1803
    const-string v21, "m_size"

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/message/Mms;->getM_size()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1804
    const-string v21, "tr_id"

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/message/Mms;->getTr_id()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1805
    const-string v21, "d_rpt"

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/message/Mms;->getD_rpt()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1806
    const-string v21, "seen"

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/message/Mms;->getSeen()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1807
    const-string v21, "sim_id"

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/message/Message;->getSimId()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1809
    const-string v21, "date_sent"

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/message/Message;->getDate_sent()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1811
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    sget-object v22, Lcom/mediatek/apst/target/data/provider/message/MmsContent;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1812
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object p1, v21, v22

    const-string v22, ">>insertMmsPdu end"

    invoke-static/range {v21 .. v22}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1817
    const/16 v18, 0x0

    .line 1818
    .local v18, valuesAddr:[Landroid/content/ContentValues;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/message/Message;->getBox()I

    move-result v21

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 1819
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/message/Message;->getTarget()Lcom/mediatek/apst/util/entity/message/TargetAddress;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/mediatek/apst/util/entity/message/TargetAddress;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 1820
    .local v3, address:Ljava/lang/String;
    const-string v21, ","

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1821
    .local v4, addressList:[Ljava/lang/String;
    array-length v0, v4

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Landroid/content/ContentValues;

    move-object/from16 v18, v0

    .line 1822
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    array-length v0, v4

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    if-ge v9, v0, :cond_4

    .line 1823
    new-instance v21, Landroid/content/ContentValues;

    const/16 v22, 0x4

    invoke-direct/range {v21 .. v22}, Landroid/content/ContentValues;-><init>(I)V

    aput-object v21, v18, v9

    .line 1824
    if-nez v9, :cond_2

    .line 1825
    aget-object v21, v18, v9

    const-string v22, "type"

    const/16 v23, 0x89

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1827
    aget-object v21, v18, v9

    const-string v22, "address"

    const-string v23, "insert-address-token"

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1829
    aget-object v21, v18, v9

    const-string v22, "msg_id"

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1831
    aget-object v21, v18, v9

    const-string v22, "charset"

    const/16 v23, 0x6a

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1822
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1791
    .end local v3           #address:Ljava/lang/String;
    .end local v4           #addressList:[Ljava/lang/String;
    .end local v9           #i:I
    .end local v18           #valuesAddr:[Landroid/content/ContentValues;
    :cond_0
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 1794
    :cond_1
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 1834
    .restart local v3       #address:Ljava/lang/String;
    .restart local v4       #addressList:[Ljava/lang/String;
    .restart local v9       #i:I
    .restart local v18       #valuesAddr:[Landroid/content/ContentValues;
    :cond_2
    aget-object v21, v18, v9

    const-string v22, "type"

    const/16 v23, 0x97

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1836
    aget-object v21, v18, v9

    const-string v22, "address"

    add-int/lit8 v23, v9, -0x1

    aget-object v23, v4, v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1838
    aget-object v21, v18, v9

    const-string v22, "msg_id"

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1840
    aget-object v21, v18, v9

    const-string v22, "charset"

    const/16 v23, 0x6a

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    .line 1845
    .end local v3           #address:Ljava/lang/String;
    .end local v4           #addressList:[Ljava/lang/String;
    .end local v9           #i:I
    :cond_3
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Landroid/content/ContentValues;

    move-object/from16 v18, v0

    .line 1846
    const/16 v21, 0x0

    new-instance v22, Landroid/content/ContentValues;

    const/16 v23, 0x4

    invoke-direct/range {v22 .. v23}, Landroid/content/ContentValues;-><init>(I)V

    aput-object v22, v18, v21

    .line 1847
    const/16 v21, 0x1

    new-instance v22, Landroid/content/ContentValues;

    const/16 v23, 0x4

    invoke-direct/range {v22 .. v23}, Landroid/content/ContentValues;-><init>(I)V

    aput-object v22, v18, v21

    .line 1848
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/message/Message;->getBox()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 1849
    const/16 v21, 0x0

    aget-object v21, v18, v21

    const-string v22, "type"

    const/16 v23, 0x97

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1851
    const/16 v21, 0x1

    aget-object v21, v18, v21

    const-string v22, "type"

    const/16 v23, 0x89

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1859
    :goto_4
    const/16 v21, 0x0

    aget-object v21, v18, v21

    const-string v22, "address"

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/message/Message;->getTarget()Lcom/mediatek/apst/util/entity/message/TargetAddress;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/mediatek/apst/util/entity/message/TargetAddress;->getAddress()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1861
    const/16 v21, 0x0

    aget-object v21, v18, v21

    const-string v22, "msg_id"

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1862
    const/16 v21, 0x0

    aget-object v21, v18, v21

    const-string v22, "charset"

    const/16 v23, 0x6a

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1864
    const/16 v21, 0x1

    aget-object v21, v18, v21

    const-string v22, "address"

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/message/Message;->getTarget()Lcom/mediatek/apst/util/entity/message/TargetAddress;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/mediatek/apst/util/entity/message/TargetAddress;->getAddress()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1866
    const/16 v21, 0x1

    aget-object v21, v18, v21

    const-string v22, "msg_id"

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1867
    const/16 v21, 0x1

    aget-object v21, v18, v21

    const-string v22, "charset"

    const/16 v23, 0x6a

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1870
    :cond_4
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "content://mms/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/addr"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 1872
    .local v17, uriAddr:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 1873
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object p1, v21, v22

    const-string v22, ">>insertMmsAddr end"

    invoke-static/range {v21 .. v22}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1876
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/message/Mms;->getParts()Ljava/util/List;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 1878
    .local v13, mmsParts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/message/MmsPart;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->getMaxMmsPartId()J

    move-result-wide v21

    const-wide/16 v23, 0x1

    add-long v5, v21, v23

    .line 1879
    .local v5, beginPartId:J
    const-wide/16 v11, 0x0

    .line 1880
    .local v11, j:J
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/mediatek/apst/util/entity/message/MmsPart;

    .line 1881
    .local v15, part:Lcom/mediatek/apst/util/entity/message/MmsPart;
    new-instance v19, Landroid/content/ContentValues;

    const/16 v21, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1882
    .local v19, valuesPart:Landroid/content/ContentValues;
    const-string v21, "mid"

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1885
    const-string v21, "seq"

    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/message/MmsPart;->getSequence()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1886
    const-string v21, "ct"

    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/message/MmsPart;->getContentType()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1888
    const-string v21, "name"

    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/message/MmsPart;->getName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1889
    const-string v21, "chset"

    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/message/MmsPart;->getCharset()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1891
    const-string v21, "cid"

    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/message/MmsPart;->getCid()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1892
    const-string v21, "cl"

    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/message/MmsPart;->getCl()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1893
    const-string v21, "text"

    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/message/MmsPart;->getText()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1894
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "content://mms/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/part"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 1898
    .local v16, uri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1908
    :goto_6
    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/message/MmsPart;->getDataPath()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_5

    .line 1910
    :try_start_1
    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/message/MmsPart;->getByteArray()[B

    move-result-object v7

    .line 1911
    .local v7, buffer:[B
    if-eqz v7, :cond_5

    .line 1912
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v15, v21, v22

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "DataPath is :"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/message/MmsPart;->getDataPath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1914
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "content://mms/part/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    add-long v23, v5, v11

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v14

    .line 1918
    .local v14, os:Ljava/io/OutputStream;
    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/message/MmsPart;->getByteArray()[B

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1919
    invoke-virtual {v14}, Ljava/io/OutputStream;->flush()V

    .line 1920
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1928
    .end local v7           #buffer:[B
    .end local v14           #os:Ljava/io/OutputStream;
    :cond_5
    :goto_7
    const-wide/16 v21, 0x1

    add-long v11, v11, v21

    .line 1929
    goto/16 :goto_5

    .line 1854
    .end local v5           #beginPartId:J
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #j:J
    .end local v13           #mmsParts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/message/MmsPart;>;"
    .end local v15           #part:Lcom/mediatek/apst/util/entity/message/MmsPart;
    .end local v16           #uri:Landroid/net/Uri;
    .end local v17           #uriAddr:Landroid/net/Uri;
    .end local v19           #valuesPart:Landroid/content/ContentValues;
    :cond_6
    const/16 v21, 0x0

    aget-object v21, v18, v21

    const-string v22, "type"

    const/16 v23, 0x89

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1856
    const/16 v21, 0x1

    aget-object v21, v18, v21

    const-string v22, "type"

    const/16 v23, 0x97

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_4

    .line 1899
    .restart local v5       #beginPartId:J
    .restart local v10       #i$:Ljava/util/Iterator;
    .restart local v11       #j:J
    .restart local v13       #mmsParts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/message/MmsPart;>;"
    .restart local v15       #part:Lcom/mediatek/apst/util/entity/message/MmsPart;
    .restart local v16       #uri:Landroid/net/Uri;
    .restart local v17       #uriAddr:Landroid/net/Uri;
    .restart local v19       #valuesPart:Landroid/content/ContentValues;
    :catch_0
    move-exception v8

    .line 1900
    .local v8, e:Ljava/lang/IllegalStateException;
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    const-string v22, "Catch IllegalStateException , maybe this part doesn\'t insert to db"

    invoke-static/range {v21 .. v22}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1903
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_6

    .line 1922
    .end local v8           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v8

    .line 1923
    .local v8, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    .line 1924
    .end local v8           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v8

    .line 1925
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    .line 1930
    .end local v8           #e:Ljava/io/IOException;
    .end local v15           #part:Lcom/mediatek/apst/util/entity/message/MmsPart;
    .end local v16           #uri:Landroid/net/Uri;
    .end local v19           #valuesPart:Landroid/content/ContentValues;
    :cond_7
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object p1, v21, v22

    const-string v22, ">>WriteMmsPart end"

    invoke-static/range {v21 .. v22}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1932
    .end local v5           #beginPartId:J
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #j:J
    .end local v13           #mmsParts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/message/MmsPart;>;"
    .end local v17           #uriAddr:Landroid/net/Uri;
    .end local v18           #valuesAddr:[Landroid/content/ContentValues;
    .end local v20           #valuesPdu:Landroid/content/ContentValues;
    :cond_8
    return-void
.end method

.method public insertPart(Lcom/mediatek/apst/util/entity/message/Mms;)V
    .locals 15
    .parameter "mms"

    .prologue
    .line 2058
    const-wide/16 v6, 0x0

    .line 2059
    .local v6, partId:J
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/message/Mms;->getParts()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 2060
    .local v3, mmsParts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/message/MmsPart;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/apst/util/entity/message/MmsPart;

    .line 2061
    .local v5, part:Lcom/mediatek/apst/util/entity/message/MmsPart;
    new-instance v10, Landroid/content/ContentValues;

    const/16 v11, 0x8

    invoke-direct {v10, v11}, Landroid/content/ContentValues;-><init>(I)V

    .line 2062
    .local v10, valuesPart:Landroid/content/ContentValues;
    const-string v11, "mid"

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2063
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p1, v11, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mmspart>> mmsId is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 2064
    const-string v11, "seq"

    invoke-virtual {v5}, Lcom/mediatek/apst/util/entity/message/MmsPart;->getSequence()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2065
    const-string v11, "ct"

    invoke-virtual {v5}, Lcom/mediatek/apst/util/entity/message/MmsPart;->getContentType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2066
    const-string v11, "name"

    invoke-virtual {v5}, Lcom/mediatek/apst/util/entity/message/MmsPart;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2067
    const-string v11, "chset"

    invoke-virtual {v5}, Lcom/mediatek/apst/util/entity/message/MmsPart;->getCharset()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2068
    const-string v11, "cid"

    invoke-virtual {v5}, Lcom/mediatek/apst/util/entity/message/MmsPart;->getCid()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2069
    const-string v11, "cl"

    invoke-virtual {v5}, Lcom/mediatek/apst/util/entity/message/MmsPart;->getCl()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2070
    const-string v11, "text"

    invoke-virtual {v5}, Lcom/mediatek/apst/util/entity/message/MmsPart;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2071
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "content://mms/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/part"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 2074
    .local v8, uri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v11, v8, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    .line 2075
    .local v9, uriPart:Landroid/net/Uri;
    invoke-virtual {v9}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v6

    .line 2083
    .end local v9           #uriPart:Landroid/net/Uri;
    :goto_1
    invoke-virtual {v5}, Lcom/mediatek/apst/util/entity/message/MmsPart;->getDataPath()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 2085
    :try_start_1
    invoke-virtual {v5}, Lcom/mediatek/apst/util/entity/message/MmsPart;->getByteArray()[B

    move-result-object v0

    .line 2086
    .local v0, buffer:[B
    if-eqz v0, :cond_0

    .line 2087
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v5, v11, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "DataPath is :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Lcom/mediatek/apst/util/entity/message/MmsPart;->getDataPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 2088
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "content://mms/part/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v4

    .line 2090
    .local v4, os:Ljava/io/OutputStream;
    invoke-virtual {v5}, Lcom/mediatek/apst/util/entity/message/MmsPart;->getByteArray()[B

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/io/OutputStream;->write([B)V

    .line 2091
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 2092
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 2094
    .end local v0           #buffer:[B
    .end local v4           #os:Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 2095
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 2076
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 2077
    .local v1, e:Ljava/lang/IllegalStateException;
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const-string v12, "Catch IllegalStateException , maybe this part doesn\'t insert to db"

    invoke-static {v11, v12}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 2079
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 2096
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v1

    .line 2097
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 2101
    .end local v1           #e:Ljava/io/IOException;
    .end local v5           #part:Lcom/mediatek/apst/util/entity/message/MmsPart;
    .end local v8           #uri:Landroid/net/Uri;
    .end local v10           #valuesPart:Landroid/content/ContentValues;
    :cond_1
    return-void
.end method

.method public insertPdu(Lcom/mediatek/apst/util/entity/message/Mms;)J
    .locals 12
    .parameter "mms"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1962
    const-wide/16 v1, 0x0

    .line 1963
    .local v1, insertId:J
    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, v7

    const-string v8, ">>insertMms begin"

    invoke-static {v5, v8}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1964
    new-instance v4, Landroid/content/ContentValues;

    const/16 v5, 0x12

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 1965
    .local v4, valuesPdu:Landroid/content/ContentValues;
    const-string v5, "thread_id"

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/message/Message;->getThreadId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1966
    const-string v5, "sub"

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/message/Message;->getSubject()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1967
    const-string v5, "ct_t"

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/message/Mms;->getContentType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1968
    const-string v5, "msg_box"

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/message/Message;->getBox()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1969
    const-string v5, "date"

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/message/Message;->getDate()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1970
    const-string v8, "read"

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/message/Message;->isRead()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v6

    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1971
    const-string v8, "locked"

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/message/Message;->isLocked()Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v6

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1972
    const-string v5, "m_id"

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/message/Mms;->getM_id()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1973
    const-string v5, "sub_cs"

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/message/Mms;->getSub_cs()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1974
    const-string v5, "m_cls"

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/message/Mms;->getM_cls()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1975
    const-string v5, "m_type"

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/message/Mms;->getM_type()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1976
    const-string v5, "v"

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/message/Mms;->getV()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1977
    const-string v5, "m_size"

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/message/Mms;->getM_size()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1978
    const-string v5, "tr_id"

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/message/Mms;->getTr_id()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1979
    const-string v5, "d_rpt"

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/message/Mms;->getD_rpt()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1980
    const-string v5, "seen"

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/message/Mms;->getSeen()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1981
    const-string v5, "sim_id"

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/message/Message;->getSimId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1982
    const-string v5, "date_sent"

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/message/Message;->getDate_sent()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1985
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v8, Lcom/mediatek/apst/target/data/provider/message/MmsContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v8, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 1986
    .local v3, uriPdu:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 1988
    invoke-virtual {p1, v1, v2}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->setId(J)V

    .line 1990
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v5, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ">>insertMmsPdu end mms id is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1996
    .end local v3           #uriPdu:Landroid/net/Uri;
    :goto_2
    return-wide v1

    :cond_0
    move v5, v7

    .line 1970
    goto/16 :goto_0

    :cond_1
    move v5, v7

    .line 1971
    goto/16 :goto_1

    .line 1991
    :catch_0
    move-exception v0

    .line 1992
    .local v0, e:Ljava/lang/Exception;
    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, v7

    const-string v6, ">>insertMmsPdu exception !"

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1993
    const-wide/16 v1, -0x1

    goto :goto_2
.end method

.method public insertSms(Lcom/mediatek/apst/util/entity/message/Sms;Z)J
    .locals 12
    .parameter "sms"
    .parameter "regenThreadId"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1717
    if-nez p1, :cond_0

    .line 1718
    new-array v6, v10, [Ljava/lang/Object;

    aput-object p1, v6, v8

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v9

    const-string v7, "Sms is null."

    invoke-static {v6, v7}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1719
    const-wide/16 v2, -0x1

    .line 1746
    :goto_0
    return-wide v2

    .line 1721
    :cond_0
    const-wide/16 v2, -0x1

    .line 1723
    .local v2, insertedId:J
    if-eqz p2, :cond_1

    .line 1724
    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/message/Message;->getTarget()Lcom/mediatek/apst/util/entity/message/TargetAddress;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1725
    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/message/Message;->getTarget()Lcom/mediatek/apst/util/entity/message/TargetAddress;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/apst/util/entity/message/TargetAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1726
    .local v0, address:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1727
    invoke-virtual {p0, v0}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->getOrCreateThreadId(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Lcom/mediatek/apst/util/entity/message/Message;->setThreadId(J)V

    .line 1732
    .end local v0           #address:Ljava/lang/String;
    :cond_1
    invoke-static {p1, v8, v9}, Lcom/mediatek/apst/target/data/provider/message/SmsContent;->createContentValues(Lcom/mediatek/apst/util/entity/message/Sms;ZZ)Landroid/content/ContentValues;

    move-result-object v5

    .line 1734
    .local v5, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v6

    sget-object v7, Lcom/mediatek/apst/target/data/provider/message/SmsContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v5}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 1737
    .local v4, uri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    .line 1744
    :goto_1
    invoke-virtual {p1, v2, v3}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->setId(J)V

    goto :goto_0

    .line 1738
    :catch_0
    move-exception v1

    .line 1739
    .local v1, e:Ljava/lang/NumberFormatException;
    new-array v6, v10, [Ljava/lang/Object;

    aput-object p1, v6, v8

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v6, v11, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1740
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 1741
    .local v1, e:Ljava/lang/NullPointerException;
    new-array v6, v10, [Ljava/lang/Object;

    aput-object p1, v6, v8

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v6, v11, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public insertSms(Ljava/lang/String;)J
    .locals 12
    .parameter "address"

    .prologue
    const/4 v2, 0x0

    .line 1757
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, ">>insertSms"

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1758
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1759
    .local v11, values:Landroid/content/ContentValues;
    const-string v0, "address"

    invoke-virtual {v11, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1760
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/apst/target/data/provider/message/SmsContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1761
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/apst/target/data/provider/message/SmsContent;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1763
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToLast()Z

    .line 1764
    const-string v0, "thread_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1766
    .local v9, threadId:J
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1767
    .local v7, smsId:J
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1768
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/apst/target/data/provider/message/SmsContent;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1770
    return-wide v9
.end method

.method public lockMms(JZ)I
    .locals 6
    .parameter "id"
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    .line 1249
    const/4 v0, 0x0

    .line 1251
    .local v0, updateCount:I
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 1252
    .local v1, values:Landroid/content/ContentValues;
    const-string v3, "locked"

    if-eqz p3, :cond_0

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1255
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v2

    sget-object v3, Lcom/mediatek/apst/target/data/provider/message/MmsContent;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1259
    return v0

    .line 1252
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public lockMms([JZ)I
    .locals 8
    .parameter "ids"
    .parameter "state"

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 1309
    if-nez p1, :cond_0

    .line 1310
    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v7

    const-string v6, "List is null."

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1337
    :goto_0
    return v3

    .line 1313
    :cond_0
    array-length v5, p1

    if-gtz v5, :cond_1

    .line 1314
    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v7

    const-string v6, "List is empty."

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1318
    :cond_1
    const/4 v3, 0x0

    .line 1319
    .local v3, updateCount:I
    const/4 v1, 0x0

    .line 1321
    .local v1, selection:Ljava/lang/String;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 1322
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "locked"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1324
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1325
    .local v2, strBuf:Ljava/lang/StringBuffer;
    const-string v5, "_id IN("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1326
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v5, p1

    if-ge v0, v5, :cond_2

    .line 1327
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v6, p1, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1326
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1330
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 1331
    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1332
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1334
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v5

    sget-object v6, Lcom/mediatek/apst/target/data/provider/message/MmsContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v4, v1, v7}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 1337
    goto :goto_0
.end method

.method public lockSms(JZ)I
    .locals 6
    .parameter "id"
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    .line 1228
    const/4 v0, 0x0

    .line 1230
    .local v0, updateCount:I
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 1231
    .local v1, values:Landroid/content/ContentValues;
    const-string v3, "locked"

    if-eqz p3, :cond_0

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1234
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v2

    sget-object v3, Lcom/mediatek/apst/target/data/provider/message/SmsContent;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1238
    return v0

    .line 1231
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public lockSms([JZ)I
    .locals 8
    .parameter "ids"
    .parameter "state"

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 1270
    if-nez p1, :cond_0

    .line 1271
    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v7

    const-string v6, "List is null."

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1298
    :goto_0
    return v3

    .line 1274
    :cond_0
    array-length v5, p1

    if-gtz v5, :cond_1

    .line 1275
    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v7

    const-string v6, "List is empty."

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1279
    :cond_1
    const/4 v3, 0x0

    .line 1280
    .local v3, updateCount:I
    const/4 v1, 0x0

    .line 1282
    .local v1, selection:Ljava/lang/String;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 1283
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "locked"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1285
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1286
    .local v2, strBuf:Ljava/lang/StringBuffer;
    const-string v5, "_id IN("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1287
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v5, p1

    if-ge v0, v5, :cond_2

    .line 1288
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v6, p1, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1287
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1291
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 1292
    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1293
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1295
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v5

    sget-object v6, Lcom/mediatek/apst/target/data/provider/message/SmsContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v4, v1, v7}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 1298
    goto :goto_0
.end method

.method public lookupContact(Ljava/lang/String;)Lcom/mediatek/apst/util/entity/message/TargetAddress;
    .locals 12
    .parameter "number"

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 749
    if-nez p1, :cond_0

    .line 798
    :goto_0
    return-object v4

    .line 753
    :cond_0
    new-instance v9, Lcom/mediatek/apst/util/entity/message/TargetAddress;

    invoke-direct {v9, p1}, Lcom/mediatek/apst/util/entity/message/TargetAddress;-><init>(Ljava/lang/String;)V

    .line 756
    .local v9, target:Lcom/mediatek/apst/util/entity/message/TargetAddress;
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v11, [Ljava/lang/String;

    const-string v3, "raw_contact_id"

    aput-object v3, v2, v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data1=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "mimetype"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "raw_contact_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 763
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 764
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 766
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 767
    .local v7, rawContactId:J
    invoke-virtual {v9, v7, v8}, Lcom/mediatek/apst/util/entity/message/TargetAddress;->setContactId(J)V

    .line 769
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 770
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v11, [Ljava/lang/String;

    const-string v3, "display_name"

    aput-object v3, v2, v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 773
    if-eqz v6, :cond_3

    .line 774
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 775
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/mediatek/apst/util/entity/message/TargetAddress;->setName(Ljava/lang/String;)V

    .line 787
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v7           #rawContactId:J
    :cond_1
    :goto_2
    move-object v4, v9

    .line 798
    goto/16 :goto_0

    .line 781
    .restart local v7       #rawContactId:J
    :cond_2
    new-array v0, v11, [Ljava/lang/Object;

    aput-object p1, v0, v10

    const-string v1, "Cannot find a raw contact with the _id value of this phone number data\'s raw_contact_id."

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 789
    :cond_3
    new-array v0, v11, [Ljava/lang/Object;

    aput-object p1, v0, v10

    const-string v1, "Cursor is null. Failed to find a raw contact with the _id value of this phone number data\'s raw_contact_id."

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public markMmsAsRead(JZ)I
    .locals 6
    .parameter "id"
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    .line 1372
    const/4 v0, 0x0

    .line 1374
    .local v0, updateCount:I
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 1375
    .local v1, values:Landroid/content/ContentValues;
    const-string v3, "read"

    if-eqz p3, :cond_0

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1378
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v2

    sget-object v3, Lcom/mediatek/apst/target/data/provider/message/MmsContent;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1383
    invoke-direct {p0}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->updateMmsNotifications()V

    .line 1385
    return v0

    .line 1375
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public markMmsAsRead([JZ)I
    .locals 8
    .parameter "ids"
    .parameter "state"

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 1438
    if-nez p1, :cond_0

    .line 1439
    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v7

    const-string v6, "List is null."

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1469
    :goto_0
    return v3

    .line 1442
    :cond_0
    array-length v5, p1

    if-gtz v5, :cond_1

    .line 1443
    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v7

    const-string v6, "List is empty."

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1447
    :cond_1
    const/4 v3, 0x0

    .line 1448
    .local v3, updateCount:I
    const/4 v1, 0x0

    .line 1450
    .local v1, selection:Ljava/lang/String;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 1451
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "read"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1453
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1454
    .local v2, strBuf:Ljava/lang/StringBuffer;
    const-string v5, "_id IN("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1455
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v5, p1

    if-ge v0, v5, :cond_2

    .line 1456
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v6, p1, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1455
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1459
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 1460
    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1461
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1463
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v5

    sget-object v6, Lcom/mediatek/apst/target/data/provider/message/MmsContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v4, v1, v7}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 1467
    invoke-direct {p0}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->updateMmsNotifications()V

    goto :goto_0
.end method

.method public markSmsAsRead(JZ)I
    .locals 6
    .parameter "id"
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    .line 1348
    const/4 v0, 0x0

    .line 1350
    .local v0, updateCount:I
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 1351
    .local v1, values:Landroid/content/ContentValues;
    const-string v3, "read"

    if-eqz p3, :cond_0

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1354
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v2

    sget-object v3, Lcom/mediatek/apst/target/data/provider/message/SmsContent;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1359
    invoke-direct {p0}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->updateMmsNotifications()V

    .line 1361
    return v0

    .line 1351
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public markSmsAsRead([JZ)I
    .locals 8
    .parameter "ids"
    .parameter "state"

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 1396
    if-nez p1, :cond_0

    .line 1397
    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v7

    const-string v6, "List is null."

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1427
    :goto_0
    return v3

    .line 1400
    :cond_0
    array-length v5, p1

    if-gtz v5, :cond_1

    .line 1401
    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v7

    const-string v6, "List is empty."

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1405
    :cond_1
    const/4 v3, 0x0

    .line 1406
    .local v3, updateCount:I
    const/4 v1, 0x0

    .line 1408
    .local v1, selection:Ljava/lang/String;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 1409
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "read"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1411
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1412
    .local v2, strBuf:Ljava/lang/StringBuffer;
    const-string v5, "_id IN("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1413
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v5, p1

    if-ge v0, v5, :cond_2

    .line 1414
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v6, p1, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1413
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1417
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 1418
    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1419
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1421
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v5

    sget-object v6, Lcom/mediatek/apst/target/data/provider/message/SmsContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v4, v1, v7}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 1425
    invoke-direct {p0}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->updateMmsNotifications()V

    goto :goto_0
.end method

.method public moveMmsToBox([JZ[JI)I
    .locals 11
    .parameter "ids"
    .parameter "checkDates"
    .parameter "dates"
    .parameter "box"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 1161
    if-nez p1, :cond_0

    .line 1162
    new-array v5, v10, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v7

    aput-object p3, v5, v8

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    const-string v6, "List is null."

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1217
    :goto_0
    return v3

    .line 1166
    :cond_0
    array-length v5, p1

    if-gtz v5, :cond_1

    .line 1167
    new-array v5, v10, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v7

    aput-object p3, v5, v8

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    const-string v6, "List is empty."

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1171
    :cond_1
    if-eqz p2, :cond_2

    array-length v5, p1

    array-length v6, p3

    if-eq v5, v6, :cond_2

    .line 1172
    new-array v5, v10, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v7

    aput-object p3, v5, v8

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    const-string v6, "Size of ID list does not match size of date list."

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1177
    :cond_2
    const/4 v3, 0x0

    .line 1178
    .local v3, updateCount:I
    const/4 v1, 0x0

    .line 1180
    .local v1, selection:Ljava/lang/String;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 1181
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "msg_box"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1183
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1195
    .local v2, strBuf:Ljava/lang/StringBuffer;
    const-string v5, "_id IN("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1196
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v5, p1

    if-ge v0, v5, :cond_3

    .line 1197
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v6, p1, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1196
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1200
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 1201
    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1208
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1211
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v5

    sget-object v6, Lcom/mediatek/apst/target/data/provider/message/MmsContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v4, v1, v7}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 1215
    invoke-direct {p0}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->updateMmsNotifications()V

    goto/16 :goto_0
.end method

.method public moveSmsToBox([JZ[JI)I
    .locals 11
    .parameter "ids"
    .parameter "checkDates"
    .parameter "dates"
    .parameter "box"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 1089
    if-nez p1, :cond_0

    .line 1090
    new-array v5, v10, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v7

    aput-object p3, v5, v8

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    const-string v6, "List is null."

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1145
    :goto_0
    return v3

    .line 1094
    :cond_0
    array-length v5, p1

    if-gtz v5, :cond_1

    .line 1095
    new-array v5, v10, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v7

    aput-object p3, v5, v8

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    const-string v6, "List is empty."

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1099
    :cond_1
    if-eqz p2, :cond_2

    array-length v5, p1

    array-length v6, p3

    if-eq v5, v6, :cond_2

    .line 1100
    new-array v5, v10, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v7

    aput-object p3, v5, v8

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    const-string v6, "Size of ID list does not match size of date list."

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1105
    :cond_2
    const/4 v3, 0x0

    .line 1106
    .local v3, updateCount:I
    const/4 v1, 0x0

    .line 1108
    .local v1, selection:Ljava/lang/String;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 1109
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "type"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1111
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1123
    .local v2, strBuf:Ljava/lang/StringBuffer;
    const-string v5, "_id IN("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1124
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v5, p1

    if-ge v0, v5, :cond_3

    .line 1125
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v6, p1, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1124
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1128
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 1129
    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1136
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1139
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v5

    sget-object v6, Lcom/mediatek/apst/target/data/provider/message/SmsContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v4, v1, v7}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 1143
    invoke-direct {p0}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->updateMmsNotifications()V

    goto/16 :goto_0
.end method

.method public resendSms(JJLjava/lang/String;Ljava/lang/String;Lcom/mediatek/apst/target/service/SmsSender;I)Lcom/mediatek/apst/util/entity/message/Sms;
    .locals 13
    .parameter "id"
    .parameter "date"
    .parameter "body"
    .parameter "recipient"
    .parameter "smsSender"
    .parameter "simId"

    .prologue
    .line 1645
    if-nez p5, :cond_0

    .line 1646
    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    aput-object p5, v9, v10

    const/4 v10, 0x3

    aput-object p6, v9, v10

    const/4 v10, 0x4

    aput-object p7, v9, v10

    const-string v10, "Sms body should not be null."

    invoke-static {v9, v10}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1649
    const/4 v5, 0x0

    .line 1706
    :goto_0
    return-object v5

    .line 1650
    :cond_0
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_1

    .line 1651
    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    aput-object p5, v9, v10

    const/4 v10, 0x3

    aput-object p6, v9, v10

    const/4 v10, 0x4

    aput-object p7, v9, v10

    const-string v10, "Sms body should not be empty."

    invoke-static {v9, v10}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1654
    const/4 v5, 0x0

    goto :goto_0

    .line 1656
    :cond_1
    if-nez p6, :cond_2

    .line 1657
    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    aput-object p5, v9, v10

    const/4 v10, 0x3

    aput-object p6, v9, v10

    const/4 v10, 0x4

    aput-object p7, v9, v10

    const-string v10, "Sms recipient should not be null."

    invoke-static {v9, v10}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1660
    const/4 v5, 0x0

    goto :goto_0

    .line 1664
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1665
    .local v3, newDate:J
    new-instance v8, Landroid/content/ContentValues;

    const/4 v9, 0x3

    invoke-direct {v8, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 1666
    .local v8, values:Landroid/content/ContentValues;
    const-string v9, "date"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1667
    const-string v9, "type"

    const/4 v10, 0x4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1669
    invoke-static/range {p8 .. p8}, Lcom/mediatek/apst/target/util/Global;->getSimInfoBySlot(I)Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

    move-result-object v6

    .line 1670
    .local v6, simInfo:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;
    const-string v9, "sim_id"

    invoke-virtual {v6}, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->getSimId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1672
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/mediatek/apst/target/data/provider/message/SmsContent;->CONTENT_URI:Landroid/net/Uri;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "_id="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " AND "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "date"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, p3

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " AND "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "type"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " AND "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "address"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "=\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p6

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\' AND "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "body"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "=\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p5

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v8, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 1682
    .local v7, updatedCount:I
    const/4 v9, 0x1

    if-ne v7, v9, :cond_3

    .line 1684
    new-instance v5, Lcom/mediatek/apst/util/entity/message/Sms;

    invoke-direct {v5}, Lcom/mediatek/apst/util/entity/message/Sms;-><init>()V

    .line 1685
    .local v5, outgoingSms:Lcom/mediatek/apst/util/entity/message/Sms;
    invoke-virtual {v5, p1, p2}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->setId(J)V

    .line 1686
    invoke-virtual {v5, v3, v4}, Lcom/mediatek/apst/util/entity/message/Message;->setDate(J)V

    .line 1687
    new-instance v9, Lcom/mediatek/apst/util/entity/message/TargetAddress;

    move-object/from16 v0, p6

    invoke-direct {v9, v0}, Lcom/mediatek/apst/util/entity/message/TargetAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Lcom/mediatek/apst/util/entity/message/Message;->setTarget(Lcom/mediatek/apst/util/entity/message/TargetAddress;)V

    .line 1688
    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Lcom/mediatek/apst/util/entity/message/Sms;->setBody(Ljava/lang/String;)V

    .line 1690
    const/4 v9, 0x4

    invoke-virtual {v5, v9}, Lcom/mediatek/apst/util/entity/message/Message;->setBox(I)V

    .line 1693
    invoke-static/range {p8 .. p8}, Lcom/mediatek/apst/target/util/Global;->getSimInfoBySlot(I)Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

    move-result-object v2

    .line 1694
    .local v2, info:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;
    invoke-virtual {v2}, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->getSimId()I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/mediatek/apst/util/entity/message/Message;->setSimId(I)V

    .line 1695
    invoke-virtual {v2}, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/mediatek/apst/util/entity/message/Message;->setSimName(Ljava/lang/String;)V

    .line 1696
    invoke-virtual {v2}, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->getNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/mediatek/apst/util/entity/message/Message;->setSimNumber(Ljava/lang/String;)V

    .line 1697
    invoke-virtual {v2}, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->getICCId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/mediatek/apst/util/entity/message/Message;->setSimICCId(Ljava/lang/String;)V

    .line 1700
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContext()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v0, p7

    move/from16 v1, p8

    invoke-virtual {v0, v5, v9, v1}, Lcom/mediatek/apst/target/service/SmsSender;->appendTask(Lcom/mediatek/apst/util/entity/message/Sms;Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 1703
    .end local v2           #info:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;
    .end local v5           #outgoingSms:Lcom/mediatek/apst/util/entity/message/Sms;
    :cond_3
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method public saveSmsDraft(Ljava/lang/String;[Ljava/lang/String;)Lcom/mediatek/apst/util/entity/message/Sms;
    .locals 13
    .parameter "body"
    .parameter "recipients"

    .prologue
    .line 1480
    if-nez p1, :cond_0

    .line 1481
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    const-string v9, "Sms body should not be null."

    invoke-static {v8, v9}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1483
    const/4 v1, 0x0

    .line 1539
    :goto_0
    return-object v1

    .line 1486
    :cond_0
    new-instance v1, Lcom/mediatek/apst/util/entity/message/Sms;

    invoke-direct {v1}, Lcom/mediatek/apst/util/entity/message/Sms;-><init>()V

    .line 1488
    .local v1, draft:Lcom/mediatek/apst/util/entity/message/Sms;
    const-wide/16 v4, -0x1

    .line 1490
    .local v4, insertedId:J
    invoke-virtual {v1, p1}, Lcom/mediatek/apst/util/entity/message/Sms;->setBody(Ljava/lang/String;)V

    .line 1492
    new-instance v0, Ljava/util/HashSet;

    array-length v8, p2

    invoke-direct {v0, v8}, Ljava/util/HashSet;-><init>(I)V

    .line 1493
    .local v0, address:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v8, p2

    if-ge v3, v8, :cond_2

    .line 1494
    aget-object v8, p2, v3

    if-eqz v8, :cond_1

    .line 1495
    aget-object v8, p2, v3

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1493
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1498
    :cond_2
    invoke-virtual {p0, v0}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->getOrCreateThreadId(Ljava/util/Set;)J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lcom/mediatek/apst/util/entity/message/Message;->setThreadId(J)V

    .line 1500
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lcom/mediatek/apst/util/entity/message/Message;->setDate(J)V

    .line 1502
    new-instance v7, Landroid/content/ContentValues;

    const/4 v8, 0x4

    invoke-direct {v7, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 1503
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "thread_id"

    invoke-virtual {v1}, Lcom/mediatek/apst/util/entity/message/Message;->getThreadId()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1507
    const-string v8, "date"

    invoke-virtual {v1}, Lcom/mediatek/apst/util/entity/message/Message;->getDate()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1508
    const-string v8, "type"

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1509
    const-string v8, "body"

    invoke-virtual {v1}, Lcom/mediatek/apst/util/entity/message/Sms;->getBody()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v8

    sget-object v9, Lcom/mediatek/apst/target/data/provider/message/SmsContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v9, v7}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 1514
    .local v6, uri:Landroid/net/Uri;
    if-eqz v6, :cond_3

    .line 1515
    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v4

    .line 1524
    .end local v6           #uri:Landroid/net/Uri;
    :cond_3
    :goto_2
    invoke-virtual {v1, v4, v5}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->setId(J)V

    .line 1527
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v8

    sget-object v9, Lcom/mediatek/apst/target/data/provider/message/SmsContent;->CONTENT_URI:Landroid/net/Uri;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "thread_id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lcom/mediatek/apst/util/entity/message/Message;->getThreadId()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " AND "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "type"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " AND "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_id"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "<>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1533
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v8

    sget-object v9, Lcom/mediatek/apst/target/data/provider/message/MmsContent;->CONTENT_URI_DRAFT:Landroid/net/Uri;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "thread_id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lcom/mediatek/apst/util/entity/message/Message;->getThreadId()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1517
    :catch_0
    move-exception v2

    .line 1518
    .local v2, e:Ljava/lang/NumberFormatException;
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    const/4 v9, 0x0

    invoke-static {v8, v9, v2}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 1519
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v2

    .line 1520
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    const/4 v9, 0x0

    invoke-static {v8, v9, v2}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2
.end method

.method public sendSms(Ljava/lang/String;[Ljava/lang/String;Lcom/mediatek/apst/target/service/SmsSender;I)[Lcom/mediatek/apst/util/entity/message/Sms;
    .locals 11
    .parameter "body"
    .parameter "recipients"
    .parameter "smsSender"
    .parameter "simId"

    .prologue
    .line 1555
    if-nez p1, :cond_1

    .line 1556
    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    const/4 v9, 0x2

    aput-object p3, v8, v9

    const/4 v9, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const-string v9, "Sms body should not be null."

    invoke-static {v8, v9}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1558
    const/4 v4, 0x0

    .line 1625
    :cond_0
    :goto_0
    return-object v4

    .line 1560
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_2

    .line 1561
    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    const/4 v9, 0x2

    aput-object p3, v8, v9

    const/4 v9, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const-string v9, "Sms body should not be empty."

    invoke-static {v8, v9}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1563
    const/4 v4, 0x0

    goto :goto_0

    .line 1565
    :cond_2
    if-eqz p2, :cond_3

    array-length v8, p2

    if-gtz v8, :cond_4

    .line 1566
    :cond_3
    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    const/4 v9, 0x2

    aput-object p3, v8, v9

    const/4 v9, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const-string v9, "At least one recipient should be specified."

    invoke-static {v8, v9}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1568
    const/4 v4, 0x0

    goto :goto_0

    .line 1570
    :cond_4
    if-nez p3, :cond_5

    .line 1571
    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    const/4 v9, 0x2

    aput-object p3, v8, v9

    const/4 v9, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const-string v9, "Sms sender is null. Sms will not be sent."

    invoke-static {v8, v9}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1575
    :cond_5
    array-length v8, p2

    new-array v4, v8, [Lcom/mediatek/apst/util/entity/message/Sms;

    .line 1579
    .local v4, results:[Lcom/mediatek/apst/util/entity/message/Sms;
    new-instance v5, Ljava/util/HashSet;

    array-length v8, p2

    invoke-direct {v5, v8}, Ljava/util/HashSet;-><init>(I)V

    .line 1580
    .local v5, threadAddress:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v8, p2

    if-ge v1, v8, :cond_7

    .line 1581
    aget-object v8, p2, v1

    if-eqz v8, :cond_6

    .line 1582
    aget-object v8, p2, v1

    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1580
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1585
    :cond_7
    invoke-virtual {p0, v5}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->getOrCreateThreadId(Ljava/util/Set;)J

    move-result-wide v6

    .line 1587
    .local v6, threadId:J
    const/4 v1, 0x0

    :goto_2
    array-length v8, p2

    if-ge v1, v8, :cond_0

    .line 1588
    new-instance v3, Lcom/mediatek/apst/util/entity/message/Sms;

    invoke-direct {v3}, Lcom/mediatek/apst/util/entity/message/Sms;-><init>()V

    .line 1590
    .local v3, outgoingSms:Lcom/mediatek/apst/util/entity/message/Sms;
    invoke-virtual {v3, p1}, Lcom/mediatek/apst/util/entity/message/Sms;->setBody(Ljava/lang/String;)V

    .line 1592
    aget-object v0, p2, v1

    .line 1593
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_8

    .line 1594
    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    const/4 v9, 0x2

    aput-object p3, v8, v9

    const/4 v9, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const-string v9, "Address is null. Sms will not be sent."

    invoke-static {v8, v9}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1598
    const-wide/16 v8, -0x1

    invoke-virtual {v3, v8, v9}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->setId(J)V

    .line 1587
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1601
    :cond_8
    new-instance v8, Lcom/mediatek/apst/util/entity/message/TargetAddress;

    invoke-direct {v8, v0}, Lcom/mediatek/apst/util/entity/message/TargetAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Lcom/mediatek/apst/util/entity/message/Message;->setTarget(Lcom/mediatek/apst/util/entity/message/TargetAddress;)V

    .line 1604
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Lcom/mediatek/apst/util/entity/message/Message;->setDate(J)V

    .line 1606
    const/4 v8, 0x4

    invoke-virtual {v3, v8}, Lcom/mediatek/apst/util/entity/message/Message;->setBox(I)V

    .line 1608
    invoke-virtual {v3, v6, v7}, Lcom/mediatek/apst/util/entity/message/Message;->setThreadId(J)V

    .line 1612
    invoke-static {p4}, Lcom/mediatek/apst/target/util/Global;->getSimInfoBySlot(I)Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

    move-result-object v2

    .line 1613
    .local v2, info:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;
    invoke-virtual {v2}, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->getSimId()I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/mediatek/apst/util/entity/message/Message;->setSimId(I)V

    .line 1614
    invoke-virtual {v2}, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/mediatek/apst/util/entity/message/Message;->setSimName(Ljava/lang/String;)V

    .line 1615
    invoke-virtual {v2}, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/mediatek/apst/util/entity/message/Message;->setSimNumber(Ljava/lang/String;)V

    .line 1616
    invoke-virtual {v2}, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->getICCId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/mediatek/apst/util/entity/message/Message;->setSimICCId(Ljava/lang/String;)V

    .line 1618
    const/4 v8, 0x0

    invoke-virtual {p0, v3, v8}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->insertSms(Lcom/mediatek/apst/util/entity/message/Sms;Z)J

    .line 1620
    aput-object v3, v4, v1

    .line 1623
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p3, v3, v8, p4}, Lcom/mediatek/apst/target/service/SmsSender;->appendTask(Lcom/mediatek/apst/util/entity/message/Sms;Landroid/content/Context;I)V

    goto :goto_3
.end method

.method public updateSms(JLcom/mediatek/apst/util/entity/message/Sms;ZZ)J
    .locals 7
    .parameter "id"
    .parameter "newOne"
    .parameter "updateId"
    .parameter "regenThreadId"

    .prologue
    const/4 v6, 0x1

    .line 2116
    if-nez p3, :cond_0

    .line 2117
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    aput-object p3, v3, v6

    const/4 v4, 0x2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "New sms is null."

    invoke-static {v3, v4}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 2119
    const-wide/16 v3, 0x0

    .line 2138
    :goto_0
    return-wide v3

    .line 2121
    :cond_0
    const/4 v1, 0x0

    .line 2123
    .local v1, updatedCount:I
    if-eqz p5, :cond_1

    .line 2124
    invoke-virtual {p3}, Lcom/mediatek/apst/util/entity/message/Message;->getTarget()Lcom/mediatek/apst/util/entity/message/TargetAddress;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2125
    invoke-virtual {p3}, Lcom/mediatek/apst/util/entity/message/Message;->getTarget()Lcom/mediatek/apst/util/entity/message/TargetAddress;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/apst/util/entity/message/TargetAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 2126
    .local v0, address:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 2127
    invoke-virtual {p0, v0}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->getOrCreateThreadId(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {p3, v3, v4}, Lcom/mediatek/apst/util/entity/message/Message;->setThreadId(J)V

    .line 2132
    .end local v0           #address:Ljava/lang/String;
    :cond_1
    invoke-static {p3, p4, v6}, Lcom/mediatek/apst/target/data/provider/message/SmsContent;->createContentValues(Lcom/mediatek/apst/util/entity/message/Sms;ZZ)Landroid/content/ContentValues;

    move-result-object v2

    .line 2134
    .local v2, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v3

    sget-object v4, Lcom/mediatek/apst/target/data/provider/message/SmsContent;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v2, v5, v6}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 2138
    int-to-long v3, v1

    goto :goto_0
.end method
