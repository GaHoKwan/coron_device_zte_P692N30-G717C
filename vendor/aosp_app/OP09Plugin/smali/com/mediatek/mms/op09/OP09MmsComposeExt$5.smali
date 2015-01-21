.class Lcom/mediatek/mms/op09/OP09MmsComposeExt$5;
.super Ljava/lang/Object;
.source "OP09MmsComposeExt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/mms/op09/OP09MmsComposeExt;->splitThreadMassingTextMessage(Landroid/content/Context;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mms/op09/OP09MmsComposeExt;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$threadId:J


# direct methods
.method constructor <init>(Lcom/mediatek/mms/op09/OP09MmsComposeExt;Landroid/content/Context;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 457
    iput-object p1, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$5;->this$0:Lcom/mediatek/mms/op09/OP09MmsComposeExt;

    iput-object p2, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$5;->val$context:Landroid/content/Context;

    iput-wide p3, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$5;->val$threadId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 461
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$5;->val$context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$5;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x4

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "address"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "thread_id"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "ipmsg_id"

    aput-object v6, v4, v5

    const-string v5, "thread_id = ? "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$5;->val$threadId:J

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v6, v7

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 464
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 466
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 468
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 469
    .local v8, address:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 470
    .local v12, smsId:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$5;->val$context:Landroid/content/Context;

    invoke-static {v1, v8}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v10

    .line 472
    .local v10, newThreadId:J
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 473
    .local v4, cv:Landroid/content/ContentValues;
    const-string v1, "thread_id"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 474
    const-string v1, "ipmsg_id"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 475
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$5;->val$context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$5;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 480
    .end local v4           #cv:Landroid/content/ContentValues;
    .end local v8           #address:Ljava/lang/String;
    .end local v10           #newThreadId:J
    .end local v12           #smsId:J
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    .line 478
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$5;->this$0:Lcom/mediatek/mms/op09/OP09MmsComposeExt;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$5;->val$context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$5;->val$threadId:J

    #calls: Lcom/mediatek/mms/op09/OP09MmsComposeExt;->closeActivity(Landroid/content/Context;J)V
    invoke-static {v1, v2, v5, v6}, Lcom/mediatek/mms/op09/OP09MmsComposeExt;->access$200(Lcom/mediatek/mms/op09/OP09MmsComposeExt;Landroid/content/Context;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 480
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 483
    :cond_1
    return-void
.end method
