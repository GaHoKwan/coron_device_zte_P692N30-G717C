.class Lcom/mediatek/bluetooth/bip/BipService$4;
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
    .line 412
    iput-object p1, p0, Lcom/mediatek/bluetooth/bip/BipService$4;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 415
    const-string v3, "BipService"

    const-string v4, "onReceive"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, action:Ljava/lang/String;
    const-string v3, "com.mediatek.bluetooth.sharegateway.action.ACTION_SEND_BIP_FILES"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 419
    const-string v3, "BipService"

    const-string v4, "Receive image task"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 421
    .local v1, bundle:Landroid/os/Bundle;
    const-string v3, "Intent"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 422
    .local v2, mIntent:Landroid/content/Intent;
    if-nez v2, :cond_0

    .line 423
    const-string v3, "BipService"

    const-string v4, "mIntent == null"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_0
    new-instance v3, Lcom/mediatek/bluetooth/bip/BipInitEntry;

    iget-object v4, p0, Lcom/mediatek/bluetooth/bip/BipService$4;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/mediatek/bluetooth/bip/BipService;->access$1000(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/mediatek/bluetooth/bip/BipInitEntry;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 427
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v2           #mIntent:Landroid/content/Intent;
    :cond_1
    return-void
.end method
