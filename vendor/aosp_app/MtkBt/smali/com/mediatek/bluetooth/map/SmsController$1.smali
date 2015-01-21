.class Lcom/mediatek/bluetooth/map/SmsController$1;
.super Landroid/content/BroadcastReceiver;
.source "SmsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/map/SmsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/map/SmsController;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/map/SmsController;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/SmsController$1;->this$0:Lcom/mediatek/bluetooth/map/SmsController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 190
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result v1

    .line 192
    .local v1, resultCode:I
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/SmsController$1;->this$0:Lcom/mediatek/bluetooth/map/SmsController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/mediatek/bluetooth/map/SmsController;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/bluetooth/map/SmsController;->access$000(Lcom/mediatek/bluetooth/map/SmsController;Ljava/lang/String;)V

    .line 193
    const-string v2, "com.mediatek.bluetooth.map.SmsController.action.DELIVER_RESULT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 194
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/SmsController$1;->this$0:Lcom/mediatek/bluetooth/map/SmsController;

    #calls: Lcom/mediatek/bluetooth/map/SmsController;->handleDeliverResult(Landroid/content/Intent;I)V
    invoke-static {v2, p2, v1}, Lcom/mediatek/bluetooth/map/SmsController;->access$100(Lcom/mediatek/bluetooth/map/SmsController;Landroid/content/Intent;I)V

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    const-string v2, "com.mediatek.bluetooth.map.SmsController.action.SENT_RESULT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/SmsController$1;->this$0:Lcom/mediatek/bluetooth/map/SmsController;

    #calls: Lcom/mediatek/bluetooth/map/SmsController;->handleSentResult(Landroid/content/Intent;I)V
    invoke-static {v2, p2, v1}, Lcom/mediatek/bluetooth/map/SmsController;->access$200(Lcom/mediatek/bluetooth/map/SmsController;Landroid/content/Intent;I)V

    goto :goto_0
.end method
