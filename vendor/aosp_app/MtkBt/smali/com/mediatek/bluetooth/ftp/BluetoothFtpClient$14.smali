.class Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$14;
.super Ljava/lang/Object;
.source "BluetoothFtpClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 632
    iput-object p1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$14;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 634
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$14;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    const/16 v1, 0x80c

    #setter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mPendingDialogId:I
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$2202(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;I)I

    .line 635
    return-void
.end method
