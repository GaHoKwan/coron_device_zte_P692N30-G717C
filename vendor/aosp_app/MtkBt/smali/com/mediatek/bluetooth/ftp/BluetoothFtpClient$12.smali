.class Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$12;
.super Ljava/lang/Object;
.source "BluetoothFtpClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)V
    .locals 0
    .parameter

    .prologue
    .line 620
    iput-object p1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$12;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 622
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$12;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    const/16 v1, 0x7e7

    const/4 v2, 0x0

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->execOperation(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$000(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;ILjava/lang/String;)V

    .line 623
    return-void
.end method
