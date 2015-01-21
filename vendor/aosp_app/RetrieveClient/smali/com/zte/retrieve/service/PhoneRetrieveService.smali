.class public Lcom/zte/retrieve/service/PhoneRetrieveService;
.super Landroid/app/Service;
.source "PhoneRetrieveService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/retrieve/service/PhoneRetrieveService$AllFormatCompleteReceiver;,
        Lcom/zte/retrieve/service/PhoneRetrieveService$ChangeCardSmsReceiver;,
        Lcom/zte/retrieve/service/PhoneRetrieveService$MapResultReceiver;,
        Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;,
        Lcom/zte/retrieve/service/PhoneRetrieveService$SimCardStateChangeReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field public static final CHANGE_CARD_SMS_INFORM_ACTION:Ljava/lang/String; = "CHANGE_CARD_SMS_INFORM_ACTION"

.field public static final INTENT_KEY_ICC_STATE:Ljava/lang/String; = "ss"

.field public static final INTENT_VALUE_ICC_LOADED:Ljava/lang/String; = "LOADED"

.field private static final SIM_CARD_TYPE1:I = 0x0

.field private static final SIM_CARD_TYPE2:I = 0x1

.field public static final SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"


# instance fields
.field private clientFlag:Z

.field private inComingNum:Ljava/lang/String;

.field private isErasing:Z

.field private isMapping:Z

.field private mChangeCardSmsReceiver:Lcom/zte/retrieve/service/PhoneRetrieveService$ChangeCardSmsReceiver;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/zte/retrieve/controller/Controller;

.field private mFormatReceiver:Lcom/zte/retrieve/service/PhoneRetrieveService$AllFormatCompleteReceiver;

.field private mMapReceiver:Lcom/zte/retrieve/service/PhoneRetrieveService$MapResultReceiver;

.field private mOperator:Lcom/zte/retrieve/service/instruct/InstructionOperator;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSMSReceiver:Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;

.field private mSimStateReceiver:Lcom/zte/retrieve/service/PhoneRetrieveService$SimCardStateChangeReceiver;

.field private mTelMgr:Landroid/telephony/TelephonyManager;

.field private mTelephoneInfo:Lcom/zte/retrieve/utils/PhoneInfo;

.field private simCardChangedHandler:Landroid/os/Handler;

.field private simCardID1:Ljava/lang/String;

.field private simCardID2:Ljava/lang/String;

.field simCardInfoOneSaved:Ljava/lang/String;

.field simCardInfoTwoSaved:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mOperator:Lcom/zte/retrieve/service/instruct/InstructionOperator;

    .line 43
    iput-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mTelephoneInfo:Lcom/zte/retrieve/utils/PhoneInfo;

    .line 44
    iput-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mController:Lcom/zte/retrieve/controller/Controller;

    .line 45
    iput-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mContext:Landroid/content/Context;

    .line 46
    iput-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->inComingNum:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 48
    iput-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 50
    iput-boolean v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->isErasing:Z

    .line 51
    iput-boolean v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->isMapping:Z

    .line 53
    iput-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mSimStateReceiver:Lcom/zte/retrieve/service/PhoneRetrieveService$SimCardStateChangeReceiver;

    .line 54
    iput-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mSMSReceiver:Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;

    .line 55
    iput-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mChangeCardSmsReceiver:Lcom/zte/retrieve/service/PhoneRetrieveService$ChangeCardSmsReceiver;

    .line 56
    iput-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mMapReceiver:Lcom/zte/retrieve/service/PhoneRetrieveService$MapResultReceiver;

    .line 57
    iput-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mFormatReceiver:Lcom/zte/retrieve/service/PhoneRetrieveService$AllFormatCompleteReceiver;

    .line 63
    iput-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->simCardID1:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->simCardID2:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->simCardInfoOneSaved:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->simCardInfoTwoSaved:Ljava/lang/String;

    .line 68
    iput-boolean v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->clientFlag:Z

    .line 79
    new-instance v0, Lcom/zte/retrieve/service/PhoneRetrieveService$1;

    invoke-direct {v0, p0}, Lcom/zte/retrieve/service/PhoneRetrieveService$1;-><init>(Lcom/zte/retrieve/service/PhoneRetrieveService;)V

    iput-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->simCardChangedHandler:Landroid/os/Handler;

    .line 40
    return-void
