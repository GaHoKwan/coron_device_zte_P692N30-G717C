.class Lcom/mediatek/bluetooth/bip/BipService$1;
.super Landroid/bluetooth/IBluetoothBipi$Stub;
.source "BipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/bip/BipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/bip/BipService;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/bip/BipService;)V
    .locals 0
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcom/mediatek/bluetooth/bip/BipService$1;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothBipi$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 13
    .parameter "device"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v4, 0x0

    .line 293
    const/4 v8, 0x0

    .line 294
    .local v8, deletion:Landroid/net/Uri;
    const/4 v9, 0x0

    .line 295
    .local v9, id:Ljava/lang/String;
    const/4 v10, 0x0

    .line 296
    .local v10, objectName:Ljava/lang/String;
    const/4 v11, 0x0

    .line 297
    .local v11, values:Landroid/content/ContentValues;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const-string v0, "data"

    aput-object v0, v2, v12

    .line 298
    .local v2, proj:[Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipService$1;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/mediatek/bluetooth/bip/BipService;->access$100(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/bluetooth/share/BluetoothShareTask$BluetoothShareTaskMetaData;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "peer_addr="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/mediatek/bluetooth/bip/BipService$1;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mInitiatorRemoteBtAddr:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/bluetooth/bip/BipService;->access$300(Lcom/mediatek/bluetooth/bip/BipService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "creation"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 304
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_1

    .line 305
    const-string v0, "BipService"

    const-string v1, "cusor is null"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :goto_0
    invoke-static {}, Lcom/mediatek/bluetooth/bip/BipService;->access$200()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 324
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipService$1;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mCallbackHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/bluetooth/bip/BipService;->access$500(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 326
    new-instance v6, Landroid/content/Intent;

    const-string v0, "com.mediatek.bluetooth.bipinitpushconfirmation.action.TIMEOUT"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 327
    .local v6, bIntent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipService$1;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    invoke-virtual {v0, v6}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 329
    .end local v6           #bIntent:Landroid/content/Intent;
    :cond_0
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/mediatek/bluetooth/bip/BipService;->access$202(I)I

    .line 330
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipService$1;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mBipServer:Lcom/mediatek/bluetooth/bip/BluetoothBipServer;
    invoke-static {v0}, Lcom/mediatek/bluetooth/bip/BipService;->access$600(Lcom/mediatek/bluetooth/bip/BipService;)Lcom/mediatek/bluetooth/bip/BluetoothBipServer;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/bluetooth/bip/BipService$1;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mInitiatorRemoteBtAddr:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$300(Lcom/mediatek/bluetooth/bip/BipService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->bipiDisconnect(Ljava/lang/String;)Z

    .line 332
    return v12

    .line 308
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 310
    :cond_2
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 311
    sget-object v0, Lcom/mediatek/bluetooth/share/BluetoothShareTask$BluetoothShareTaskMetaData;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 313
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipService$1;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #calls: Lcom/mediatek/bluetooth/bip/BipService;->extractContentValues(Landroid/database/Cursor;)Landroid/content/ContentValues;
    invoke-static {v0, v7}, Lcom/mediatek/bluetooth/bip/BipService;->access$400(Lcom/mediatek/bluetooth/bip/BipService;Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v11

    .line 314
    const-string v0, "state"

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 315
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipService$1;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/mediatek/bluetooth/bip/BipService;->access$100(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v8, v11, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 318
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 320
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public getConnectedDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 283
    const/4 v0, 0x0

    .line 284
    .local v0, remoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {}, Lcom/mediatek/bluetooth/bip/BipService;->access$200()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    invoke-static {}, Lcom/mediatek/bluetooth/bip/BipService;->access$200()I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    .line 285
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/bluetooth/bip/BipService$1;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mInitiatorRemoteBtAddr:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/bluetooth/bip/BipService;->access$300(Lcom/mediatek/bluetooth/bip/BipService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 287
    :cond_0
    return-object v0
.end method

.method public getState()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x2

    .line 274
    invoke-static {}, Lcom/mediatek/bluetooth/bip/BipService;->access$200()I

    move-result v1

    if-le v1, v0, :cond_0

    invoke-static {}, Lcom/mediatek/bluetooth/bip/BipService;->access$200()I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    .line 275
    const/4 v0, 0x1

    .line 278
    :cond_0
    return v0
.end method
