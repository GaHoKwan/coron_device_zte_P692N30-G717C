.class public final Lcom/zte/backup/format/vxx/vmsg/Telephony$Threads;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Lcom/zte/backup/format/vxx/vmsg/Telephony$ThreadsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/backup/format/vxx/vmsg/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Threads"
.end annotation


# static fields
.field public static final BROADCAST_THREAD:I = 0x1

.field public static final COMMON_THREAD:I

.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field public static final OBSOLETE_THREADS_URI:Landroid/net/Uri;

.field private static final THREAD_ID_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1192
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/zte/backup/format/vxx/vmsg/Telephony$Threads;->ID_PROJECTION:[Ljava/lang/String;

    .line 1195
    const-string v0, "content://mms-sms/threadID"

    .line 1194
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zte/backup/format/vxx/vmsg/Telephony$Threads;->THREAD_ID_CONTENT_URI:Landroid/net/Uri;

    .line 1197
    sget-object v0, Lcom/zte/backup/format/vxx/vmsg/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "conversations"

    .line 1196
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zte/backup/format/vxx/vmsg/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    .line 1199
    sget-object v0, Lcom/zte/backup/format/vxx/vmsg/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "obsolete"

    .line 1198
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zte/backup/format/vxx/vmsg/Telephony$Threads;->OBSOLETE_THREADS_URI:Landroid/net/Uri;

    .line 1191
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1206
    return-void
.end method

.method public static getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J
    .locals 3
    .parameter "context"
    .parameter "recipient"

    .prologue
    .line 1214
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1216
    .local v0, recipients:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1217
    invoke-static {p0, v0}, Lcom/zte/backup/format/vxx/vmsg/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v1

    return-wide v1
.end method

.method public static getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 5
    .parameter "context"
    .parameter "recipient"
    .parameter "ccrecipient"
    .parameter "bccrecipient"

    .prologue
    .line 1222
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1223
    .local v2, recipients:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1224
    .local v1, ccrecipients:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1225
    .local v0, bccrecipients:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1226
    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1227
    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1228
    invoke-static {p0, v2, v1, v0}, Lcom/zte/backup/format/vxx/vmsg/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)J

    move-result-wide v3

    return-wide v3
.end method

.method public static getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J
    .locals 7
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 1243
    .local p1, recipients:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v4, Lcom/zte/backup/format/vxx/vmsg/Telephony$Threads;->THREAD_ID_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    .line 1245
    .local v3, uriBuilder:Landroid/net/Uri$Builder;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1253
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 1255
    .local v2, uri:Landroid/net/Uri;
    const-string v4, "Telephony"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getOrCreateThreadId uri: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    const/4 v0, 0x0

    .line 1261
    .local v0, cursor:Landroid/database/Cursor;
    const-string v4, "Telephony"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getOrCreateThreadId cursor cnt: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    if-eqz v0, :cond_3

    .line 1265
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1266
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 1271
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1266
    return-wide v4

    .line 1245
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v2           #uri:Landroid/net/Uri;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1246
    .local v1, recipient:Ljava/lang/String;
    invoke-static {v1}, Lcom/zte/backup/format/vxx/vmsg/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1247
    invoke-static {v1}, Lcom/zte/backup/format/vxx/vmsg/Telephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1250
    :cond_1
    const-string v5, "recipient"

    invoke-virtual {v3, v5, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 1268
    .end local v1           #recipient:Ljava/lang/String;
    .restart local v0       #cursor:Landroid/database/Cursor;
    .restart local v2       #uri:Landroid/net/Uri;
    :cond_2
    :try_start_1
    const-string v4, "Telephony"

    const-string v5, "getOrCreateThreadId returned no rows!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1271
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1275
    :cond_3
    const-string v4, "Telephony"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getOrCreateThreadId failed with uri "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unable to find or allocate a thread ID."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1270
    :catchall_0
    move-exception v4

    .line 1271
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1272
    throw v4
.end method

.method public static getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)J
    .locals 9
    .parameter "context"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 1282
    .local p1, recipients:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .local p2, ccrecipients:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .local p3, bccrecipients:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v6, Lcom/zte/backup/format/vxx/vmsg/Telephony$Threads;->THREAD_ID_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    .line 1284
    .local v5, uriBuilder:Landroid/net/Uri$Builder;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1292
    if-eqz p2, :cond_0

    .line 1294
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_4

    .line 1301
    :cond_0
    if-eqz p3, :cond_1

    .line 1303
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_6

    .line 1311
    :cond_1
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 1313
    .local v4, uri:Landroid/net/Uri;
    const-string v6, "Telephony"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getOrCreateThreadId uri: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    const/4 v2, 0x0

    .line 1319
    .local v2, cursor:Landroid/database/Cursor;
    const-string v6, "Telephony"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getOrCreateThreadId cursor cnt: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    if-eqz v2, :cond_9

    .line 1323
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1324
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    .line 1329
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1324
    return-wide v6

    .line 1284
    .end local v2           #cursor:Landroid/database/Cursor;
    .end local v4           #uri:Landroid/net/Uri;
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1285
    .local v3, recipient:Ljava/lang/String;
    invoke-static {v3}, Lcom/zte/backup/format/vxx/vmsg/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1286
    invoke-static {v3}, Lcom/zte/backup/format/vxx/vmsg/Telephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1289
    :cond_3
    const-string v7, "recipient"

    invoke-virtual {v5, v7, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 1294
    .end local v3           #recipient:Ljava/lang/String;
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1295
    .local v1, ccrecipient:Ljava/lang/String;
    invoke-static {v1}, Lcom/zte/backup/format/vxx/vmsg/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1296
    invoke-static {v1}, Lcom/zte/backup/format/vxx/vmsg/Telephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1298
    :cond_5
    const-string v7, "ccrecipient"

    invoke-virtual {v5, v7, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 1303
    .end local v1           #ccrecipient:Ljava/lang/String;
    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1304
    .local v0, bccrecipient:Ljava/lang/String;
    invoke-static {v0}, Lcom/zte/backup/format/vxx/vmsg/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1305
    invoke-static {v0}, Lcom/zte/backup/format/vxx/vmsg/Telephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1307
    :cond_7
    const-string v7, "bccrecipient"

    invoke-virtual {v5, v7, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto/16 :goto_2

    .line 1326
    .end local v0           #bccrecipient:Ljava/lang/String;
    .restart local v2       #cursor:Landroid/database/Cursor;
    .restart local v4       #uri:Landroid/net/Uri;
    :cond_8
    :try_start_1
    const-string v6, "Telephony"

    const-string v7, "getOrCreateThreadId returned no rows!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1329
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1333
    :cond_9
    const-string v6, "Telephony"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getOrCreateThreadId failed with uri "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Unable to find or allocate a thread ID."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1328
    :catchall_0
    move-exception v6

    .line 1329
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1330
    throw v6
.end method