.end method

.method static synthetic access$0(Lcom/zte/retrieve/service/PhoneRetrieveService;)Lcom/zte/retrieve/service/instruct/InstructionOperator;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mOperator:Lcom/zte/retrieve/service/instruct/InstructionOperator;

    return-object v0
.end method

.method static synthetic access$1(Lcom/zte/retrieve/service/PhoneRetrieveService;)Lcom/zte/retrieve/controller/Controller;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mController:Lcom/zte/retrieve/controller/Controller;

    return-object v0
.end method

.method static synthetic access$10(Lcom/zte/retrieve/service/PhoneRetrieveService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->inComingNum:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$11(Lcom/zte/retrieve/service/PhoneRetrieveService;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->inComingNum:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12(Lcom/zte/retrieve/service/PhoneRetrieveService;)Z
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->isErasing:Z

    return v0
.end method

.method static synthetic access$13(Lcom/zte/retrieve/service/PhoneRetrieveService;)Z
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->isMapping:Z

    return v0
.end method

.method static synthetic access$14(Lcom/zte/retrieve/service/PhoneRetrieveService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->clientFlag:Z

    return-void
.end method

.method static synthetic access$15(Lcom/zte/retrieve/service/PhoneRetrieveService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->isErasing:Z

    return-void
.end method

.method static synthetic access$16(Lcom/zte/retrieve/service/PhoneRetrieveService;)V
    .locals 0
    .parameter

    .prologue
    .line 735
    invoke-direct {p0}, Lcom/zte/retrieve/service/PhoneRetrieveService;->regFormatReceiver()V

    return-void
.end method

.method static synthetic access$17(Lcom/zte/retrieve/service/PhoneRetrieveService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->isMapping:Z

    return-void
.end method

.method static synthetic access$18(Lcom/zte/retrieve/service/PhoneRetrieveService;)V
    .locals 0
    .parameter

    .prologue
    .line 746
    invoke-direct {p0}, Lcom/zte/retrieve/service/PhoneRetrieveService;->regMapReceiver()V

    return-void
.end method

.method static synthetic access$19(Lcom/zte/retrieve/service/PhoneRetrieveService;)V
    .locals 0
    .parameter

    .prologue
    .line 742
    invoke-direct {p0}, Lcom/zte/retrieve/service/PhoneRetrieveService;->unregFormatReceiver()V

    return-void
.end method

.method static synthetic access$2(Lcom/zte/retrieve/service/PhoneRetrieveService;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$20(Lcom/zte/retrieve/service/PhoneRetrieveService;)Z
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->clientFlag:Z

    return v0
.end method

.method static synthetic access$21(Lcom/zte/retrieve/service/PhoneRetrieveService;)V
    .locals 0
    .parameter

    .prologue
    .line 753
    invoke-direct {p0}, Lcom/zte/retrieve/service/PhoneRetrieveService;->unregMapReceiver()V

    return-void
.end method

.method static synthetic access$22(Lcom/zte/retrieve/service/PhoneRetrieveService;)Lcom/zte/retrieve/utils/PhoneInfo;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mTelephoneInfo:Lcom/zte/retrieve/utils/PhoneInfo;

    return-object v0
.end method

.method static synthetic access$23(Lcom/zte/retrieve/service/PhoneRetrieveService;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/zte/retrieve/service/PhoneRetrieveService;->cancelSimcardListen()V

    return-void
.end method

.method static synthetic access$24(Lcom/zte/retrieve/service/PhoneRetrieveService;)V
    .locals 0
    .parameter

    .prologue
    .line 371
    invoke-direct {p0}, Lcom/zte/retrieve/service/PhoneRetrieveService;->updateSimcardInfo()V

    return-void
.end method

.method static synthetic access$3(Lcom/zte/retrieve/service/PhoneRetrieveService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->simCardID1:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lcom/zte/retrieve/service/PhoneRetrieveService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->simCardID2:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/zte/retrieve/service/PhoneRetrieveService;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 261
    invoke-direct {p0, p1, p2}, Lcom/zte/retrieve/service/PhoneRetrieveService;->isSimCardChanged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6(Lcom/zte/retrieve/service/PhoneRetrieveService;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->simCardChangedHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7(Lcom/zte/retrieve/service/PhoneRetrieveService;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mTelMgr:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$8(Lcom/zte/retrieve/service/PhoneRetrieveService;)Landroid/telephony/PhoneStateListener;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-object v0
.end method

.method static synthetic access$9(Lcom/zte/retrieve/service/PhoneRetrieveService;)V
    .locals 0
    .parameter

    .prologue
    .line 352
    invoke-direct {p0}, Lcom/zte/retrieve/service/PhoneRetrieveService;->sendSmsInformSecurityNum()V

    return-void
.end method

.method private cancelSimcardListen()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 126
    iget-object v2, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v2}, Lcom/zte/retrieve/controller/Controller;->isMTKPlatform()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    const-string v2, "mtk card two service cancle listening"

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 129
    :try_start_0
    iget-object v2, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "listenGemini"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/telephony/PhoneStateListener;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 130
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    .line 129
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 131
    .local v1, methodofMTKListenGemini:Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mTelMgr:Landroid/telephony/TelephonyManager;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 132
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 131
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v2, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mTelMgr:Landroid/telephony/TelephonyManager;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 134
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 133
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v1           #methodofMTKListenGemini:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 139
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const-string v2, "card one service cancle listening"

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 140
    iget-object v2, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mTelMgr:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method

.method private isSimCardChanged(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "simInfoConfigOne"
    .parameter "simInfoConfigTwo"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isDualsimCardChanged, imsiSaved1 is:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", imsiSaved2 is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 264
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 265
    const-string v1, "changeSimCardInform get imsi saved error"

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 281
    :goto_0
    return v0

    .line 269
    :cond_0
    iget-object v2, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->simCardID1:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->simCardID1:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->simCardID1:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 270
    sput v0, Lcom/zte/retrieve/utils/RetrieveConstant;->defaultSimCardType:I

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "dual card one is changed, defaultSimImsi is:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->simCardID1:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    move v0, v1

    .line 272
    goto :goto_0

    .line 273
    :cond_1
    iget-object v2, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->simCardID2:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->simCardID2:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 274
    iget-object v2, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->simCardID2:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 276
    sput v1, Lcom/zte/retrieve/utils/RetrieveConstant;->defaultSimCardType:I

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "dual card two is changed,defaultSimImsi is:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->simCardID2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    move v0, v1

    .line 278
    goto :goto_0

    .line 280
    :cond_2
    const-string v1, "dual sim card is not changed"

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private regChangeCardSmsReceiver()V
    .locals 3

    .prologue
    .line 181
    iget-object v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mChangeCardSmsReceiver:Lcom/zte/retrieve/service/PhoneRetrieveService$ChangeCardSmsReceiver;

    if-nez v1, :cond_0

    .line 182
    const-string v1, "start regist mChangeCardSmsReceiver"

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 183
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 184
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "CHANGE_CARD_SMS_INFORM_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    new-instance v1, Lcom/zte/retrieve/service/PhoneRetrieveService$ChangeCardSmsReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/zte/retrieve/service/PhoneRetrieveService$ChangeCardSmsReceiver;-><init>(Lcom/zte/retrieve/service/PhoneRetrieveService;Lcom/zte/retrieve/service/PhoneRetrieveService$ChangeCardSmsReceiver;)V

    iput-object v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mChangeCardSmsReceiver:Lcom/zte/retrieve/service/PhoneRetrieveService$ChangeCardSmsReceiver;

    .line 186
    iget-object v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mChangeCardSmsReceiver:Lcom/zte/retrieve/service/PhoneRetrieveService$ChangeCardSmsReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/zte/retrieve/service/PhoneRetrieveService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 188
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private regFormatReceiver()V
    .locals 3

    .prologue
    .line 736
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 737
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.zte.retrieve.ALL_FORMAT_COMPLETE_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 738
    new-instance v1, Lcom/zte/retrieve/service/PhoneRetrieveService$AllFormatCompleteReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/zte/retrieve/service/PhoneRetrieveService$AllFormatCompleteReceiver;-><init>(Lcom/zte/retrieve/service/PhoneRetrieveService;Lcom/zte/retrieve/service/PhoneRetrieveService$AllFormatCompleteReceiver;)V

    iput-object v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mFormatReceiver:Lcom/zte/retrieve/service/PhoneRetrieveService$AllFormatCompleteReceiver;

    .line 739
    iget-object v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mFormatReceiver:Lcom/zte/retrieve/service/PhoneRetrieveService$AllFormatCompleteReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 740
    return-void
.end method

.method private regMapReceiver()V
    .locals 3

    .prologue
    .line 747
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 748
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.zte.retrieve.MAP_RESULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 749
    new-instance v1, Lcom/zte/retrieve/service/PhoneRetrieveService$MapResultReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/zte/retrieve/service/PhoneRetrieveService$MapResultReceiver;-><init>(Lcom/zte/retrieve/service/PhoneRetrieveService;Lcom/zte/retrieve/service/PhoneRetrieveService$MapResultReceiver;)V

    iput-object v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mMapReceiver:Lcom/zte/retrieve/service/PhoneRetrieveService$MapResultReceiver;

    .line 750
    iget-object v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mMapReceiver:Lcom/zte/retrieve/service/PhoneRetrieveService$MapResultReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 751
    return-void
.end method

.method private regSimStateReceiver()V
    .locals 3

    .prologue
    .line 145
    iget-object v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mSimStateReceiver:Lcom/zte/retrieve/service/PhoneRetrieveService$SimCardStateChangeReceiver;

    if-nez v1, :cond_0

    .line 146
    const-string v1, "regSimStateReceiver enter"

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->d(Ljava/lang/String;)V

    .line 147
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 148
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 150
    new-instance v1, Lcom/zte/retrieve/service/PhoneRetrieveService$SimCardStateChangeReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/zte/retrieve/service/PhoneRetrieveService$SimCardStateChangeReceiver;-><init>(Lcom/zte/retrieve/service/PhoneRetrieveService;Lcom/zte/retrieve/service/PhoneRetrieveService$SimCardStateChangeReceiver;)V

    iput-object v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mSimStateReceiver:Lcom/zte/retrieve/service/PhoneRetrieveService$SimCardStateChangeReceiver;

    .line 151
    iget-object v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mSimStateReceiver:Lcom/zte/retrieve/service/PhoneRetrieveService$SimCardStateChangeReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/zte/retrieve/service/PhoneRetrieveService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 153
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private regSmsReceiver()V
    .locals 3

    .prologue
    .line 163
    iget-object v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mSMSReceiver:Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;

    if-nez v1, :cond_0

    .line 164
    const-string v1, "monitor sms"

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->d(Ljava/lang/String;)V

    .line 165
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 166
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 168
    new-instance v1, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;-><init>(Lcom/zte/retrieve/service/PhoneRetrieveService;Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;)V

    iput-object v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mSMSReceiver:Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;

    .line 169
    iget-object v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mSMSReceiver:Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/zte/retrieve/service/PhoneRetrieveService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 171
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private resumeInstr()V
    .locals 4

    .prologue
    .line 235
    :try_start_0
    iget-object v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v1}, Lcom/zte/retrieve/controller/Controller;->isLockStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    const-string v1, "is lock status!"

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 237
    iget-object v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mOperator:Lcom/zte/retrieve/service/instruct/InstructionOperator;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->lock(Z)I

    .line 241
    :cond_0
    iget-object v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v1}, Lcom/zte/retrieve/controller/Controller;->isAlarmStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 242
    const-string v1, "is alarm status!"

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 243
    iget-object v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mOperator:Lcom/zte/retrieve/service/instruct/InstructionOperator;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->alarm(Z)I

    .line 244
    iget-object v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mOperator:Lcom/zte/retrieve/service/instruct/InstructionOperator;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->lock(Z)I

    .line 248
    :cond_1
    iget-object v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v1}, Lcom/zte/retrieve/controller/Controller;->isSMSForwardingStatus()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 249
    iget-object v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mOperator:Lcom/zte/retrieve/service/instruct/InstructionOperator;

    iget-object v2, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v2}, Lcom/zte/retrieve/controller/Controller;->getSMSForwardingNum()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->setSmsForwarding(Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :cond_2
    :goto_0
    return-void

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized sendSmsInformSecurityNum()V
    .locals 8

    .prologue
    .line 354
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x7f060024

    invoke-virtual {p0, v1}, Lcom/zte/retrieve/service/PhoneRetrieveService;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 355
    iget-object v7, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v7}, Lcom/zte/retrieve/controller/Controller;->getHostName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 356
    const v1, 0x7f060023

    invoke-virtual {p0, v1}, Lcom/zte/retrieve/service/PhoneRetrieveService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 354
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 359
    .local v2, SmsContent:Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    const-string v0, "CHANGE_CARD_SMS_INFORM_ACTION"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 360
    .local v6, sentIntent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v6, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 361
    .local v3, sendPI:Landroid/app/PendingIntent;
    const-string v0, "changeSimCardInform send card sms"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v0}, Lcom/zte/retrieve/controller/Controller;->getSiminfo()Lcom/zte/retrieve/service/siminfo/ISiminfoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v1}, Lcom/zte/retrieve/controller/Controller;->getSecurityNum()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    .line 363
    sget v5, Lcom/zte/retrieve/utils/RetrieveConstant;->defaultSimCardType:I

    .line 362
    invoke-virtual/range {v0 .. v5}, Lcom/zte/retrieve/service/siminfo/ISiminfoManager;->sendSmsBackend(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    monitor-exit p0

    return-void

    .line 354
    .end local v2           #SmsContent:Ljava/lang/String;
    .end local v3           #sendPI:Landroid/app/PendingIntent;
    .end local v6           #sentIntent:Landroid/content/Intent;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private unregChangeCardSmsReceiver()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mChangeCardSmsReceiver:Lcom/zte/retrieve/service/PhoneRetrieveService$ChangeCardSmsReceiver;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mChangeCardSmsReceiver:Lcom/zte/retrieve/service/PhoneRetrieveService$ChangeCardSmsReceiver;

    invoke-virtual {p0, v0}, Lcom/zte/retrieve/service/PhoneRetrieveService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mChangeCardSmsReceiver:Lcom/zte/retrieve/service/PhoneRetrieveService$ChangeCardSmsReceiver;

    .line 195
    :cond_0
    return-void
.end method

.method private unregFormatReceiver()V
    .locals 2

    .prologue
    .line 743
    iget-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mFormatReceiver:Lcom/zte/retrieve/service/PhoneRetrieveService$AllFormatCompleteReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 744
    return-void
.end method

.method private unregMapReceiver()V
    .locals 2

    .prologue
    .line 754
    iget-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mMapReceiver:Lcom/zte/retrieve/service/PhoneRetrieveService$MapResultReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 755
    return-void
.end method

.method private unregSimStateReceiver()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mSimStateReceiver:Lcom/zte/retrieve/service/PhoneRetrieveService$SimCardStateChangeReceiver;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mSimStateReceiver:Lcom/zte/retrieve/service/PhoneRetrieveService$SimCardStateChangeReceiver;

    invoke-virtual {p0, v0}, Lcom/zte/retrieve/service/PhoneRetrieveService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mSimStateReceiver:Lcom/zte/retrieve/service/PhoneRetrieveService$SimCardStateChangeReceiver;

    .line 160
    :cond_0
    return-void
.end method

.method private unregSmsReceiver()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mSMSReceiver:Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mSMSReceiver:Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;

    invoke-virtual {p0, v0}, Lcom/zte/retrieve/service/PhoneRetrieveService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mSMSReceiver:Lcom/zte/retrieve/service/PhoneRetrieveService$ServiceReceiver;

    .line 178
    :cond_0
    return-void
.end method

.method private updateSimcardInfo()V
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mController:Lcom/zte/retrieve/controller/Controller;

    iget-object v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/controller/Controller;->setICCIDConfigFile(Landroid/content/Context;)V

    .line 373
    iget-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v0}, Lcom/zte/retrieve/controller/Controller;->getICCID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->simCardInfoOneSaved:Ljava/lang/String;

    .line 374
    iget-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v0}, Lcom/zte/retrieve/controller/Controller;->getICCIDDouble()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->simCardInfoTwoSaved:Ljava/lang/String;

    .line 375
    const-string v0, "changeSimCardInform set the new iccid to config file"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 376
    return-void
.end method


# virtual methods
.method public isIMEICorrect(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "imei"

    .prologue
    .line 728
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "imei="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";local imei="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v1, p1}, Lcom/zte/retrieve/controller/Controller;->getMD5Imei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V

    .line 729
    iget-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v0, p1}, Lcom/zte/retrieve/controller/Controller;->getMD5Imei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 730
    const/4 v0, 0x1

    .line 732
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 809
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 90
    const-string v0, "PhoneRetrieveService onCreate"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->d(Ljava/lang/String;)V

    .line 91
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 92
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/zte/retrieve/service/PhoneRetrieveService;->startForeground(ILandroid/app/Notification;)V

    .line 93
    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mController:Lcom/zte/retrieve/controller/Controller;

    .line 94
    iput-object p0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mContext:Landroid/content/Context;

    .line 95
    new-instance v0, Lcom/zte/retrieve/service/instruct/InstructionOperator;

    invoke-direct {v0, p0}, Lcom/zte/retrieve/service/instruct/InstructionOperator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mOperator:Lcom/zte/retrieve/service/instruct/InstructionOperator;

    .line 96
    new-instance v0, Lcom/zte/retrieve/utils/PhoneInfo;

    invoke-direct {v0, p0}, Lcom/zte/retrieve/utils/PhoneInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mTelephoneInfo:Lcom/zte/retrieve/utils/PhoneInfo;

    .line 97
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/zte/retrieve/service/PhoneRetrieveService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 98
    new-instance v0, Lcom/zte/retrieve/service/PhoneRetrieveService$2;

    invoke-direct {v0, p0}, Lcom/zte/retrieve/service/PhoneRetrieveService$2;-><init>(Lcom/zte/retrieve/service/PhoneRetrieveService;)V

    iput-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 118
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 225
    const-string v0, "onDestroy"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->d(Ljava/lang/String;)V

    .line 226
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 227
    invoke-direct {p0}, Lcom/zte/retrieve/service/PhoneRetrieveService;->unregSmsReceiver()V

    .line 228
    invoke-direct {p0}, Lcom/zte/retrieve/service/PhoneRetrieveService;->unregSimStateReceiver()V

    .line 229
    invoke-direct {p0}, Lcom/zte/retrieve/service/PhoneRetrieveService;->unregChangeCardSmsReceiver()V

    .line 230
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v0}, Lcom/zte/retrieve/controller/Controller;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mController:Lcom/zte/retrieve/controller/Controller;

    iget-object v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/controller/Controller;->isImsiExist(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    :cond_0
    const-string v0, "service start register"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 208
    invoke-direct {p0}, Lcom/zte/retrieve/service/PhoneRetrieveService;->resumeInstr()V

    .line 209
    invoke-direct {p0}, Lcom/zte/retrieve/service/PhoneRetrieveService;->regSimStateReceiver()V

    .line 210
    invoke-direct {p0}, Lcom/zte/retrieve/service/PhoneRetrieveService;->regSmsReceiver()V

    .line 211
    invoke-direct {p0}, Lcom/zte/retrieve/service/PhoneRetrieveService;->regChangeCardSmsReceiver()V

    .line 220
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
