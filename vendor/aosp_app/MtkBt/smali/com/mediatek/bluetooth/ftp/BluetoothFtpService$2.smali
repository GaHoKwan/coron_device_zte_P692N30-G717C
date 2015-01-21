.class Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothFtpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)V
    .locals 0
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$2;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 321
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x8000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 322
    .local v1, btState:I
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, act:Ljava/lang/String;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    .line 326
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$2;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->clearService()Z
    invoke-static {v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$700(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 327
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$2;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    const/16 v3, 0x138a

    const/4 v4, 0x0

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->sendServiceMsg(II)V
    invoke-static {v2, v3, v4}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$800(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;II)V

    .line 330
    :cond_0
    return-void
.end method
