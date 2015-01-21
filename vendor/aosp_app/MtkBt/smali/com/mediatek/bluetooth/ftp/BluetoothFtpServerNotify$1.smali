.class Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify$1;
.super Ljava/lang/Object;
.source "BluetoothFtpServerNotify.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 109
    iput-object p1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;

    invoke-static {p2}, Lcom/mediatek/bluetooth/ftp/IBluetoothFtpServerNotify$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetooth/ftp/IBluetoothFtpServerNotify;

    move-result-object v1

    #setter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;->mServerNotify:Lcom/mediatek/bluetooth/ftp/IBluetoothFtpServerNotify;
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;->access$002(Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;Lcom/mediatek/bluetooth/ftp/IBluetoothFtpServerNotify;)Lcom/mediatek/bluetooth/ftp/IBluetoothFtpServerNotify;

    .line 112
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "className"

    .prologue
    .line 115
    return-void
.end method
