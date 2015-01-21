.class Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;
.super Landroid/os/Handler;
.source "TagLogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mtklogger/taglog/TagLogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;


# direct methods
.method public constructor <init>(Lcom/mediatek/mtklogger/taglog/TagLogManager;)V
    .locals 1
    .parameter

    .prologue
    .line 418
    iput-object p1, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    .line 420
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 421
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 424
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 425
    const-string v3, "MTKLogger/TagLogManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " UIHandler handleMessage, what="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", thread="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 487
    :cond_0
    :goto_0
    const-string v3, "MTKLogger/TagLogManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " MyHandler handleMessage --> end "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    :goto_1
    return-void

    .line 429
    :sswitch_0
    iget-object v3, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    #calls: Lcom/mediatek/mtklogger/taglog/TagLogManager;->initToolStatus()V
    invoke-static {v3}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$100(Lcom/mediatek/mtklogger/taglog/TagLogManager;)V

    .line 430
    const/4 v0, 0x0

    .line 431
    .local v0, allLogType:I
    sget-object v3, Lcom/mediatek/mtklogger/utils/Utils;->LOG_TYPE_SET:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 432
    .local v2, logType:Ljava/lang/Integer;
    iget-object v3, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mLogToolStatus:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$200(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_3
    or-int/2addr v0, v3

    goto :goto_2

    :cond_1
    move v3, v4

    goto :goto_3

    .line 436
    .end local v2           #logType:Ljava/lang/Integer;
    :cond_2
    if-nez v0, :cond_3

    .line 437
    iget-object v3, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    const/16 v4, 0x12e

    #calls: Lcom/mediatek/mtklogger/taglog/TagLogManager;->createDialog(I)V
    invoke-static {v3, v4}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$300(Lcom/mediatek/mtklogger/taglog/TagLogManager;I)V

    goto :goto_1

    .line 441
    :cond_3
    iget-object v3, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mManualSaveLog:Z
    invoke-static {v3}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$400(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 442
    invoke-static {}, Lcom/mediatek/mtklogger/taglog/ZipManager;->initZippedFilesCount()V

    .line 443
    iget-object v3, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mUIHandler:Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;
    invoke-static {v3}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$500(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;

    move-result-object v3

    const/16 v4, 0x132

    invoke-virtual {v3, v4}, Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;->sendEmptyMessage(I)Z

    .line 445
    new-instance v3, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;

    iget-object v4, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;-><init>(Lcom/mediatek/mtklogger/taglog/TagLogManager;Lcom/mediatek/mtklogger/taglog/TagLogManager$1;)V

    invoke-virtual {v3}, Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;->start()V

    goto :goto_0

    .line 447
    :cond_4
    iget-object v3, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    const/16 v4, 0x12d

    #calls: Lcom/mediatek/mtklogger/taglog/TagLogManager;->createDialog(I)V
    invoke-static {v3, v4}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$300(Lcom/mediatek/mtklogger/taglog/TagLogManager;I)V

    .line 449
    iget-object v3, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mUIHandler:Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;
    invoke-static {v3}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$500(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;

    move-result-object v3

    const/16 v4, 0xd1

    const-wide/32 v5, 0x1d4c0

    invoke-virtual {v3, v4, v5, v6}, Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 454
    .end local v0           #allLogType:I
    .end local v1           #i$:Ljava/util/Iterator;
    :sswitch_1
    iget-object v3, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsInputDialogClicked:Z
    invoke-static {v3}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$700(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 455
    const-string v3, "MTKLogger/TagLogManager"

    const-string v4, "time out"

    invoke-static {v3, v4}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    iget-object v3, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    const-string v4, "Cancel"

    #setter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mTagLogResult:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$802(Lcom/mediatek/mtklogger/taglog/TagLogManager;Ljava/lang/String;)Ljava/lang/String;

    .line 457
    iget-object v3, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    #calls: Lcom/mediatek/mtklogger/taglog/TagLogManager;->deInit(Z)V
    invoke-static {v3, v7}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$900(Lcom/mediatek/mtklogger/taglog/TagLogManager;Z)V

    goto/16 :goto_0

    .line 461
    :sswitch_2
    iget-object v3, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    const/16 v4, 0x12f

    #calls: Lcom/mediatek/mtklogger/taglog/TagLogManager;->createDialog(I)V
    invoke-static {v3, v4}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$300(Lcom/mediatek/mtklogger/taglog/TagLogManager;I)V

    goto/16 :goto_0

    .line 464
    :sswitch_3
    iget-object v3, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    #calls: Lcom/mediatek/mtklogger/taglog/TagLogManager;->dismissProgressDialog()V
    invoke-static {v3}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$1000(Lcom/mediatek/mtklogger/taglog/TagLogManager;)V

    .line 465
    iget-object v3, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    const/16 v4, 0x193

    #calls: Lcom/mediatek/mtklogger/taglog/TagLogManager;->createDialog(I)V
    invoke-static {v3, v4}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$300(Lcom/mediatek/mtklogger/taglog/TagLogManager;I)V

    goto/16 :goto_0

    .line 468
    :sswitch_4
    iget-object v3, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    #calls: Lcom/mediatek/mtklogger/taglog/TagLogManager;->dismissProgressDialog()V
    invoke-static {v3}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$1000(Lcom/mediatek/mtklogger/taglog/TagLogManager;)V

    .line 469
    iget-object v3, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    const/16 v4, 0x194

    #calls: Lcom/mediatek/mtklogger/taglog/TagLogManager;->createDialog(I)V
    invoke-static {v3, v4}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$300(Lcom/mediatek/mtklogger/taglog/TagLogManager;I)V

    goto/16 :goto_0

    .line 472
    :sswitch_5
    iget-object v3, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    #calls: Lcom/mediatek/mtklogger/taglog/TagLogManager;->dismissProgressDialog()V
    invoke-static {v3}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$1000(Lcom/mediatek/mtklogger/taglog/TagLogManager;)V

    .line 473
    iget-object v3, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    const-string v5, "Successful"

    #setter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mTagLogResult:Ljava/lang/String;
    invoke-static {v3, v5}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$802(Lcom/mediatek/mtklogger/taglog/TagLogManager;Ljava/lang/String;)Ljava/lang/String;

    .line 474
    iget-object v3, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    #getter for: Lcom/mediatek/mtklogger/taglog/TagLogManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$1100(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f07007d

    invoke-static {v3, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 475
    iget-object v3, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    #calls: Lcom/mediatek/mtklogger/taglog/TagLogManager;->deInit(Z)V
    invoke-static {v3, v7}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$900(Lcom/mediatek/mtklogger/taglog/TagLogManager;Z)V

    goto/16 :goto_0

    .line 478
    :sswitch_6
    iget-object v3, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    #calls: Lcom/mediatek/mtklogger/taglog/TagLogManager;->dismissProgressDialog()V
    invoke-static {v3}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$1000(Lcom/mediatek/mtklogger/taglog/TagLogManager;)V

    .line 479
    iget-object v3, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    const/16 v4, 0x131

    #calls: Lcom/mediatek/mtklogger/taglog/TagLogManager;->createDialog(I)V
    invoke-static {v3, v4}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$300(Lcom/mediatek/mtklogger/taglog/TagLogManager;I)V

    goto/16 :goto_0

    .line 482
    :sswitch_7
    iget-object v3, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    #calls: Lcom/mediatek/mtklogger/taglog/TagLogManager;->createProgressDialog()V
    invoke-static {v3}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$1200(Lcom/mediatek/mtklogger/taglog/TagLogManager;)V

    goto/16 :goto_0

    .line 427
    :sswitch_data_0
    .sparse-switch
        0xcb -> :sswitch_0
        0xce -> :sswitch_5
        0xcf -> :sswitch_6
        0xd1 -> :sswitch_1
        0x132 -> :sswitch_7
        0x192 -> :sswitch_2
        0x193 -> :sswitch_3
        0x194 -> :sswitch_4
    .end sparse-switch
.end method
