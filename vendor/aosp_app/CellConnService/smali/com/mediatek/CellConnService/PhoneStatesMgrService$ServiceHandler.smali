.class final Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;
.super Landroid/os/Handler;
.source "PhoneStatesMgrService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/CellConnService/PhoneStatesMgrService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;


# direct methods
.method private constructor <init>(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)V
    .locals 0
    .parameter

    .prologue
    .line 633
    iput-object p1, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/CellConnService/PhoneStatesMgrService;Lcom/mediatek/CellConnService/PhoneStatesMgrService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 633
    invoke-direct {p0, p1}, Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;-><init>(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/16 v8, 0x132

    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 637
    const-string v2, "PhoneStatesMgrService"

    const-string v3, "handleMessage: process incoming message"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    iget-object v2, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mICallBackList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$300(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    .line 641
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mICallBackList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$300(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 642
    const-string v2, "PhoneStatesMgrService"

    const-string v4, "handleMessage no item to handle"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    monitor-exit v3

    .line 770
    :goto_0
    return-void

    .line 646
    :cond_0
    iget-object v2, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mICallBackList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$300(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;

    .line 647
    .local v1, reqItem:Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 649
    if-nez v1, :cond_1

    .line 650
    const-string v2, "PhoneStatesMgrService"

    const-string v3, "handleMessage mICallBackList the first item is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 647
    .end local v1           #reqItem:Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 654
    .restart local v1       #reqItem:Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;
    :cond_1
    invoke-virtual {v1}, Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;->getReqSlot()I

    move-result v0

    .line 655
    .local v0, handleSlot:I
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eq v2, v0, :cond_2

    .line 656
    const-string v2, "PhoneStatesMgrService"

    const-string v3, "handleMessage: the handleSlot is not match the msg.args"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 661
    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 663
    :pswitch_1
    const-string v2, "PhoneStatesMgrService"

    const-string v3, "handleMessage: check radio off"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    iget-object v2, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mPhoneStates:[I
    invoke-static {v2}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$1000(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)[I

    move-result-object v2

    aget v2, v2, v0

    if-eq v5, v2, :cond_3

    iget-object v2, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #calls: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->isRadioOff(I)Z
    invoke-static {v2, v0}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$1100(Lcom/mediatek/CellConnService/PhoneStatesMgrService;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 668
    :cond_3
    const-string v2, "PhoneStatesMgrService"

    const-string v3, "handleMessage: radio is off"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    iget-object v2, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mPhoneStates:[I
    invoke-static {v2}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$1000(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)[I

    move-result-object v2

    aput v5, v2, v0

    .line 671
    iget-object v2, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #setter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mUserConfirmed:Z
    invoke-static {v2, v5}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$702(Lcom/mediatek/CellConnService/PhoneStatesMgrService;Z)Z

    .line 672
    iget-object v2, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    const/16 v3, 0x191

    #calls: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->showConfirmDlg(Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;I)V
    invoke-static {v2, v1, v3}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$1900(Lcom/mediatek/CellConnService/PhoneStatesMgrService;Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;I)V

    goto :goto_0

    .line 675
    :cond_4
    iget-object v2, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mPhoneStates:[I
    invoke-static {v2}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$1000(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)[I

    move-result-object v2

    const/4 v3, 0x2

    aput v3, v2, v0

    .line 680
    :pswitch_2
    const-string v2, "PhoneStatesMgrService"

    const-string v3, "handleMessage: check PIN1 state"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mPhoneStates:[I
    invoke-static {v3}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$1000(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)[I

    move-result-object v3

    aget v3, v3, v0

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    invoke-virtual {v2, v0}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->pinRequest(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 684
    :cond_5
    iget-object v2, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mUserConfirmed:Z
    invoke-static {v2}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$700(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 685
    iget-object v2, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #setter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mUserConfirmed:Z
    invoke-static {v2, v5}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$702(Lcom/mediatek/CellConnService/PhoneStatesMgrService;Z)Z

    .line 686
    iget-object v2, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    const/16 v3, 0x192

    #calls: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->showConfirmDlg(Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;I)V
    invoke-static {v2, v1, v3}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$1900(Lcom/mediatek/CellConnService/PhoneStatesMgrService;Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;I)V

    goto/16 :goto_0

    .line 688
    :cond_6
    iget-object v2, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    const/16 v3, 0x1f5

    #calls: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->showVerifyDlg(Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;I)V
    invoke-static {v2, v1, v3}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$2000(Lcom/mediatek/CellConnService/PhoneStatesMgrService;Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;I)V

    goto/16 :goto_0

    .line 694
    :cond_7
    :pswitch_3
    const-string v2, "PhoneStatesMgrService"

    const-string v3, "handleMessage: check PUK1 state"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    iget-object v2, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    invoke-virtual {v2, v0}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->pukRequest(I)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #calls: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->getRetryPukCount(I)I
    invoke-static {v2, v0}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$2100(Lcom/mediatek/CellConnService/PhoneStatesMgrService;I)I

    move-result v2

    if-nez v2, :cond_8

    .line 697
    const-string v2, "PhoneStatesMgrService"

    const-string v3, "handleMessage PUK no retry"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget-object v2, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    const/16 v3, 0x196

    #calls: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->showConfirmDlg(Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;I)V
    invoke-static {v2, v1, v3}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$1900(Lcom/mediatek/CellConnService/PhoneStatesMgrService;Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;I)V

    goto/16 :goto_0

    .line 703
    :cond_8
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mPhoneStates:[I
    invoke-static {v3}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$1000(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)[I

    move-result-object v3

    aget v3, v3, v0

    if-eq v2, v3, :cond_9

    iget-object v2, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    invoke-virtual {v2, v0}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->pukRequest(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 704
    :cond_9
    iget-object v2, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mUserConfirmed:Z
    invoke-static {v2}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$700(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 705
    iget-object v2, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #setter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mUserConfirmed:Z
    invoke-static {v2, v5}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$702(Lcom/mediatek/CellConnService/PhoneStatesMgrService;Z)Z

    .line 706
    iget-object v2, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    const/16 v3, 0x198

    #calls: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->showConfirmDlg(Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;I)V
    invoke-static {v2, v1, v3}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$1900(Lcom/mediatek/CellConnService/PhoneStatesMgrService;Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;I)V

    goto/16 :goto_0

    .line 708
    :cond_a
    iget-object v2, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    const/16 v3, 0x1f6

    #calls: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->showVerifyDlg(Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;I)V
    invoke-static {v2, v1, v3}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$2000(Lcom/mediatek/CellConnService/PhoneStatesMgrService;Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;I)V

    goto/16 :goto_0

    .line 714
    :cond_b
    :pswitch_4
    const-string v2, "PhoneStatesMgrService"

    const-string v3, "handleMessage: check SIM-ME lock state"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget-object v2, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    invoke-virtual {v2, v0}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->simMELockRequest(I)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #calls: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->getRetryMELockCount(I)I
    invoke-static {v2, v0}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$2200(Lcom/mediatek/CellConnService/PhoneStatesMgrService;I)I

    move-result v2

    if-nez v2, :cond_c

    .line 718
    const-string v2, "PhoneStatesMgrService"

    const-string v3, "handleMessage SIM-ME lock no retry"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    iget-object v2, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    const/16 v3, 0x197

    #calls: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->showConfirmDlg(Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;I)V
    invoke-static {v2, v1, v3}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$1900(Lcom/mediatek/CellConnService/PhoneStatesMgrService;Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;I)V

    goto/16 :goto_0

    .line 723
    :cond_c
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mPhoneStates:[I
    invoke-static {v3}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$1000(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)[I

    move-result-object v3

    aget v3, v3, v0

    if-eq v2, v3, :cond_d

    iget-object v2, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    invoke-virtual {v2, v0}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->simMELockRequest(I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 725
    :cond_d
    iget-object v2, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mUserConfirmed:Z
    invoke-static {v2}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$700(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 726
    iget-object v2, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #setter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mUserConfirmed:Z
    invoke-static {v2, v5}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$702(Lcom/mediatek/CellConnService/PhoneStatesMgrService;Z)Z

    .line 727
    iget-object v2, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    const/16 v3, 0x193

    #calls: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->showConfirmDlg(Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;I)V
    invoke-static {v2, v1, v3}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$1900(Lcom/mediatek/CellConnService/PhoneStatesMgrService;Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;I)V

    goto/16 :goto_0

    .line 729
    :cond_e
    iget-object v2, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    const/16 v3, 0x1f7

    #calls: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->showVerifyDlg(Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;I)V
    invoke-static {v2, v1, v3}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$2000(Lcom/mediatek/CellConnService/PhoneStatesMgrService;Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;I)V

    goto/16 :goto_0

    .line 733
    :cond_f
    const-string v2, "PhoneStatesMgrService"

    const-string v3, "handleMessage check SIM-ME lock phone state is normal"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    iget-object v2, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mPhoneStates:[I
    invoke-static {v2}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$1000(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)[I

    move-result-object v2

    aput v6, v2, v0

    .line 735
    iget-object v2, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    const/16 v3, 0x12e

    #calls: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->broadcastCallback(III)V
    invoke-static {v2, v0, v3, v7}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$1800(Lcom/mediatek/CellConnService/PhoneStatesMgrService;III)V

    goto/16 :goto_0

    .line 740
    :pswitch_5
    const-string v2, "PhoneStatesMgrService"

    const-string v3, "handleMessage: check MSG_ID_CHECKFDN state"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iget-object v2, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    invoke-virtual {v2, v0}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->fdnRequest(I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 744
    iget-object v2, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    const/16 v3, 0x194

    #calls: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->showConfirmDlg(Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;I)V
    invoke-static {v2, v1, v3}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$1900(Lcom/mediatek/CellConnService/PhoneStatesMgrService;Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;I)V

    goto/16 :goto_0

    .line 746
    :cond_10
    iget-object v2, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mPhoneStates:[I
    invoke-static {v2}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$1000(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)[I

    move-result-object v2

    aget v3, v2, v0

    const v4, -0xf001

    and-int/2addr v3, v4

    aput v3, v2, v0

    .line 747
    iget-object v2, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    const/16 v3, 0x130

    #calls: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->broadcastCallback(III)V
    invoke-static {v2, v0, v3, v6}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$1800(Lcom/mediatek/CellConnService/PhoneStatesMgrService;III)V

    goto/16 :goto_0

    .line 752
    :pswitch_6
    const-string v2, "PhoneStatesMgrService"

    const-string v3, "handleMessage: check roaming"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    iget-object v2, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    invoke-virtual {v2, v0}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->roamingRequest(I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 755
    iget-object v2, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    const/16 v3, 0x195

    #calls: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->showConfirmDlg(Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;I)V
    invoke-static {v2, v1, v3}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$1900(Lcom/mediatek/CellConnService/PhoneStatesMgrService;Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;I)V

    goto/16 :goto_0

    .line 757
    :cond_11
    iget-object v2, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mResult:I
    invoke-static {v2}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$1300(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)I

    move-result v2

    packed-switch v2, :pswitch_data_1

    .line 763
    :pswitch_7
    iget-object v2, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    invoke-virtual {v1}, Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;->getReqSlot()I

    move-result v3

    #calls: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->broadcastCallback(III)V
    invoke-static {v2, v3, v8, v7}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$1800(Lcom/mediatek/CellConnService/PhoneStatesMgrService;III)V

    goto/16 :goto_0

    .line 760
    :pswitch_8
    iget-object v2, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    invoke-virtual {v1}, Lcom/mediatek/CellConnService/PhoneStatesMgrService$RequestItem;->getReqSlot()I

    move-result v3

    iget-object v4, p0, Lcom/mediatek/CellConnService/PhoneStatesMgrService$ServiceHandler;->this$0:Lcom/mediatek/CellConnService/PhoneStatesMgrService;

    #getter for: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->mResult:I
    invoke-static {v4}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$1300(Lcom/mediatek/CellConnService/PhoneStatesMgrService;)I

    move-result v4

    #calls: Lcom/mediatek/CellConnService/PhoneStatesMgrService;->broadcastCallback(III)V
    invoke-static {v2, v3, v8, v4}, Lcom/mediatek/CellConnService/PhoneStatesMgrService;->access$1800(Lcom/mediatek/CellConnService/PhoneStatesMgrService;III)V

    goto/16 :goto_0

    .line 661
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch

    .line 757
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
