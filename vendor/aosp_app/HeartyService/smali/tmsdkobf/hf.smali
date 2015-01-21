.class public abstract Ltmsdkobf/hf;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

# interfaces
.implements Ltmsdkobf/ig$a;


# static fields
.field private static final pk:[Ljava/lang/String;

.field private static final pl:[Ljava/lang/String;


# instance fields
.field private pi:Ltmsdkobf/he;

.field private pj:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    aput-object v1, v0, v2

    const-string v1, "android.provider.Telephony.SMS_RECEIVED2"

    aput-object v1, v0, v3

    const-string v1, "android.provider.Telephony.GSM_SMS_RECEIVED"

    aput-object v1, v0, v4

    sput-object v0, Ltmsdkobf/hf;->pk:[Ljava/lang/String;

    .line 59
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    aput-object v1, v0, v2

    const-string v1, "android.provider.Telephony.WAP_PUSH_GSM_RECEIVED"

    aput-object v1, v0, v3

    sput-object v0, Ltmsdkobf/hf;->pl:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 33
    new-instance v0, Ltmsdkobf/he;

    invoke-direct {v0}, Ltmsdkobf/he;-><init>()V

    iput-object v0, p0, Ltmsdkobf/hf;->pi:Ltmsdkobf/he;

    return-void
.end method


# virtual methods
.method abstract a(Ltmsdk/common/module/aresengine/SmsEntity;Landroid/content/BroadcastReceiver;)V
.end method

.method public cb()V
    .locals 2

    .prologue
    .line 138
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 139
    .local v0, context:Landroid/content/Context;
    iget-boolean v1, p0, Ltmsdkobf/hf;->pj:Z

    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 141
    const/4 v1, 0x0

    iput-boolean v1, p0, Ltmsdkobf/hf;->pj:Z

    .line 143
    :cond_0
    return-void
.end method

.method public cd()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Ltmsdkobf/hf;->pj:Z

    return v0
.end method

.method public handleSdkContextEvent(I)V
    .locals 1
    .parameter "event"

    .prologue
    .line 147
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 149
    iget-boolean v0, p0, Ltmsdkobf/hf;->pj:Z

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0}, Ltmsdkobf/hf;->cb()V

    .line 151
    invoke-virtual {p0}, Ltmsdkobf/hf;->register()V

    .line 154
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 38
    const/4 v0, 0x0

    .line 40
    .local v0, sms:Ltmsdk/common/module/aresengine/SmsEntity;
    iget-object v1, p0, Ltmsdkobf/hf;->pi:Ltmsdkobf/he;

    invoke-virtual {v1, p2}, Ltmsdkobf/he;->a(Landroid/content/Intent;)V

    .line 41
    iget-object v1, p0, Ltmsdkobf/hf;->pi:Ltmsdkobf/he;

    invoke-virtual {v1}, Ltmsdkobf/he;->cc()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Ltmsdkobf/hf;->pi:Ltmsdkobf/he;

    invoke-virtual {v1}, Ltmsdkobf/he;->ca()Ltmsdk/common/module/aresengine/SmsEntity;

    move-result-object v0

    .line 45
    :cond_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Ltmsdk/common/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Ltmsdk/common/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Ltmsdk/common/module/aresengine/SmsEntity;->mmsData:Ltmsdk/common/module/aresengine/MmsData;

    if-eqz v1, :cond_2

    .line 47
    :cond_1
    invoke-static {}, Ltmsdk/common/utils/SDKUtil;->getSDKVersion()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_2

    .line 48
    invoke-virtual {p0, v0, p0}, Ltmsdkobf/hf;->a(Ltmsdk/common/module/aresengine/SmsEntity;Landroid/content/BroadcastReceiver;)V

    .line 51
    :cond_2
    return-void
.end method

.method public register()V
    .locals 13

    .prologue
    .line 65
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 71
    .local v5, context:Landroid/content/Context;
    :try_start_0
    sget-object v3, Ltmsdkobf/ig;->qS:Ltmsdkobf/lm;

    .line 72
    .local v3, adapter:Ltmsdkobf/lm;
    if-nez v3, :cond_0

    .line 74
    sget-object v1, Ltmsdkobf/hf;->pk:[Ljava/lang/String;

    .line 75
    .local v1, actionsSmsReceivedToRegister:[Ljava/lang/String;
    sget-object v2, Ltmsdkobf/hf;->pl:[Ljava/lang/String;

    .line 98
    .local v2, actionsWapPushReceivedToRegister:[Ljava/lang/String;
    :goto_0
    move-object v4, v1

    .local v4, arr$:[Ljava/lang/String;
    array-length v9, v4

    .local v9, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_1
    if-ge v7, v9, :cond_5

    aget-object v0, v4, v7

    .line 99
    .local v0, action:Ljava/lang/String;
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 100
    .local v8, intentFilter:Landroid/content/IntentFilter;
    const-string v11, "android.intent.category.DEFAULT"

    invoke-virtual {v8, v11}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 101
    const v11, 0x7fffffff

    invoke-virtual {v8, v11}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 102
    const-string v11, "android.permission.BROADCAST_SMS"

    const/4 v12, 0x0

    invoke-virtual {v5, p0, v8, v11, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 98
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 78
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #actionsSmsReceivedToRegister:[Ljava/lang/String;
    .end local v2           #actionsWapPushReceivedToRegister:[Ljava/lang/String;
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v8           #intentFilter:Landroid/content/IntentFilter;
    .end local v9           #len$:I
    :cond_0
    invoke-interface {v3}, Ltmsdkobf/lm;->gq()Ljava/lang/String;

    move-result-object v10

    .line 79
    .local v10, secondAction:Ljava/lang/String;
    if-eqz v10, :cond_1

    const-string v11, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 81
    :cond_1
    sget-object v1, Ltmsdkobf/hf;->pk:[Ljava/lang/String;

    .line 87
    .restart local v1       #actionsSmsReceivedToRegister:[Ljava/lang/String;
    :goto_2
    invoke-interface {v3}, Ltmsdkobf/lm;->gr()Ljava/lang/String;

    move-result-object v10

    .line 88
    if-eqz v10, :cond_2

    const-string v11, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 90
    :cond_2
    sget-object v2, Ltmsdkobf/hf;->pl:[Ljava/lang/String;

    .restart local v2       #actionsWapPushReceivedToRegister:[Ljava/lang/String;
    goto :goto_0

    .line 84
    .end local v1           #actionsSmsReceivedToRegister:[Ljava/lang/String;
    .end local v2           #actionsWapPushReceivedToRegister:[Ljava/lang/String;
    :cond_3
    const/4 v11, 0x2

    new-array v1, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "android.provider.Telephony.SMS_RECEIVED"

    aput-object v12, v1, v11

    const/4 v11, 0x1

    aput-object v10, v1, v11

    .restart local v1       #actionsSmsReceivedToRegister:[Ljava/lang/String;
    goto :goto_2

    .line 93
    :cond_4
    const/4 v11, 0x2

    new-array v2, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    aput-object v12, v2, v11

    const/4 v11, 0x1

    aput-object v10, v2, v11

    .restart local v2       #actionsWapPushReceivedToRegister:[Ljava/lang/String;
    goto :goto_0

    .line 106
    .end local v10           #secondAction:Ljava/lang/String;
    .restart local v4       #arr$:[Ljava/lang/String;
    .restart local v7       #i$:I
    .restart local v9       #len$:I
    :cond_5
    move-object v4, v2

    array-length v9, v4

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v9, :cond_6

    aget-object v0, v4, v7

    .line 108
    .restart local v0       #action:Ljava/lang/String;
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 109
    .restart local v8       #intentFilter:Landroid/content/IntentFilter;
    const-string v11, "application/vnd.wap.mms-message"

    invoke-virtual {v8, v11}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V

    .line 110
    const-string v11, "android.intent.category.DEFAULT"

    invoke-virtual {v8, v11}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 111
    const v11, 0x7fffffff

    invoke-virtual {v8, v11}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 112
    const-string v11, "android.permission.BROADCAST_SMS"

    const/4 v12, 0x0

    invoke-virtual {v5, p0, v8, v11, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 116
    new-instance v8, Landroid/content/IntentFilter;

    .end local v8           #intentFilter:Landroid/content/IntentFilter;
    invoke-direct {v8, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 117
    .restart local v8       #intentFilter:Landroid/content/IntentFilter;
    const-string v11, "application/vnd.wap.sic"

    invoke-virtual {v8, v11}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V

    .line 118
    const-string v11, "application/vnd.wap.slc"

    invoke-virtual {v8, v11}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V

    .line 119
    const-string v11, "application/vnd.wap.coc"

    invoke-virtual {v8, v11}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V

    .line 120
    const-string v11, "android.intent.category.DEFAULT"

    invoke-virtual {v8, v11}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 121
    const v11, 0x7fffffff

    invoke-virtual {v8, v11}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 122
    const-string v11, "android.permission.BROADCAST_SMS"

    const/4 v12, 0x0

    invoke-virtual {v5, p0, v8, v11, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 106
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 126
    .end local v0           #action:Ljava/lang/String;
    .end local v8           #intentFilter:Landroid/content/IntentFilter;
    :cond_6
    const/4 v11, 0x1

    iput-boolean v11, p0, Ltmsdkobf/hf;->pj:Z
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v1           #actionsSmsReceivedToRegister:[Ljava/lang/String;
    .end local v2           #actionsWapPushReceivedToRegister:[Ljava/lang/String;
    .end local v3           #adapter:Ltmsdkobf/lm;
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v9           #len$:I
    :goto_4
    return-void

    .line 128
    :catch_0
    move-exception v6

    .line 129
    .local v6, e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v11, "MessageReceiver"

    const-string v12, "register"

    invoke-static {v11, v12, v6}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_4
.end method
