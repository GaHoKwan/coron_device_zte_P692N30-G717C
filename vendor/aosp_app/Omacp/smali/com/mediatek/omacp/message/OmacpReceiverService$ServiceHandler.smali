.class final Lcom/mediatek/omacp/message/OmacpReceiverService$ServiceHandler;
.super Landroid/os/Handler;
.source "OmacpReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/omacp/message/OmacpReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/omacp/message/OmacpReceiverService;


# direct methods
.method public constructor <init>(Lcom/mediatek/omacp/message/OmacpReceiverService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/mediatek/omacp/message/OmacpReceiverService$ServiceHandler;->this$0:Lcom/mediatek/omacp/message/OmacpReceiverService;

    .line 127
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 128
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 136
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 137
    .local v3, serviceId:I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    .line 138
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 139
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, action:Ljava/lang/String;
    const-string v4, "errorCode"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 143
    .local v1, error:I
    const-string v4, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 144
    iget-object v4, p0, Lcom/mediatek/omacp/message/OmacpReceiverService$ServiceHandler;->this$0:Lcom/mediatek/omacp/message/OmacpReceiverService;

    #calls: Lcom/mediatek/omacp/message/OmacpReceiverService;->handleOmacpReceived(Landroid/content/Intent;I)V
    invoke-static {v4, v2, v1}, Lcom/mediatek/omacp/message/OmacpReceiverService;->access$000(Lcom/mediatek/omacp/message/OmacpReceiverService;Landroid/content/Intent;I)V

    .line 153
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #error:I
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/mediatek/omacp/message/OmacpReceiverService$ServiceHandler;->this$0:Lcom/mediatek/omacp/message/OmacpReceiverService;

    invoke-static {v4, v3}, Lcom/mediatek/omacp/message/OmacpReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 154
    return-void

    .line 145
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #error:I
    :cond_1
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 146
    iget-object v4, p0, Lcom/mediatek/omacp/message/OmacpReceiverService$ServiceHandler;->this$0:Lcom/mediatek/omacp/message/OmacpReceiverService;

    invoke-static {v4, v5}, Lcom/mediatek/omacp/message/OmacpMessageNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;Z)V

    goto :goto_0
.end method
