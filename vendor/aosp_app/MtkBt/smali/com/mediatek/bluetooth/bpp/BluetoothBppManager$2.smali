.class Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothBppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$2;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, -0x1

    .line 199
    const-string v4, "BluetoothBppManager"

    const-string v5, "onReceive"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, action:Ljava/lang/String;
    const/4 v3, 0x0

    .line 203
    .local v3, path:Landroid/net/Uri;
    const/4 v1, 0x0

    .line 205
    .local v1, curStorage:Ljava/io/File;
    const-string v4, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 206
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 208
    new-instance v1, Ljava/io/File;

    .end local v1           #curStorage:Ljava/io/File;
    invoke-static {}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->access$200()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/bluetooth/util/SystemUtils;->getReceivedFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    .restart local v1       #curStorage:Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 211
    invoke-static {}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->access$300()I

    move-result v4

    if-ne v4, v8, :cond_1

    .line 212
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.mediatek.bluetooth.bppprinting.action.ATTR_UPDATE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    .local v2, intent_update:Landroid/content/Intent;
    const-string v4, " com.mediatek.bluetooth.bppprintjobsettings.extra.exception"

    invoke-virtual {v2, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 214
    iget-object v4, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$2;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    invoke-virtual {v4, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 220
    .end local v2           #intent_update:Landroid/content/Intent;
    :goto_0
    iget-object v4, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$2;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    #getter for: Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mBppServer:Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;
    invoke-static {v4}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->access$100(Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;)Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->bppDisconnect()V

    .line 221
    iget-object v4, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$2;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    const/4 v5, 0x1

    #setter for: Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mJobCanceled:Z
    invoke-static {v4, v5}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->access$502(Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;Z)Z

    .line 226
    :cond_0
    return-void

    .line 218
    :cond_1
    iget-object v4, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$2;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    #getter for: Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mCallbackHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->access$400(Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$2;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    #getter for: Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mCallbackHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->access$400(Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v8, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
