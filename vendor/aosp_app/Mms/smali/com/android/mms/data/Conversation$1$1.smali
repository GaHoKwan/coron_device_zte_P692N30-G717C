.class Lcom/android/mms/data/Conversation$1$1;
.super Ljava/lang/Object;
.source "Conversation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/Conversation$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/data/Conversation$1;

.field final synthetic val$allNeedUpdateCount:I

.field final synthetic val$conv:Lcom/android/mms/data/Conversation;


# direct methods
.method constructor <init>(Lcom/android/mms/data/Conversation$1;ILcom/android/mms/data/Conversation;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 545
    iput-object p1, p0, Lcom/android/mms/data/Conversation$1$1;->this$1:Lcom/android/mms/data/Conversation$1;

    iput p2, p0, Lcom/android/mms/data/Conversation$1$1;->val$allNeedUpdateCount:I

    iput-object p3, p0, Lcom/android/mms/data/Conversation$1$1;->val$conv:Lcom/android/mms/data/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 548
    const/16 v1, 0x32

    .line 549
    .local v1, updateCount:I
    iget v2, p0, Lcom/android/mms/data/Conversation$1$1;->val$allNeedUpdateCount:I

    const/16 v3, 0x32

    if-lt v2, v3, :cond_0

    .line 550
    :goto_0
    if-lez v1, :cond_1

    .line 551
    iget-object v2, p0, Lcom/android/mms/data/Conversation$1$1;->this$1:Lcom/android/mms/data/Conversation$1;

    iget-object v2, v2, Lcom/android/mms/data/Conversation$1;->this$0:Lcom/android/mms/data/Conversation;

    #getter for: Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/data/Conversation;->access$200(Lcom/android/mms/data/Conversation;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/data/Conversation$1$1;->this$1:Lcom/android/mms/data/Conversation$1;

    iget-object v3, v3, Lcom/android/mms/data/Conversation$1;->val$threadUri:Landroid/net/Uri;

    invoke-static {}, Lcom/android/mms/data/Conversation;->access$300()Landroid/content/ContentValues;

    move-result-object v4

    const-string v5, "(read=0 OR seen=0) and _id in (select _id from ( select _id from sms where (read=0 OR seen=0) and thread_id=? union  select _id from pdu where (read=0 OR seen=0) and thread_id=? union  select _id from cellbroadcast where (read=0 OR seen=0) and thread_id=?) order by _id limit 0,50 )"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/mms/data/Conversation$1$1;->this$1:Lcom/android/mms/data/Conversation$1;

    iget-object v8, v8, Lcom/android/mms/data/Conversation$1;->this$0:Lcom/android/mms/data/Conversation;

    #getter for: Lcom/android/mms/data/Conversation;->mThreadId:J
    invoke-static {v8}, Lcom/android/mms/data/Conversation;->access$400(Lcom/android/mms/data/Conversation;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/mms/data/Conversation$1$1;->this$1:Lcom/android/mms/data/Conversation$1;

    iget-object v9, v9, Lcom/android/mms/data/Conversation$1;->this$0:Lcom/android/mms/data/Conversation;

    #getter for: Lcom/android/mms/data/Conversation;->mThreadId:J
    invoke-static {v9}, Lcom/android/mms/data/Conversation;->access$400(Lcom/android/mms/data/Conversation;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/mms/data/Conversation$1$1;->this$1:Lcom/android/mms/data/Conversation$1;

    iget-object v9, v9, Lcom/android/mms/data/Conversation$1;->this$0:Lcom/android/mms/data/Conversation;

    #getter for: Lcom/android/mms/data/Conversation;->mThreadId:J
    invoke-static {v9}, Lcom/android/mms/data/Conversation;->access$400(Lcom/android/mms/data/Conversation;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 555
    const-string v2, "Mms/conv"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "markAsRead-updateThread: updateCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    monitor-enter p0

    .line 558
    const-wide/16 v2, 0xc8

    :try_start_0
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    :goto_1
    :try_start_1
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 559
    :catch_0
    move-exception v0

    .line 560
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v2, "Mms/conv"

    const-string v3, "InterruptedException"

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 566
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :cond_0
    iget-object v2, p0, Lcom/android/mms/data/Conversation$1$1;->this$1:Lcom/android/mms/data/Conversation$1;

    iget-object v2, v2, Lcom/android/mms/data/Conversation$1;->this$0:Lcom/android/mms/data/Conversation;

    #getter for: Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/data/Conversation;->access$200(Lcom/android/mms/data/Conversation;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/data/Conversation$1$1;->this$1:Lcom/android/mms/data/Conversation$1;

    iget-object v3, v3, Lcom/android/mms/data/Conversation$1;->val$threadUri:Landroid/net/Uri;

    invoke-static {}, Lcom/android/mms/data/Conversation;->access$300()Landroid/content/ContentValues;

    move-result-object v4

    const-string v5, "(read=0 OR seen=0)"

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 568
    const-string v2, "Mms/conv"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "markAsRead-updateThread: updateCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    :cond_1
    iget-object v2, p0, Lcom/android/mms/data/Conversation$1$1;->val$conv:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2, v11}, Lcom/android/mms/data/Conversation;->setIsDoingMarkAsRead(Z)V

    .line 572
    iget-object v2, p0, Lcom/android/mms/data/Conversation$1$1;->this$1:Lcom/android/mms/data/Conversation$1;

    iget-object v2, v2, Lcom/android/mms/data/Conversation$1;->this$0:Lcom/android/mms/data/Conversation;

    #getter for: Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/data/Conversation;->access$200(Lcom/android/mms/data/Conversation;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotifications(Landroid/content/Context;)V

    .line 573
    return-void
.end method
