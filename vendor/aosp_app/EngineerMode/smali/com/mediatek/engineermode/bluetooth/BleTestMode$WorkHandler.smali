.class final Lcom/mediatek/engineermode/bluetooth/BleTestMode$WorkHandler;
.super Landroid/os/Handler;
.source "BleTestMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/bluetooth/BleTestMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WorkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/bluetooth/BleTestMode;


# direct methods
.method private constructor <init>(Lcom/mediatek/engineermode/bluetooth/BleTestMode;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 669
    iput-object p1, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/BleTestMode;

    .line 670
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 671
    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/engineermode/bluetooth/BleTestMode;Landroid/os/Looper;Lcom/mediatek/engineermode/bluetooth/BleTestMode$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 664
    invoke-direct {p0, p1, p2}, Lcom/mediatek/engineermode/bluetooth/BleTestMode$WorkHandler;-><init>(Lcom/mediatek/engineermode/bluetooth/BleTestMode;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 675
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 698
    :cond_0
    :goto_0
    return-void

    .line 677
    :sswitch_0
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/BleTestMode;

    #calls: Lcom/mediatek/engineermode/bluetooth/BleTestMode;->initBtTestOjbect()Z
    invoke-static {v0}, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->access$700(Lcom/mediatek/engineermode/bluetooth/BleTestMode;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/BleTestMode;

    #calls: Lcom/mediatek/engineermode/bluetooth/BleTestMode;->handleStartBtnClick()Z
    invoke-static {v0}, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->access$800(Lcom/mediatek/engineermode/bluetooth/BleTestMode;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 679
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/BleTestMode;

    #getter for: Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->access$900(Lcom/mediatek/engineermode/bluetooth/BleTestMode;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 682
    :cond_1
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/BleTestMode;

    #getter for: Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mBtInited:Z
    invoke-static {v0}, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->access$1000(Lcom/mediatek/engineermode/bluetooth/BleTestMode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/BleTestMode;

    #getter for: Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->access$900(Lcom/mediatek/engineermode/bluetooth/BleTestMode;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 687
    :sswitch_1
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/BleTestMode;

    #getter for: Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mBtInited:Z
    invoke-static {v0}, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->access$1000(Lcom/mediatek/engineermode/bluetooth/BleTestMode;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 688
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/BleTestMode;

    #calls: Lcom/mediatek/engineermode/bluetooth/BleTestMode;->handleStopBtnClick()V
    invoke-static {v0}, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->access$1100(Lcom/mediatek/engineermode/bluetooth/BleTestMode;)V

    .line 690
    :cond_2
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/BleTestMode;

    #getter for: Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->access$900(Lcom/mediatek/engineermode/bluetooth/BleTestMode;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 693
    :sswitch_2
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/BleTestMode;

    #calls: Lcom/mediatek/engineermode/bluetooth/BleTestMode;->uninitBtTestOjbect()Z
    invoke-static {v0}, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->access$1200(Lcom/mediatek/engineermode/bluetooth/BleTestMode;)Z

    goto :goto_0

    .line 675
    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xc -> :sswitch_1
        0x14 -> :sswitch_2
    .end sparse-switch
.end method
