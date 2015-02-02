.class final Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity$WorkHandler;
.super Landroid/os/Handler;
.source "SspDebugModeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WorkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;


# direct methods
.method private constructor <init>(Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 249
    iput-object p1, p0, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;

    .line 250
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 251
    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;Landroid/os/Looper;Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 248
    invoke-direct {p0, p1, p2}, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity$WorkHandler;-><init>(Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 255
    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v1}, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->access$300(Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-nez v1, :cond_0

    .line 256
    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    #setter for: Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v1, v2}, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->access$302(Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/BluetoothAdapter;

    .line 261
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 262
    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v1}, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->access$300(Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_1

    .line 264
    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v1}, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->access$300(Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 265
    :goto_0
    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v1}, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->access$300(Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 267
    const-string v1, "SSPDebugMode"

    const-string v2, "Bluetooth turning on ..."

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const-wide/16 v1, 0x12c

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "SSPDebugMode"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 277
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1
    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;

    const-string v2, "true"

    const-string v3, "mediatek.btem.ssp"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    #setter for: Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->mSspModeOn:Z
    invoke-static {v1, v2}, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->access$202(Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;Z)Z

    .line 280
    const-string v1, "SSPDebugMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSspModeOn ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->mSspModeOn:Z
    invoke-static {v3}, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->access$200(Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->access$400(Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 305
    :cond_2
    :goto_1
    return-void

    .line 282
    :cond_3
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 283
    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v1}, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->access$300(Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_4

    .line 285
    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v1}, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->access$300(Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 286
    :goto_2
    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v1}, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->access$300(Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_4

    .line 287
    const-string v1, "SSPDebugMode"

    const-string v2, "Bluetooth turning off ..."

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const-wide/16 v1, 0x12c

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 290
    :catch_1
    move-exception v0

    .line 291
    .restart local v0       #e:Ljava/lang/InterruptedException;
    const-string v1, "SSPDebugMode"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 296
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_4
    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->access$400(Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 297
    :cond_5
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 300
    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;
    invoke-static {v1}, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->access$500(Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;)Lcom/mediatek/engineermode/bluetooth/BtTest;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->mSspModeOn:Z
    invoke-static {v2}, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->access$200(Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mediatek/engineermode/bluetooth/BtTest;->setSSPDebugMode(Z)Z

    .line 303
    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity$WorkHandler;->this$0:Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;

    #getter for: Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->access$400(Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method
