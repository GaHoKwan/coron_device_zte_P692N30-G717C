.class Lcom/mediatek/bluetooth/bip/BipService$3;
.super Landroid/content/BroadcastReceiver;
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
    .line 374
    iput-object p1, p0, Lcom/mediatek/bluetooth/bip/BipService$3;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 377
    const-string v3, "BipService"

    const-string v4, "onReceive"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, action:Ljava/lang/String;
    const/4 v2, 0x0

    .line 380
    .local v2, path:Landroid/net/Uri;
    const/4 v1, 0x0

    .line 382
    .local v1, curStorage:Ljava/io/File;
    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 383
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 384
    new-instance v1, Ljava/io/File;

    .end local v1           #curStorage:Ljava/io/File;
    iget-object v3, p0, Lcom/mediatek/bluetooth/bip/BipService$3;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/mediatek/bluetooth/bip/BipService;->access$1000(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/bluetooth/util/SystemUtils;->getReceivedFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 385
    .restart local v1       #curStorage:Ljava/io/File;
    const-string v3, "BipService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_MEDIA_EJECT: curStorage = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 387
    iget-object v3, p0, Lcom/mediatek/bluetooth/bip/BipService$3;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/mediatek/bluetooth/bip/BipService;->access$100(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/mediatek/bluetooth/share/BluetoothShareTask$BluetoothShareTaskMetaData;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "type between ? and ? AND state = ?"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/16 v7, 0x14

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    const/16 v7, 0x1d

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    const/4 v7, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 396
    invoke-static {}, Lcom/mediatek/bluetooth/bip/BipService;->access$200()I

    move-result v3

    const/4 v4, 0x6

    if-ge v3, v4, :cond_0

    invoke-static {}, Lcom/mediatek/bluetooth/bip/BipService;->access$200()I

    move-result v3

    if-le v3, v9, :cond_0

    .line 399
    iget-object v3, p0, Lcom/mediatek/bluetooth/bip/BipService$3;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mCallbackHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/mediatek/bluetooth/bip/BipService;->access$500(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/bluetooth/bip/BipService$3;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mCallbackHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/mediatek/bluetooth/bip/BipService;->access$500(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5, v9, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 400
    invoke-static {v9}, Lcom/mediatek/bluetooth/bip/BipService;->access$202(I)I

    .line 402
    :cond_0
    invoke-static {}, Lcom/mediatek/bluetooth/bip/BipService;->access$700()I

    move-result v3

    const/4 v4, 0x7

    if-ge v3, v4, :cond_1

    invoke-static {}, Lcom/mediatek/bluetooth/bip/BipService;->access$700()I

    move-result v3

    if-le v3, v9, :cond_1

    .line 403
    invoke-static {v9}, Lcom/mediatek/bluetooth/bip/BipService;->access$702(I)I

    .line 404
    iget-object v3, p0, Lcom/mediatek/bluetooth/bip/BipService$3;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mBipServer:Lcom/mediatek/bluetooth/bip/BluetoothBipServer;
    invoke-static {v3}, Lcom/mediatek/bluetooth/bip/BipService;->access$600(Lcom/mediatek/bluetooth/bip/BipService;)Lcom/mediatek/bluetooth/bip/BluetoothBipServer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->biprDisconnect()Z

    .line 408
    :cond_1
    return-void
.end method
