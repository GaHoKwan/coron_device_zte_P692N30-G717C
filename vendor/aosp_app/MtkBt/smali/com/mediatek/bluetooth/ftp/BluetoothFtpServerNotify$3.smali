.class Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify$3;
.super Ljava/lang/Object;
.source "BluetoothFtpServerNotify.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 127
    iput-object p1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify$3;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 130
    return-void
.end method
