.class final Lcom/android/mms/transaction/WapPushReceiverService$ServiceHandler;
.super Landroid/os/Handler;
.source "WapPushReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/WapPushReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/WapPushReceiverService;


# direct methods
.method public constructor <init>(Lcom/android/mms/transaction/WapPushReceiverService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/mms/transaction/WapPushReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/WapPushReceiverService;

    .line 163
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 164
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x2

    .line 172
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 173
    .local v3, serviceId:I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    .line 174
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "Mms:transaction"

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 175
    const-string v4, "Mms/WapPush"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage serviceId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " intent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_0
    if-eqz v2, :cond_2

    .line 178
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, action:Ljava/lang/String;
    const-string v4, "errorCode"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 182
    .local v1, error:I
    const-string v4, "Mms:transaction"

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 183
    const-string v4, "Mms/WapPush"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_1
    const-string v4, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 187
    iget-object v4, p0, Lcom/android/mms/transaction/WapPushReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/WapPushReceiverService;

    #calls: Lcom/android/mms/transaction/WapPushReceiverService;->handleWapPushReceived(Landroid/content/Intent;I)V
    invoke-static {v4, v2, v1}, Lcom/android/mms/transaction/WapPushReceiverService;->access$000(Lcom/android/mms/transaction/WapPushReceiverService;Landroid/content/Intent;I)V

    .line 193
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #error:I
    :cond_2
    :goto_0
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/mms/transaction/WapPushReceiverService;->sSmsSent:Z

    .line 196
    iget-object v4, p0, Lcom/android/mms/transaction/WapPushReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/WapPushReceiverService;

    invoke-static {v4, v3}, Lcom/android/mms/transaction/WapPushReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 197
    return-void

    .line 188
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #error:I
    :cond_3
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 189
    iget-object v4, p0, Lcom/android/mms/transaction/WapPushReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/WapPushReceiverService;

    #calls: Lcom/android/mms/transaction/WapPushReceiverService;->handleBootCompleted()V
    invoke-static {v4}, Lcom/android/mms/transaction/WapPushReceiverService;->access$100(Lcom/android/mms/transaction/WapPushReceiverService;)V

    goto :goto_0
.end method
