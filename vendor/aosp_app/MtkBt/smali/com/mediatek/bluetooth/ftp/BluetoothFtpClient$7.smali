.class Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$7;
.super Ljava/lang/Object;
.source "BluetoothFtpClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 550
    iput-object p1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$7;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 552
    const/4 v0, 0x0

    .line 553
    .local v0, edit:Landroid/widget/EditText;
    const/4 v1, 0x0

    .line 555
    .local v1, editable:Landroid/text/Editable;
    packed-switch p2, :pswitch_data_0

    .line 581
    :cond_0
    :goto_0
    :pswitch_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 582
    return-void

    .line 557
    :pswitch_1
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$7;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mNameEditText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$2100(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 559
    if-eqz v1, :cond_0

    .line 560
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$7;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mNameToCreate:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$1002(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;Ljava/lang/String;)Ljava/lang/String;

    .line 562
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$7;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mNameToCreate:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$1000(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 563
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$7;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    iget-object v3, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$7;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mNameToCreate:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$1000(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mNameToCreate:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$1002(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;Ljava/lang/String;)Ljava/lang/String;

    .line 566
    :cond_1
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$7;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mNameToCreate:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$1000(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$7;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mNameToCreate:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$1000(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 569
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$7;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    const/16 v3, 0x7e3

    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$7;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mNameToCreate:Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$1000(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->execOperation(ILjava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$000(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;ILjava/lang/String;)V

    goto :goto_0

    .line 571
    :cond_2
    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$7;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    const v3, 0x7f07008e

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->showTextToast(I)V
    invoke-static {v2, v3}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$100(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;I)V

    goto :goto_0

    .line 555
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
