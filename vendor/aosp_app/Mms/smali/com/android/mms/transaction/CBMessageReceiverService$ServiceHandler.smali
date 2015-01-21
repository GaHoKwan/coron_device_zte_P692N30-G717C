.class final Lcom/android/mms/transaction/CBMessageReceiverService$ServiceHandler;
.super Landroid/os/Handler;
.source "CBMessageReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/CBMessageReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/CBMessageReceiverService;


# direct methods
.method public constructor <init>(Lcom/android/mms/transaction/CBMessageReceiverService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/mms/transaction/CBMessageReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/CBMessageReceiverService;

    .line 153
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 154
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 162
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 163
    .local v2, serviceId:I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    .line 164
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 165
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.provider.Telephony.SMS_CB_RECEIVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 168
    iget-object v3, p0, Lcom/android/mms/transaction/CBMessageReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/CBMessageReceiverService;

    #calls: Lcom/android/mms/transaction/CBMessageReceiverService;->handleCBMessageReceived(Landroid/content/Intent;)V
    invoke-static {v3, v1}, Lcom/android/mms/transaction/CBMessageReceiverService;->access$000(Lcom/android/mms/transaction/CBMessageReceiverService;Landroid/content/Intent;)V

    .line 180
    .end local v0           #action:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/mms/transaction/CBMessageReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/CBMessageReceiverService;

    invoke-static {v3, v2}, Lcom/android/mms/transaction/CBMessageReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 181
    return-void
.end method
