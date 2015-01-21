.class Lcom/android/mms/ui/MessageListAdapter$3;
.super Ljava/lang/Object;
.source "MessageListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListAdapter;->getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListAdapter;

.field final synthetic val$boxId:I

.field final synthetic val$charset:I

.field final synthetic val$deliveryReport:Ljava/lang/String;

.field final synthetic val$errorType:I

.field final synthetic val$highlight:Ljava/util/regex/Pattern;

.field final synthetic val$indDate:J

.field final synthetic val$isDrawLoadAllMessagesButton:Z

.field final synthetic val$isDrawTimeDivider:Z

.field final synthetic val$isDrawUnreadDivider:Z

.field final synthetic val$key:J

.field final synthetic val$locked:I

.field final synthetic val$mMsgId:J

.field final synthetic val$messageType:I

.field final synthetic val$mmsStatus:I

.field final synthetic val$mmsType:Ljava/lang/String;

.field final synthetic val$object:Ljava/lang/Object;

.field final synthetic val$r:Ljava/lang/Runnable;

.field final synthetic val$readReport:Ljava/lang/String;

.field final synthetic val$serviceCenter:Ljava/lang/String;

.field final synthetic val$simId:I

.field final synthetic val$subject:Ljava/lang/String;

.field final synthetic val$unreadCount:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListAdapter;JIIIIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;ZZIZJILjava/lang/Runnable;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 444
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter$3;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    iput-wide p2, p0, Lcom/android/mms/ui/MessageListAdapter$3;->val$key:J

    iput p4, p0, Lcom/android/mms/ui/MessageListAdapter$3;->val$boxId:I

    iput p5, p0, Lcom/android/mms/ui/MessageListAdapter$3;->val$messageType:I

    iput p6, p0, Lcom/android/mms/ui/MessageListAdapter$3;->val$simId:I

    iput p7, p0, Lcom/android/mms/ui/MessageListAdapter$3;->val$errorType:I

    iput p8, p0, Lcom/android/mms/ui/MessageListAdapter$3;->val$locked:I

    iput p9, p0, Lcom/android/mms/ui/MessageListAdapter$3;->val$charset:I

    iput-wide p10, p0, Lcom/android/mms/ui/MessageListAdapter$3;->val$mMsgId:J

    iput-object p12, p0, Lcom/android/mms/ui/MessageListAdapter$3;->val$mmsType:Ljava/lang/String;

    iput-object p13, p0, Lcom/android/mms/ui/MessageListAdapter$3;->val$subject:Ljava/lang/String;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter$3;->val$serviceCenter:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter$3;->val$deliveryReport:Ljava/lang/String;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter$3;->val$readReport:Ljava/lang/String;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter$3;->val$highlight:Ljava/util/regex/Pattern;

    move/from16 v0, p18

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter$3;->val$isDrawTimeDivider:Z

    move/from16 v0, p19

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter$3;->val$isDrawUnreadDivider:Z

    move/from16 v0, p20

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$3;->val$unreadCount:I

    move/from16 v0, p21

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter$3;->val$isDrawLoadAllMessagesButton:Z

    move-wide/from16 v0, p22

    iput-wide v0, p0, Lcom/android/mms/ui/MessageListAdapter$3;->val$indDate:J

    move/from16 v0, p24

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$3;->val$mmsStatus:I

    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter$3;->val$r:Ljava/lang/Runnable;

    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter$3;->val$object:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 26

    .prologue
    .line 448
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListAdapter$3;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    #getter for: Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListAdapter;->access$100(Lcom/android/mms/ui/MessageListAdapter;)Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/MessageListAdapter$3;->val$key:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/MessageItem;

    .line 449
    .local v2, backgroundItem:Lcom/android/mms/ui/MessageItem;
    if-nez v2, :cond_0

    .line 450
    new-instance v2, Lcom/android/mms/ui/MessageItem;

    .end local v2           #backgroundItem:Lcom/android/mms/ui/MessageItem;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListAdapter$3;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    #getter for: Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListAdapter;->access$200(Lcom/android/mms/ui/MessageListAdapter;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/mms/ui/MessageListAdapter$3;->val$boxId:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/mms/ui/MessageListAdapter$3;->val$messageType:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/mms/ui/MessageListAdapter$3;->val$simId:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/mms/ui/MessageListAdapter$3;->val$errorType:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/mms/ui/MessageListAdapter$3;->val$locked:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/mms/ui/MessageListAdapter$3;->val$charset:I

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/mms/ui/MessageListAdapter$3;->val$mMsgId:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/MessageListAdapter$3;->val$mmsType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageListAdapter$3;->val$subject:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageListAdapter$3;->val$serviceCenter:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MessageListAdapter$3;->val$deliveryReport:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListAdapter$3;->val$readReport:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListAdapter$3;->val$highlight:Ljava/util/regex/Pattern;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageListAdapter$3;->val$isDrawTimeDivider:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageListAdapter$3;->val$isDrawUnreadDivider:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$3;->val$unreadCount:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageListAdapter$3;->val$isDrawLoadAllMessagesButton:Z

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/MessageListAdapter$3;->val$indDate:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$3;->val$mmsStatus:I

    move/from16 v24, v0

    invoke-direct/range {v2 .. v24}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;IIIIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;ZZIZJI)V

    .line 454
    .restart local v2       #backgroundItem:Lcom/android/mms/ui/MessageItem;
    const-string v3, "Mms/MessageItemCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCachedMessageItem(): put new MessageItem into cache, messageId = -"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v2, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListAdapter$3;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    #getter for: Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListAdapter;->access$100(Lcom/android/mms/ui/MessageListAdapter;)Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/MessageListAdapter$3;->val$key:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListAdapter$3;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    #getter for: Lcom/android/mms/ui/MessageListAdapter;->mMsgListItemHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListAdapter;->access$000(Lcom/android/mms/ui/MessageListAdapter;)Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListAdapter$3;->val$r:Ljava/lang/Runnable;

    const-wide/16 v5, 0xc8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 460
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListAdapter$3;->val$object:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListAdapter$3;->val$object:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 462
    monitor-exit v4

    .line 472
    .end local v2           #backgroundItem:Lcom/android/mms/ui/MessageItem;
    :goto_0
    return-void

    .line 462
    .restart local v2       #backgroundItem:Lcom/android/mms/ui/MessageItem;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 463
    .end local v2           #backgroundItem:Lcom/android/mms/ui/MessageItem;
    :catch_0
    move-exception v25

    .line 464
    .local v25, e:Lcom/google/android/mms/MmsException;
    const-string v3, "MessageListAdapter"

    const-string v4, "getCachedMessageItem: "

    move-object/from16 v0, v25

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 465
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/ui/MessageListAdapter$3;->val$messageType:I

    const/16 v4, 0x82

    if-ne v3, v4, :cond_1

    .line 466
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListAdapter$3;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v4, 0x1

    #setter for: Lcom/android/mms/ui/MessageListAdapter;->mNeedHideView:Z
    invoke-static {v3, v4}, Lcom/android/mms/ui/MessageListAdapter;->access$302(Lcom/android/mms/ui/MessageListAdapter;Z)Z

    .line 468
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageListAdapter$3;->val$object:Ljava/lang/Object;

    monitor-enter v4

    .line 469
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListAdapter$3;->val$object:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 470
    monitor-exit v4

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method
