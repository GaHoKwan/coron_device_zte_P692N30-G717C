.class public Lcom/zte/heartyservice/intercept/Tencent/SysDao;
.super Ltmsdk/common/module/aresengine/AbsSysDao;
.source "SysDao.java"


# static fields
.field private static sSysDao:Lcom/zte/heartyservice/intercept/Tencent/SysDao;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDefaultSysDao:Ltmsdk/common/module/aresengine/AbsSysDao;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->sSysDao:Lcom/zte/heartyservice/intercept/Tencent/SysDao;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ltmsdk/common/module/aresengine/AbsSysDao;-><init>()V

    .line 44
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v0

    .line 45
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Ltmsdk/common/module/aresengine/DefaultSysDao;->getInstance(Landroid/content/Context;)Ltmsdk/common/module/aresengine/DefaultSysDao;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->mDefaultSysDao:Ltmsdk/common/module/aresengine/AbsSysDao;

    .line 46
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->mContentResolver:Landroid/content/ContentResolver;

    .line 47
    return-void
.end method

.method public static getInstance()Lcom/zte/heartyservice/intercept/Tencent/SysDao;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->sSysDao:Lcom/zte/heartyservice/intercept/Tencent/SysDao;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/zte/heartyservice/intercept/Tencent/SysDao;

    invoke-direct {v0}, Lcom/zte/heartyservice/intercept/Tencent/SysDao;-><init>()V

    sput-object v0, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->sSysDao:Lcom/zte/heartyservice/intercept/Tencent/SysDao;

    .line 39
    :cond_0
    sget-object v0, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->sSysDao:Lcom/zte/heartyservice/intercept/Tencent/SysDao;

    return-object v0
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->mDefaultSysDao:Ltmsdk/common/module/aresengine/AbsSysDao;

    invoke-virtual {v0, p1}, Ltmsdk/common/module/aresengine/AbsSysDao;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public deleteCallLogByAddress(Ljava/lang/String;)Z
    .locals 4
    .parameter "address"

    .prologue
    .line 329
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/zte/heartyservice/intercept/Tencent/ContactUtil;->CALL_LOG_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "number"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/zte/heartyservice/intercept/Tencent/PhoneNumberUtil;->getSQLEqual(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteSMSByAddress(Ljava/lang/String;)Z
    .locals 9
    .parameter "address"

    .prologue
    const/4 v2, 0x0

    .line 215
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/zte/heartyservice/intercept/Tencent/SMSUtil;->URI_SMS:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "address"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/zte/heartyservice/intercept/Tencent/PhoneNumberUtil;->getSQLEqual(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "date ASC"

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 216
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 217
    const-string v0, "thread_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 218
    .local v7, threadIdIndex:I
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 219
    .local v8, thread_id:I
    if-eqz v6, :cond_0

    .line 220
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 222
    :cond_0
    invoke-virtual {p0, v8}, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->deleteSMSByThreadId(I)Z

    move-result v0

    return v0
.end method

.method public deleteSMSByThreadId(I)Z
    .locals 6
    .parameter "threadId"

    .prologue
    .line 226
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, threadString:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "thread_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lcom/zte/heartyservice/intercept/Tencent/PhoneNumberUtil;->getSQLEqual(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, sql_where:Ljava/lang/String;
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/zte/heartyservice/intercept/Tencent/SMSUtil;->URI_SMS:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 232
    .local v0, count:I
    if-lez v0, :cond_0

    .line 233
    const/4 v3, 0x1

    .line 236
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getAllCallLog()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltmsdk/common/module/aresengine/CallLogEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->mDefaultSysDao:Ltmsdk/common/module/aresengine/AbsSysDao;

    invoke-virtual {v0}, Ltmsdk/common/module/aresengine/AbsSysDao;->getAllCallLog()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllContact()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltmsdk/common/module/aresengine/ContactEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->mDefaultSysDao:Ltmsdk/common/module/aresengine/AbsSysDao;

    invoke-virtual {v0}, Ltmsdk/common/module/aresengine/AbsSysDao;->getAllContact()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllGroups()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/intercept/Tencent/GroupEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v9, groups:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/GroupEntity;>;"
    const/4 v6, 0x0

    .line 243
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 245
    .local v7, cursorLocal:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_SUMMARY_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "summ_count"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 248
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    :cond_0
    new-instance v8, Lcom/zte/heartyservice/intercept/Tencent/GroupEntity;

    invoke-direct {v8}, Lcom/zte/heartyservice/intercept/Tencent/GroupEntity;-><init>()V

    .line 251
    .local v8, group:Lcom/zte/heartyservice/intercept/Tencent/GroupEntity;
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/zte/heartyservice/intercept/Tencent/GroupEntity;->id:I

    .line 252
    const-string v0, "title"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/zte/heartyservice/intercept/Tencent/GroupEntity;->groupName:Ljava/lang/String;

    .line 253
    const-string v0, "summ_count"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/zte/heartyservice/intercept/Tencent/GroupEntity;->count:I

    .line 255
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    .end local v8           #group:Lcom/zte/heartyservice/intercept/Tencent/GroupEntity;
    :cond_1
    const-string v0, "content://com.android.contacts.groups/local-groups"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 260
    .local v1, uriLocal:Landroid/net/Uri;
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "count"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 263
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 265
    :cond_2
    new-instance v8, Lcom/zte/heartyservice/intercept/Tencent/GroupEntity;

    invoke-direct {v8}, Lcom/zte/heartyservice/intercept/Tencent/GroupEntity;-><init>()V

    .line 266
    .restart local v8       #group:Lcom/zte/heartyservice/intercept/Tencent/GroupEntity;
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/zte/heartyservice/intercept/Tencent/GroupEntity;->id:I

    .line 267
    const-string v0, "title"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/zte/heartyservice/intercept/Tencent/GroupEntity;->groupName:Ljava/lang/String;

    .line 268
    const-string v0, "count"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/zte/heartyservice/intercept/Tencent/GroupEntity;->count:I

    .line 270
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 274
    .end local v8           #group:Lcom/zte/heartyservice/intercept/Tencent/GroupEntity;
    :cond_3
    if-eqz v6, :cond_4

    .line 275
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 277
    :cond_4
    if-eqz v7, :cond_5

    .line 278
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 281
    :cond_5
    return-object v9

    .line 274
    .end local v1           #uriLocal:Landroid/net/Uri;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 275
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 277
    :cond_6
    if-eqz v7, :cond_7

    .line 278
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0
.end method

.method public getAllSMS()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/intercept/Tencent/SmsLog;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 202
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/zte/heartyservice/intercept/Tencent/SMSUtil;->URI_SMS:Landroid/net/Uri;

    const-string v5, "date DESC"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 204
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v0, 0x1

    invoke-static {v6, v0}, Lcom/zte/heartyservice/intercept/Tencent/SMSUtil;->getLogsFromSysCursor(Landroid/database/Cursor;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCallLogByAdress(Ljava/lang/String;)Ljava/util/List;
    .locals 20
    .parameter "address"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/intercept/Tencent/CallLogx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 285
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v12, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/CallLogx;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/zte/heartyservice/intercept/Tencent/ContactUtil;->CALL_LOG_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "number"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Lcom/zte/heartyservice/intercept/Tencent/PhoneNumberUtil;->getSQLEqual(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "date DESC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 287
    .local v8, cursor:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 288
    const-string v1, "number"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 289
    .local v15, numberIndex:I
    const-string v1, "date"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 290
    .local v9, dateIndex:I
    const-string v1, "duration"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 291
    .local v10, durationIndex:I
    const-string v1, "type"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 292
    .local v19, typeIndex:I
    const-string v1, "new"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 293
    .local v14, newIndex:I
    const-string v1, "name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 294
    .local v13, nameIndex:I
    const-string v1, "numbertype"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 295
    .local v17, numberTypeIndex:I
    const-string v1, "numberlabel"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 297
    .local v16, numberLabelIndex:I
    const/16 v18, -0x1

    .line 298
    .local v18, subscriptionIndex:I
    sget-object v1, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->COLUMN_SUBSCRIPTION:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 299
    sget-object v1, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->COLUMN_SUBSCRIPTION:Ljava/lang/String;

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 303
    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_2

    .line 304
    new-instance v7, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;

    invoke-direct {v7}, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;-><init>()V

    .line 305
    .local v7, callLog:Lcom/zte/heartyservice/intercept/Tencent/CallLogx;
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->phonenum:Ljava/lang/String;

    .line 306
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v7, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->date:J

    .line 307
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v7, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->duration:J

    .line 308
    move/from16 v0, v19

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v7, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->type:I

    .line 309
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v7, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->tagnew:I

    .line 310
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->name:Ljava/lang/String;

    .line 311
    move/from16 v0, v17

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v7, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->numbertype:I

    .line 312
    move/from16 v0, v16

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->numberlabel:Ljava/lang/String;

    .line 314
    const/4 v1, -0x1

    move/from16 v0, v18

    if-eq v0, v1, :cond_1

    .line 315
    move/from16 v0, v18

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 316
    .local v11, id:I
    invoke-static {}, Lcom/zte/heartyservice/msim/SimManager;->getInstance()Lcom/zte/heartyservice/msim/SimManager;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/zte/heartyservice/msim/SimManager;->getCallIdFromSys(I)I

    move-result v1

    iput v1, v7, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->subscription:I

    .line 319
    .end local v11           #id:I
    :cond_1
    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 324
    .end local v7           #callLog:Lcom/zte/heartyservice/intercept/Tencent/CallLogx;
    .end local v9           #dateIndex:I
    .end local v10           #durationIndex:I
    .end local v13           #nameIndex:I
    .end local v14           #newIndex:I
    .end local v15           #numberIndex:I
    .end local v16           #numberLabelIndex:I
    .end local v17           #numberTypeIndex:I
    .end local v18           #subscriptionIndex:I
    .end local v19           #typeIndex:I
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 325
    return-object v12
.end method

.method public getCallLogByWhere(Ljava/lang/String;)Ljava/util/List;
    .locals 21
    .parameter "where"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/intercept/Tencent/CallLogx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 414
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 415
    .local v13, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/CallLogx;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/zte/heartyservice/intercept/Tencent/ContactUtil;->CALL_LOG_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const-string v6, "date DESC"

    move-object/from16 v4, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 416
    .local v8, cursor:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 417
    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 418
    .local v12, idIndex:I
    const-string v1, "number"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 419
    .local v16, numberIndex:I
    const-string v1, "date"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 420
    .local v9, dateIndex:I
    const-string v1, "duration"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 421
    .local v10, durationIndex:I
    const-string v1, "type"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 422
    .local v20, typeIndex:I
    const-string v1, "new"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 423
    .local v15, newIndex:I
    const-string v1, "name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 424
    .local v14, nameIndex:I
    const-string v1, "numbertype"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 425
    .local v18, numberTypeIndex:I
    const-string v1, "numberlabel"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 427
    .local v17, numberLabelIndex:I
    const/16 v19, -0x1

    .line 428
    .local v19, subscriptionIndex:I
    sget-object v1, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->COLUMN_SUBSCRIPTION:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 429
    sget-object v1, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->COLUMN_SUBSCRIPTION:Ljava/lang/String;

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 433
    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_2

    .line 434
    new-instance v7, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;

    invoke-direct {v7}, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;-><init>()V

    .line 435
    .local v7, callLog:Lcom/zte/heartyservice/intercept/Tencent/CallLogx;
    move/from16 v0, v16

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->phonenum:Ljava/lang/String;

    .line 436
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v7, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->date:J

    .line 437
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v7, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->duration:J

    .line 438
    move/from16 v0, v20

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v7, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->type:I

    .line 439
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v7, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->tagnew:I

    .line 440
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->name:Ljava/lang/String;

    .line 441
    move/from16 v0, v18

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v7, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->numbertype:I

    .line 442
    move/from16 v0, v17

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->numberlabel:Ljava/lang/String;

    .line 443
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v7, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->id:I

    .line 445
    const/4 v1, -0x1

    move/from16 v0, v19

    if-eq v0, v1, :cond_1

    .line 446
    move/from16 v0, v19

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 447
    .local v11, id:I
    invoke-static {}, Lcom/zte/heartyservice/msim/SimManager;->getInstance()Lcom/zte/heartyservice/msim/SimManager;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/zte/heartyservice/msim/SimManager;->getCallIdFromSys(I)I

    move-result v1

    iput v1, v7, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->subscription:I

    .line 450
    .end local v11           #id:I
    :cond_1
    invoke-interface {v13, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 455
    .end local v7           #callLog:Lcom/zte/heartyservice/intercept/Tencent/CallLogx;
    .end local v9           #dateIndex:I
    .end local v10           #durationIndex:I
    .end local v12           #idIndex:I
    .end local v14           #nameIndex:I
    .end local v15           #newIndex:I
    .end local v16           #numberIndex:I
    .end local v17           #numberLabelIndex:I
    .end local v18           #numberTypeIndex:I
    .end local v19           #subscriptionIndex:I
    .end local v20           #typeIndex:I
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 456
    return-object v13
.end method

.method public getContactIdByNum(Ljava/lang/String;)I
    .locals 8
    .parameter "num"

    .prologue
    const/4 v4, 0x0

    .line 333
    invoke-static {p1}, Lcom/zte/heartyservice/intercept/Tencent/PhoneNumberUtil;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 335
    const/4 v7, -0x1

    .line 336
    .local v7, id:I
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "contact_id"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "REPLACE(REPLACE(data1,\' \',\'\'),\'-\',\'\') =\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 339
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    const-string v0, "contact_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 342
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 343
    return v7
.end method

.method public getContactName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "phone"

    .prologue
    .line 404
    invoke-static {}, Lcom/zte/heartyservice/intercept/Tencent/DaoCreator;->createContactCache()Lcom/zte/heartyservice/intercept/Tencent/ContactCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/heartyservice/intercept/Tencent/ContactCache;->getSysContactMap()Lcom/zte/heartyservice/intercept/Tencent/ContactMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zte/heartyservice/intercept/Tencent/ContactMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGroupMembers(Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .parameter "groupId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/intercept/Tencent/Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 347
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 348
    .local v11, members:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/Contact;>;"
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 349
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "directory"

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 352
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    .local v13, selection:Ljava/lang/StringBuilder;
    const-string v0, "(mimetype=? OR mimetype=?) AND data1=?"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    const/4 v9, 0x0

    .line 360
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "contact_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "raw_contact_id"

    aput-object v4, v2, v3

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "vnd.android.cursor.item/group_membership"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "vnd.android.cursor.item/local-groups"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 365
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 396
    if-eqz v9, :cond_0

    .line 397
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 400
    :cond_0
    :goto_0
    return-object v11

    .line 369
    :cond_1
    :try_start_1
    const-string v0, "contact_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    .line 371
    .local v10, id:I
    const/4 v12, 0x0

    .line 373
    .local v12, numCursor:Landroid/database/Cursor;
    :try_start_2
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "data1"

    aput-object v5, v4, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mimetype=\'vnd.android.cursor.item/phone_v2\' AND data1 NOT NULL AND contact_id="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 378
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-nez v0, :cond_3

    .line 390
    if-eqz v12, :cond_2

    .line 391
    :try_start_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 394
    :cond_2
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 396
    if-eqz v9, :cond_0

    .line 397
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 382
    :cond_3
    :try_start_4
    new-instance v8, Lcom/zte/heartyservice/intercept/Tencent/Contact;

    invoke-direct {v8}, Lcom/zte/heartyservice/intercept/Tencent/Contact;-><init>()V

    .line 383
    .local v8, contact:Lcom/zte/heartyservice/intercept/Tencent/Contact;
    const-string v0, "display_name"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/zte/heartyservice/intercept/Tencent/Contact;->name:Ljava/lang/String;

    .line 384
    const-string v0, "data1"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    .line 385
    iget-object v0, v8, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 386
    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    :cond_4
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v0

    if-nez v0, :cond_3

    .line 390
    if-eqz v12, :cond_2

    .line 391
    :try_start_5
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 396
    .end local v8           #contact:Lcom/zte/heartyservice/intercept/Tencent/Contact;
    .end local v10           #id:I
    .end local v12           #numCursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_5

    .line 397
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 390
    .restart local v10       #id:I
    .restart local v12       #numCursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    if-eqz v12, :cond_6

    .line 391
    :try_start_6
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public getLastCallLog()Ltmsdk/common/module/aresengine/CallLogEntity;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->mDefaultSysDao:Ltmsdk/common/module/aresengine/AbsSysDao;

    invoke-virtual {v0}, Ltmsdk/common/module/aresengine/AbsSysDao;->getLastCallLog()Ltmsdk/common/module/aresengine/CallLogEntity;

    move-result-object v0

    return-object v0
.end method

.method public getLastInBoxMms(II)Ltmsdk/common/module/aresengine/SmsEntity;
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->mDefaultSysDao:Ltmsdk/common/module/aresengine/AbsSysDao;

    invoke-virtual {v0, p1, p2}, Ltmsdk/common/module/aresengine/AbsSysDao;->getLastInBoxMms(II)Ltmsdk/common/module/aresengine/SmsEntity;

    move-result-object v0

    return-object v0
.end method

.method public getLastInBoxSms(II)Ltmsdk/common/module/aresengine/SmsEntity;
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->mDefaultSysDao:Ltmsdk/common/module/aresengine/AbsSysDao;

    invoke-virtual {v0, p1, p2}, Ltmsdk/common/module/aresengine/AbsSysDao;->getLastInBoxSms(II)Ltmsdk/common/module/aresengine/SmsEntity;

    move-result-object v0

    return-object v0
.end method

.method public getLastOutBoxMms(I)Ltmsdk/common/module/aresengine/SmsEntity;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->mDefaultSysDao:Ltmsdk/common/module/aresengine/AbsSysDao;

    invoke-virtual {v0, p1}, Ltmsdk/common/module/aresengine/AbsSysDao;->getLastOutBoxMms(I)Ltmsdk/common/module/aresengine/SmsEntity;

    move-result-object v0

    return-object v0
.end method

.method public getLastOutBoxSms(I)Ltmsdk/common/module/aresengine/SmsEntity;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->mDefaultSysDao:Ltmsdk/common/module/aresengine/AbsSysDao;

    invoke-virtual {v0, p1}, Ltmsdk/common/module/aresengine/AbsSysDao;->getLastOutBoxSms(I)Ltmsdk/common/module/aresengine/SmsEntity;

    move-result-object v0

    return-object v0
.end method

.method public getLastSMSAtInBox(Ljava/lang/String;)Lcom/zte/heartyservice/intercept/Tencent/SmsLog;
    .locals 8
    .parameter "phonenumber"

    .prologue
    const/4 v2, 0x0

    .line 408
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/zte/heartyservice/intercept/Tencent/SMSUtil;->URI_SMS:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type=1 AND address=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "_id DESC"

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 409
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v0, 0x1

    invoke-static {v6, v0}, Lcom/zte/heartyservice/intercept/Tencent/SMSUtil;->getLogFromSysCursor(Landroid/database/Cursor;Z)Lcom/zte/heartyservice/intercept/Tencent/SmsLog;

    move-result-object v7

    .line 410
    .local v7, smsLog:Lcom/zte/heartyservice/intercept/Tencent/SmsLog;
    return-object v7
.end method

.method public getLastSentMms(I)Ltmsdk/common/module/aresengine/SmsEntity;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->mDefaultSysDao:Ltmsdk/common/module/aresengine/AbsSysDao;

    invoke-virtual {v0, p1}, Ltmsdk/common/module/aresengine/AbsSysDao;->getLastSentMms(I)Ltmsdk/common/module/aresengine/SmsEntity;

    move-result-object v0

    return-object v0
.end method

.method public getLastSentSms(I)Ltmsdk/common/module/aresengine/SmsEntity;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->mDefaultSysDao:Ltmsdk/common/module/aresengine/AbsSysDao;

    invoke-virtual {v0, p1}, Ltmsdk/common/module/aresengine/AbsSysDao;->getLastSentSms(I)Ltmsdk/common/module/aresengine/SmsEntity;

    move-result-object v0

    return-object v0
.end method

.method public getMms(II)Ltmsdk/common/module/aresengine/SmsEntity;
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->mDefaultSysDao:Ltmsdk/common/module/aresengine/AbsSysDao;

    invoke-virtual {v0, p1, p2}, Ltmsdk/common/module/aresengine/AbsSysDao;->getMms(II)Ltmsdk/common/module/aresengine/SmsEntity;

    move-result-object v0

    return-object v0
.end method

.method public getSMSByAdress(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .parameter "address"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/intercept/Tencent/SmsLog;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 208
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/zte/heartyservice/intercept/Tencent/SMSUtil;->URI_SMS:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "address"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/zte/heartyservice/intercept/Tencent/PhoneNumberUtil;->getSQLEqual(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "date ASC"

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 209
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v0, 0x1

    invoke-static {v6, v0}, Lcom/zte/heartyservice/intercept/Tencent/SMSUtil;->getLogsFromSysCursor(Landroid/database/Cursor;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSimContact()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltmsdk/common/module/aresengine/ContactEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->mDefaultSysDao:Ltmsdk/common/module/aresengine/AbsSysDao;

    invoke-virtual {v0}, Ltmsdk/common/module/aresengine/AbsSysDao;->getSimContact()Ljava/util/List;

    move-result-object v11

    .line 107
    .local v11, list:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/module/aresengine/ContactEntity;>;"
    const/4 v7, 0x0

    .line 109
    .local v7, cur:Landroid/database/Cursor;
    :try_start_0
    const-string v0, "android.telephony.TelephonyManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    .line 111
    .local v12, mgrClass:Ljava/lang/Class;
    const-string v0, "getDefault"

    const/4 v1, 0x0

    invoke-virtual {v12, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 112
    .local v9, getDefault:Ljava/lang/reflect/Method;
    const-string v0, "isMultiSimEnabled"

    const/4 v1, 0x0

    invoke-virtual {v12, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 114
    .local v10, isMultiSimEnabled:Ljava/lang/reflect/Method;
    const/4 v0, 0x0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v9, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 115
    .local v13, mgrObj:Ljava/lang/Object;
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v10, v13, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "content://iccmsim/adn_sub2"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "number"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 119
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    :cond_0
    new-instance v6, Ltmsdk/common/module/aresengine/ContactEntity;

    invoke-direct {v6}, Ltmsdk/common/module/aresengine/ContactEntity;-><init>()V

    .line 122
    .local v6, contact:Ltmsdk/common/module/aresengine/ContactEntity;
    const-string v0, "name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Ltmsdk/common/module/aresengine/ContactEntity;->name:Ljava/lang/String;

    .line 124
    const-string v0, "number"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Ltmsdk/common/module/aresengine/ContactEntity;->phonenum:Ljava/lang/String;

    .line 126
    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 133
    .end local v6           #contact:Ltmsdk/common/module/aresengine/ContactEntity;
    :cond_1
    if-eqz v7, :cond_2

    .line 134
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 138
    .end local v9           #getDefault:Ljava/lang/reflect/Method;
    .end local v10           #isMultiSimEnabled:Ljava/lang/reflect/Method;
    .end local v12           #mgrClass:Ljava/lang/Class;
    .end local v13           #mgrObj:Ljava/lang/Object;
    :cond_2
    :goto_0
    return-object v11

    .line 130
    :catch_0
    move-exception v8

    .line 131
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "SysDataDao"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "liuji debug getSimContact Exception:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    if-eqz v7, :cond_2

    .line 134
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 133
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 134
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public insert(Ltmsdk/common/module/aresengine/SmsEntity;)Landroid/net/Uri;
    .locals 11
    .parameter "arg0"

    .prologue
    .line 144
    :try_start_0
    new-instance v0, Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;

    iget-object v1, p1, Ltmsdk/common/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    iget-wide v2, p1, Ltmsdk/common/module/aresengine/SmsEntity;->date:J

    const-wide/16 v4, -0x1

    iget-object v6, p1, Ltmsdk/common/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    iget v7, p1, Ltmsdk/common/module/aresengine/SmsEntity;->type:I

    const/4 v8, -0x1

    invoke-direct/range {v0 .. v8}, Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;-><init>(Ljava/lang/String;JJLjava/lang/String;II)V

    .line 147
    .local v0, info:Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;
    invoke-static {v0}, Lcom/zte/heartyservice/common/utils/SMSContentObserver;->addToNotDealList(Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;)V

    .line 148
    instance-of v1, p1, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;

    if-eqz v1, :cond_0

    .line 149
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 150
    .local v9, contentValue:Landroid/content/ContentValues;
    check-cast p1, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;

    .end local p1
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/zte/heartyservice/intercept/Tencent/SMSUtil;->generateContentValuesForSystem(Lcom/zte/heartyservice/intercept/Tencent/SmsLog;Z)Landroid/content/ContentValues;

    move-result-object v9

    .line 154
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/zte/heartyservice/intercept/Tencent/SMSUtil;->URI_SMS_INBOX:Landroid/net/Uri;

    invoke-virtual {v1, v2, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 162
    .end local v0           #info:Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;
    .end local v9           #contentValue:Landroid/content/ContentValues;
    :goto_0
    return-object v1

    .line 157
    .restart local v0       #info:Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;
    .restart local p1
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->mDefaultSysDao:Ltmsdk/common/module/aresengine/AbsSysDao;

    invoke-virtual {v1, p1}, Ltmsdk/common/module/aresengine/AbsSysDao;->insert(Ltmsdk/common/module/aresengine/SmsEntity;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 159
    .end local v0           #info:Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;
    .end local p1
    :catch_0
    move-exception v10

    .line 160
    .local v10, e:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 162
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public insertSMS(Ljava/util/List;)Z
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/intercept/Tencent/SmsLog;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, smslogs:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/SmsLog;>;"
    const/4 v13, 0x1

    .line 166
    const/4 v11, 0x0

    .line 168
    .local v11, result:Z
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 169
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v9, v1, [Landroid/content/ContentValues;

    .line 170
    .local v9, contentValues:[Landroid/content/ContentValues;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v10, v1, :cond_0

    .line 171
    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;

    .line 172
    .local v12, smslog:Lcom/zte/heartyservice/intercept/Tencent/SmsLog;
    new-instance v0, Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;

    iget-object v1, v12, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->phonenum:Ljava/lang/String;

    iget-wide v2, v12, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->date:J

    const-wide/16 v4, -0x1

    iget-object v6, v12, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->body:Ljava/lang/String;

    iget v7, v12, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->type:I

    const/4 v8, -0x1

    invoke-direct/range {v0 .. v8}, Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;-><init>(Ljava/lang/String;JJLjava/lang/String;II)V

    .line 175
    .local v0, info:Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;
    invoke-static {v0}, Lcom/zte/heartyservice/common/utils/SMSContentObserver;->addToNotDealList(Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;)V

    .line 176
    invoke-static {v12, v13}, Lcom/zte/heartyservice/intercept/Tencent/SMSUtil;->generateContentValuesForSystem(Lcom/zte/heartyservice/intercept/Tencent/SmsLog;Z)Landroid/content/ContentValues;

    move-result-object v1

    aput-object v1, v9, v10

    .line 170
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 178
    .end local v0           #info:Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;
    .end local v12           #smslog:Lcom/zte/heartyservice/intercept/Tencent/SmsLog;
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/zte/heartyservice/intercept/Tencent/SMSUtil;->URI_SMS_INBOX:Landroid/net/Uri;

    invoke-virtual {v1, v2, v9}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v1

    if-lez v1, :cond_1

    move v11, v13

    .line 183
    .end local v9           #contentValues:[Landroid/content/ContentValues;
    .end local v10           #i:I
    :goto_1
    return v11

    .line 178
    .restart local v9       #contentValues:[Landroid/content/ContentValues;
    .restart local v10       #i:I
    :cond_1
    const/4 v11, 0x0

    goto :goto_1

    .line 180
    .end local v9           #contentValues:[Landroid/content/ContentValues;
    .end local v10           #i:I
    :cond_2
    const/4 v11, 0x1

    goto :goto_1
.end method

.method public remove(Ltmsdk/common/module/aresengine/CallLogEntity;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->mDefaultSysDao:Ltmsdk/common/module/aresengine/AbsSysDao;

    invoke-virtual {v0, p1}, Ltmsdk/common/module/aresengine/AbsSysDao;->remove(Ltmsdk/common/module/aresengine/CallLogEntity;)Z

    move-result v0

    return v0
.end method

.method public remove(Ltmsdk/common/module/aresengine/SmsEntity;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->mDefaultSysDao:Ltmsdk/common/module/aresengine/AbsSysDao;

    invoke-virtual {v0, p1}, Ltmsdk/common/module/aresengine/AbsSysDao;->remove(Ltmsdk/common/module/aresengine/SmsEntity;)Z

    move-result v0

    return v0
.end method

.method public supportThisPhone()Z
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->mDefaultSysDao:Ltmsdk/common/module/aresengine/AbsSysDao;

    invoke-virtual {v0}, Ltmsdk/common/module/aresengine/AbsSysDao;->supportThisPhone()Z

    move-result v0

    return v0
.end method
