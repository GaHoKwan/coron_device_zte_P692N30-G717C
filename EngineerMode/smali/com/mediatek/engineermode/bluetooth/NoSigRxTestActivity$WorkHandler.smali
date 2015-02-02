.class final Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity$WorkHandler;
.super Landroid/os/Handler;
.source "NoSigRxTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WorkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;


# direct methods
.method private constructor <init>(Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 261
    iput-object p1, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;

    .line 262
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 263
    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;Landroid/os/Looper;Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 260
    invoke-direct {p0, p1, p2}, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity$WorkHandler;-><init>(Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 267
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->access$900(Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 269
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;

    #setter for: Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mDoneFinished:Z
    invoke-static {v0, v3}, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->access$1002(Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;Z)Z

    .line 270
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;

    #calls: Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->doSendCommandAction()Z
    invoke-static {v0}, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->access$1100(Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;)Z

    .line 271
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;

    #setter for: Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mDoneFinished:Z
    invoke-static {v0, v2}, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->access$1002(Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;Z)Z

    .line 272
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->access$900(Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_0

    .line 274
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->access$900(Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 276
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mDumpStart:Z
    invoke-static {v0}, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->access$1200(Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;)Z

    move-result v0

    if-ne v0, v2, :cond_2

    .line 277
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;
    invoke-static {v0}, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->access$1300(Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;)Lcom/mediatek/engineermode/bluetooth/BtTest;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 278
    const-string v0, "NoSigRxLOG"

    const-string v1, "pollingStop"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;

    #setter for: Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mDumpStart:Z
    invoke-static {v0, v3}, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->access$1202(Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;Z)Z

    .line 280
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;
    invoke-static {v0}, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->access$1300(Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;)Lcom/mediatek/engineermode/bluetooth/BtTest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/engineermode/bluetooth/BtTest;->pollingStop()I

    .line 283
    :cond_2
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;

    const/4 v1, 0x0

    #setter for: Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;
    invoke-static {v0, v1}, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->access$1302(Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;Lcom/mediatek/engineermode/bluetooth/BtTest;)Lcom/mediatek/engineermode/bluetooth/BtTest;

    .line 284
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->access$900(Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
