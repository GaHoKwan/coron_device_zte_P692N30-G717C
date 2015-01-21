.class Lcom/mediatek/mms/op09/OP09MmsComposeExt$3;
.super Ljava/lang/Object;
.source "OP09MmsComposeExt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/mms/op09/OP09MmsComposeExt;->splitSingleMessage(Landroid/content/Context;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mms/op09/OP09MmsComposeExt;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$messageGroupId:J


# direct methods
.method constructor <init>(Lcom/mediatek/mms/op09/OP09MmsComposeExt;Landroid/content/Context;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 384
    iput-object p1, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$3;->this$0:Lcom/mediatek/mms/op09/OP09MmsComposeExt;

    iput-object p2, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$3;->val$context:Landroid/content/Context;

    iput-wide p3, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$3;->val$messageGroupId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 388
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$3;->val$context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$3;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x4

    new-array v5, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "address"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "thread_id"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "ipmsg_id"

    aput-object v7, v5, v6

    const-string v6, "ipmsg_id = ? "

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$3;->val$messageGroupId:J

    move-wide/from16 v19, v0

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v7, v8

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 391
    .local v10, cursor:Landroid/database/Cursor;
    const-wide/16 v16, 0x0

    .line 392
    .local v16, threadId:J
    if-eqz v10, :cond_1

    .line 394
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .line 395
    .local v13, smsCount:I
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 397
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 398
    .local v9, address:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 399
    .local v14, smsId:J
    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 400
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$3;->val$context:Landroid/content/Context;

    invoke-static {v2, v9}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v11

    .line 402
    .local v11, newThreadId:J
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 403
    .local v5, cv:Landroid/content/ContentValues;
    const-string v2, "thread_id"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 404
    const-string v2, "ipmsg_id"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 405
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$3;->val$context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$3;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 410
    .end local v5           #cv:Landroid/content/ContentValues;
    .end local v9           #address:Ljava/lang/String;
    .end local v11           #newThreadId:J
    .end local v13           #smsCount:I
    .end local v14           #smsId:J
    :catchall_0
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    .line 408
    .restart local v13       #smsCount:I
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$3;->this$0:Lcom/mediatek/mms/op09/OP09MmsComposeExt;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$3;->val$context:Landroid/content/Context;

    move-wide/from16 v0, v16

    #calls: Lcom/mediatek/mms/op09/OP09MmsComposeExt;->closeActivity(Landroid/content/Context;J)V
    invoke-static {v2, v3, v0, v1}, Lcom/mediatek/mms/op09/OP09MmsComposeExt;->access$200(Lcom/mediatek/mms/op09/OP09MmsComposeExt;Landroid/content/Context;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 410
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 413
    .end local v13           #smsCount:I
    :cond_1
    return-void
.end method
