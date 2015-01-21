.class public Lcom/zte/retrieve/presenter/SmsHandle;
.super Ljava/lang/Object;
.source "SmsHandle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/retrieve/presenter/SmsHandle$SmsServiceReceiver;
    }
.end annotation


# static fields
.field public static final RETRIEVE_SMS_SEND_ACTIOIN:Ljava/lang/String; = "android.intent.action.SmsHandlePublicPresenter.RETRIEVE_SMS_SEND_ACTIOIN"


# instance fields
.field private mCallback:Landroid/os/Handler$Callback;

.field private mContext:Landroid/content/Context;

.field private msgType:I

.field private sendReceiver:Lcom/zte/retrieve/presenter/SmsHandle$SmsServiceReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMsgType()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/zte/retrieve/presenter/SmsHandle;->msgType:I

    return v0
.end method

.method public onSmsSend(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "orderType"
    .parameter "toNumber"
    .parameter "body"

    .prologue
    .line 46
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SmsHandlePublicPresenter.RETRIEVE_SMS_SEND_ACTIOIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 47
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "SMS_Send_OrderType"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 48
    const-string v2, "Internal_Msg_Type"

    invoke-virtual {p0}, Lcom/zte/retrieve/presenter/SmsHandle;->getMsgType()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 49
    iget-object v2, p0, Lcom/zte/retrieve/presenter/SmsHandle;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x800

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 50
    .local v1, sentIntent:Landroid/app/PendingIntent;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-------------Send Sms sender:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-------------Send Sms toNumber:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "defaultSimCardType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 52
    sget v3, Lcom/zte/retrieve/utils/RetrieveConstant;->defaultSimCardType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-------------Send Sms content:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 54
    const/4 v2, 0x0

    invoke-static {p2, p3, v1, v2}, Lcom/zte/retrieve/utils/SMSSender;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 55
    return-void
.end method

.method public sendMsgToAuthFail(II)V
    .locals 4
    .parameter "resultCode"
    .parameter "msgType"

    .prologue
    .line 93
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 94
    .local v1, msg:Landroid/os/Message;
    iput p2, v1, Landroid/os/Message;->what:I

    .line 95
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 96
    new-instance v0, Landroid/os/Handler;

    iget-object v2, p0, Lcom/zte/retrieve/presenter/SmsHandle;->mCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 97
    .local v0, mHandler:Landroid/os/Handler;
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-----------sendInternalMsg msg = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public sendRemoteControlInternalMsg(III)V
    .locals 4
    .parameter "orderType"
    .parameter "resultCode"
    .parameter "msgType"

    .prologue
    .line 109
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 110
    .local v1, msg:Landroid/os/Message;
    iput p3, v1, Landroid/os/Message;->what:I

    .line 111
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 112
    iput p2, v1, Landroid/os/Message;->arg2:I

    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, mHandler:Landroid/os/Handler;
    const/4 v2, 0x1

    if-eq p3, v2, :cond_0

    .line 115
    const/4 v2, 0x3

    if-ne p3, v2, :cond_1

    .line 116
    :cond_0
    new-instance v0, Landroid/os/Handler;

    .end local v0           #mHandler:Landroid/os/Handler;
    iget-object v2, p0, Lcom/zte/retrieve/presenter/SmsHandle;->mCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 119
    .restart local v0       #mHandler:Landroid/os/Handler;
    :cond_1
    if-eqz v0, :cond_2

    .line 120
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 122
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-----------sendInternalMsg msg = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public setCallback(Landroid/os/Handler$Callback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/zte/retrieve/presenter/SmsHandle;->mCallback:Landroid/os/Handler$Callback;

    .line 31
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/zte/retrieve/presenter/SmsHandle;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method

.method public setMsgType(I)V
    .locals 0
    .parameter "internalMsgType"

    .prologue
    .line 135
    iput p1, p0, Lcom/zte/retrieve/presenter/SmsHandle;->msgType:I

    .line 136
    return-void
.end method

.method public smsRegister()V
    .locals 3

    .prologue
    .line 34
    const-string v1, "-------------smsRegister"

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 35
    new-instance v1, Lcom/zte/retrieve/presenter/SmsHandle$SmsServiceReceiver;

    invoke-direct {v1, p0}, Lcom/zte/retrieve/presenter/SmsHandle$SmsServiceReceiver;-><init>(Lcom/zte/retrieve/presenter/SmsHandle;)V

    iput-object v1, p0, Lcom/zte/retrieve/presenter/SmsHandle;->sendReceiver:Lcom/zte/retrieve/presenter/SmsHandle$SmsServiceReceiver;

    .line 36
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SmsHandlePublicPresenter.RETRIEVE_SMS_SEND_ACTIOIN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 37
    .local v0, sendFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/zte/retrieve/presenter/SmsHandle;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/zte/retrieve/presenter/SmsHandle;->sendReceiver:Lcom/zte/retrieve/presenter/SmsHandle$SmsServiceReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 38
    return-void
.end method

.method public smsUnregister()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/zte/retrieve/presenter/SmsHandle;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zte/retrieve/presenter/SmsHandle;->sendReceiver:Lcom/zte/retrieve/presenter/SmsHandle$SmsServiceReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 42
    const-string v0, "-------------smsUnregister"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 43
    return-void
.end method
