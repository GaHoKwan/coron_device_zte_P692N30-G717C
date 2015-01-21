.class final Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity$WorkHandler;
.super Landroid/os/Handler;
.source "TxOnlyTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WorkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;


# direct methods
.method private constructor <init>(Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;

    .line 178
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 179
    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;Landroid/os/Looper;Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 176
    invoke-direct {p0, p1, p2}, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity$WorkHandler;-><init>(Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 183
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_3

    .line 184
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->access$100(Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 185
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;

    #setter for: Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mDoneTest:Z
    invoke-static {v0, v4}, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->access$202(Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;Z)Z

    .line 187
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mDumpStart:Z
    invoke-static {v0}, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->access$300(Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;)Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 188
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;
    invoke-static {v0}, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->access$400(Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;)Lcom/mediatek/engineermode/bluetooth/BtTest;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    const-string v0, "TxOnlyTestLOG"

    const-string v1, "pollingStop"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;
    invoke-static {v0}, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->access$400(Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;)Lcom/mediatek/engineermode/bluetooth/BtTest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/engineermode/bluetooth/BtTest;->pollingStop()I

    .line 191
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;
    invoke-static {v0}, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->access$400(Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;)Lcom/mediatek/engineermode/bluetooth/BtTest;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/mediatek/engineermode/bluetooth/BtTest;->doBtTest(I)I

    move-result v0

    if-ne v3, v0, :cond_0

    .line 192
    const-string v0, "TxOnlyTestLOG"

    const-string v1, "stop failed."

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;

    #calls: Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->doSendCommandAction()Z
    invoke-static {v0}, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->access$500(Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;)Z

    .line 198
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;
    invoke-static {v0}, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->access$400(Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;)Lcom/mediatek/engineermode/bluetooth/BtTest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 199
    const-string v0, "TxOnlyTestLOG"

    const-string v1, "pollingStart"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;
    invoke-static {v0}, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->access$400(Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;)Lcom/mediatek/engineermode/bluetooth/BtTest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/engineermode/bluetooth/BtTest;->pollingStart()I

    .line 201
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;

    #setter for: Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mDumpStart:Z
    invoke-static {v0, v2}, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->access$302(Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;Z)Z

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;

    #setter for: Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mDoneTest:Z
    invoke-static {v0, v2}, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->access$202(Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;Z)Z

    .line 204
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->access$100(Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 220
    :cond_2
    :goto_0
    return-void

    .line 205
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 206
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->access$100(Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 208
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mDumpStart:Z
    invoke-static {v0}, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->access$300(Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;)Z

    move-result v0

    if-ne v0, v2, :cond_4

    .line 209
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;
    invoke-static {v0}, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->access$400(Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;)Lcom/mediatek/engineermode/bluetooth/BtTest;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 210
    const-string v0, "TxOnlyTestLOG"

    const-string v1, "pollingStop"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;
    invoke-static {v0}, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->access$400(Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;)Lcom/mediatek/engineermode/bluetooth/BtTest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/engineermode/bluetooth/BtTest;->pollingStop()I

    .line 214
    :cond_4
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;
    invoke-static {v0}, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->access$400(Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;)Lcom/mediatek/engineermode/bluetooth/BtTest;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/mediatek/engineermode/bluetooth/BtTest;->doBtTest(I)I

    move-result v0

    if-ne v3, v0, :cond_5

    .line 215
    const-string v0, "TxOnlyTestLOG"

    const-string v1, "stop failed."

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_5
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;

    const/4 v1, 0x0

    #setter for: Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;
    invoke-static {v0, v1}, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->access$402(Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;Lcom/mediatek/engineermode/bluetooth/BtTest;)Lcom/mediatek/engineermode/bluetooth/BtTest;

    .line 218
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->access$100(Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
