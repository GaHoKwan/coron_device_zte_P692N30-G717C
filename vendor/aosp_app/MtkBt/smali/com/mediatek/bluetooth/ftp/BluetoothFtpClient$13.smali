.class Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$13;
.super Ljava/lang/Object;
.source "BluetoothFtpClient.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 626
    iput-object p1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$13;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 628
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 629
    return-void
.end method
