.class Lcom/mediatek/bluetooth/dun/BluetoothDunService$2;
.super Landroid/bluetooth/IBluetoothDun$Stub;
.source "BluetoothDunService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/dun/BluetoothDunService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/dun/BluetoothDunService;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/dun/BluetoothDunService;)V
    .locals 0
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService$2;->this$0:Lcom/mediatek/bluetooth/dun/BluetoothDunService;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothDun$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized dunDisconnect()V
    .locals 1

    .prologue
    .line 305
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService$2;->this$0:Lcom/mediatek/bluetooth/dun/BluetoothDunService;

    #calls: Lcom/mediatek/bluetooth/dun/BluetoothDunService;->dunDisconnectNative()V
    invoke-static {v0}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->access$700(Lcom/mediatek/bluetooth/dun/BluetoothDunService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    monitor-exit p0

    return-void

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized dunGetConnectedDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 3

    .prologue
    .line 315
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService$2;->this$0:Lcom/mediatek/bluetooth/dun/BluetoothDunService;

    #getter for: Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mDunState:I
    invoke-static {v1}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->access$600(Lcom/mediatek/bluetooth/dun/BluetoothDunService;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService$2;->this$0:Lcom/mediatek/bluetooth/dun/BluetoothDunService;

    #getter for: Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mDunConnPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->access$100(Lcom/mediatek/bluetooth/dun/BluetoothDunService;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 318
    iget-object v1, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService$2;->this$0:Lcom/mediatek/bluetooth/dun/BluetoothDunService;

    #getter for: Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v1}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->access$300(Lcom/mediatek/bluetooth/dun/BluetoothDunService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService$2;->this$0:Lcom/mediatek/bluetooth/dun/BluetoothDunService;

    #getter for: Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mDunConnPath:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->access$100(Lcom/mediatek/bluetooth/dun/BluetoothDunService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 321
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 315
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized dunGetState()I
    .locals 1

    .prologue
    .line 310
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService$2;->this$0:Lcom/mediatek/bluetooth/dun/BluetoothDunService;

    #getter for: Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mDunState:I
    invoke-static {v0}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->access$600(Lcom/mediatek/bluetooth/dun/BluetoothDunService;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isTetheringOn()Z
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService$2;->this$0:Lcom/mediatek/bluetooth/dun/BluetoothDunService;

    #getter for: Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mTetheringOn:Z
    invoke-static {v0}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->access$1100(Lcom/mediatek/bluetooth/dun/BluetoothDunService;)Z

    move-result v0

    return v0
.end method

.method public setBluetoothTethering(Z)V
    .locals 4
    .parameter "value"

    .prologue
    .line 327
    if-nez p1, :cond_0

    .line 328
    iget-object v1, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService$2;->this$0:Lcom/mediatek/bluetooth/dun/BluetoothDunService;

    #getter for: Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mDunState:I
    invoke-static {v1}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->access$600(Lcom/mediatek/bluetooth/dun/BluetoothDunService;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 329
    iget-object v1, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService$2;->this$0:Lcom/mediatek/bluetooth/dun/BluetoothDunService;

    iget-object v2, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService$2;->this$0:Lcom/mediatek/bluetooth/dun/BluetoothDunService;

    #getter for: Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mDunConnPath:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->access$100(Lcom/mediatek/bluetooth/dun/BluetoothDunService;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    #calls: Lcom/mediatek/bluetooth/dun/BluetoothDunService;->dunConnectRspNative(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v3}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->access$200(Lcom/mediatek/bluetooth/dun/BluetoothDunService;Ljava/lang/String;Z)V

    .line 335
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService$2;->this$0:Lcom/mediatek/bluetooth/dun/BluetoothDunService;

    #getter for: Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v1}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->access$300(Lcom/mediatek/bluetooth/dun/BluetoothDunService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_2

    if-eqz p1, :cond_2

    .line 336
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 337
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 338
    iget-object v1, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService$2;->this$0:Lcom/mediatek/bluetooth/dun/BluetoothDunService;

    new-instance v2, Lcom/mediatek/bluetooth/dun/BluetoothDunService$2$1;

    invoke-direct {v2, p0}, Lcom/mediatek/bluetooth/dun/BluetoothDunService$2$1;-><init>(Lcom/mediatek/bluetooth/dun/BluetoothDunService$2;)V

    #setter for: Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mTetheringReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->access$1002(Lcom/mediatek/bluetooth/dun/BluetoothDunService;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 348
    iget-object v1, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService$2;->this$0:Lcom/mediatek/bluetooth/dun/BluetoothDunService;

    #getter for: Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->access$500(Lcom/mediatek/bluetooth/dun/BluetoothDunService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService$2;->this$0:Lcom/mediatek/bluetooth/dun/BluetoothDunService;

    #getter for: Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mTetheringReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->access$1000(Lcom/mediatek/bluetooth/dun/BluetoothDunService;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 352
    .end local v0           #filter:Landroid/content/IntentFilter;
    :goto_1
    return-void

    .line 330
    :cond_1
    iget-object v1, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService$2;->this$0:Lcom/mediatek/bluetooth/dun/BluetoothDunService;

    #getter for: Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mDunState:I
    invoke-static {v1}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->access$600(Lcom/mediatek/bluetooth/dun/BluetoothDunService;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 331
    iget-object v1, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService$2;->this$0:Lcom/mediatek/bluetooth/dun/BluetoothDunService;

    #calls: Lcom/mediatek/bluetooth/dun/BluetoothDunService;->dunDisconnectNative()V
    invoke-static {v1}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->access$700(Lcom/mediatek/bluetooth/dun/BluetoothDunService;)V

    goto :goto_0

    .line 350
    :cond_2
    iget-object v1, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService$2;->this$0:Lcom/mediatek/bluetooth/dun/BluetoothDunService;

    #setter for: Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mTetheringOn:Z
    invoke-static {v1, p1}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->access$1102(Lcom/mediatek/bluetooth/dun/BluetoothDunService;Z)Z

    goto :goto_1
.end method
