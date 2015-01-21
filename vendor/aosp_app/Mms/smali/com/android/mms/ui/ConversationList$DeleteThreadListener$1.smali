.class Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1445
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private showProgressDialog()V
    .locals 2

    .prologue
    .line 1505
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mHandler:Landroid/content/AsyncQueryHandler;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$1900(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Landroid/content/AsyncQueryHandler;

    move-result-object v0

    instance-of v0, v0, Lcom/android/mms/ui/ConversationList$BaseProgressQueryHandler;

    if-eqz v0, :cond_0

    .line 1506
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mHandler:Landroid/content/AsyncQueryHandler;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$1900(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Landroid/content/AsyncQueryHandler;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ConversationList$BaseProgressQueryHandler;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$1500(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/DeleteProgressDialogUtil;->getProgressDialog(Landroid/content/Context;)Lcom/android/mms/ui/NewProgressDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationList$BaseProgressQueryHandler;->setProgressDialog(Lcom/android/mms/ui/NewProgressDialog;)V

    .line 1508
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mHandler:Landroid/content/AsyncQueryHandler;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$1900(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Landroid/content/AsyncQueryHandler;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ConversationList$BaseProgressQueryHandler;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationList$BaseProgressQueryHandler;->showProgressDialog()V

    .line 1510
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 1449
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mMode:Landroid/view/ActionMode;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$1400(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Landroid/view/ActionMode;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1450
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mMode:Landroid/view/ActionMode;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$1400(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Landroid/view/ActionMode;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    .line 1451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    const/4 v4, 0x0

    #setter for: Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mMode:Landroid/view/ActionMode;
    invoke-static {v2, v4}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$1402(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 1455
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->showProgressDialog()V

    .line 1459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$1500(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mThreadIds:Ljava/util/Collection;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$1600(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Ljava/util/Collection;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mDeleteLockedMessages:Z
    invoke-static {v7}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$1700(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Z

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mMaxSmsId:I
    invoke-static {v8}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$1800(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)I

    move-result v8

    invoke-static {v2, v4, v7, v8}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->deleteIpMessage(Landroid/content/Context;Ljava/util/Collection;ZI)V

    .line 1461
    const/16 v3, 0x709

    .line 1464
    .local v3, token:I
    const-string v4, "ConversationList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "before delete threads in conversationList, mThreadIds.size = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mThreadIds:Ljava/util/Collection;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$1600(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Ljava/util/Collection;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v2, "null"

    :goto_0
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1465
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mThreadIds:Ljava/util/Collection;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$1600(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Ljava/util/Collection;

    move-result-object v2

    if-nez v2, :cond_3

    .line 1468
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mHandler:Landroid/content/AsyncQueryHandler;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$1900(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Landroid/content/AsyncQueryHandler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mDeleteLockedMessages:Z
    invoke-static {v4}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$1700(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Z

    move-result v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mMaxMmsId:I
    invoke-static {v7}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$2000(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mMaxSmsId:I
    invoke-static {v8}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$1800(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)I

    move-result v8

    invoke-static {v2, v3, v4, v7, v8}, Lcom/android/mms/data/Conversation;->startDeleteAll(Landroid/content/AsyncQueryHandler;IZII)V

    .line 1474
    const/4 v2, 0x0

    sput v2, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->sDeleteNumber:I

    .line 1499
    :cond_1
    :goto_1
    const-string v2, "ConversationList"

    const-string v4, "after delete threads in conversationList"

    invoke-static {v2, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1501
    return-void

    .line 1464
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mThreadIds:Ljava/util/Collection;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$1600(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 1475
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mThreadIds:Ljava/util/Collection;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$1600(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v4, 0x1

    if-gt v2, v4, :cond_4

    .line 1477
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mThreadIds:Ljava/util/Collection;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$1600(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 1480
    .local v5, threadId:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mHandler:Landroid/content/AsyncQueryHandler;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$1900(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Landroid/content/AsyncQueryHandler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mDeleteLockedMessages:Z
    invoke-static {v4}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$1700(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Z

    move-result v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mMaxMmsId:I
    invoke-static {v7}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$2000(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mMaxSmsId:I
    invoke-static {v8}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$1800(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)I

    move-result v8

    invoke-static/range {v2 .. v8}, Lcom/android/mms/data/Conversation;->startDelete(Landroid/content/AsyncQueryHandler;IZJII)V

    .line 1483
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v5, v6, v4}, Lcom/android/mms/util/DraftCache;->setDraftState(JZ)V

    goto :goto_2

    .line 1485
    .end local v5           #threadId:J
    .end local v15           #i$:Ljava/util/Iterator;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mThreadIds:Ljava/util/Collection;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$1600(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_1

    .line 1489
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mThreadIds:Ljava/util/Collection;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$1600(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v10, v2, [Ljava/lang/String;

    .line 1490
    .local v10, threadIds:[Ljava/lang/String;
    const/4 v13, 0x0

    .line 1491
    .local v13, i:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mThreadIds:Ljava/util/Collection;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$1600(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 1492
    .local v16, thread:J
    add-int/lit8 v14, v13, 0x1

    .end local v13           #i:I
    .local v14, i:I
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v13

    .line 1493
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v2

    const/4 v4, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1, v4}, Lcom/android/mms/util/DraftCache;->setDraftState(JZ)V

    move v13, v14

    .end local v14           #i:I
    .restart local v13       #i:I
    goto :goto_3

    .line 1495
    .end local v16           #thread:J
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mHandler:Landroid/content/AsyncQueryHandler;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$1900(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Landroid/content/AsyncQueryHandler;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mDeleteLockedMessages:Z
    invoke-static {v2}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$1700(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mMaxMmsId:I
    invoke-static {v2}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$2000(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mMaxSmsId:I
    invoke-static {v2}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$1800(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)I

    move-result v12

    move v8, v3

    invoke-static/range {v7 .. v12}, Lcom/android/mms/data/Conversation;->startMultiDelete(Landroid/content/AsyncQueryHandler;IZ[Ljava/lang/String;II)V

    goto/16 :goto_1
.end method
