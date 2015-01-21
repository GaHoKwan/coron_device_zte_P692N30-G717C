.class public Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TrafficCorrectionReceiver.java"


# static fields
.field private static final CLOSE_RECEIVER:I = 0x0

.field public static SENT_SMS_ACTION:Ljava/lang/String; = null

.field public static SENT_SMS_MSG:Ljava/lang/String; = null

.field public static SENT_SMS_NUM:Ljava/lang/String; = null

.field public static SMS_INFO_SCHEME:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "TrafficCorrectionReceiver"

.field private static final WORK_TIME:J = 0xdbba0L

.field private static mSubscription:I

.field private static sInstance:Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mResult:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "com.zte.heartyservice.net.SENT_SMS_ACTION"

    sput-object v0, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->SENT_SMS_ACTION:Ljava/lang/String;

    .line 30
    const-string v0, "SMS_INFO"

    sput-object v0, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->SMS_INFO_SCHEME:Ljava/lang/String;

    .line 31
    const-string v0, "number"

    sput-object v0, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->SENT_SMS_NUM:Ljava/lang/String;

    .line 32
    const-string v0, "message"

    sput-object v0, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->SENT_SMS_MSG:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->sInstance:Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;

    .line 37
    const/4 v0, -0x1

    sput v0, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->mSubscription:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->mResult:I

    .line 39
    new-instance v0, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver$1;-><init>(Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;)V

    iput-object v0, p0, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->mHandler:Landroid/os/Handler;

    .line 95
    return-void
.end method

.method public static IsInTrafficCorrecting()Z
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->sInstance:Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;

    if-eqz v0, :cond_0

    .line 129
    const/4 v0, 0x1

    .line 131
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000()Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->sInstance:Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;

    return-object v0
.end method

.method static synthetic access$002(Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;)Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    sput-object p0, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->sInstance:Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;

    return-object p0
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->mResult:I

    return v0
.end method

.method static synthetic access$200()V
    .locals 0

    .prologue
    .line 27
    invoke-static {}, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->showFailedDialog()V

    return-void
.end method

.method static synthetic access$300()V
    .locals 0

    .prologue
    .line 27
    invoke-static {}, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->internalCloseReceiver()V

    return-void
.end method

.method public static closeReceiver()V
    .locals 2

    .prologue
    .line 147
    :try_start_0
    sget-object v0, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->sInstance:Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->sInstance:Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;

    iget-object v0, v0, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 148
    sget-object v0, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->sInstance:Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;

    iget-object v0, v0, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver$3;

    invoke-direct {v1}, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver$3;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 155
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static internalCloseReceiver()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->checkThreadValid()V

    .line 136
    sget-object v0, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->sInstance:Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;

    if-eqz v0, :cond_1

    .line 137
    sget-object v0, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->sInstance:Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;

    iget-object v0, v0, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    sget-object v0, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->sInstance:Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;

    iget-object v0, v0, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 140
    :cond_0
    sget-object v0, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->sInstance:Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;

    iget-object v0, v0, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 141
    sget-object v0, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->sInstance:Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;

    const/4 v1, 0x1

    iput v1, v0, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->mResult:I

    .line 143
    :cond_1
    return-void
.end method

