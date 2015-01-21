.class Lcom/mediatek/bluetooth/dun/BluetoothDunService$2$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothDunService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/bluetooth/dun/BluetoothDunService$2;->setBluetoothTethering(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/bluetooth/dun/BluetoothDunService$2;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/dun/BluetoothDunService$2;)V
    .locals 0
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService$2$1;->this$1:Lcom/mediatek/bluetooth/dun/BluetoothDunService$2;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 341
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/16 v1, 0xa

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 343
    iget-object v0, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService$2$1;->this$1:Lcom/mediatek/bluetooth/dun/BluetoothDunService$2;

    iget-object v0, v0, Lcom/mediatek/bluetooth/dun/BluetoothDunService$2;->this$0:Lcom/mediatek/bluetooth/dun/BluetoothDunService;

    const/4 v1, 0x1

    #setter for: Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mTetheringOn:Z
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->access$1102(Lcom/mediatek/bluetooth/dun/BluetoothDunService;Z)Z

    .line 344
    iget-object v0, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService$2$1;->this$1:Lcom/mediatek/bluetooth/dun/BluetoothDunService$2;

    iget-object v0, v0, Lcom/mediatek/bluetooth/dun/BluetoothDunService$2;->this$0:Lcom/mediatek/bluetooth/dun/BluetoothDunService;

    #getter for: Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->access$500(Lcom/mediatek/bluetooth/dun/BluetoothDunService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunService$2$1;->this$1:Lcom/mediatek/bluetooth/dun/BluetoothDunService$2;

    iget-object v1, v1, Lcom/mediatek/bluetooth/dun/BluetoothDunService$2;->this$0:Lcom/mediatek/bluetooth/dun/BluetoothDunService;

    #getter for: Lcom/mediatek/bluetooth/dun/BluetoothDunService;->mTetheringReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/mediatek/bluetooth/dun/BluetoothDunService;->access$1000(Lcom/mediatek/bluetooth/dun/BluetoothDunService;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 346
    :cond_0
    return-void
.end method
