.class Lcom/mediatek/CellConnService/PhoneStatesMgrService$3;
.super Landroid/content/BroadcastReceiver;
.source "PhoneStatesMgrService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/CellConnService/PhoneStatesMgrService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;


# direct methods
.method constructor <init>(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)V
    .locals 0
    .parameter

    .prologue
    .line 477
    iput-object p1, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$3;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 480
    const-string v7, "PhoneStatesMgrService"

    const-string v8, "BroadcastReceiver onReceive"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const-string v7, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 482
    const-string v7, "PhoneStatesMgrService"

    const-string v8, "BroadcastReceiver AIRPLANE_MODE_CHANGED"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    const-string v7, "state"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 484
    .local v0, airplaneModeON:Z
    const-string v7, "PhoneStatesMgrService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BroadcastReceiver AIRPLANE_MODE_CHANGED airplaneModeON = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    const-string v7, "PhoneStatesMgrService"

    const-string v8, "BroadcastReceiver AIRPLANE_MODE_CHANGED for gemini"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    if-eqz v0, :cond_3

    .line 490
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v7, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$3;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mSIMCount:I
    invoke-static {v7}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$1200(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 491
    iget-object v7, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$3;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mPhoneStates:[I
    invoke-static {v7}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$1000(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)[I

    move-result-object v7

    const/4 v8, 0x1

    aput v8, v7, v2

    .line 490
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 495
    :cond_0
    iget-object v7, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$3;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mIsTurningOffFlightModeOrPowerOnRadio:Z
    invoke-static {v7}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$1500(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$3;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mICallBackList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$300(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 496
    const-string v7, "PhoneStatesMgrService"

    const-string v8, "Send result(abort) when flight mode is turned on again."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v7, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$3;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mServiceHandler:Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;
    invoke-static {v7}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$200(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;

    move-result-object v7

    const/16 v8, 0xcf

    invoke-static {v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    .line 498
    .local v4, msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$3;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mICallBackList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$300(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)Ljava/util/ArrayList;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;

    invoke-virtual {v7}, Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;->getReqSlot()I

    move-result v7

    iput v7, v4, Landroid/os/Message;->arg1:I

    .line 499
    iget-object v7, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$3;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mServiceHandler:Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;
    invoke-static {v7}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$200(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;

    move-result-object v7

    if-nez v7, :cond_1

    .line 500
    const-string v7, "PhoneStatesMgrService"

    const-string v8, "verifyPhoneState wait looper"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object v7, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$3;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #calls: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->waitForLooper()V
    invoke-static {v7}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$1400(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)V

    .line 503
    :cond_1
    iget-object v7, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$3;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    const/4 v8, 0x2

    #setter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mResult:I
    invoke-static {v7, v8}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$1302(Lcom/mediatek/CellConnService/PhoneStatesMgrService;I)I

    .line 504
    iget-object v7, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$3;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mServiceHandler:Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;
    invoke-static {v7}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$200(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 630
    .end local v0           #airplaneModeON:Z
    .end local v2           #i:I
    .end local v4           #msg:Landroid/os/Message;
    :cond_2
    :goto_1
    return-void

    .line 508
    .restart local v0       #airplaneModeON:Z
    :cond_3
    iget-object v7, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$3;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #calls: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->getDualSimMode()I
    invoke-static {v7}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$1600(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)I

    move-result v1

    .line 509
    .local v1, dualSimMode:I
    const-string v7, "PhoneStatesMgrService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BroadcastReceiver dualSimMode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    iget-object v7, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$3;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mSIMCount:I
    invoke-static {v7}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$1200(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 511
    if-gez v1, :cond_4

    .line 512
    iget-object v7, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$3;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mPhoneStates:[I
    invoke-static {v7}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$1000(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)[I

    move-result-object v7

    const/4 v8, 0x1

    aput v8, v7, v2

    .line 518
    :goto_3
    const-string v7, "PhoneStatesMgrService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mPhoneStates["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$3;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mPhoneStates:[I
    invoke-static {v9}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$1000(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)[I

    move-result-object v9

    aget v9, v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 513
    :cond_4
    const/4 v7, 0x1

    shr-int v8, v1, v2

    and-int/lit8 v8, v8, 0x1

    if-ne v7, v8, :cond_5

    .line 514
    iget-object v7, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$3;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mPhoneStates:[I
    invoke-static {v7}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$1000(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)[I

    move-result-object v7

    const/4 v8, 0x2

    aput v8, v7, v2

    goto :goto_3

    .line 516
    :cond_5
    iget-object v7, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$3;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mPhoneStates:[I
    invoke-static {v7}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$1000(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)[I

    move-result-object v7

    const/4 v8, 0x1

    aput v8, v7, v2

    goto :goto_3

    .line 531
    .end local v0           #airplaneModeON:Z
    .end local v1           #dualSimMode:I
    .end local v2           #i:I
    :cond_6
    const-string v7, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 532
    const-string v7, "PhoneStatesMgrService"

    const-string v8, "BroadcastReceiver ACTION_DUAL_SIM_MODE_CHANGED"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    const-string v7, "mode"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 535
    .restart local v1       #dualSimMode:I
    const-string v7, "PhoneStatesMgrService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BroadcastReceiver duslSimMode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    iget-object v7, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$3;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mSIMCount:I
    invoke-static {v7}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$1200(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 538
    if-gez v1, :cond_7

    .line 539
    iget-object v7, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$3;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mPhoneStates:[I
    invoke-static {v7}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$1000(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)[I

    move-result-object v7

    const/4 v8, 0x1

    aput v8, v7, v2

    .line 545
    :goto_5
    const-string v7, "PhoneStatesMgrService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mPhoneStates["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$3;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mPhoneStates:[I
    invoke-static {v9}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$1000(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)[I

    move-result-object v9

    aget v9, v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 540
    :cond_7
    const/4 v7, 0x1

    shr-int v8, v1, v2

    and-int/lit8 v8, v8, 0x1

    if-ne v7, v8, :cond_8

    .line 541
    iget-object v7, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$3;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mPhoneStates:[I
    invoke-static {v7}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$1000(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)[I

    move-result-object v7

    const/4 v8, 0x2

    aput v8, v7, v2

    goto :goto_5

    .line 543
    :cond_8
    iget-object v7, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$3;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mPhoneStates:[I
    invoke-static {v7}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$1000(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)[I

    move-result-object v7

    const/4 v8, 0x1

    aput v8, v7, v2

    goto :goto_5

    .line 547
    .end local v1           #dualSimMode:I
    .end local v2           #i:I
    :cond_9
    const-string v7, "com.android.phone.CONFIRM_DIALOG_START"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 550
    const-string v7, "PhoneStatesMgrService"

    const-string v8, "CONFIRM_DIALOG_START: Confirm dialog is created, cancel timer."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object v7, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$3;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mServiceHandler:Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;
    invoke-static {v7}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$200(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$3;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mStartActivityTimeoutRunnable:Ljava/lang/Runnable;
    invoke-static {v8}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$100(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 552
    :cond_a
    const-string v7, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 553
    const-string v7, "PhoneStatesMgrService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ss"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const-string v7, "ss"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 555
    .local v6, stateExtra:Ljava/lang/String;
    const-string v7, "reason"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 556
    .local v3, lockedReason:Ljava/lang/String;
    const/4 v5, 0x0

    .line 558
    .local v5, slot:I
    const-string v7, "simId"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 561
    iget-object v7, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$3;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mSIMCount:I
    invoke-static {v7}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$1200(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)I

    move-result v7

    if-lt v5, v7, :cond_b

    .line 562
    const-string v7, "PhoneStatesMgrService"

    const-string v8, "BroadcastReceiver SIM State changed slot is invalid"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 566
    :cond_b
    const-string v7, "ABSENT"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 567
    const-string v7, "PhoneStatesMgrService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BroadcastReceiver slot "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " state is ICC_ABSENT"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object v7, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$3;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mPhoneStates:[I
    invoke-static {v7}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$1000(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)[I

    move-result-object v7

    const/16 v8, 0xa

    aput v8, v7, v5

    .line 569
    iget-object v7, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$3;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    const/4 v8, 0x2

    #calls: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->broadcastCallback(II)V
    invoke-static {v7, v5, v8}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$1700(Lcom/mediatek/CellConnService/PhoneStatesMgrService;II)V

    goto/16 :goto_1

    .line 571
    :cond_c
    const-string v7, "READY"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 572
    const-string v7, "PhoneStatesMgrService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BroadcastReceiver slot "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " state is ICC_READY"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-object v7, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$3;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    const/4 v8, 0x0

    #setter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mIsVerify:Z
    invoke-static {v7, v8}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$602(Lcom/mediatek/CellConnService/PhoneStatesMgrService;Z)Z

    .line 574
    iget-object v7, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$3;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mPhoneStates:[I
    invoke-static {v7}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$1000(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)[I

    move-result-object v7

    const/4 v8, 0x0

    aput v8, v7, v5

    .line 575
    iget-object v7, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$3;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    const/16 v8, 0x12e

    const/4 v9, 0x0

    #calls: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->broadcastCallback(III)V
    invoke-static {v7, v5, v8, v9}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$1800(Lcom/mediatek/CellConnService/PhoneStatesMgrService;III)V

    goto/16 :goto_1

    .line 596
    :cond_d
    const-string v7, "LOCKED"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 597
    const-string v7, "PhoneStatesMgrService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BroadcastReceiver slot "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " state is ICC_LOCKED"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const-string v7, "PIN"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 599
    const-string v7, "PhoneStatesMgrService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BroadcastReceiver slot "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " state is LOCKED_ON_PIN"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-object v7, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$3;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mPhoneStates:[I
    invoke-static {v7}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$1000(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)[I

    move-result-object v7

    const/4 v8, 0x3

    aput v8, v7, v5

    goto/16 :goto_1

    .line 602
    :cond_e
    const-string v7, "PUK"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 603
    const-string v7, "PhoneStatesMgrService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BroadcastReceiver slot "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " state is LOCKED_ON_PUK"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    iget-object v7, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$3;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mPhoneStates:[I
    invoke-static {v7}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$1000(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)[I

    move-result-object v7

    const/4 v8, 0x5

    aput v8, v7, v5

    goto/16 :goto_1

    .line 607
    :cond_f
    const-string v7, "NETWORK"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    const-string v7, "NETWORK_SUBSET"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    const-string v7, "CORPORATE"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    const-string v7, "SERVICE_PROVIDER"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    const-string v7, "SIM"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 612
    :cond_10
    const-string v7, "PhoneStatesMgrService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BroadcastReceiver slot "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " state is LOCKED_NETWORK"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    iget-object v7, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$3;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mPhoneStates:[I
    invoke-static {v7}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$1000(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)[I

    move-result-object v7

    const/4 v8, 0x7

    aput v8, v7, v5

    goto/16 :goto_1

    .line 616
    :cond_11
    const-string v7, "PhoneStatesMgrService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BroadcastReceiver slot "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " state is ICC_UNKNOWN"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iget-object v7, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$3;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mPhoneStates:[I
    invoke-static {v7}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$1000(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)[I

    move-result-object v7

    const/4 v8, -0x1

    aput v8, v7, v5

    goto/16 :goto_1

    .line 620
    :cond_12
    const-string v7, "NOT_READY"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 621
    const-string v7, "PhoneStatesMgrService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BroadcastReceiver slot "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " state is NOT_READY"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    iget-object v7, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$3;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mPhoneStates:[I
    invoke-static {v7}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$1000(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)[I

    move-result-object v7

    const/16 v8, 0xb

    aput v8, v7, v5

    goto/16 :goto_1

    .line 625
    :cond_13
    const-string v7, "PhoneStatesMgrService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BroadcastReceiver slot "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " state is UNKNOWN"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget-object v7, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$3;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mPhoneStates:[I
    invoke-static {v7}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$1000(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)[I

    move-result-object v7

    const/4 v8, -0x1

    aput v8, v7, v5

    goto/16 :goto_1
.end method
