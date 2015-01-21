.class Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothBppPrinting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting$1;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, -0x1

    .line 102
    const-string v2, "BluetoothBppPrinting"

    const-string v3, "onReceive"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.mediatek.bluetooth.bppprinting.action.PRINTING_UPDATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 107
    const-string v2, "com.mediatek.bluetooth.bppprinting.extra.DIALOG_TYPE"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 108
    .local v1, temp:I
    if-eq v4, v1, :cond_0

    .line 109
    iget-object v2, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting$1;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;

    #setter for: Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mDialogType:I
    invoke-static {v2, v1}, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->access$002(Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;I)I

    .line 113
    :cond_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting$1;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;

    const-string v3, "com.mediatek.bluetooth.bppprinting.extra.PERCENTAGE"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    #setter for: Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mPercentage:I
    invoke-static {v2, v3}, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->access$102(Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;I)I

    .line 114
    iget-object v2, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting$1;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;

    const-string v3, "com.mediatek.bluetooth.bppprinting.extra.FILE_NAME"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mFileName:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->access$202(Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    iget-object v2, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting$1;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;

    iget-object v3, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting$1;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;

    #getter for: Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mReason:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->access$400(Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mOldReason:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->access$302(Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    iget-object v2, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting$1;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;

    const-string v3, "com.mediatek.bluetooth.bppprinting.extra.REASON"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mReason:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->access$402(Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    iget-object v2, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting$1;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;

    #getter for: Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mReason:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->access$400(Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 119
    iget-object v2, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting$1;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;

    const-string v3, "Reason"

    #setter for: Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mReason:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->access$402(Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    :cond_1
    const/16 v2, 0x63

    iget-object v3, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting$1;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;

    #getter for: Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mPercentage:I
    invoke-static {v3}, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->access$100(Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;)I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting$1;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;

    #getter for: Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mOldReason:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->access$300(Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting$1;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;

    const v4, 0x7f070045

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 124
    iget-object v2, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting$1;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;

    iget-object v3, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting$1;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;

    #getter for: Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mOldReason:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->access$300(Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mReason:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->access$402(Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    :cond_2
    const-string v2, "BluetoothBppPrinting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDialogType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting$1;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;

    #getter for: Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mDialogType:I
    invoke-static {v4}, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->access$000(Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\tmNotificaitonId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting$1;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;

    #getter for: Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mNotificationId:I
    invoke-static {v4}, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->access$500(Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\tmPercentage:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting$1;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;

    #getter for: Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mPercentage:I
    invoke-static {v4}, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->access$100(Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\tmFileName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting$1;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;

    #getter for: Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mFileName:Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->access$200(Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\tmReason:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting$1;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;

    #getter for: Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->mReason:Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->access$400(Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v2, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting$1;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;

    #calls: Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->setViewContent()V
    invoke-static {v2}, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->access$600(Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;)V

    .line 132
    iget-object v2, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting$1;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;

    #calls: Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->updateProgressbar()V
    invoke-static {v2}, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->access$700(Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;)V

    .line 133
    iget-object v2, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting$1;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;

    #calls: Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->updateButton()V
    invoke-static {v2}, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;->access$800(Lcom/mediatek/bluetooth/bpp/BluetoothBppPrinting;)V

    .line 135
    .end local v1           #temp:I
    :cond_3
    return-void
.end method
