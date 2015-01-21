.class Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothFtpServerNotify.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify$2;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify$2;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;->forceExit()V
    invoke-static {v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;->access$100(Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;)V

    .line 124
    return-void
.end method
