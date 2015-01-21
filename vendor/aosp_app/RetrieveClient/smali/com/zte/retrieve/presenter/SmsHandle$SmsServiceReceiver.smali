.class public Lcom/zte/retrieve/presenter/SmsHandle$SmsServiceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/retrieve/presenter/SmsHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SmsServiceReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/presenter/SmsHandle;


# direct methods
.method public constructor <init>(Lcom/zte/retrieve/presenter/SmsHandle;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/zte/retrieve/presenter/SmsHandle$SmsServiceReceiver;->this$0:Lcom/zte/retrieve/presenter/SmsHandle;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private doSMSResultProcess(Landroid/content/Intent;)V
    .locals 9
    .parameter "arg1"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 67
    const-string v3, "Internal_Msg_Type"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 69
    .local v0, msgType:I
    invoke-virtual {p0}, Lcom/zte/retrieve/presenter/SmsHandle$SmsServiceReceiver;->getResultCode()I

    move-result v2

    .line 70
    .local v2, resultCode:I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "resultcode="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 71
    if-ne v0, v6, :cond_1

    .line 72
    const-string v3, "SMS_Send_OrderType"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 74
    .local v1, orderType:I
    iget-object v3, p0, Lcom/zte/retrieve/presenter/SmsHandle$SmsServiceReceiver;->this$0:Lcom/zte/retrieve/presenter/SmsHandle;

    invoke-virtual {v3, v1, v2, v6}, Lcom/zte/retrieve/presenter/SmsHandle;->sendRemoteControlInternalMsg(III)V

    .line 82
    .end local v1           #orderType:I
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/zte/retrieve/presenter/SmsHandle$SmsServiceReceiver;->this$0:Lcom/zte/retrieve/presenter/SmsHandle;

    invoke-virtual {v3}, Lcom/zte/retrieve/presenter/SmsHandle;->smsUnregister()V

    .line 83
    return-void

    .line 75
    :cond_1
    if-ne v0, v7, :cond_2

    .line 76
    iget-object v3, p0, Lcom/zte/retrieve/presenter/SmsHandle$SmsServiceReceiver;->this$0:Lcom/zte/retrieve/presenter/SmsHandle;

    invoke-virtual {v3, v2, v7}, Lcom/zte/retrieve/presenter/SmsHandle;->sendMsgToAuthFail(II)V

    goto :goto_0

    .line 77
    :cond_2
    if-ne v0, v8, :cond_0

    .line 78
    const-string v3, "SMS_Send_OrderType"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 80
    .restart local v1       #orderType:I
    iget-object v3, p0, Lcom/zte/retrieve/presenter/SmsHandle$SmsServiceReceiver;->this$0:Lcom/zte/retrieve/presenter/SmsHandle;

    invoke-virtual {v3, v1, v2, v8}, Lcom/zte/retrieve/presenter/SmsHandle;->sendRemoteControlInternalMsg(III)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 60
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, actionName:Ljava/lang/String;
    const-string v1, "android.intent.action.SmsHandlePublicPresenter.RETRIEVE_SMS_SEND_ACTIOIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    invoke-direct {p0, p2}, Lcom/zte/retrieve/presenter/SmsHandle$SmsServiceReceiver;->doSMSResultProcess(Landroid/content/Intent;)V

    .line 64
    :cond_0
    return-void
.end method
