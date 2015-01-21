.class final Lcom/android/mms/util/OMACPReceiverService$ServiceHandler;
.super Landroid/os/Handler;
.source "OMACPReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/OMACPReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/OMACPReceiverService;


# direct methods
.method public constructor <init>(Lcom/android/mms/util/OMACPReceiverService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/mms/util/OMACPReceiverService$ServiceHandler;->this$0:Lcom/android/mms/util/OMACPReceiverService;

    .line 122
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 123
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 130
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 131
    .local v2, serviceId:I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    .line 132
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "OmacpMessageReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OmacpMessageReceiverService got intent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    if-eqz v1, :cond_0

    .line 134
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, action:Ljava/lang/String;
    const-string v3, "com.mediatek.omacp.settings"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 136
    iget-object v3, p0, Lcom/android/mms/util/OMACPReceiverService$ServiceHandler;->this$0:Lcom/android/mms/util/OMACPReceiverService;

    #calls: Lcom/android/mms/util/OMACPReceiverService;->handleOMACPSettingReceived(Landroid/content/Intent;)V
    invoke-static {v3, v1}, Lcom/android/mms/util/OMACPReceiverService;->access$000(Lcom/android/mms/util/OMACPReceiverService;Landroid/content/Intent;)V

    .line 143
    .end local v0           #action:Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/mms/util/OMACPReceiverService$ServiceHandler;->this$0:Lcom/android/mms/util/OMACPReceiverService;

    invoke-static {v3, v2}, Lcom/android/mms/util/OMACPReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 144
    return-void

    .line 137
    .restart local v0       #action:Ljava/lang/String;
    :cond_1
    const-string v3, "com.mediatek.omacp.capability"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 138
    iget-object v3, p0, Lcom/android/mms/util/OMACPReceiverService$ServiceHandler;->this$0:Lcom/android/mms/util/OMACPReceiverService;

    #calls: Lcom/android/mms/util/OMACPReceiverService;->handleOMACPCapabilityReceived(Landroid/content/Intent;)V
    invoke-static {v3, v1}, Lcom/android/mms/util/OMACPReceiverService;->access$100(Lcom/android/mms/util/OMACPReceiverService;Landroid/content/Intent;)V

    goto :goto_0
.end method
