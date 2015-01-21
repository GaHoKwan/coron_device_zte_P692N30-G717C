.class Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothBppPrintJobSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings$1;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 124
    const-string v1, "BluetoothBppPrintJobSettings"

    const-string v2, "onReceive"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.mediatek.bluetooth.bppprinting.action.ATTR_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    const/4 v1, -0x1

    const-string v2, " com.mediatek.bluetooth.bppprintjobsettings.extra.exception"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 131
    const-string v1, "BluetoothBppPrintJobSettings"

    const-string v2, "Exception"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings$1;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    const-string v1, "BluetoothBppPrintJobSettings"

    const-string v2, "updateAttr"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings$1;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;

    #calls: Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->updateAttr()V
    invoke-static {v1}, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;->access$000(Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;)V

    goto :goto_0
.end method
