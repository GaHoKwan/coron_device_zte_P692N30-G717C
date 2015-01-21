.class public Lcom/mediatek/smsreg/SmsRegService;
.super Landroid/app/Service;
.source "SmsRegService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/smsreg/SmsRegService$SmsReceivedReceiver;,
        Lcom/mediatek/smsreg/SmsRegService$SimStateReceiver;
    }
.end annotation


# static fields
.field private static final SMS_SENDING_RESULT_TAG:Ljava/lang/String; = "SMS_SENDING_RESULT"

.field private static final TAG:Ljava/lang/String; = "SmsReg/Service"


# instance fields
.field private mIMSI:[Ljava/lang/String;

.field private mInfoPersistentor:Lcom/mediatek/smsreg/InfoPersistentor;

.field private mIsSendMsg:Ljava/lang/Boolean;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateListenerGemini:Landroid/telephony/PhoneStateListener;

.field private mReadyGemini:[Ljava/lang/Boolean;

.field private mSavedIMSI:Ljava/lang/String;

.field private final mSearchNetDelay:J

.field private mSender:Landroid/app/PendingIntent;

.field private mServiceAlive:Ljava/lang/Boolean;

.field private mSimIMSI:Ljava/lang/String;

.field private mSimStateReceiver:Lcom/mediatek/smsreg/SmsRegService$SimStateReceiver;

.field private mSlotGemini:[Ljava/lang/Boolean;

.field private mSmsBuilder:Lcom/mediatek/smsreg/SmsBuilder;

.field private mSmsManager:Lcom/mediatek/telephony/SmsManagerEx;

.field private mSmsReceivedReceiver:Lcom/mediatek/smsreg/SmsRegService$SmsReceivedReceiver;

.field private mTelephonyManager:Lcom/mediatek/telephony/TelephonyManagerEx;

.field private mXmlG:Lcom/mediatek/smsreg/ConfigInfoGenerator;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 69
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 71
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/smsreg/SmsRegService;->mIsSendMsg:Ljava/lang/Boolean;

    .line 72
    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/smsreg/SmsRegService;->mIMSI:[Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/smsreg/SmsRegService;->mSimIMSI:Ljava/lang/String;

    .line 75
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/smsreg/SmsRegService;->mServiceAlive:Ljava/lang/Boolean;

    .line 83
    const-wide/32 v0, 0x15f90

    iput-wide v0, p0, Lcom/mediatek/smsreg/SmsRegService;->mSearchNetDelay:J

    .line 88
    new-array v0, v4, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/mediatek/smsreg/SmsRegService;->mSlotGemini:[Ljava/lang/Boolean;

    .line 89
    new-array v0, v4, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/mediatek/smsreg/SmsRegService;->mReadyGemini:[Ljava/lang/Boolean;

    .line 355
    new-instance v0, Lcom/mediatek/smsreg/SmsRegService$1;

    invoke-direct {v0, p0}, Lcom/mediatek/smsreg/SmsRegService$1;-><init>(Lcom/mediatek/smsreg/SmsRegService;)V

    iput-object v0, p0, Lcom/mediatek/smsreg/SmsRegService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 377
    new-instance v0, Lcom/mediatek/smsreg/SmsRegService$2;

    invoke-direct {v0, p0}, Lcom/mediatek/smsreg/SmsRegService$2;-><init>(Lcom/mediatek/smsreg/SmsRegService;)V

    iput-object v0, p0, Lcom/mediatek/smsreg/SmsRegService;->mPhoneStateListenerGemini:Landroid/telephony/PhoneStateListener;

    .line 692
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/smsreg/SmsRegService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/mediatek/smsreg/SmsRegService;->getSimCardMatchCustomizedGemini()V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/smsreg/SmsRegService;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/smsreg/SmsRegService;->mIMSI:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/smsreg/SmsRegService;)Ljava/lang/Boolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/mediatek/smsreg/SmsRegService;->isNeedRegisterGemini()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/smsreg/SmsRegService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/mediatek/smsreg/SmsRegService;->sendRegisterMessageGemini(I)V

    return-void
.end method

.method private getSendPendingIntent(I)Landroid/app/PendingIntent;
    .locals 6
    .parameter "simId"

    .prologue
    .line 613
    const-string v3, "SmsReg/Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get Pending Intent begin, simId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    const/4 v0, 0x0

    .line 615
    .local v0, imsi:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 616
    .local v1, mIntent:Landroid/content/Intent;
    const-string v3, "android.intent.action.DM_REGISTER_SMS_RECEIVED"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 618
    const-string v3, "SmsReg/Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "put extra SimID, SimID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    const-string v3, "SimID"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 620
    iget-object v3, p0, Lcom/mediatek/smsreg/SmsRegService;->mTelephonyManager:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v3, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 624
    const-string v3, "SmsReg/Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "put extra mIMSI, mIMSI = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    const-string v3, "mIMSI"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 627
    const/4 v3, 0x0

    const/high16 v4, 0x800

    invoke-static {p0, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 629
    .local v2, mSendPendingIntent:Landroid/app/PendingIntent;
    const-string v3, "SmsReg/Service"

    const-string v4, "get Pending Intent end"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    return-object v2
.end method

.method private getSimCardMatchCustomized()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 399
    iget-object v6, p0, Lcom/mediatek/smsreg/SmsRegService;->mXmlG:Lcom/mediatek/smsreg/ConfigInfoGenerator;

    invoke-interface {v6}, Lcom/mediatek/smsreg/ConfigInfoGenerator;->getOperatorName()Ljava/lang/String;

    move-result-object v3

    .line 400
    .local v3, operatorID:Ljava/lang/String;
    iget-object v6, p0, Lcom/mediatek/smsreg/SmsRegService;->mXmlG:Lcom/mediatek/smsreg/ConfigInfoGenerator;

    invoke-interface {v6}, Lcom/mediatek/smsreg/ConfigInfoGenerator;->getNetworkNumber()[Ljava/lang/String;

    move-result-object v4

    .line 401
    .local v4, operatorNumber:[Ljava/lang/String;
    const-string v6, "SmsReg/Service"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "the operator Id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", operatorNumber.length = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v6, p0, Lcom/mediatek/smsreg/SmsRegService;->mTelephonyManager:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v6, v9}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimState(I)I

    move-result v5

    .line 405
    .local v5, simState:I
    const/4 v6, 0x5

    if-ne v6, v5, :cond_5

    .line 406
    iget-object v6, p0, Lcom/mediatek/smsreg/SmsRegService;->mTelephonyManager:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v6, v9}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimOperator(I)Ljava/lang/String;

    move-result-object v1

    .line 407
    .local v1, currentSimOperator:Ljava/lang/String;
    const-string v6, "SmsReg/Service"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "there is a sim card is ready the operator is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 411
    :cond_0
    const-string v6, "SmsReg/Service"

    const-string v7, "operator is null, do nothing. "

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    .end local v1           #currentSimOperator:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 414
    .restart local v1       #currentSimOperator:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    .line 415
    .local v2, j:I
    :goto_1
    array-length v6, v4

    if-ge v2, v6, :cond_3

    .line 416
    aget-object v0, v4, v2

    .line 417
    .local v0, configedOperaterNumber:Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 419
    const-string v6, "SmsReg/Service"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "the ready sim card operator is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v6, p0, Lcom/mediatek/smsreg/SmsRegService;->mTelephonyManager:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v6, v9}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/smsreg/SmsRegService;->mSimIMSI:Ljava/lang/String;

    .line 423
    const-string v6, "SmsReg/Service"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "the current imsi is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/smsreg/SmsRegService;->mSimIMSI:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    .end local v0           #configedOperaterNumber:Ljava/lang/String;
    :cond_3
    array-length v6, v4

    if-lt v2, v6, :cond_1

    .line 428
    const-string v6, "SmsReg/Service"

    const-string v7, "There is no sim card operator is matched currentoperator number."

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 415
    .restart local v0       #configedOperaterNumber:Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 432
    .end local v0           #configedOperaterNumber:Ljava/lang/String;
    .end local v1           #currentSimOperator:Ljava/lang/String;
    .end local v2           #j:I
    :cond_5
    const-string v6, "SmsReg/Service"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sim state is not ready, state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getSimCardMatchCustomizedGemini()V
    .locals 10

    .prologue
    .line 437
    iget-object v7, p0, Lcom/mediatek/smsreg/SmsRegService;->mXmlG:Lcom/mediatek/smsreg/ConfigInfoGenerator;

    invoke-interface {v7}, Lcom/mediatek/smsreg/ConfigInfoGenerator;->getOperatorName()Ljava/lang/String;

    move-result-object v4

    .line 438
    .local v4, operatorID:Ljava/lang/String;
    iget-object v7, p0, Lcom/mediatek/smsreg/SmsRegService;->mXmlG:Lcom/mediatek/smsreg/ConfigInfoGenerator;

    invoke-interface {v7}, Lcom/mediatek/smsreg/ConfigInfoGenerator;->getNetworkNumber()[Ljava/lang/String;

    move-result-object v5

    .line 439
    .local v5, operatorNumber:[Ljava/lang/String;
    const-string v7, "SmsReg/Service"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "the operator Id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", operatorNumber.length = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v7, Lcom/mediatek/smsreg/SmsRegConst;->GEMSIM:[I

    array-length v7, v7

    if-ge v2, v7, :cond_4

    .line 443
    iget-object v7, p0, Lcom/mediatek/smsreg/SmsRegService;->mTelephonyManager:Lcom/mediatek/telephony/TelephonyManagerEx;

    sget-object v8, Lcom/mediatek/smsreg/SmsRegConst;->GEMSIM:[I

    aget v8, v8, v2

    invoke-virtual {v7, v8}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimState(I)I

    move-result v6

    .line 445
    .local v6, simState:I
    const/4 v7, 0x5

    if-ne v7, v6, :cond_1

    .line 447
    iget-object v7, p0, Lcom/mediatek/smsreg/SmsRegService;->mTelephonyManager:Lcom/mediatek/telephony/TelephonyManagerEx;

    sget-object v8, Lcom/mediatek/smsreg/SmsRegConst;->GEMSIM:[I

    aget v8, v8, v2

    invoke-virtual {v7, v8}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimOperator(I)Ljava/lang/String;

    move-result-object v1

    .line 449
    .local v1, currentOperator:Ljava/lang/String;
    const-string v7, "SmsReg/Service"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "there is a sim card is ready the operator is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 453
    :cond_0
    const-string v7, "SmsReg/Service"

    const-string v8, "operator is null, continue next one. "

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    .end local v1           #currentOperator:Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 456
    .restart local v1       #currentOperator:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    .local v3, j:I
    :goto_2
    array-length v7, v5

    if-ge v3, v7, :cond_1

    .line 457
    aget-object v0, v5, v3

    .line 458
    .local v0, configuredOperator:Ljava/lang/String;
    const-string v7, "SmsReg/Service"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "the phone is for the operator[ "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 462
    iget-object v7, p0, Lcom/mediatek/smsreg/SmsRegService;->mIMSI:[Ljava/lang/String;

    iget-object v8, p0, Lcom/mediatek/smsreg/SmsRegService;->mTelephonyManager:Lcom/mediatek/telephony/TelephonyManagerEx;

    sget-object v9, Lcom/mediatek/smsreg/SmsRegConst;->GEMSIM:[I

    aget v9, v9, v2

    invoke-virtual {v8, v9}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    .line 464
    const-string v7, "SmsReg/Service"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "current mIMSI["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/smsreg/SmsRegService;->mIMSI:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 456
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 470
    .end local v0           #configuredOperator:Ljava/lang/String;
    .end local v1           #currentOperator:Ljava/lang/String;
    .end local v3           #j:I
    .end local v6           #simState:I
    :cond_4
    return-void
.end method

.method private isNeedRegister()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 473
    iget-object v0, p0, Lcom/mediatek/smsreg/SmsRegService;->mInfoPersistentor:Lcom/mediatek/smsreg/InfoPersistentor;

    invoke-virtual {v0}, Lcom/mediatek/smsreg/InfoPersistentor;->getSavedIMSI()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/smsreg/SmsRegService;->mSavedIMSI:Ljava/lang/String;

    .line 474
    const-string v0, "SmsReg/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the mSavedIMSI = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/smsreg/SmsRegService;->mSavedIMSI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v0, p0, Lcom/mediatek/smsreg/SmsRegService;->mSavedIMSI:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 477
    const-string v0, "SmsReg/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The saved mIMSI =["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/smsreg/SmsRegService;->mSavedIMSI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const-string v0, "SmsReg/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The current mIMSI =["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/smsreg/SmsRegService;->mSimIMSI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v0, p0, Lcom/mediatek/smsreg/SmsRegService;->mSimIMSI:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/smsreg/SmsRegService;->mSavedIMSI:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/smsreg/SmsRegService;->mSimIMSI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    const-string v0, "SmsReg/Service"

    const-string v1, "The SIM card and device have rigistered"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-virtual {p0}, Lcom/mediatek/smsreg/SmsRegService;->stopService()V

    .line 483
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 488
    :goto_0
    return-object v0

    .line 486
    :cond_0
    const-string v0, "SmsReg/Service"

    const-string v1, "The sim card in this phone is not registered, need register"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private isNeedRegisterGemini()Ljava/lang/Boolean;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 492
    iget-object v0, p0, Lcom/mediatek/smsreg/SmsRegService;->mInfoPersistentor:Lcom/mediatek/smsreg/InfoPersistentor;

    invoke-virtual {v0}, Lcom/mediatek/smsreg/InfoPersistentor;->getSavedIMSI()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/smsreg/SmsRegService;->mSavedIMSI:Ljava/lang/String;

    .line 493
    const-string v0, "SmsReg/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the mSavedIMSI = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/smsreg/SmsRegService;->mSavedIMSI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v0, p0, Lcom/mediatek/smsreg/SmsRegService;->mSavedIMSI:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 496
    const-string v0, "SmsReg/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The saved mIMSI =["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/smsreg/SmsRegService;->mSavedIMSI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    const-string v0, "SmsReg/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The current mIMSI0 =["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/smsreg/SmsRegService;->mIMSI:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    const-string v0, "SmsReg/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The current mIMSI1 =["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/smsreg/SmsRegService;->mIMSI:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v0, p0, Lcom/mediatek/smsreg/SmsRegService;->mIMSI:[Ljava/lang/String;

    aget-object v0, v0, v3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/smsreg/SmsRegService;->mIMSI:[Ljava/lang/String;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/mediatek/smsreg/SmsRegService;->mSavedIMSI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    const-string v0, "SmsReg/Service"

    const-string v1, "The SIM1 have registered already."

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    invoke-virtual {p0}, Lcom/mediatek/smsreg/SmsRegService;->stopService()V

    .line 503
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 513
    :goto_0
    return-object v0

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/mediatek/smsreg/SmsRegService;->mIMSI:[Ljava/lang/String;

    aget-object v0, v0, v4

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/smsreg/SmsRegService;->mIMSI:[Ljava/lang/String;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/mediatek/smsreg/SmsRegService;->mSavedIMSI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 506
    const-string v0, "SmsReg/Service"

    const-string v1, "The SIM2 have registered already."

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    invoke-virtual {p0}, Lcom/mediatek/smsreg/SmsRegService;->stopService()V

    .line 508
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 511
    :cond_1
    const-string v0, "SmsReg/Service"

    const-string v1, "The sim card in this phone is not registered, need register"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private sendRegisterMessage()V
    .locals 15

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 517
    const-string v0, "SmsReg/Service"

    const-string v3, "send register message begin..."

    invoke-static {v0, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v0, p0, Lcom/mediatek/smsreg/SmsRegService;->mTelephonyManager:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, v8}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimCountryIso(I)Ljava/lang/String;

    move-result-object v12

    .line 520
    .local v12, simCountryIso:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/smsreg/SmsRegService;->mTelephonyManager:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, v8}, Lcom/mediatek/telephony/TelephonyManagerEx;->getNetworkCountryIso(I)Ljava/lang/String;

    move-result-object v9

    .line 521
    .local v9, networkIso:Ljava/lang/String;
    const-string v0, "SmsReg/Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "simCountryIso = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    const-string v0, "SmsReg/Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " networkIso= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    if-eqz v12, :cond_1

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 524
    iget-object v0, p0, Lcom/mediatek/smsreg/SmsRegService;->mSmsBuilder:Lcom/mediatek/smsreg/SmsBuilder;

    iget-object v3, p0, Lcom/mediatek/smsreg/SmsRegService;->mXmlG:Lcom/mediatek/smsreg/ConfigInfoGenerator;

    invoke-virtual {v0, v3, v8}, Lcom/mediatek/smsreg/SmsBuilder;->getSmsContent(Lcom/mediatek/smsreg/ConfigInfoGenerator;I)Ljava/lang/String;

    move-result-object v13

    .line 525
    .local v13, smsRegMsg:Ljava/lang/String;
    const-string v0, "SmsReg/Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SmsRegMsg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    if-eqz v13, :cond_5

    .line 527
    iget-object v0, p0, Lcom/mediatek/smsreg/SmsRegService;->mXmlG:Lcom/mediatek/smsreg/ConfigInfoGenerator;

    invoke-interface {v0}, Lcom/mediatek/smsreg/ConfigInfoGenerator;->getSmsNumber()Ljava/lang/String;

    move-result-object v1

    .line 528
    .local v1, optAddr:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/smsreg/SmsRegService;->mXmlG:Lcom/mediatek/smsreg/ConfigInfoGenerator;

    invoke-interface {v0}, Lcom/mediatek/smsreg/ConfigInfoGenerator;->getSmsPort()Ljava/lang/Short;

    move-result-object v11

    .line 529
    .local v11, optPort:Ljava/lang/Short;
    iget-object v0, p0, Lcom/mediatek/smsreg/SmsRegService;->mXmlG:Lcom/mediatek/smsreg/ConfigInfoGenerator;

    invoke-interface {v0}, Lcom/mediatek/smsreg/ConfigInfoGenerator;->getSrcPort()Ljava/lang/Short;

    move-result-object v14

    .line 530
    .local v14, srcPort:Ljava/lang/Short;
    const-string v0, "SmsReg/Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Operator\'s sms number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    const-string v0, "SmsReg/Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Operator\'s sms port = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const-string v0, "SmsReg/Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Src port = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object v0, p0, Lcom/mediatek/smsreg/SmsRegService;->mXmlG:Lcom/mediatek/smsreg/ConfigInfoGenerator;

    invoke-interface {v0}, Lcom/mediatek/smsreg/ConfigInfoGenerator;->getOperatorName()Ljava/lang/String;

    move-result-object v10

    .line 534
    .local v10, operatorID:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/smsreg/SmsRegService;->mSmsManager:Lcom/mediatek/telephony/SmsManagerEx;

    if-eqz v0, :cond_4

    .line 535
    const-string v0, "cu"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "cmcc"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/mediatek/smsreg/SmsRegService;->mIsSendMsg:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 538
    invoke-direct {p0, v8}, Lcom/mediatek/smsreg/SmsRegService;->getSendPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 539
    .local v6, mPendingIntent:Landroid/app/PendingIntent;
    iget-object v0, p0, Lcom/mediatek/smsreg/SmsRegService;->mSmsManager:Lcom/mediatek/telephony/SmsManagerEx;

    invoke-virtual {v11}, Ljava/lang/Short;->shortValue()S

    move-result v3

    invoke-virtual {v14}, Ljava/lang/Short;->shortValue()S

    move-result v4

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    move-object v7, v2

    invoke-virtual/range {v0 .. v8}, Lcom/mediatek/telephony/SmsManagerEx;->sendDataMessage(Ljava/lang/String;Ljava/lang/String;SS[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V

    .line 542
    const-string v0, "SmsReg/Service"

    const-string v2, "send register message end, RegMsg is send out!"

    invoke-static {v0, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/smsreg/SmsRegService;->mIsSendMsg:Ljava/lang/Boolean;

    .line 561
    .end local v1           #optAddr:Ljava/lang/String;
    .end local v6           #mPendingIntent:Landroid/app/PendingIntent;
    .end local v10           #operatorID:Ljava/lang/String;
    .end local v11           #optPort:Ljava/lang/Short;
    .end local v13           #smsRegMsg:Ljava/lang/String;
    .end local v14           #srcPort:Ljava/lang/Short;
    :cond_1
    :goto_0
    return-void

    .line 546
    .restart local v1       #optAddr:Ljava/lang/String;
    .restart local v10       #operatorID:Ljava/lang/String;
    .restart local v11       #optPort:Ljava/lang/Short;
    .restart local v13       #smsRegMsg:Ljava/lang/String;
    .restart local v14       #srcPort:Ljava/lang/Short;
    :cond_2
    const-string v0, "SmsReg/Service"

    const-string v2, "RegMsg has been sent already. "

    invoke-static {v0, v2}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 549
    :cond_3
    const-string v0, "SmsReg/Service"

    const-string v2, "RegMsg is not send, it is not the operator cu or cmcc"

    invoke-static {v0, v2}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 553
    :cond_4
    const-string v0, "SmsReg/Service"

    const-string v2, "Send RegMsg failed, mSmsManager is null"

    invoke-static {v0, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 556
    .end local v1           #optAddr:Ljava/lang/String;
    .end local v10           #operatorID:Ljava/lang/String;
    .end local v11           #optPort:Ljava/lang/Short;
    .end local v14           #srcPort:Ljava/lang/Short;
    :cond_5
    const-string v0, "SmsReg/Service"

    const-string v2, "Send RegMsg failed, The Sms Register message is null"

    invoke-static {v0, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/smsreg/SmsRegService;->mServiceAlive:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method private sendRegisterMessageGemini(I)V
    .locals 16
    .parameter "simId"

    .prologue
    .line 564
    const-string v1, "SmsReg/Service"

    const-string v3, "send register message gemini begin..."

    invoke-static {v1, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/smsreg/SmsRegService;->mTelephonyManager:Lcom/mediatek/telephony/TelephonyManagerEx;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimCountryIso(I)Ljava/lang/String;

    move-result-object v13

    .line 566
    .local v13, simCountryIso:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/smsreg/SmsRegService;->mTelephonyManager:Lcom/mediatek/telephony/TelephonyManagerEx;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getNetworkCountryIso(I)Ljava/lang/String;

    move-result-object v10

    .line 567
    .local v10, networkIso:Ljava/lang/String;
    const-string v1, "SmsReg/Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "simCountryIso = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const-string v1, "SmsReg/Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " networkIso= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    if-eqz v13, :cond_5

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 570
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/smsreg/SmsRegService;->mSmsBuilder:Lcom/mediatek/smsreg/SmsBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/smsreg/SmsRegService;->mXmlG:Lcom/mediatek/smsreg/ConfigInfoGenerator;

    move/from16 v0, p1

    invoke-virtual {v1, v3, v0}, Lcom/mediatek/smsreg/SmsBuilder;->getSmsContent(Lcom/mediatek/smsreg/ConfigInfoGenerator;I)Ljava/lang/String;

    move-result-object v14

    .line 571
    .local v14, smsRegMsg:Ljava/lang/String;
    const-string v1, "SmsReg/Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SmsRegMsg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    if-eqz v14, :cond_4

    .line 573
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/smsreg/SmsRegService;->mXmlG:Lcom/mediatek/smsreg/ConfigInfoGenerator;

    invoke-interface {v1}, Lcom/mediatek/smsreg/ConfigInfoGenerator;->getSmsNumber()Ljava/lang/String;

    move-result-object v2

    .line 574
    .local v2, optAddr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/smsreg/SmsRegService;->mXmlG:Lcom/mediatek/smsreg/ConfigInfoGenerator;

    invoke-interface {v1}, Lcom/mediatek/smsreg/ConfigInfoGenerator;->getSmsPort()Ljava/lang/Short;

    move-result-object v12

    .line 575
    .local v12, optPort:Ljava/lang/Short;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/smsreg/SmsRegService;->mXmlG:Lcom/mediatek/smsreg/ConfigInfoGenerator;

    invoke-interface {v1}, Lcom/mediatek/smsreg/ConfigInfoGenerator;->getSrcPort()Ljava/lang/Short;

    move-result-object v15

    .line 576
    .local v15, srcPort:Ljava/lang/Short;
    const-string v1, "SmsReg/Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Operator\'s sms number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const-string v1, "SmsReg/Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Operator\'s sms port = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    const-string v1, "SmsReg/Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Src port = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/smsreg/SmsRegService;->mXmlG:Lcom/mediatek/smsreg/ConfigInfoGenerator;

    invoke-interface {v1}, Lcom/mediatek/smsreg/ConfigInfoGenerator;->getOperatorName()Ljava/lang/String;

    move-result-object v11

    .line 580
    .local v11, operatorID:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/smsreg/SmsRegService;->mSmsManager:Lcom/mediatek/telephony/SmsManagerEx;

    if-eqz v1, :cond_3

    .line 581
    const-string v1, "cu"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "cmcc"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 583
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/smsreg/SmsRegService;->mIsSendMsg:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 584
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/smsreg/SmsRegService;->getSendPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 585
    .local v7, mPendingIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/smsreg/SmsRegService;->mSmsManager:Lcom/mediatek/telephony/SmsManagerEx;

    const/4 v3, 0x0

    invoke-virtual {v12}, Ljava/lang/Short;->shortValue()S

    move-result v4

    invoke-virtual {v15}, Ljava/lang/Short;->shortValue()S

    move-result v5

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v8, 0x0

    move/from16 v9, p1

    invoke-virtual/range {v1 .. v9}, Lcom/mediatek/telephony/SmsManagerEx;->sendDataMessage(Ljava/lang/String;Ljava/lang/String;SS[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V

    .line 588
    const-string v1, "SmsReg/Service"

    const-string v3, "send register message end, RegMsg gemini is send out!"

    invoke-static {v1, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mediatek/smsreg/SmsRegService;->mIsSendMsg:Ljava/lang/Boolean;

    .line 610
    .end local v2           #optAddr:Ljava/lang/String;
    .end local v7           #mPendingIntent:Landroid/app/PendingIntent;
    .end local v11           #operatorID:Ljava/lang/String;
    .end local v12           #optPort:Ljava/lang/Short;
    .end local v14           #smsRegMsg:Ljava/lang/String;
    .end local v15           #srcPort:Ljava/lang/Short;
    :goto_0
    return-void

    .line 592
    .restart local v2       #optAddr:Ljava/lang/String;
    .restart local v11       #operatorID:Ljava/lang/String;
    .restart local v12       #optPort:Ljava/lang/Short;
    .restart local v14       #smsRegMsg:Ljava/lang/String;
    .restart local v15       #srcPort:Ljava/lang/Short;
    :cond_1
    const-string v1, "SmsReg/Service"

    const-string v3, "RegMsg gemini has been sent already. "

    invoke-static {v1, v3}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 595
    :cond_2
    const-string v1, "SmsReg/Service"

    const-string v3, "RegMsg is not send, it is not the operator cu or cmcc"

    invoke-static {v1, v3}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 599
    :cond_3
    const-string v1, "SmsReg/Service"

    const-string v3, "Send RegMsg failed, mSmsManager is null"

    invoke-static {v1, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 602
    .end local v2           #optAddr:Ljava/lang/String;
    .end local v11           #operatorID:Ljava/lang/String;
    .end local v12           #optPort:Ljava/lang/Short;
    .end local v15           #srcPort:Ljava/lang/Short;
    :cond_4
    const-string v1, "SmsReg/Service"

    const-string v3, "Send RegMsg failed, The Sms Register message is null"

    invoke-static {v1, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mediatek/smsreg/SmsRegService;->mServiceAlive:Ljava/lang/Boolean;

    goto :goto_0

    .line 607
    .end local v14           #smsRegMsg:Ljava/lang/String;
    :cond_5
    const-string v1, "SmsReg/Service"

    const-string v3, "SimCountryIso is not equals with NetworkCountryIso, do nothing"

    invoke-static {v1, v3}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 351
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 92
    invoke-static {}, Lcom/mediatek/telephony/SmsManagerEx;->getDefault()Lcom/mediatek/telephony/SmsManagerEx;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/smsreg/SmsRegService;->mSmsManager:Lcom/mediatek/telephony/SmsManagerEx;

    .line 93
    const-string v0, "SmsReg/Service"

    const-string v1, "SmsRegService onCreate."

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-static {}, Lcom/mediatek/smsreg/SmsRegConst;->getConfigPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/smsreg/XMLGenerator;->getInstance(Ljava/lang/String;)Lcom/mediatek/smsreg/ConfigInfoGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/smsreg/SmsRegService;->mXmlG:Lcom/mediatek/smsreg/ConfigInfoGenerator;

    .line 96
    iget-object v0, p0, Lcom/mediatek/smsreg/SmsRegService;->mXmlG:Lcom/mediatek/smsreg/ConfigInfoGenerator;

    if-nez v0, :cond_0

    .line 97
    const-string v0, "SmsReg/Service"

    const-string v1, "Init XMLGenerator error!"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :goto_0
    return-void

    .line 101
    :cond_0
    new-instance v0, Lcom/mediatek/smsreg/SmsBuilder;

    invoke-direct {v0, p0}, Lcom/mediatek/smsreg/SmsBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/smsreg/SmsRegService;->mSmsBuilder:Lcom/mediatek/smsreg/SmsBuilder;

    .line 102
    new-instance v0, Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-direct {v0, p0}, Lcom/mediatek/telephony/TelephonyManagerEx;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/smsreg/SmsRegService;->mTelephonyManager:Lcom/mediatek/telephony/TelephonyManagerEx;

    .line 103
    iget-object v0, p0, Lcom/mediatek/smsreg/SmsRegService;->mTelephonyManager:Lcom/mediatek/telephony/TelephonyManagerEx;

    if-nez v0, :cond_1

    .line 104
    const-string v0, "SmsReg/Service"

    const-string v1, "TelephonyManager service is not exist!"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_1
    new-instance v0, Lcom/mediatek/smsreg/InfoPersistentor;

    invoke-direct {v0}, Lcom/mediatek/smsreg/InfoPersistentor;-><init>()V

    iput-object v0, p0, Lcom/mediatek/smsreg/SmsRegService;->mInfoPersistentor:Lcom/mediatek/smsreg/InfoPersistentor;

    goto :goto_0
.end method

.method public onDestory()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 115
    const-string v0, "SmsReg/Service"

    const-string v1, "SmsRegService destory"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iput-object v2, p0, Lcom/mediatek/smsreg/SmsRegService;->mSmsManager:Lcom/mediatek/telephony/SmsManagerEx;

    .line 117
    iput-object v2, p0, Lcom/mediatek/smsreg/SmsRegService;->mTelephonyManager:Lcom/mediatek/telephony/TelephonyManagerEx;

    .line 118
    iput-object v2, p0, Lcom/mediatek/smsreg/SmsRegService;->mInfoPersistentor:Lcom/mediatek/smsreg/InfoPersistentor;

    .line 119
    iput-object v2, p0, Lcom/mediatek/smsreg/SmsRegService;->mSmsBuilder:Lcom/mediatek/smsreg/SmsBuilder;

    .line 120
    iput-object v2, p0, Lcom/mediatek/smsreg/SmsRegService;->mXmlG:Lcom/mediatek/smsreg/ConfigInfoGenerator;

    .line 121
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 22
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 124
    const-string v17, "SmsReg/Service"

    const-string v18, "SmsReg service on start"

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-super/range {p0 .. p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/smsreg/SmsRegService;->mXmlG:Lcom/mediatek/smsreg/ConfigInfoGenerator;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 129
    const-string v17, "SmsReg/Service"

    const-string v18, "XMLGenerator instance init error!"

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->stopSelf()V

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    if-nez p1, :cond_2

    .line 135
    const-string v17, "SmsReg/Service"

    const-string v18, "intent is null!"

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 139
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 140
    .local v4, action:Ljava/lang/String;
    const-string v17, "SmsReg/Service"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SmsReg service onStart, action = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    if-nez v4, :cond_3

    .line 142
    const-string v17, "SmsReg/Service"

    const-string v18, "intent action is null!"

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 146
    :cond_3
    const-string v17, "BOOTCOMPLETED"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 147
    new-instance v17, Lcom/mediatek/smsreg/SmsRegService$SimStateReceiver;

    invoke-direct/range {v17 .. v17}, Lcom/mediatek/smsreg/SmsRegService$SimStateReceiver;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/smsreg/SmsRegService;->mSimStateReceiver:Lcom/mediatek/smsreg/SmsRegService$SimStateReceiver;

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/smsreg/SmsRegService;->mSimStateReceiver:Lcom/mediatek/smsreg/SmsRegService$SimStateReceiver;

    move-object/from16 v17, v0

    new-instance v18, Landroid/content/IntentFilter;

    const-string v19, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct/range {v18 .. v19}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 151
    new-instance v17, Lcom/mediatek/smsreg/SmsRegService$SmsReceivedReceiver;

    invoke-direct/range {v17 .. v17}, Lcom/mediatek/smsreg/SmsRegService$SmsReceivedReceiver;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/smsreg/SmsRegService;->mSmsReceivedReceiver:Lcom/mediatek/smsreg/SmsRegService$SmsReceivedReceiver;

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/smsreg/SmsRegService;->mSmsReceivedReceiver:Lcom/mediatek/smsreg/SmsRegService$SmsReceivedReceiver;

    move-object/from16 v17, v0

    new-instance v18, Landroid/content/IntentFilter;

    const-string v19, "android.intent.action.DM_REGISTER_SMS_RECEIVED"

    invoke-direct/range {v18 .. v19}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 155
    new-instance v14, Landroid/content/Intent;

    const-class v17, Lcom/mediatek/smsreg/SmsRegReceiver;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v14, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    .local v14, retryIntent:Landroid/content/Intent;
    const-string v17, "com.mediatek.smsreg.RETRY_SEND_SMSREG"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const/16 v17, 0x0

    const/high16 v18, 0x800

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v14, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/smsreg/SmsRegService;->mSender:Landroid/app/PendingIntent;

    .line 159
    const-string v17, "alarm"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    .line 160
    .local v5, alarm:Landroid/app/AlarmManager;
    const/16 v17, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const-wide/32 v20, 0x15f90

    add-long v18, v18, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/smsreg/SmsRegService;->mSender:Landroid/app/PendingIntent;

    move-object/from16 v20, v0

    move/from16 v0, v17

    move-wide/from16 v1, v18

    move-object/from16 v3, v20

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 343
    .end local v5           #alarm:Landroid/app/AlarmManager;
    .end local v14           #retryIntent:Landroid/content/Intent;
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/smsreg/SmsRegService;->mServiceAlive:Ljava/lang/Boolean;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_0

    .line 344
    const-string v17, "SmsReg/Service"

    const-string v18, "mServiceAlive is false"

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/smsreg/SmsRegService;->stopService()V

    goto/16 :goto_0

    .line 162
    :cond_5
    const-string v17, "SIM_STATE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 163
    const-string v17, "ss"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 164
    .local v16, stateExtra:Ljava/lang/String;
    const-string v17, "simId"

    const/16 v18, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 165
    .local v9, idCurSim:I
    const-string v17, "SmsReg/Service"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "sim["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]state is : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const-string v17, "LOADED"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_6

    .line 167
    const-string v17, "SmsReg/Service"

    const-string v18, "sim state is not loaded"

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 173
    :cond_6
    const-string v17, "phone"

    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v12

    .line 174
    .local v12, mTelephony:Lcom/android/internal/telephony/ITelephony;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    sget-object v17, Lcom/mediatek/smsreg/SmsRegConst;->GEMSIM:[I

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_9

    .line 176
    :try_start_0
    invoke-interface {v12, v8}, Lcom/android/internal/telephony/ITelephony;->isSimInsert(I)Z

    move-result v17

    if-nez v17, :cond_8

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/smsreg/SmsRegService;->mSlotGemini:[Ljava/lang/Boolean;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    aput-object v18, v17, v8

    .line 178
    const-string v17, "SmsReg/Service"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Slot["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "] has no sim card."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_7
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 180
    :cond_8
    const-string v17, "SmsReg/Service"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Slot["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "] has sim card."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/smsreg/SmsRegService;->mTelephonyManager:Lcom/mediatek/telephony/TelephonyManagerEx;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_7

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/smsreg/SmsRegService;->mReadyGemini:[Ljava/lang/Boolean;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    aput-object v18, v17, v8

    .line 185
    const-string v17, "SmsReg/Service"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Slot["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "] can read IMSI."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 188
    :catch_0
    move-exception v7

    .line 189
    .local v7, e:Landroid/os/RemoteException;
    const-string v17, "SmsReg/Service"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "* RemoteException:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 194
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_9
    const-string v17, "simId"

    const/16 v18, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 195
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v9, v0, :cond_0

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/smsreg/SmsRegService;->mReadyGemini:[Ljava/lang/Boolean;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    aput-object v18, v17, v9

    .line 197
    const-string v17, "SmsReg/Service"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Slot["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "] is ready."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/smsreg/SmsRegService;->mSlotGemini:[Ljava/lang/Boolean;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/smsreg/SmsRegService;->mReadyGemini:[Ljava/lang/Boolean;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_c

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/smsreg/SmsRegService;->mSlotGemini:[Ljava/lang/Boolean;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/smsreg/SmsRegService;->mReadyGemini:[Ljava/lang/Boolean;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_c

    .line 205
    :cond_b
    const-string v17, "SmsReg/Service"

    const-string v18, "-------- Both slot checked finished --------"

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const-string v17, "SmsReg/Service"

    const-string v18, "sim state is loaded"

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/smsreg/SmsRegService;->mInfoPersistentor:Lcom/mediatek/smsreg/InfoPersistentor;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/smsreg/InfoPersistentor;->getSavedIMSI()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/smsreg/SmsRegService;->mSavedIMSI:Ljava/lang/String;

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/smsreg/SmsRegService;->mSavedIMSI:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_e

    .line 218
    const/4 v8, 0x0

    :goto_4
    sget-object v17, Lcom/mediatek/smsreg/SmsRegConst;->GEMSIM:[I

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_e

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/smsreg/SmsRegService;->mSlotGemini:[Ljava/lang/Boolean;

    move-object/from16 v17, v0

    aget-object v17, v17, v8

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_d

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/smsreg/SmsRegService;->mTelephonyManager:Lcom/mediatek/telephony/TelephonyManagerEx;

    move-object/from16 v17, v0

    sget-object v18, Lcom/mediatek/smsreg/SmsRegConst;->GEMSIM:[I

    aget v18, v18, v8

    invoke-virtual/range {v17 .. v18}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v6

    .line 223
    .local v6, cheImsi:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/smsreg/SmsRegService;->mSavedIMSI:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 224
    const-string v17, "SmsReg/Service"

    const-string v18, "-------- Gemini device registered already --------"

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/smsreg/SmsRegService;->stopService()V

    goto/16 :goto_0

    .line 207
    .end local v6           #cheImsi:Ljava/lang/String;
    :cond_c
    const-string v17, "SmsReg/Service"

    const-string v18, "-------- Wait for another sim card ready --------"

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 218
    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 235
    :cond_e
    const-string v17, "SmsReg/Service"

    const-string v18, "Regist service state listener for sim1."

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/smsreg/SmsRegService;->mTelephonyManager:Lcom/mediatek/telephony/TelephonyManagerEx;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/smsreg/SmsRegService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Lcom/mediatek/telephony/TelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    .line 239
    const-string v17, "SmsReg/Service"

    const-string v18, "Regist service state listener gemini for sim2."

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/smsreg/SmsRegService;->mTelephonyManager:Lcom/mediatek/telephony/TelephonyManagerEx;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/smsreg/SmsRegService;->mPhoneStateListenerGemini:Landroid/telephony/PhoneStateListener;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x1

    invoke-virtual/range {v17 .. v20}, Lcom/mediatek/telephony/TelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/smsreg/SmsRegService;->mIsSendMsg:Ljava/lang/Boolean;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_11

    .line 253
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/smsreg/SmsRegService;->getSimCardMatchCustomizedGemini()V

    .line 254
    const/4 v15, -0x1

    .line 255
    .local v15, simNum:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/smsreg/SmsRegService;->mIMSI:[Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    if-eqz v17, :cond_f

    .line 256
    const/4 v15, 0x0

    .line 265
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/smsreg/SmsRegService;->isNeedRegisterGemini()Ljava/lang/Boolean;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 266
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/smsreg/SmsRegService;->sendRegisterMessageGemini(I)V

    goto/16 :goto_1

    .line 257
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/smsreg/SmsRegService;->mIMSI:[Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    if-eqz v17, :cond_10

    .line 258
    const/4 v15, 0x1

    goto :goto_5

    .line 260
    :cond_10
    const-string v17, "SmsReg/Service"

    const-string v18, "No sim card or the sim card is not the customized operator"

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 280
    .end local v15           #simNum:I
    :cond_11
    const-string v17, "SmsReg/Service"

    const-string v18, "the register message has been sent"

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 283
    .end local v8           #i:I
    .end local v9           #idCurSim:I
    .end local v12           #mTelephony:Lcom/android/internal/telephony/ITelephony;
    .end local v16           #stateExtra:Ljava/lang/String;
    :cond_12
    const-string v17, "REGISTER_SMS_RECEIVED"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15

    .line 284
    const-string v17, "SmsReg/Service"

    const-string v18, "broadcast REGISTER_SMS_RECEIVED has received"

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const-string v17, "SMS_SENDING_RESULT"

    const/16 v18, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 286
    .local v13, resultCode:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v13, v0, :cond_14

    .line 287
    const-string v17, "SmsReg/Service"

    const-string v18, "Save the IMSI"

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const-string v17, "mIMSI"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 289
    .local v10, imsi:Ljava/lang/String;
    const-string v17, "SmsReg/Service"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "The IMSI to save is  = ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    if-eqz v10, :cond_13

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_13

    .line 291
    new-instance v11, Lcom/mediatek/smsreg/InfoPersistentor;

    invoke-direct {v11}, Lcom/mediatek/smsreg/InfoPersistentor;-><init>()V

    .line 292
    .local v11, ip:Lcom/mediatek/smsreg/InfoPersistentor;
    invoke-virtual {v11, v10}, Lcom/mediatek/smsreg/InfoPersistentor;->setSavedIMSI(Ljava/lang/String;)V

    .line 297
    .end local v10           #imsi:Ljava/lang/String;
    .end local v11           #ip:Lcom/mediatek/smsreg/InfoPersistentor;
    :cond_13
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/smsreg/SmsRegService;->stopService()V

    goto/16 :goto_1

    .line 295
    :cond_14
    const-string v17, "SmsReg/Service"

    const-string v18, "Sms sending failed."

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 298
    .end local v13           #resultCode:I
    :cond_15
    const-string v17, "RETRY_SEND_SMSREG"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1a

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/smsreg/SmsRegService;->mSmsReceivedReceiver:Lcom/mediatek/smsreg/SmsRegService$SmsReceivedReceiver;

    move-object/from16 v17, v0

    if-nez v17, :cond_16

    .line 300
    new-instance v17, Lcom/mediatek/smsreg/SmsRegService$SmsReceivedReceiver;

    invoke-direct/range {v17 .. v17}, Lcom/mediatek/smsreg/SmsRegService$SmsReceivedReceiver;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/smsreg/SmsRegService;->mSmsReceivedReceiver:Lcom/mediatek/smsreg/SmsRegService$SmsReceivedReceiver;

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/smsreg/SmsRegService;->mSmsReceivedReceiver:Lcom/mediatek/smsreg/SmsRegService$SmsReceivedReceiver;

    move-object/from16 v17, v0

    new-instance v18, Landroid/content/IntentFilter;

    const-string v19, "android.intent.action.DM_REGISTER_SMS_RECEIVED"

    invoke-direct/range {v18 .. v19}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 304
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/smsreg/SmsRegService;->mIsSendMsg:Ljava/lang/Boolean;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_19

    .line 306
    const-string v17, "SmsReg/Service"

    const-string v18, "broadcast RETRY_SEND_SMSREG has received"

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/smsreg/SmsRegService;->getSimCardMatchCustomizedGemini()V

    .line 309
    const/4 v15, -0x1

    .line 310
    .restart local v15       #simNum:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/smsreg/SmsRegService;->mIMSI:[Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    if-eqz v17, :cond_17

    .line 311
    const/4 v15, 0x0

    .line 321
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/smsreg/SmsRegService;->isNeedRegisterGemini()Ljava/lang/Boolean;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 322
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/smsreg/SmsRegService;->sendRegisterMessageGemini(I)V

    goto/16 :goto_1

    .line 312
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/smsreg/SmsRegService;->mIMSI:[Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    if-eqz v17, :cond_18

    .line 313
    const/4 v15, 0x1

    goto :goto_7

    .line 315
    :cond_18
    const-string v17, "SmsReg/Service"

    const-string v18, "No sim card or the sim card is not the customized operator"

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/smsreg/SmsRegService;->stopService()V

    goto/16 :goto_0

    .line 337
    .end local v15           #simNum:I
    :cond_19
    const-string v17, "SmsReg/Service"

    const-string v18, "the register message has been sent"

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 340
    :cond_1a
    const-string v17, "SmsReg/Service"

    const-string v18, "Get the wrong intent"

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/smsreg/SmsRegService;->mServiceAlive:Ljava/lang/Boolean;

    goto/16 :goto_1
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 111
    const-string v0, "SmsReg/Service"

    const-string v1, "SmsRegService stop"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void
.end method

.method protected stopService()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 634
    const-string v1, "SmsReg/Service"

    const-string v2, "stop service."

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v1, p0, Lcom/mediatek/smsreg/SmsRegService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v1, :cond_0

    .line 638
    const-string v1, "SmsReg/Service"

    const-string v2, "unRegist service state listener for sim1."

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object v1, p0, Lcom/mediatek/smsreg/SmsRegService;->mTelephonyManager:Lcom/mediatek/telephony/TelephonyManagerEx;

    iget-object v2, p0, Lcom/mediatek/smsreg/SmsRegService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v2, v5, v5}, Lcom/mediatek/telephony/TelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    .line 642
    iput-object v4, p0, Lcom/mediatek/smsreg/SmsRegService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 645
    :cond_0
    iget-object v1, p0, Lcom/mediatek/smsreg/SmsRegService;->mPhoneStateListenerGemini:Landroid/telephony/PhoneStateListener;

    if-eqz v1, :cond_1

    .line 646
    const-string v1, "SmsReg/Service"

    const-string v2, "unRegist service state listener gemini for sim2."

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    iget-object v1, p0, Lcom/mediatek/smsreg/SmsRegService;->mTelephonyManager:Lcom/mediatek/telephony/TelephonyManagerEx;

    iget-object v2, p0, Lcom/mediatek/smsreg/SmsRegService;->mPhoneStateListenerGemini:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v5, v3}, Lcom/mediatek/telephony/TelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    .line 650
    iput-object v4, p0, Lcom/mediatek/smsreg/SmsRegService;->mPhoneStateListenerGemini:Landroid/telephony/PhoneStateListener;

    .line 662
    :cond_1
    iget-object v1, p0, Lcom/mediatek/smsreg/SmsRegService;->mSimStateReceiver:Lcom/mediatek/smsreg/SmsRegService$SimStateReceiver;

    if-eqz v1, :cond_2

    .line 663
    const-string v1, "SmsReg/Service"

    const-string v2, "unRegist sim state receiver."

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget-object v1, p0, Lcom/mediatek/smsreg/SmsRegService;->mSimStateReceiver:Lcom/mediatek/smsreg/SmsRegService$SimStateReceiver;

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 665
    iput-object v4, p0, Lcom/mediatek/smsreg/SmsRegService;->mSimStateReceiver:Lcom/mediatek/smsreg/SmsRegService$SimStateReceiver;

    .line 668
    :cond_2
    iget-object v1, p0, Lcom/mediatek/smsreg/SmsRegService;->mSmsReceivedReceiver:Lcom/mediatek/smsreg/SmsRegService$SmsReceivedReceiver;

    if-eqz v1, :cond_3

    .line 669
    const-string v1, "SmsReg/Service"

    const-string v2, "unRegist smsReceived receiver."

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget-object v1, p0, Lcom/mediatek/smsreg/SmsRegService;->mSmsReceivedReceiver:Lcom/mediatek/smsreg/SmsRegService$SmsReceivedReceiver;

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 671
    iput-object v4, p0, Lcom/mediatek/smsreg/SmsRegService;->mSmsReceivedReceiver:Lcom/mediatek/smsreg/SmsRegService$SmsReceivedReceiver;

    .line 673
    :cond_3
    iget-object v1, p0, Lcom/mediatek/smsreg/SmsRegService;->mSender:Landroid/app/PendingIntent;

    if-eqz v1, :cond_4

    .line 674
    const-string v1, "SmsReg/Service"

    const-string v2, "cancel retry alarm message."

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 676
    .local v0, alarm:Landroid/app/AlarmManager;
    iget-object v1, p0, Lcom/mediatek/smsreg/SmsRegService;->mSender:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 677
    iput-object v4, p0, Lcom/mediatek/smsreg/SmsRegService;->mSender:Landroid/app/PendingIntent;

    .line 679
    .end local v0           #alarm:Landroid/app/AlarmManager;
    :cond_4
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 680
    return-void
.end method