.method public static realShowFailedDialog(Landroid/app/Activity;Landroid/os/Bundle;)Landroid/app/AlertDialog;
    .locals 4
    .parameter "activity"
    .parameter "args"

    .prologue
    .line 79
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a057f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0580

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a03a3

    new-instance v3, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver$2;

    invoke-direct {v3, p0, p1}, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver$2;-><init>(Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0173

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 89
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 90
    return-object v0
.end method

.method private static showFailedDialog()V
    .locals 4

    .prologue
    .line 70
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 71
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "subscription"

    sget v2, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->mSubscription:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 72
    const/4 v1, 0x0

    const-class v2, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "realShowFailedDialog"

    invoke-static {v1, v2, v3, v0}, Lcom/zte/heartyservice/common/ui/DialogActivity;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 75
    return-void
.end method

.method public static startReceiver(I)V
    .locals 5
    .parameter "subscription"

    .prologue
    const/4 v4, 0x0

    .line 98
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->checkThreadValid()V

    .line 99
    sget-object v1, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->sInstance:Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;

    if-nez v1, :cond_0

    .line 100
    new-instance v1, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;

    invoke-direct {v1}, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;-><init>()V

    sput-object v1, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->sInstance:Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;

    .line 101
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->addRef()V

    .line 102
    const-string v1, "TrafficCorrectionReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new TrafficCorrectionReceiver"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->sInstance:Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    sget-object v1, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->sInstance:Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;

    iget-object v1, v1, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    sget-object v1, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->sInstance:Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;

    iget-object v1, v1, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 122
    :goto_0
    sget-object v1, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->sInstance:Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;

    iget-object v1, v1, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xdbba0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 123
    sget-object v1, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->sInstance:Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;

    iput v4, v1, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->mResult:I

    .line 124
    sget-object v1, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->sInstance:Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;

    sput p0, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->mSubscription:I

    .line 125
    return-void

    .line 108
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->SENT_SMS_ACTION:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, intentFilter:Landroid/content/IntentFilter;
    sget-object v1, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->SMS_INFO_SCHEME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v1

    sget-object v2, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->sInstance:Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 113
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getCurrentVirusDBEngine()Lcom/zte/heartyservice/porting/All/VirusDBEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/heartyservice/porting/All/VirusDBEngine;->trafficCorrectionStart()V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v12, 0x0

    .line 162
    if-nez p2, :cond_1

    .line 163
    const-string v9, "TrafficCorrectionReceiver"

    const-string v10, "onReceive: intent == null"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, action:Ljava/lang/String;
    const-string v9, "TrafficCorrectionReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onReceive: action:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    sget-object v9, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->SENT_SMS_ACTION:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 170
    invoke-virtual {p0}, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->getResultCode()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    goto :goto_0

    .line 172
    :pswitch_0
    sget-object v9, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->SENT_SMS_NUM:Ljava/lang/String;

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 173
    .local v6, number:Ljava/lang/String;
    sget-object v9, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->SENT_SMS_MSG:Ljava/lang/String;

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, message:Ljava/lang/String;
    const v9, 0x7f0a0351

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v6, v10, v12

    const/4 v11, 0x1

    aput-object v2, v10, v11

    invoke-virtual {p1, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v9, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 183
    .end local v2           #message:Ljava/lang/String;
    .end local v6           #number:Ljava/lang/String;
    :cond_2
    const-string v9, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 184
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 185
    .local v1, bundle:Landroid/os/Bundle;
    const-string v9, "pdus"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Object;

    move-object v3, v9

    check-cast v3, [Ljava/lang/Object;

    .line 186
    .local v3, messages:[Ljava/lang/Object;
    array-length v9, v3

    new-array v8, v9, [Landroid/telephony/SmsMessage;

    .line 187
    .local v8, smsMessage:[Landroid/telephony/SmsMessage;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .local v4, msg:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .local v5, n:I
    :goto_1
    array-length v9, v3

    if-ge v5, v9, :cond_3

    .line 189
    aget-object v9, v3, v5

    check-cast v9, [B

    check-cast v9, [B

    invoke-static {v9}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v9

    aput-object v9, v8, v5

    .line 190
    aget-object v9, v8, v5

    invoke-virtual {v9}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 192
    :cond_3
    aget-object v9, v8, v12

    invoke-virtual {v9}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v7

    .line 194
    .local v7, phonenum:Ljava/lang/String;
    new-instance v9, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver$4;

    invoke-direct {v9, p0, v7, v4}, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver$4;-><init>(Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v9}, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver$4;->start()V

    goto/16 :goto_0

    .line 170
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
