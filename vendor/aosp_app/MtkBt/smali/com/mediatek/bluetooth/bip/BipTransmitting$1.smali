.class Lcom/mediatek/bluetooth/bip/BipTransmitting$1;
.super Landroid/content/BroadcastReceiver;
.source "BipTransmitting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/bip/BipTransmitting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/bip/BipTransmitting;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/bip/BipTransmitting;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting$1;->this$0:Lcom/mediatek/bluetooth/bip/BipTransmitting;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 117
    const-string v1, "BipTransmitting"

    const-string v2, "onReceive"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.mediatek.bluetooth.bipitransmitting.action.TRANSMISSION_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting$1;->this$0:Lcom/mediatek/bluetooth/bip/BipTransmitting;

    #getter for: Lcom/mediatek/bluetooth/bip/BipTransmitting;->mOriDialogType:I
    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipTransmitting;->access$000(Lcom/mediatek/bluetooth/bip/BipTransmitting;)I

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_1

    :cond_0
    const-string v1, "com.mediatek.bluetooth.bipitransmitting.action.RECEIVING_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting$1;->this$0:Lcom/mediatek/bluetooth/bip/BipTransmitting;

    #getter for: Lcom/mediatek/bluetooth/bip/BipTransmitting;->mOriDialogType:I
    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipTransmitting;->access$000(Lcom/mediatek/bluetooth/bip/BipTransmitting;)I

    move-result v1

    const/16 v2, 0x15

    if-ne v1, v2, :cond_3

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting$1;->this$0:Lcom/mediatek/bluetooth/bip/BipTransmitting;

    const-string v2, "com.mediatek.bluetooth.bipitransmitting.extra.DIALOG_TYPE"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/mediatek/bluetooth/bip/BipTransmitting;->mDialogType:I
    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/bip/BipTransmitting;->access$102(Lcom/mediatek/bluetooth/bip/BipTransmitting;I)I

    .line 124
    iget-object v1, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting$1;->this$0:Lcom/mediatek/bluetooth/bip/BipTransmitting;

    const-string v2, "com.mediatek.bluetooth.bipitransmitting.extra.PERCENTAGE"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/mediatek/bluetooth/bip/BipTransmitting;->mPercentage:I
    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/bip/BipTransmitting;->access$202(Lcom/mediatek/bluetooth/bip/BipTransmitting;I)I

    .line 125
    iget-object v1, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting$1;->this$0:Lcom/mediatek/bluetooth/bip/BipTransmitting;

    const-string v2, "com.mediatek.bluetooth.bipitransmitting.extra.FILE_NAME"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/mediatek/bluetooth/bip/BipTransmitting;->mFileName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/bip/BipTransmitting;->access$302(Lcom/mediatek/bluetooth/bip/BipTransmitting;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    const-string v1, "BipTransmitting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDialogType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting$1;->this$0:Lcom/mediatek/bluetooth/bip/BipTransmitting;

    #getter for: Lcom/mediatek/bluetooth/bip/BipTransmitting;->mDialogType:I
    invoke-static {v3}, Lcom/mediatek/bluetooth/bip/BipTransmitting;->access$100(Lcom/mediatek/bluetooth/bip/BipTransmitting;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\tmNotificaitonId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting$1;->this$0:Lcom/mediatek/bluetooth/bip/BipTransmitting;

    #getter for: Lcom/mediatek/bluetooth/bip/BipTransmitting;->mNotificationId:I
    invoke-static {v3}, Lcom/mediatek/bluetooth/bip/BipTransmitting;->access$400(Lcom/mediatek/bluetooth/bip/BipTransmitting;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\tmPercentage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting$1;->this$0:Lcom/mediatek/bluetooth/bip/BipTransmitting;

    #getter for: Lcom/mediatek/bluetooth/bip/BipTransmitting;->mPercentage:I
    invoke-static {v3}, Lcom/mediatek/bluetooth/bip/BipTransmitting;->access$200(Lcom/mediatek/bluetooth/bip/BipTransmitting;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\tmFileName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting$1;->this$0:Lcom/mediatek/bluetooth/bip/BipTransmitting;

    #getter for: Lcom/mediatek/bluetooth/bip/BipTransmitting;->mFileName:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/bluetooth/bip/BipTransmitting;->access$300(Lcom/mediatek/bluetooth/bip/BipTransmitting;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v1, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting$1;->this$0:Lcom/mediatek/bluetooth/bip/BipTransmitting;

    #calls: Lcom/mediatek/bluetooth/bip/BipTransmitting;->setViewContent()V
    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipTransmitting;->access$500(Lcom/mediatek/bluetooth/bip/BipTransmitting;)V

    .line 132
    iget-object v1, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting$1;->this$0:Lcom/mediatek/bluetooth/bip/BipTransmitting;

    #calls: Lcom/mediatek/bluetooth/bip/BipTransmitting;->updateProgressbar()V
    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipTransmitting;->access$600(Lcom/mediatek/bluetooth/bip/BipTransmitting;)V

    .line 133
    iget-object v1, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting$1;->this$0:Lcom/mediatek/bluetooth/bip/BipTransmitting;

    #calls: Lcom/mediatek/bluetooth/bip/BipTransmitting;->updateButton()V
    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipTransmitting;->access$700(Lcom/mediatek/bluetooth/bip/BipTransmitting;)V

    .line 140
    :cond_2
    :goto_0
    return-void

    .line 135
    :cond_3
    const-string v1, "com.mediatek.bluetooth.bipitransmitting.action.TRANSMISSION_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting$1;->this$0:Lcom/mediatek/bluetooth/bip/BipTransmitting;

    #getter for: Lcom/mediatek/bluetooth/bip/BipTransmitting;->mOriDialogType:I
    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipTransmitting;->access$000(Lcom/mediatek/bluetooth/bip/BipTransmitting;)I

    move-result v1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_2

    .line 136
    iget-object v1, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting$1;->this$0:Lcom/mediatek/bluetooth/bip/BipTransmitting;

    #getter for: Lcom/mediatek/bluetooth/bip/BipTransmitting;->mNotificationId:I
    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipTransmitting;->access$400(Lcom/mediatek/bluetooth/bip/BipTransmitting;)I

    move-result v1

    const-string v2, "com.mediatek.bluetooth.bipitransmitting.extra.NOTIFICATION_ID"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 137
    iget-object v1, p0, Lcom/mediatek/bluetooth/bip/BipTransmitting$1;->this$0:Lcom/mediatek/bluetooth/bip/BipTransmitting;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
