.class final Lcom/android/utk/UtkAppService$ServiceHandler;
.super Landroid/os/Handler;
.source "UtkAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/utk/UtkAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/utk/UtkAppService;


# direct methods
.method private constructor <init>(Lcom/android/utk/UtkAppService;)V
    .locals 0
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/utk/UtkAppService$ServiceHandler;->this$0:Lcom/android/utk/UtkAppService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/utk/UtkAppService;Lcom/android/utk/UtkAppService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 294
    invoke-direct {p0, p1}, Lcom/android/utk/UtkAppService$ServiceHandler;-><init>(Lcom/android/utk/UtkAppService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x50

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 297
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 299
    .local v1, opcode:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ServiceHandler "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    packed-switch v1, :pswitch_data_0

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 305
    :pswitch_0
    iget-object v3, p0, Lcom/android/utk/UtkAppService$ServiceHandler;->this$0:Lcom/android/utk/UtkAppService;

    invoke-static {}, Lcom/android/internal/telephony/cdma/utk/UtkService;->getInstance()Lcom/android/internal/telephony/cdma/utk/AppInterface;

    move-result-object v4

    #setter for: Lcom/android/utk/UtkAppService;->mUtkService:Lcom/android/internal/telephony/cdma/utk/AppInterface;
    invoke-static {v3, v4}, Lcom/android/utk/UtkAppService;->access$102(Lcom/android/utk/UtkAppService;Lcom/android/internal/telephony/cdma/utk/AppInterface;)Lcom/android/internal/telephony/cdma/utk/AppInterface;

    .line 307
    iget-object v3, p0, Lcom/android/utk/UtkAppService$ServiceHandler;->this$0:Lcom/android/utk/UtkAppService;

    #getter for: Lcom/android/utk/UtkAppService;->mUtkService:Lcom/android/internal/telephony/cdma/utk/AppInterface;
    invoke-static {v3}, Lcom/android/utk/UtkAppService;->access$100(Lcom/android/utk/UtkAppService;)Lcom/android/internal/telephony/cdma/utk/AppInterface;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/utk/UtkAppService$ServiceHandler;->this$0:Lcom/android/utk/UtkAppService;

    #getter for: Lcom/android/utk/UtkAppService;->mMainCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;
    invoke-static {v3}, Lcom/android/utk/UtkAppService;->access$200(Lcom/android/utk/UtkAppService;)Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    move-result-object v3

    if-nez v3, :cond_2

    .line 308
    :cond_1
    iget-object v3, p0, Lcom/android/utk/UtkAppService$ServiceHandler;->this$0:Lcom/android/utk/UtkAppService;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/utk/UtkAppService$ServiceHandler;->this$0:Lcom/android/utk/UtkAppService;

    const v5, 0x7f060010

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 309
    .local v2, toast:Landroid/widget/Toast;
    invoke-virtual {v2, v8, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 310
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 311
    const-string v3, "UTK mMainCmd == null"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 315
    .end local v2           #toast:Landroid/widget/Toast;
    :cond_2
    iget-object v3, p0, Lcom/android/utk/UtkAppService$ServiceHandler;->this$0:Lcom/android/utk/UtkAppService;

    invoke-virtual {v3}, Lcom/android/utk/UtkAppService;->isOnFlightMode()Z

    move-result v3

    if-ne v3, v7, :cond_3

    .line 316
    iget-object v3, p0, Lcom/android/utk/UtkAppService$ServiceHandler;->this$0:Lcom/android/utk/UtkAppService;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/utk/UtkAppService$ServiceHandler;->this$0:Lcom/android/utk/UtkAppService;

    const v5, 0x7f060012

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 317
    .restart local v2       #toast:Landroid/widget/Toast;
    invoke-virtual {v2, v8, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 318
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 319
    const-string v3, "Utk can\'t be launched in flight mode"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 324
    .end local v2           #toast:Landroid/widget/Toast;
    :cond_3
    iget-object v3, p0, Lcom/android/utk/UtkAppService$ServiceHandler;->this$0:Lcom/android/utk/UtkAppService;

    #getter for: Lcom/android/utk/UtkAppService;->mCanLaunchStkMenuActivity:Z
    invoke-static {v3}, Lcom/android/utk/UtkAppService;->access$300(Lcom/android/utk/UtkAppService;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 325
    iget-object v3, p0, Lcom/android/utk/UtkAppService$ServiceHandler;->this$0:Lcom/android/utk/UtkAppService;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/utk/UtkAppService$ServiceHandler;->this$0:Lcom/android/utk/UtkAppService;

    const v5, 0x7f060013

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 326
    .restart local v2       #toast:Landroid/widget/Toast;
    invoke-virtual {v2, v8, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 327
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 328
    const-string v3, "Utk can\'t be launched on radio off"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 332
    .end local v2           #toast:Landroid/widget/Toast;
    :cond_4
    iget-object v3, p0, Lcom/android/utk/UtkAppService$ServiceHandler;->this$0:Lcom/android/utk/UtkAppService;

    #calls: Lcom/android/utk/UtkAppService;->isBusyOnCall()Z
    invoke-static {v3}, Lcom/android/utk/UtkAppService;->access$400(Lcom/android/utk/UtkAppService;)Z

    move-result v3

    if-ne v3, v7, :cond_5

    .line 333
    iget-object v3, p0, Lcom/android/utk/UtkAppService$ServiceHandler;->this$0:Lcom/android/utk/UtkAppService;

    #getter for: Lcom/android/utk/UtkAppService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/utk/UtkAppService;->access$500(Lcom/android/utk/UtkAppService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060011

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 334
    .restart local v2       #toast:Landroid/widget/Toast;
    invoke-virtual {v2, v8, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 335
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 338
    .end local v2           #toast:Landroid/widget/Toast;
    :cond_5
    iget-object v3, p0, Lcom/android/utk/UtkAppService$ServiceHandler;->this$0:Lcom/android/utk/UtkAppService;

    #calls: Lcom/android/utk/UtkAppService;->launchMenuActivity(Lcom/android/internal/telephony/cdma/utk/Menu;)V
    invoke-static {v3, v9}, Lcom/android/utk/UtkAppService;->access$600(Lcom/android/utk/UtkAppService;Lcom/android/internal/telephony/cdma/utk/Menu;)V

    goto/16 :goto_0

    .line 341
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    .line 350
    .local v0, cmdMsg:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;
    iget-object v3, p0, Lcom/android/utk/UtkAppService$ServiceHandler;->this$0:Lcom/android/utk/UtkAppService;

    #calls: Lcom/android/utk/UtkAppService;->isCmdInteractive(Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;)Z
    invoke-static {v3, v0}, Lcom/android/utk/UtkAppService;->access$700(Lcom/android/utk/UtkAppService;Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 351
    iget-object v3, p0, Lcom/android/utk/UtkAppService$ServiceHandler;->this$0:Lcom/android/utk/UtkAppService;

    #calls: Lcom/android/utk/UtkAppService;->handleCmd(Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;)V
    invoke-static {v3, v0}, Lcom/android/utk/UtkAppService;->access$800(Lcom/android/utk/UtkAppService;Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;)V

    goto/16 :goto_0

    .line 353
    :cond_6
    iget-object v3, p0, Lcom/android/utk/UtkAppService$ServiceHandler;->this$0:Lcom/android/utk/UtkAppService;

    #getter for: Lcom/android/utk/UtkAppService;->mCmdInProgress:Z
    invoke-static {v3}, Lcom/android/utk/UtkAppService;->access$900(Lcom/android/utk/UtkAppService;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 354
    iget-object v3, p0, Lcom/android/utk/UtkAppService$ServiceHandler;->this$0:Lcom/android/utk/UtkAppService;

    #setter for: Lcom/android/utk/UtkAppService;->mCmdInProgress:Z
    invoke-static {v3, v7}, Lcom/android/utk/UtkAppService;->access$902(Lcom/android/utk/UtkAppService;Z)Z

    .line 355
    iget-object v4, p0, Lcom/android/utk/UtkAppService$ServiceHandler;->this$0:Lcom/android/utk/UtkAppService;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    #calls: Lcom/android/utk/UtkAppService;->handleCmd(Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;)V
    invoke-static {v4, v3}, Lcom/android/utk/UtkAppService;->access$800(Lcom/android/utk/UtkAppService;Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;)V

    goto/16 :goto_0

    .line 357
    :cond_7
    iget-object v3, p0, Lcom/android/utk/UtkAppService$ServiceHandler;->this$0:Lcom/android/utk/UtkAppService;

    #getter for: Lcom/android/utk/UtkAppService;->mCmdsQ:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/utk/UtkAppService;->access$1000(Lcom/android/utk/UtkAppService;)Ljava/util/LinkedList;

    move-result-object v4

    new-instance v5, Lcom/android/utk/UtkAppService$DelayedCmd;

    iget-object v6, p0, Lcom/android/utk/UtkAppService$ServiceHandler;->this$0:Lcom/android/utk/UtkAppService;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-direct {v5, v6, v7, v3}, Lcom/android/utk/UtkAppService$DelayedCmd;-><init>(Lcom/android/utk/UtkAppService;ILcom/android/internal/telephony/cdma/utk/UtkCmdMessage;)V

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 363
    .end local v0           #cmdMsg:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;
    :pswitch_2
    iget-object v3, p0, Lcom/android/utk/UtkAppService$ServiceHandler;->this$0:Lcom/android/utk/UtkAppService;

    #getter for: Lcom/android/utk/UtkAppService;->responseNeeded:Z
    invoke-static {v3}, Lcom/android/utk/UtkAppService;->access$1100(Lcom/android/utk/UtkAppService;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 364
    iget-object v4, p0, Lcom/android/utk/UtkAppService$ServiceHandler;->this$0:Lcom/android/utk/UtkAppService;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    #calls: Lcom/android/utk/UtkAppService;->handleCmdResponse(Landroid/os/Bundle;)V
    invoke-static {v4, v3}, Lcom/android/utk/UtkAppService;->access$1200(Lcom/android/utk/UtkAppService;Landroid/os/Bundle;)V

    .line 367
    :cond_8
    iget-object v3, p0, Lcom/android/utk/UtkAppService$ServiceHandler;->this$0:Lcom/android/utk/UtkAppService;

    #getter for: Lcom/android/utk/UtkAppService;->mCmdsQ:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/utk/UtkAppService;->access$1000(Lcom/android/utk/UtkAppService;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-eqz v3, :cond_9

    .line 368
    iget-object v3, p0, Lcom/android/utk/UtkAppService$ServiceHandler;->this$0:Lcom/android/utk/UtkAppService;

    #calls: Lcom/android/utk/UtkAppService;->callDelayedMsg()V
    invoke-static {v3}, Lcom/android/utk/UtkAppService;->access$1300(Lcom/android/utk/UtkAppService;)V

    .line 373
    :goto_1
    iget-object v3, p0, Lcom/android/utk/UtkAppService$ServiceHandler;->this$0:Lcom/android/utk/UtkAppService;

    #setter for: Lcom/android/utk/UtkAppService;->responseNeeded:Z
    invoke-static {v3, v7}, Lcom/android/utk/UtkAppService;->access$1102(Lcom/android/utk/UtkAppService;Z)Z

    goto/16 :goto_0

    .line 370
    :cond_9
    iget-object v3, p0, Lcom/android/utk/UtkAppService$ServiceHandler;->this$0:Lcom/android/utk/UtkAppService;

    #setter for: Lcom/android/utk/UtkAppService;->mCmdInProgress:Z
    invoke-static {v3, v6}, Lcom/android/utk/UtkAppService;->access$902(Lcom/android/utk/UtkAppService;Z)Z

    goto :goto_1

    .line 376
    :pswitch_3
    iget-object v3, p0, Lcom/android/utk/UtkAppService$ServiceHandler;->this$0:Lcom/android/utk/UtkAppService;

    #getter for: Lcom/android/utk/UtkAppService;->mCmdInProgress:Z
    invoke-static {v3}, Lcom/android/utk/UtkAppService;->access$900(Lcom/android/utk/UtkAppService;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 377
    iget-object v3, p0, Lcom/android/utk/UtkAppService$ServiceHandler;->this$0:Lcom/android/utk/UtkAppService;

    #setter for: Lcom/android/utk/UtkAppService;->mCmdInProgress:Z
    invoke-static {v3, v7}, Lcom/android/utk/UtkAppService;->access$902(Lcom/android/utk/UtkAppService;Z)Z

    .line 378
    iget-object v3, p0, Lcom/android/utk/UtkAppService$ServiceHandler;->this$0:Lcom/android/utk/UtkAppService;

    #calls: Lcom/android/utk/UtkAppService;->handleSessionEnd()V
    invoke-static {v3}, Lcom/android/utk/UtkAppService;->access$1400(Lcom/android/utk/UtkAppService;)V

    goto/16 :goto_0

    .line 380
    :cond_a
    iget-object v3, p0, Lcom/android/utk/UtkAppService$ServiceHandler;->this$0:Lcom/android/utk/UtkAppService;

    #getter for: Lcom/android/utk/UtkAppService;->mCmdsQ:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/utk/UtkAppService;->access$1000(Lcom/android/utk/UtkAppService;)Ljava/util/LinkedList;

    move-result-object v3

    new-instance v4, Lcom/android/utk/UtkAppService$DelayedCmd;

    iget-object v5, p0, Lcom/android/utk/UtkAppService$ServiceHandler;->this$0:Lcom/android/utk/UtkAppService;

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v9}, Lcom/android/utk/UtkAppService$DelayedCmd;-><init>(Lcom/android/utk/UtkAppService;ILcom/android/internal/telephony/cdma/utk/UtkCmdMessage;)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 384
    :pswitch_4
    const-string v3, "OP_BOOT_COMPLETED"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    iget-object v3, p0, Lcom/android/utk/UtkAppService$ServiceHandler;->this$0:Lcom/android/utk/UtkAppService;

    #getter for: Lcom/android/utk/UtkAppService;->mMainCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;
    invoke-static {v3}, Lcom/android/utk/UtkAppService;->access$200(Lcom/android/utk/UtkAppService;)Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    move-result-object v3

    if-nez v3, :cond_0

    goto/16 :goto_0

    .line 390
    :pswitch_5
    iget-object v3, p0, Lcom/android/utk/UtkAppService$ServiceHandler;->this$0:Lcom/android/utk/UtkAppService;

    #calls: Lcom/android/utk/UtkAppService;->handleDelayedCmd()V
    invoke-static {v3}, Lcom/android/utk/UtkAppService;->access$1500(Lcom/android/utk/UtkAppService;)V

    goto/16 :goto_0

    .line 301
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
