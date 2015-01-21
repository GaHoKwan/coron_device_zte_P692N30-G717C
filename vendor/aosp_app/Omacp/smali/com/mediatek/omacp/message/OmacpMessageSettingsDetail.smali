.class public Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;
.super Landroid/app/Activity;
.source "OmacpMessageSettingsDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;
    }
.end annotation


# static fields
.field private static final APN_SWITCH_TIME_OUT_LENGTH:I = 0x7530

.field private static final APP_ID_KEY:Ljava/lang/String; = "appId"

.field private static final APP_SETTING_ACTION:Ljava/lang/String; = "com.mediatek.omacp.settings"

.field private static final APP_SETTING_RESULT_ACTION:Ljava/lang/String; = "com.mediatek.omacp.settings.result"

.field private static final BODY:I = 0x6

.field private static final CONTEXT:I = 0x7

.field private static final DEBUG:Z = true

.field private static final DIALOG_INSTALLING:I = 0x1f40

.field private static final DIALOG_RE_INSTALL_NOTIFY:I = 0x1f41

.field private static final DIALOG_UNLOCK_PIN:I = 0x1f42

.field private static final DIALOG_UNLOCK_PIN_2:I = 0x1f43

.field private static final EVENT_APN_INSTALL_TIME_OUT:I = 0x7d1

.field private static final EVENT_APN_SWITCH_TIME_OUT:I = 0x7d2

.field private static final EVENT_APPLICATION_INSTALL_TIME_OUT:I = 0x7d0

.field private static final HMAC_SHA1_ALGORITHM:Ljava/lang/String; = "HmacSHA1"

.field private static final ID:I = 0x0

.field private static final INSTALLATION_PROJECTION:[Ljava/lang/String; = null

.field private static final INSTALLED:I = 0x2

.field private static final INSTALL_TIME_OUT_LENGTH:I = 0x222e0

.field private static final MAC:I = 0x5

.field private static final MIME_TYPE:I = 0x8

.field private static final NETWPIN:I = 0x1

.field private static final PIN_LOCK:I = 0x3

.field private static final RESULT_CONSTANT_FAILED:I = -0x1

.field private static final RESULT_CONSTANT_NOT_RETURNED:I = 0x0

.field private static final RESULT_CONSTANT_SUCCEED:I = 0x1

.field private static final SEC:I = 0x4

.field private static final SIM_ID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Omacp/OmacpMessageSettingsDetail"

.field private static final USERNETWPIN:I = 0x2

.field private static final USERPIN:I = 0x0

.field private static final USERPINMAC:I = 0x3

.field private static sBody:[B

.field private static sContextIdentifier:Ljava/lang/String;

.field private static sInstalled:Z

.field private static sIsFullInstallation:Z

.field private static sMac:Ljava/lang/String;

.field private static sMessageId:J

.field private static sMimeType:Ljava/lang/String;

.field private static sPinUnlock:Z

.field private static sSec:I

.field private static sSimId:I

.field private static sTeleManager:Landroid/telephony/TelephonyManager;


# instance fields
.field private mApList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/omacp/parser/ApplicationClass;",
            ">;"
        }
    .end annotation
.end field

.field private mApSettingsListName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mApSettingsListNameChecked:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mApnResultObj:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;

.field private mApplicationResultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomDialog:Landroid/app/AlertDialog;

.field private mCustomInstallBtn:Landroid/widget/Button;

.field private mDetailText:Landroid/widget/TextView;

.field private mFullInstallBtn:Landroid/widget/Button;

.field private mIsNetworkStateReceiverRegistered:Z

.field private mMarkAsBlockedSyncer:Ljava/lang/Object;

.field private mMarkAsReadBlocked:Z

.field private mNapList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/omacp/parser/NapdefClass;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPxList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/omacp/parser/ProxyClass;",
            ">;"
        }
    .end annotation
.end field

.field private mReInstall:Z

.field private mResultReceiver:Landroid/content/BroadcastReceiver;

.field private mStickyIntent:Landroid/content/Intent;

.field private mTimerHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 113
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "sim_id"

    aput-object v1, v0, v5

    const/4 v1, 0x2

    const-string v2, "installed"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "pin_unlock"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "sec"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "mac"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "context"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->INSTALLATION_PROJECTION:[Ljava/lang/String;

    .line 177
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sMessageId:J

    .line 179
    sput v4, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sSimId:I

    .line 181
    sput-boolean v3, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sInstalled:Z

    .line 185
    sput-boolean v3, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sPinUnlock:Z

    .line 187
    sput v4, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sSec:I

    .line 197
    sput-boolean v5, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sIsFullInstallation:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 138
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mMarkAsBlockedSyncer:Ljava/lang/Object;

    .line 183
    iput-boolean v2, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mReInstall:Z

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApSettingsListNameChecked:Ljava/util/ArrayList;

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApplicationResultList:Ljava/util/ArrayList;

    .line 207
    iput-object v1, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApList:Ljava/util/ArrayList;

    .line 209
    iput-object v1, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mNapList:Ljava/util/ArrayList;

    .line 211
    iput-object v1, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mPxList:Ljava/util/ArrayList;

    .line 1440
    new-instance v0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$12;

    invoke-direct {v0, p0}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$12;-><init>(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)V

    iput-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mResultReceiver:Landroid/content/BroadcastReceiver;

    .line 1531
    iput-object v1, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mStickyIntent:Landroid/content/Intent;

    .line 1532
    iput-boolean v2, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mIsNetworkStateReceiverRegistered:Z

    .line 1535
    new-instance v0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$13;

    invoke-direct {v0, p0}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$13;-><init>(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)V

    iput-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1662
    new-instance v0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$17;

    invoke-direct {v0, p0}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$17;-><init>(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)V

    iput-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mTimerHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mReInstall:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->handleInstall()V

    return-void
.end method

.method static synthetic access$1002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    sput-boolean p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sIsFullInstallation:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApnResultObj:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sendApplicationsByApnResult(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mTimerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApplicationResultList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;ILjava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sendApplicationsByAppResult(ILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mStickyIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mStickyIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sendIntentsToApplications()V

    return-void
.end method

.method static synthetic access$1800(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mIsNetworkStateReceiverRegistered:Z

    return p1
.end method

.method static synthetic access$200(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;[B)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->isPinCorrect([B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->handleFinishInstall()V

    return-void
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    sput-boolean p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sPinUnlock:Z

    return p0
.end method

.method static synthetic access$400(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->markMessageAsPinUnlock()V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mMarkAsBlockedSyncer:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mMarkAsReadBlocked:Z

    return v0
.end method

.method static synthetic access$700()J
    .locals 2

    .prologue
    .line 99
    sget-wide v0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sMessageId:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApSettingsListNameChecked:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mCustomDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private addApplicationParams(Landroid/content/Intent;Lcom/mediatek/omacp/parser/ApplicationClass;)V
    .locals 16
    .parameter "intent"
    .parameter "application"

    .prologue
    .line 1249
    const-string v13, "APPID"

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1250
    const-string v13, "PROVIDER-ID"

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/mediatek/omacp/parser/ApplicationClass;->mProviderId:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1251
    const-string v13, "NAME"

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/mediatek/omacp/parser/ApplicationClass;->mName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1252
    const-string v13, "AACCEPT"

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/mediatek/omacp/parser/ApplicationClass;->mAaccept:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1253
    const-string v13, "APROTOCOL"

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/mediatek/omacp/parser/ApplicationClass;->mAprotocol:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1254
    const-string v13, "TO-PROXY"

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/mediatek/omacp/parser/ApplicationClass;->mToProxy:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1255
    const-string v13, "TO-NAPID"

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/mediatek/omacp/parser/ApplicationClass;->mToNapid:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1256
    const-string v13, "ADDR"

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/mediatek/omacp/parser/ApplicationClass;->mAddr:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1258
    const-string v13, "CM"

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/mediatek/omacp/parser/ApplicationClass;->mCm:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1259
    const-string v13, "RM"

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/mediatek/omacp/parser/ApplicationClass;->mRm:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1260
    const-string v13, "MS"

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/mediatek/omacp/parser/ApplicationClass;->mMs:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1261
    const-string v13, "PC-ADDR"

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/mediatek/omacp/parser/ApplicationClass;->mPcAddr:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1262
    const-string v13, "Ma"

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/mediatek/omacp/parser/ApplicationClass;->mMa:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1263
    const-string v13, "INIT"

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/mediatek/omacp/parser/ApplicationClass;->mInit:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1264
    const-string v13, "FROM"

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/mediatek/omacp/parser/ApplicationClass;->mFrom:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1265
    const-string v13, "RT-ADDR"

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/mediatek/omacp/parser/ApplicationClass;->mRtAddr:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1266
    const-string v13, "MAX-BANDWIDTH"

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/mediatek/omacp/parser/ApplicationClass;->mMaxBandwidth:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1267
    const-string v13, "NETINFO"

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/mediatek/omacp/parser/ApplicationClass;->mNetinfo:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1268
    const-string v13, "MIN-UDP-PORT"

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/mediatek/omacp/parser/ApplicationClass;->mMinUdpPort:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1269
    const-string v13, "MAX-UDP-PORT"

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/mediatek/omacp/parser/ApplicationClass;->mMaxUdpPort:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1270
    const-string v13, "SERVICES"

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/mediatek/omacp/parser/ApplicationClass;->mServices:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1271
    const-string v13, "CIDPREFIX"

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/mediatek/omacp/parser/ApplicationClass;->mCidprefix:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1274
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppaddr:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1275
    .local v3, appAddrSize:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1276
    .local v2, appAddrMapList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppaddr:Ljava/util/ArrayList;

    .line 1277
    .local v1, appAddrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;>;"
    const/4 v7, 0x0

    .local v7, j:I
    :goto_0
    if-ge v7, v3, :cond_3

    .line 1278
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;

    iget-object v13, v13, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;->mPort:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_1

    .line 1279
    const/4 v9, 0x0

    .local v9, n:I
    :goto_1
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;

    iget-object v13, v13, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;->mPort:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v9, v13, :cond_2

    .line 1280
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1281
    .local v8, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v14, "ADDR"

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;

    iget-object v13, v13, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;->mAddr:Ljava/lang/String;

    invoke-virtual {v8, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1282
    const-string v14, "ADDRTYPE"

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;

    iget-object v13, v13, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;->mAddrtype:Ljava/lang/String;

    invoke-virtual {v8, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1283
    const-string v14, "PORTNBR"

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;

    iget-object v13, v13, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;->mPort:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mediatek/omacp/parser/ApplicationClass$Port;

    iget-object v13, v13, Lcom/mediatek/omacp/parser/ApplicationClass$Port;->mPortnbr:Ljava/lang/String;

    invoke-virtual {v8, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1284
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;

    iget-object v13, v13, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;->mPort:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mediatek/omacp/parser/ApplicationClass$Port;

    iget-object v13, v13, Lcom/mediatek/omacp/parser/ApplicationClass$Port;->mService:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_0

    .line 1285
    const-string v14, "SERVICE"

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;

    iget-object v13, v13, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;->mPort:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mediatek/omacp/parser/ApplicationClass$Port;

    iget-object v13, v13, Lcom/mediatek/omacp/parser/ApplicationClass$Port;->mService:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v8, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1288
    :cond_0
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1279
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1291
    .end local v8           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9           #n:I
    :cond_1
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1292
    .restart local v8       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v14, "ADDR"

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;

    iget-object v13, v13, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;->mAddr:Ljava/lang/String;

    invoke-virtual {v8, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1293
    const-string v14, "ADDRTYPE"

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;

    iget-object v13, v13, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;->mAddrtype:Ljava/lang/String;

    invoke-virtual {v8, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1294
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1277
    .end local v8           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 1298
    :cond_3
    const-string v13, "APPADDR"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1301
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppauth:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1302
    .local v6, appAuthSize:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1303
    .local v5, appAuthMapList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppauth:Ljava/util/ArrayList;

    .line 1304
    .local v4, appAuthList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;>;"
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_4

    .line 1305
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1306
    .restart local v8       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v14, "AAUTHLEVEL"

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;

    iget-object v13, v13, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;->mAauthlevel:Ljava/lang/String;

    invoke-virtual {v8, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1307
    const-string v14, "AAUTHTYPE"

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;

    iget-object v13, v13, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;->mAauthtype:Ljava/lang/String;

    invoke-virtual {v8, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1308
    const-string v14, "AAUTHNAME"

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;

    iget-object v13, v13, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;->mAauthname:Ljava/lang/String;

    invoke-virtual {v8, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1309
    const-string v14, "AAUTHSECRET"

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;

    iget-object v13, v13, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;->mAauthsecret:Ljava/lang/String;

    invoke-virtual {v8, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1310
    const-string v14, "AAUTHDATA"

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;

    iget-object v13, v13, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;->mAauthdata:Ljava/lang/String;

    invoke-virtual {v8, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1312
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1304
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1314
    .end local v8           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    const-string v13, "APPAUTH"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1317
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/mediatek/omacp/parser/ApplicationClass;->mResource:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 1318
    .local v12, resourceSize:I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1319
    .local v11, resourceMapList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/mediatek/omacp/parser/ApplicationClass;->mResource:Ljava/util/ArrayList;

    .line 1320
    .local v10, resourceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/omacp/parser/ApplicationClass$Resource;>;"
    const/4 v7, 0x0

    :goto_3
    if-ge v7, v12, :cond_5

    .line 1321
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1322
    .restart local v8       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v14, "URI"

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;

    iget-object v13, v13, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;->mUri:Ljava/lang/String;

    invoke-virtual {v8, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1323
    const-string v14, "NAME"

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;

    iget-object v13, v13, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;->mName:Ljava/lang/String;

    invoke-virtual {v8, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1324
    const-string v14, "AACCEPT"

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;

    iget-object v13, v13, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;->mAaccept:Ljava/lang/String;

    invoke-virtual {v8, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1325
    const-string v14, "AAUTHTYPE"

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;

    iget-object v13, v13, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;->mAauthtype:Ljava/lang/String;

    invoke-virtual {v8, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1326
    const-string v14, "AAUTHNAME"

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;

    iget-object v13, v13, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;->mAauthname:Ljava/lang/String;

    invoke-virtual {v8, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1327
    const-string v14, "AAUTHSECRET"

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;

    iget-object v13, v13, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;->mAauthsecret:Ljava/lang/String;

    invoke-virtual {v8, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1328
    const-string v14, "AAUTHDATA"

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;

    iget-object v13, v13, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;->mAauthdata:Ljava/lang/String;

    invoke-virtual {v8, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1329
    const-string v14, "STARTPAGE"

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;

    iget-object v13, v13, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;->mStartpage:Ljava/lang/String;

    invoke-virtual {v8, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1331
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1320
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1333
    .end local v8           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    const-string v13, "RESOURCE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1334
    return-void
.end method

.method private addEmailToResultList(Landroid/content/Intent;Lcom/mediatek/omacp/parser/ApplicationClass;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "intent"
    .parameter "application"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lcom/mediatek/omacp/parser/ApplicationClass;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1338
    .local p3, emailIntentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Intent;>;"
    iget-object v1, p2, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    const-string v2, "25"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p2, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    const-string v2, "110"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p2, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    const-string v2, "143"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1341
    :cond_0
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1355
    :goto_0
    return-void

    .line 1343
    :cond_1
    new-instance v0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;

    iget-object v1, p2, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;-><init>(Ljava/lang/String;I)V

    .line 1344
    .local v0, result:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;
    iget-object v1, p2, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    invoke-static {v1}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->checkIfApplicationSupport(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1346
    const-string v1, "Omacp/OmacpMessageSettingsDetail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OmacpMessageSettingsDetail sendBroadcast intent is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/omacp/utils/MTKlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    invoke-virtual {p0, p1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 1353
    :goto_1
    iget-object v1, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApplicationResultList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1351
    :cond_2
    const/4 v1, -0x1

    iput v1, v0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;->mResult:I

    goto :goto_1
.end method

.method private addMmsParams(Landroid/content/Intent;Lcom/mediatek/omacp/parser/ProxyClass;)V
    .locals 6
    .parameter "intent"
    .parameter "proxyClass"

    .prologue
    const/4 v5, 0x0

    .line 1151
    const/4 v1, 0x0

    .local v1, d:I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 1152
    iget-object v2, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/omacp/parser/ApplicationClass;

    iget-object v2, v2, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    const-string v3, "w4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/omacp/parser/ApplicationClass;

    iget-object v2, v2, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    const-string v3, "ap0005"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1154
    :cond_0
    iget-object v2, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/omacp/parser/ApplicationClass;

    iget-object v0, v2, Lcom/mediatek/omacp/parser/ApplicationClass;->mAddr:Ljava/util/ArrayList;

    .line 1155
    .local v0, addr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1156
    const-string v3, "MMSC"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1157
    const-string v3, "Omacp/OmacpMessageSettingsDetail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apn MMSC is : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mediatek/omacp/utils/MTKlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    iget-object v2, p2, Lcom/mediatek/omacp/parser/ProxyClass;->mPxphysical:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p2, Lcom/mediatek/omacp/parser/ProxyClass;->mPxphysical:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1165
    const-string v3, "MMS-PROXY"

    iget-object v2, p2, Lcom/mediatek/omacp/parser/ProxyClass;->mPxphysical:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;

    iget-object v2, v2, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;->mPxaddr:Ljava/lang/String;

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1166
    const-string v3, "Omacp/OmacpMessageSettingsDetail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apn MMS PROXY is : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p2, Lcom/mediatek/omacp/parser/ProxyClass;->mPxphysical:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;

    iget-object v2, v2, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;->mPxaddr:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mediatek/omacp/utils/MTKlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    iget-object v2, p2, Lcom/mediatek/omacp/parser/ProxyClass;->mPxphysical:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;

    iget-object v2, v2, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;->mPort:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1168
    const-string v3, "MMS-PORT"

    iget-object v2, p2, Lcom/mediatek/omacp/parser/ProxyClass;->mPxphysical:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;

    iget-object v2, v2, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;->mPort:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/omacp/parser/ApplicationClass$Port;

    iget-object v2, v2, Lcom/mediatek/omacp/parser/ApplicationClass$Port;->mPortnbr:Ljava/lang/String;

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1170
    const-string v3, "Omacp/OmacpMessageSettingsDetail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apn MMS PORT is : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p2, Lcom/mediatek/omacp/parser/ProxyClass;->mPxphysical:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;

    iget-object v2, v2, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;->mPort:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/omacp/parser/ApplicationClass$Port;

    iget-object v2, v2, Lcom/mediatek/omacp/parser/ApplicationClass$Port;->mPortnbr:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mediatek/omacp/utils/MTKlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    .end local v0           #addr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1158
    .restart local v0       #addr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    iget-object v2, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/omacp/parser/ApplicationClass;

    iget-object v2, v2, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppaddr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/omacp/parser/ApplicationClass;

    iget-object v2, v2, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppaddr:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;

    iget-object v2, v2, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;->mAddr:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1160
    const-string v3, "MMSC"

    iget-object v2, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/omacp/parser/ApplicationClass;

    iget-object v2, v2, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppaddr:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;

    iget-object v2, v2, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;->mAddr:Ljava/lang/String;

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1161
    const-string v3, "Omacp/OmacpMessageSettingsDetail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apn MMSC is : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/omacp/parser/ApplicationClass;

    iget-object v2, v2, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppaddr:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;

    iget-object v2, v2, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;->mAddr:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mediatek/omacp/utils/MTKlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1176
    .end local v0           #addr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    return-void
.end method

.method private addValidApplication(Lcom/mediatek/omacp/parser/ApplicationClass;Ljava/util/ArrayList;)Z
    .locals 8
    .parameter "application"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mediatek/omacp/parser/ApplicationClass;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, emailIntentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Intent;>;"
    const/4 v6, 0x1

    .line 1204
    iget-object v5, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    .line 1205
    const-string v5, "Omacp/OmacpMessageSettingsDetail"

    const-string v7, "OmacpMessageSettingsDetail sendIntentsToApplications invalid application settings."

    invoke-static {v5, v7}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 1245
    :goto_0
    return v5

    .line 1209
    :cond_0
    const/4 v3, 0x0

    .line 1210
    .local v3, isInclueded:Z
    const/4 v0, 0x0

    .local v0, b:I
    :goto_1
    iget-object v5, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApplicationResultList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 1211
    iget-object v5, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApplicationResultList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;

    iget-object v5, v5, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;->mAppId:Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    invoke-static {p0, v7}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1213
    const/4 v3, 0x1

    .line 1221
    :cond_1
    if-nez v3, :cond_3

    iget-object v5, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    const-string v7, "w4"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mCm:Ljava/lang/String;

    if-eqz v5, :cond_3

    :cond_2
    iget-object v5, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    const-string v7, "ap0005"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mCm:Ljava/lang/String;

    if-nez v5, :cond_5

    iget-object v5, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mRm:Ljava/lang/String;

    if-nez v5, :cond_5

    iget-object v5, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mMs:Ljava/lang/String;

    if-nez v5, :cond_5

    iget-object v5, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mPcAddr:Ljava/lang/String;

    if-nez v5, :cond_5

    iget-object v5, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mMa:Ljava/lang/String;

    if-nez v5, :cond_5

    :cond_3
    move v5, v6

    .line 1226
    goto :goto_0

    .line 1210
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1228
    :cond_5
    iget-object v5, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApSettingsListName:Ljava/util/ArrayList;

    iget-object v7, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    invoke-static {p0, v7}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1230
    .local v1, index:I
    sget-boolean v5, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sIsFullInstallation:Z

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApSettingsListNameChecked:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_6

    move v5, v6

    .line 1231
    goto :goto_0

    .line 1233
    :cond_6
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1234
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "com.mediatek.omacp.settings"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1235
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "application/com.mediatek.omacp-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1236
    .local v4, mimeType:Ljava/lang/String;
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1237
    const-string v5, "appId"

    iget-object v6, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1238
    const-string v5, "context"

    sget-object v6, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sContextIdentifier:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1240
    const-string v5, "simId"

    sget v6, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sSimId:I

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1242
    invoke-direct {p0, v2, p1}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->addApplicationParams(Landroid/content/Intent;Lcom/mediatek/omacp/parser/ApplicationClass;)V

    .line 1244
    invoke-direct {p0, v2, p1, p2}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->addEmailToResultList(Landroid/content/Intent;Lcom/mediatek/omacp/parser/ApplicationClass;Ljava/util/ArrayList;)V

    .line 1245
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 6
    .parameter "src"

    .prologue
    .line 529
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 530
    .local v2, stringBuilder:Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    array-length v4, p0

    if-gtz v4, :cond_1

    .line 531
    :cond_0
    const/4 v4, 0x0

    .line 541
    :goto_0
    return-object v4

    .line 533
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, p0

    if-ge v1, v4, :cond_3

    .line 534
    aget-byte v4, p0, v1

    and-int/lit16 v3, v4, 0xff

    .line 535
    .local v3, v:I
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 536
    .local v0, hv:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2

    .line 537
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 539
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 541
    .end local v0           #hv:Ljava/lang/String;
    .end local v3           #v:I
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static calculateRFC2104HMAC([B[B)Ljava/lang/String;
    .locals 10
    .parameter "data"
    .parameter "pin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 496
    move-object v1, p1

    .line 497
    .local v1, keyBytes:[B
    :try_start_0
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    const-string v7, "HmacSHA1"

    invoke-direct {v5, v1, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 500
    .local v5, signingKey:Ljavax/crypto/spec/SecretKeySpec;
    const-string v7, "HmacSHA1"

    invoke-static {v7}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    .line 501
    .local v2, mac:Ljavax/crypto/Mac;
    invoke-virtual {v2, v5}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 504
    invoke-virtual {v2, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v3

    .line 507
    .local v3, rawHmac:[B
    invoke-static {v3}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    .line 510
    .local v4, result:Ljava/lang/String;
    const-string v7, "Omacp/OmacpMessageSettingsDetail"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OmacpMessageSettingsDetail MAC is : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/omacp/utils/MTKlog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 520
    .end local v2           #mac:Ljavax/crypto/Mac;
    .end local v3           #rawHmac:[B
    .end local v4           #result:Ljava/lang/String;
    .end local v5           #signingKey:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v4

    .line 513
    :catch_0
    move-exception v0

    .line 514
    .local v0, e:Ljava/security/InvalidKeyException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v4, v6

    .line 515
    goto :goto_0

    .line 516
    .end local v0           #e:Ljava/security/InvalidKeyException;
    :catch_1
    move-exception v0

    .line 517
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v4, v6

    .line 518
    goto :goto_0
.end method

.method private checkFlagByNapId(Ljava/util/ArrayList;Lcom/mediatek/omacp/parser/NapdefClass;)Z
    .locals 4
    .parameter
    .parameter "napDef"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mediatek/omacp/parser/NapdefClass;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1016
    .local p1, toNapIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1017
    .local v0, flag:Z
    const/4 v1, 0x0

    .local v1, m:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1018
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1019
    .local v2, toNapId:Ljava/lang/String;
    iget-object v3, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mNapid:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1020
    const/4 v0, 0x1

    .line 1024
    .end local v2           #toNapId:Ljava/lang/String;
    :cond_0
    return v0

    .line 1017
    .restart local v2       #toNapId:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static checkIfApplicationSupport(Ljava/lang/String;)Z
    .locals 2
    .parameter "appId"

    .prologue
    .line 1359
    const-string v0, "w4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1360
    sget-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sMms:Z

    .line 1383
    :goto_0
    return v0

    .line 1361
    :cond_0
    const-string v0, "w2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1362
    sget-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sBrowser:Z

    goto :goto_0

    .line 1363
    :cond_1
    const-string v0, "apn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1364
    const/4 v0, 0x1

    goto :goto_0

    .line 1365
    :cond_2
    const-string v0, "143"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1366
    sget-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmail:Z

    goto :goto_0

    .line 1367
    :cond_3
    const-string v0, "110"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1368
    sget-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmail:Z

    goto :goto_0

    .line 1369
    :cond_4
    const-string v0, "25"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1370
    sget-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmail:Z

    goto :goto_0

    .line 1371
    :cond_5
    const-string v0, "w7"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1372
    sget-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDm:Z

    goto :goto_0

    .line 1373
    :cond_6
    const-string v0, "ap0004"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1374
    sget-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sSupl:Z

    goto :goto_0

    .line 1375
    :cond_7
    const-string v0, "554"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1376
    sget-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sRtsp:Z

    goto :goto_0

    .line 1377
    :cond_8
    const-string v0, "w5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1378
    sget-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDs:Z

    goto :goto_0

    .line 1379
    :cond_9
    const-string v0, "wA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1380
    sget-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sImps:Z

    goto :goto_0

    .line 1382
    :cond_a
    const-string v0, "Omacp/OmacpMessageSettingsDetail"

    const-string v1, "OmacpMessageSettingsDetail getAppName unknown app."

    invoke-static {v0, v1}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkPxNapId(Lcom/mediatek/omacp/parser/NapdefClass;Landroid/content/Intent;)V
    .locals 9
    .parameter "napDef"
    .parameter "intent"

    .prologue
    .line 975
    const/4 v3, 0x0

    .line 976
    .local v3, proxyClass:Lcom/mediatek/omacp/parser/ProxyClass;
    iget-object v6, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mPxList:Ljava/util/ArrayList;

    if-nez v6, :cond_1

    .line 977
    const-string v6, "Omacp/OmacpMessageSettingsDetail"

    const-string v7, "OmacpMessageSettingsDetail mPxList is null "

    invoke-static {v6, v7}, Lcom/mediatek/omacp/utils/MTKlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    :cond_0
    :goto_0
    return-void

    .line 980
    :cond_1
    const/4 v1, 0x0

    .line 981
    .local v1, flag:Z
    iget-object v6, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mPxList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 982
    .local v4, pxListSize:I
    const/4 v2, 0x0

    .local v2, n:I
    :goto_1
    if-ge v2, v4, :cond_4

    .line 983
    iget-object v6, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mPxList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #proxyClass:Lcom/mediatek/omacp/parser/ProxyClass;
    check-cast v3, Lcom/mediatek/omacp/parser/ProxyClass;

    .line 984
    .restart local v3       #proxyClass:Lcom/mediatek/omacp/parser/ProxyClass;
    iget-object v6, v3, Lcom/mediatek/omacp/parser/ProxyClass;->mPxphysical:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    iget-object v6, v3, Lcom/mediatek/omacp/parser/ProxyClass;->mPxphysical:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 985
    iget-object v6, v3, Lcom/mediatek/omacp/parser/ProxyClass;->mPxphysical:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;

    iget-object v5, v6, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;->mToNapid:Ljava/util/ArrayList;

    .line 986
    .local v5, toNapIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v5, :cond_3

    .line 982
    .end local v5           #toNapIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 989
    .restart local v5       #toNapIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    invoke-direct {p0, v5, p1}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->checkFlagByNapId(Ljava/util/ArrayList;Lcom/mediatek/omacp/parser/NapdefClass;)Z

    move-result v1

    .line 990
    if-eqz v1, :cond_2

    .line 996
    .end local v5           #toNapIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    const-string v6, "Omacp/OmacpMessageSettingsDetail"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OmacpMessageSettingsDetail NAPID whether is in proxy, the flag is : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/omacp/utils/MTKlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    if-eqz v1, :cond_5

    if-eqz v3, :cond_5

    .line 1002
    invoke-direct {p0, p2, v3}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->setPxParams(Landroid/content/Intent;Lcom/mediatek/omacp/parser/ProxyClass;)V

    .line 1005
    :cond_5
    invoke-direct {p0, p2, p1}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->setNapParams(Landroid/content/Intent;Lcom/mediatek/omacp/parser/NapdefClass;)V

    .line 1007
    iget-object v6, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApList:Ljava/util/ArrayList;

    invoke-static {v6}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getAPNType(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 1008
    .local v0, apnType:Ljava/lang/String;
    const-string v6, "APN-TYPE"

    invoke-virtual {p2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1010
    iget-object v6, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApList:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    .line 1011
    invoke-direct {p0, p2, v3}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->addMmsParams(Landroid/content/Intent;Lcom/mediatek/omacp/parser/ProxyClass;)V

    goto :goto_0
.end method

.method public static createIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 3
    .parameter "context"
    .parameter "messageId"

    .prologue
    .line 1704
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1705
    .local v0, intent:Landroid/content/Intent;
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    .line 1706
    sget-object v1, Lcom/mediatek/omacp/provider/OmacpProviderDatabase;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1708
    :cond_0
    return-object v0
.end method

.method public static getSimImsi(I)Ljava/lang/String;
    .locals 5
    .parameter "simId"

    .prologue
    .line 408
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v1

    .line 409
    .local v1, mTelephonyManager:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-virtual {v1, p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 414
    .local v0, imsi:Ljava/lang/String;
    const-string v2, "Omacp/OmacpMessageSettingsDetail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imsi is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/omacp/utils/MTKlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    return-object v0
.end method

.method private giveInstallationReport()V
    .locals 11

    .prologue
    const v10, 0x7f050018

    const v9, 0x7f050017

    const v8, 0x7f050016

    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 1588
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1590
    .local v3, report:Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApplicationResultList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1591
    .local v4, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_3

    .line 1592
    iget-object v5, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApplicationResultList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;

    .line 1594
    .local v2, obj:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;
    if-lez v1, :cond_0

    .line 1595
    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1599
    :cond_0
    iget-object v5, v2, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;->mAppId:Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1602
    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1605
    iget v5, v2, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;->mResult:I

    if-ne v5, v6, :cond_1

    .line 1606
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1591
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1607
    :cond_1
    iget v5, v2, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;->mResult:I

    if-ne v5, v7, :cond_2

    .line 1608
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1610
    :cond_2
    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1615
    .end local v2           #obj:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;
    :cond_3
    iget-object v5, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApnResultObj:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;

    if-eqz v5, :cond_5

    .line 1616
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 1617
    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1621
    :cond_4
    iget-object v5, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApnResultObj:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;

    iget-object v5, v5, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;->mAppId:Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1624
    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1627
    iget-object v5, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApnResultObj:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;

    iget v5, v5, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;->mResult:I

    if-ne v5, v6, :cond_6

    .line 1628
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1636
    :cond_5
    :goto_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1637
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f050025

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f050026

    new-instance v7, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$16;

    invoke-direct {v7, p0}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$16;-><init>(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$15;

    invoke-direct {v6, p0}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$15;-><init>(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1650
    return-void

    .line 1629
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_6
    iget-object v5, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApnResultObj:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;

    iget v5, v5, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;->mResult:I

    if-ne v5, v7, :cond_7

    .line 1630
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1632
    :cond_7
    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private handleApplicationResultList()V
    .locals 6

    .prologue
    .line 1406
    iget-object v2, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApplicationResultList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1407
    const/4 v1, 0x0

    .line 1408
    .local v1, isNeedSendTimeoutMsg:Z
    const/4 v0, 0x0

    .local v0, d:I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApplicationResultList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1409
    iget-object v2, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApplicationResultList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;

    iget v2, v2, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;->mResult:I

    if-nez v2, :cond_2

    .line 1410
    const/4 v1, 0x1

    .line 1416
    :cond_0
    if-eqz v1, :cond_3

    .line 1417
    iget-object v2, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mTimerHandler:Landroid/os/Handler;

    const/16 v3, 0x7d0

    const-wide/32 v4, 0x222e0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1427
    .end local v0           #d:I
    .end local v1           #isNeedSendTimeoutMsg:Z
    :cond_1
    :goto_1
    return-void

    .line 1408
    .restart local v0       #d:I
    .restart local v1       #isNeedSendTimeoutMsg:Z
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1420
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->handleFinishInstall()V

    goto :goto_1

    .line 1422
    .end local v0           #d:I
    .end local v1           #isNeedSendTimeoutMsg:Z
    :cond_4
    iget-object v2, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApnResultObj:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;

    if-eqz v2, :cond_1

    .line 1425
    invoke-direct {p0}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->handleFinishInstall()V

    goto :goto_1
.end method

.method private handleFinishInstall()V
    .locals 1

    .prologue
    .line 1696
    const/16 v0, 0x1f40

    invoke-virtual {p0, v0}, Landroid/app/Activity;->removeDialog(I)V

    .line 1697
    invoke-direct {p0}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->markMessageAsInstalled()V

    .line 1698
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mReInstall:Z

    .line 1699
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sInstalled:Z

    .line 1700
    invoke-direct {p0}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->giveInstallationReport()V

    .line 1701
    return-void
.end method

.method private handleInstall()V
    .locals 1

    .prologue
    .line 851
    sget-boolean v0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sInstalled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mReInstall:Z

    if-nez v0, :cond_1

    .line 852
    const/16 v0, 0x1f41

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 875
    :cond_0
    :goto_0
    return-void

    .line 858
    :cond_1
    sget-boolean v0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sPinUnlock:Z

    if-nez v0, :cond_2

    .line 859
    const/16 v0, 0x1f42

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 864
    :cond_2
    const/16 v0, 0x1f40

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 868
    invoke-direct {p0}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sendIntentsToApn()V

    .line 872
    iget-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApnResultObj:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;

    if-nez v0, :cond_0

    .line 873
    invoke-direct {p0}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sendIntentsToApplications()V

    goto :goto_0
.end method

.method public static imsiToKey(Ljava/lang/String;)[B
    .locals 8
    .parameter "imsi"

    .prologue
    const/4 v5, 0x0

    .line 614
    if-nez p0, :cond_0

    .line 615
    const/4 v2, 0x0

    .line 633
    :goto_0
    return-object v2

    .line 617
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 618
    .local v3, len:I
    div-int/lit8 v6, v3, 0x2

    add-int/lit8 v4, v6, 0x1

    .line 619
    .local v4, lenKey:I
    rem-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_1

    const/4 v0, 0x1

    .line 621
    .local v0, even:Z
    :goto_1
    new-array v2, v4, [B

    .line 622
    .local v2, key:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v4, :cond_4

    .line 623
    if-nez v1, :cond_2

    .line 624
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v6, v6, -0x30

    mul-int/lit8 v6, v6, 0x10

    add-int/lit8 v6, v6, 0x0

    add-int/lit8 v6, v6, 0x9

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    .line 622
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0           #even:Z
    .end local v1           #i:I
    .end local v2           #key:[B
    :cond_1
    move v0, v5

    .line 619
    goto :goto_1

    .line 625
    .restart local v0       #even:Z
    .restart local v1       #i:I
    .restart local v2       #key:[B
    :cond_2
    add-int/lit8 v6, v4, -0x1

    if-ne v1, v6, :cond_3

    if-nez v0, :cond_3

    .line 626
    add-int/lit8 v6, v3, -0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v6, v6, -0x30

    add-int/lit16 v6, v6, 0xf0

    int-to-byte v6, v6

    aput-byte v6, v2, v1

    goto :goto_3

    .line 628
    :cond_3
    mul-int/lit8 v6, v1, 0x2

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v6, v6, -0x30

    mul-int/lit8 v6, v6, 0x10

    add-int/lit8 v6, v6, 0x0

    mul-int/lit8 v7, v1, 0x2

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v7, v7, -0x30

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v2, v1

    goto :goto_3

    .line 632
    :cond_4
    const-string v5, "Omacp/OmacpMessageSettingsDetail"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "imsiToKey is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/omacp/utils/MTKlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initActivityState(Landroid/content/Intent;)V
    .locals 14
    .parameter "intent"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 721
    const/4 v1, 0x0

    .line 722
    .local v1, intentData:Landroid/net/Uri;
    const-string v0, "message_id"

    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 723
    .local v8, messageId:J
    cmp-long v0, v8, v4

    if-lez v0, :cond_2

    .line 724
    sget-object v0, Lcom/mediatek/omacp/provider/OmacpProviderDatabase;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 730
    :goto_0
    const-string v0, "Omacp/OmacpMessageSettingsDetail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OmacpMessageSettingsDetail initActivityState intentData is : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/omacp/utils/MTKlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    if-eqz v1, :cond_8

    .line 735
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->INSTALLATION_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 737
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 739
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    sput-wide v2, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sMessageId:J

    .line 740
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sput v0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sSimId:I

    .line 741
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v12

    :goto_1
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sInstalled:Z

    .line 742
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v12

    :goto_2
    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sPinUnlock:Z

    .line 743
    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sput v0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sSec:I

    .line 744
    const/4 v0, 0x5

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sMac:Ljava/lang/String;

    .line 745
    const/4 v0, 0x6

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    sput-object v0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sBody:[B

    .line 746
    const/4 v0, 0x7

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sContextIdentifier:Ljava/lang/String;

    .line 747
    const/16 v0, 0x8

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sMimeType:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 749
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 754
    :cond_0
    const-string v0, "Omacp/OmacpMessageSettingsDetail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OmacpMessageSettingsDetail initActivityState class variable is : \nmMessageId is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sMessageId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mSimId is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sSimId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mInstalled is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sInstalled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mPinUnlock is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sPinUnlock:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mSec is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sSec:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mMac is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sMac:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mContextIdentifier is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sContextIdentifier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mMimeType is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sMimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/omacp/utils/MTKlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    new-instance v10, Lcom/mediatek/omacp/parser/OmacpParser;

    invoke-direct {v10}, Lcom/mediatek/omacp/parser/OmacpParser;-><init>()V

    .line 769
    .local v10, parser:Lcom/mediatek/omacp/parser/OmacpParser;
    sget-object v0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sMimeType:Ljava/lang/String;

    const-string v2, "text/vnd.wap.connectivity-xml"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 770
    invoke-static {}, Lcom/mediatek/omacp/parser/OmacpParser;->getTextParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/mediatek/omacp/parser/OmacpParser;->setParser(Ljava/lang/Object;)V

    .line 774
    :cond_1
    :goto_3
    sget-object v0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sBody:[B

    invoke-virtual {v10, v0}, Lcom/mediatek/omacp/parser/OmacpParser;->parse([B)V

    .line 775
    invoke-virtual {v10}, Lcom/mediatek/omacp/parser/OmacpParser;->getApSectionList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApList:Ljava/util/ArrayList;

    .line 776
    invoke-virtual {v10}, Lcom/mediatek/omacp/parser/OmacpParser;->getNapList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mNapList:Ljava/util/ArrayList;

    .line 777
    invoke-virtual {v10}, Lcom/mediatek/omacp/parser/OmacpParser;->getPxList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mPxList:Ljava/util/ArrayList;

    .line 780
    const-string v0, "Omacp/OmacpMessageSettingsDetail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OmacpMessageSettingsDetail mApList is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/omacp/utils/MTKlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    const-string v0, "Omacp/OmacpMessageSettingsDetail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OmacpMessageSettingsDetail mNapList is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mNapList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/omacp/utils/MTKlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    const-string v0, "Omacp/OmacpMessageSettingsDetail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OmacpMessageSettingsDetail mPxList is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mPxList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/omacp/utils/MTKlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    iget-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mNapList:Ljava/util/ArrayList;

    invoke-static {p0, v0, v2}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getValidApplicationNameSet(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApSettingsListName:Ljava/util/ArrayList;

    .line 787
    const/4 v7, 0x0

    .local v7, i:I
    :goto_4
    iget-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApSettingsListName:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_6

    .line 788
    iget-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApSettingsListNameChecked:Ljava/util/ArrayList;

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 787
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 726
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #i:I
    .end local v10           #parser:Lcom/mediatek/omacp/parser/OmacpParser;
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    goto/16 :goto_0

    .restart local v6       #c:Landroid/database/Cursor;
    :cond_3
    move v0, v13

    .line 741
    goto/16 :goto_1

    :cond_4
    move v0, v13

    .line 742
    goto/16 :goto_2

    .line 749
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 771
    .restart local v10       #parser:Lcom/mediatek/omacp/parser/OmacpParser;
    :cond_5
    sget-object v0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sMimeType:Ljava/lang/String;

    const-string v2, "application/vnd.wap.connectivity-wbxml"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 772
    invoke-static {}, Lcom/mediatek/omacp/parser/OmacpParser;->getWbxmlParser()Lorg/kxml2/wap/WbxmlParser;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/mediatek/omacp/parser/OmacpParser;->setParser(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 791
    .restart local v7       #i:I
    :cond_6
    invoke-direct {p0}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->markAsRead()V

    .line 793
    iget-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mNapList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mPxList:Ljava/util/ArrayList;

    invoke-static {p0, v0, v2, v3}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getSettingsDetailInfo(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    .line 795
    .local v11, settingsDetailInfo:Landroid/text/SpannableStringBuilder;
    if-eqz v11, :cond_7

    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_9

    .line 796
    :cond_7
    invoke-direct {p0}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->showInvalidSettingDialog()V

    .line 802
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #i:I
    .end local v10           #parser:Lcom/mediatek/omacp/parser/OmacpParser;
    .end local v11           #settingsDetailInfo:Landroid/text/SpannableStringBuilder;
    :cond_8
    :goto_5
    return-void

    .line 798
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v7       #i:I
    .restart local v10       #parser:Lcom/mediatek/omacp/parser/OmacpParser;
    .restart local v11       #settingsDetailInfo:Landroid/text/SpannableStringBuilder;
    :cond_9
    iget-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mDetailText:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 799
    iget-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mDetailText:Landroid/widget/TextView;

    const/high16 v2, 0x4188

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_5
.end method

.method private isPinCorrect([B)Z
    .locals 10
    .parameter "pin"

    .prologue
    const/4 v7, 0x0

    .line 376
    if-eqz p1, :cond_0

    array-length v8, p1

    if-nez v8, :cond_1

    .line 402
    :cond_0
    :goto_0
    return v7

    .line 381
    :cond_1
    sget v8, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sSec:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    .line 382
    sget v8, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sSimId:I

    invoke-static {v8}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->getSimImsi(I)Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, imsi:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->imsiToKey(Ljava/lang/String;)[B

    move-result-object v2

    .line 384
    .local v2, imsiKey:[B
    if-eqz v2, :cond_0

    .line 388
    array-length v6, p1

    .line 389
    .local v6, lenPin:I
    array-length v4, v2

    .line 390
    .local v4, lenImsiKey:I
    add-int v5, v6, v4

    .line 391
    .local v5, lenKey:I
    new-array v3, v5, [B

    .line 392
    .local v3, key:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v5, :cond_4

    .line 393
    if-ge v0, v4, :cond_2

    .line 394
    aget-byte v7, v2, v0

    aput-byte v7, v3, v0

    .line 392
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 396
    :cond_2
    sub-int v7, v0, v4

    aget-byte v7, p1, v7

    aput-byte v7, v3, v0

    goto :goto_2

    .line 400
    .end local v0           #i:I
    .end local v1           #imsi:Ljava/lang/String;
    .end local v2           #imsiKey:[B
    .end local v3           #key:[B
    .end local v4           #lenImsiKey:I
    .end local v5           #lenKey:I
    .end local v6           #lenPin:I
    :cond_3
    move-object v3, p1

    .line 402
    .restart local v3       #key:[B
    :cond_4
    sget v7, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sSec:I

    sget-object v8, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sBody:[B

    sget-object v9, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sMac:Ljava/lang/String;

    invoke-static {v3, v7, v8, v9}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->verifyPin([BI[BLjava/lang/String;)Z

    move-result v7

    goto :goto_0
.end method

.method private markAsRead()V
    .locals 2

    .prologue
    .line 823
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$11;

    invoke-direct {v1, p0}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$11;-><init>(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 845
    return-void
.end method

.method private markMessageAsInstalled()V
    .locals 1

    .prologue
    .line 1562
    new-instance v0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$14;

    invoke-direct {v0, p0}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$14;-><init>(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)V

    invoke-virtual {v0}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$14;->run()V

    .line 1585
    return-void
.end method

.method private markMessageAsPinUnlock()V
    .locals 1

    .prologue
    .line 350
    new-instance v0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$5;

    invoke-direct {v0, p0}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$5;-><init>(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)V

    invoke-virtual {v0}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$5;->run()V

    .line 373
    return-void
.end method

.method private modifyAppParam(Ljava/util/ArrayList;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 930
    .local p1, apnIntentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Intent;>;"
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_7

    .line 931
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 932
    .local v3, intent:Landroid/content/Intent;
    const-string v8, "NAPID-ID"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 933
    .local v4, napid:Ljava/lang/String;
    const-string v8, "PROXY-ID"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 934
    .local v6, proxy:Ljava/lang/String;
    const/4 v5, 0x0

    .line 935
    .local v5, needModify:Z
    const/4 v0, 0x0

    .local v0, apIndex:I
    :goto_1
    iget-object v8, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_2

    .line 936
    iget-object v8, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/ApplicationClass;

    .line 937
    .local v1, application:Lcom/mediatek/omacp/parser/ApplicationClass;
    iget-object v8, v1, Lcom/mediatek/omacp/parser/ApplicationClass;->mToProxy:Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    .line 938
    const/4 v7, 0x0

    .local v7, proxyIndex:I
    :goto_2
    iget-object v8, v1, Lcom/mediatek/omacp/parser/ApplicationClass;->mToProxy:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 939
    iget-object v8, v1, Lcom/mediatek/omacp/parser/ApplicationClass;->mToProxy:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 940
    const-string v8, "Omacp/OmacpMessageSettingsDetail"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "application\'s TO-PROXY match. application index is : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/omacp/utils/MTKlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    const/4 v5, 0x1

    .line 949
    .end local v7           #proxyIndex:I
    :cond_0
    if-eqz v5, :cond_6

    .line 950
    iget-object v8, v1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    if-eqz v8, :cond_4

    iget-object v8, v1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    const-string v9, "w4"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, v1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    const-string v9, "ap0005"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 953
    :cond_1
    const-string v8, "APN-TYPE"

    const-string v9, "mms"

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 954
    const-string v8, "PXADDR"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 955
    const-string v8, "PORT"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 930
    .end local v1           #application:Lcom/mediatek/omacp/parser/ApplicationClass;
    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 938
    .restart local v1       #application:Lcom/mediatek/omacp/parser/ApplicationClass;
    .restart local v7       #proxyIndex:I
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 957
    .end local v7           #proxyIndex:I
    :cond_4
    iget-object v8, v1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 958
    const-string v8, "MMS-PROXY"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 959
    const-string v8, "MMS-PORT"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 960
    const-string v8, "MMSC"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 961
    iget-object v8, v1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    const-string v9, "w2"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 962
    const-string v8, "APN-TYPE"

    const-string v9, "default"

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 963
    :cond_5
    iget-object v8, v1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    const-string v9, "ap0004"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 965
    const-string v8, "APN-TYPE"

    const-string v9, "supl"

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 935
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 972
    .end local v0           #apIndex:I
    .end local v1           #application:Lcom/mediatek/omacp/parser/ApplicationClass;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #napid:Ljava/lang/String;
    .end local v5           #needModify:Z
    .end local v6           #proxy:Ljava/lang/String;
    :cond_7
    return-void
.end method

.method private sendApplicationsByApnResult(Z)V
    .locals 7
    .parameter "installSuccess"

    .prologue
    const/4 v4, 0x1

    .line 1469
    if-eqz p1, :cond_2

    .line 1470
    iget-object v3, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApnResultObj:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;

    iput v4, v3, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;->mResult:I

    .line 1477
    iget-object v3, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApList:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1478
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1479
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1480
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-nez v3, :cond_0

    .line 1481
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 1482
    .local v2, networkStateChangedFilter:Landroid/content/IntentFilter;
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1484
    iget-object v3, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mStickyIntent:Landroid/content/Intent;

    .line 1487
    iput-boolean v4, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mIsNetworkStateReceiverRegistered:Z

    .line 1488
    iget-object v3, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mTimerHandler:Landroid/os/Handler;

    const/16 v4, 0x7d2

    const-wide/16 v5, 0x7530

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1490
    const-string v3, "Omacp/OmacpMessageSettingsDetail"

    const-string v4, "OmacpMessageSettingsDetail mResultReceiver register apn switch receiver."

    invoke-static {v3, v4}, Lcom/mediatek/omacp/utils/MTKlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1502
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v1           #info:Landroid/net/NetworkInfo;
    .end local v2           #networkStateChangedFilter:Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 1493
    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    .restart local v1       #info:Landroid/net/NetworkInfo;
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sendIntentsToApplications()V

    goto :goto_0

    .line 1496
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v1           #info:Landroid/net/NetworkInfo;
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sendIntentsToApplications()V

    goto :goto_0

    .line 1499
    :cond_2
    iget-object v3, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApnResultObj:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;

    const/4 v4, -0x1

    iput v4, v3, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;->mResult:I

    .line 1500
    invoke-direct {p0}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sendIntentsToApplications()V

    goto :goto_0
.end method

.method private sendApplicationsByAppResult(ILjava/lang/String;Z)V
    .locals 5
    .parameter "size"
    .parameter "appId"
    .parameter "installSuccess"

    .prologue
    .line 1505
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_2

    .line 1506
    iget-object v3, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApplicationResultList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;

    .line 1507
    .local v2, obj:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;
    iget-object v3, v2, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;->mAppId:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1508
    if-eqz p3, :cond_1

    .line 1509
    const/4 v3, 0x1

    iput v3, v2, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;->mResult:I

    .line 1505
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1511
    :cond_1
    const/4 v3, -0x1

    iput v3, v2, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;->mResult:I

    goto :goto_1

    .line 1517
    .end local v2           #obj:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;
    :cond_2
    const/4 v0, 0x1

    .line 1518
    .local v0, flag:Z
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApplicationResultList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 1519
    iget-object v3, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApplicationResultList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;

    iget v3, v3, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;->mResult:I

    if-nez v3, :cond_5

    .line 1520
    const/4 v0, 0x0

    .line 1525
    :cond_3
    if-eqz v0, :cond_4

    .line 1526
    iget-object v3, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mTimerHandler:Landroid/os/Handler;

    const/16 v4, 0x7d0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1527
    invoke-direct {p0}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->handleFinishInstall()V

    .line 1529
    :cond_4
    return-void

    .line 1518
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private sendEmailIntent(Ljava/util/ArrayList;Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;)V
    .locals 5
    .parameter
    .parameter "result"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;",
            "Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1388
    .local p1, emailIntentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Intent;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1389
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.mediatek.omacp.settings"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1390
    const-string v1, "application/com.mediatek.omacp-25"

    .line 1391
    .local v1, mimeType:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1392
    const-string v2, "email_setting_intent"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1393
    const-string v2, "25"

    invoke-static {v2}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->checkIfApplicationSupport(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1395
    const-string v2, "Omacp/OmacpMessageSettingsDetail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OmacpMessageSettingsDetail sendBroadcast intent is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/omacp/utils/MTKlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 1403
    :goto_0
    return-void

    .line 1401
    :cond_0
    const/4 v2, -0x1

    iput v2, p2, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;->mResult:I

    goto :goto_0
.end method

.method private sendIntentsToApn()V
    .locals 12

    .prologue
    .line 878
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApnResultObj:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;

    .line 879
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 880
    .local v0, apnIntentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Intent;>;"
    iget-object v8, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mNapList:Ljava/util/ArrayList;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mNapList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 881
    iget-object v8, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApSettingsListName:Ljava/util/ArrayList;

    const-string v9, "apn"

    invoke-static {p0, v9}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 883
    .local v2, index:I
    sget-boolean v8, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sIsFullInstallation:Z

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApSettingsListNameChecked:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 884
    :cond_0
    iget-object v8, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mNapList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 886
    .local v7, napSize:I
    const/4 v4, 0x1

    .line 887
    .local v4, messageIdAppend:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v7, :cond_1

    .line 888
    iget-object v8, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mNapList:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/omacp/parser/NapdefClass;

    .line 892
    .local v6, napDef:Lcom/mediatek/omacp/parser/NapdefClass;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 893
    .local v3, intent:Landroid/content/Intent;
    const-string v8, "com.mediatek.omacp.settings"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 894
    const-string v5, "application/com.mediatek.omacp-apn"

    .line 895
    .local v5, mimeType:Ljava/lang/String;
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 896
    const-string v8, "appId"

    const-string v9, "apn"

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 897
    const-string v8, "context"

    sget-object v9, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sContextIdentifier:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 898
    const-string v8, "simId"

    sget v9, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sSimId:I

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 900
    invoke-direct {p0, v6, v3}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->checkPxNapId(Lcom/mediatek/omacp/parser/NapdefClass;Landroid/content/Intent;)V

    .line 902
    const-string v8, "APN-ID"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v10, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sMessageId:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 903
    add-int/lit8 v4, v4, 0x1

    .line 904
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 887
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 909
    .end local v1           #i:I
    .end local v2           #index:I
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #messageIdAppend:I
    .end local v5           #mimeType:Ljava/lang/String;
    .end local v6           #napDef:Lcom/mediatek/omacp/parser/NapdefClass;
    .end local v7           #napSize:I
    :cond_1
    invoke-direct {p0, v0}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->modifyAppParam(Ljava/util/ArrayList;)V

    .line 911
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 912
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 913
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v8, "com.mediatek.omacp.settings"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 914
    const-string v5, "application/com.mediatek.omacp-apn"

    .line 915
    .restart local v5       #mimeType:Ljava/lang/String;
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 916
    const-string v8, "apn_setting_intent"

    invoke-virtual {v3, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 918
    const-string v8, "Omacp/OmacpMessageSettingsDetail"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OmacpMessageSettingsDetail sendBroadcast intent is : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/omacp/utils/MTKlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    invoke-virtual {p0, v3}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 921
    new-instance v8, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;

    const-string v9, "apn"

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;-><init>(Ljava/lang/String;I)V

    iput-object v8, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApnResultObj:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;

    .line 923
    iget-object v8, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mTimerHandler:Landroid/os/Handler;

    const/16 v9, 0x7d1

    const-wide/32 v10, 0x222e0

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 926
    .end local v3           #intent:Landroid/content/Intent;
    .end local v5           #mimeType:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private sendIntentsToApplications()V
    .locals 8

    .prologue
    .line 1181
    iget-object v6, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApplicationResultList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1183
    iget-object v6, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApList:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    .line 1184
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1185
    .local v1, emailIntentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Intent;>;"
    iget-object v6, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1186
    .local v5, size:I
    const/4 v3, 0x0

    .line 1187
    .local v3, isContinue:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 1188
    iget-object v6, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ApplicationClass;

    .line 1189
    .local v0, application:Lcom/mediatek/omacp/parser/ApplicationClass;
    invoke-direct {p0, v0, v1}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->addValidApplication(Lcom/mediatek/omacp/parser/ApplicationClass;Ljava/util/ArrayList;)Z

    .line 1187
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1191
    .end local v0           #application:Lcom/mediatek/omacp/parser/ApplicationClass;
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1192
    new-instance v4, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;

    const-string v6, "25"

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;-><init>(Ljava/lang/String;I)V

    .line 1194
    .local v4, result:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;
    invoke-direct {p0, v1, v4}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sendEmailIntent(Ljava/util/ArrayList;Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;)V

    .line 1195
    iget-object v6, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApplicationResultList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1199
    .end local v1           #emailIntentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .end local v2           #i:I
    .end local v3           #isContinue:Z
    .end local v4           #result:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;
    .end local v5           #size:I
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->handleApplicationResultList()V

    .line 1200
    return-void
.end method

.method private setNapParams(Landroid/content/Intent;Lcom/mediatek/omacp/parser/NapdefClass;)V
    .locals 11
    .parameter "intent"
    .parameter "napDef"

    .prologue
    const/4 v10, 0x0

    .line 1085
    const-string v8, "NAPID"

    iget-object v9, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mNapid:Ljava/lang/String;

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1087
    iget-object v8, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mBearer:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mBearer:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 1088
    const-string v9, "BEARER"

    iget-object v8, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mBearer:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p1, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1090
    :cond_0
    const-string v8, "NAP-NAME"

    iget-object v9, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mName:Ljava/lang/String;

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1091
    const-string v8, "INTERNET"

    iget-object v9, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mInternet:Ljava/lang/String;

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1092
    const-string v8, "NAP-ADDRESS"

    iget-object v9, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mNapaddress:Ljava/lang/String;

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1093
    const-string v8, "NAP-ADDRTYPE"

    iget-object v9, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mNapaddrtype:Ljava/lang/String;

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1094
    const-string v8, "DNS-ADDR"

    iget-object v9, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mDnsaddr:Ljava/util/ArrayList;

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1095
    const-string v8, "CALLTYPE"

    iget-object v9, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mCalltype:Ljava/lang/String;

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1096
    const-string v8, "LOCAL-ADDR"

    iget-object v9, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mLocaladdr:Ljava/lang/String;

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1097
    const-string v8, "LOCAL-ADDRTYPE"

    iget-object v9, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mLocaladdrtype:Ljava/lang/String;

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1098
    const-string v8, "LINKSPEED"

    iget-object v9, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mLinkspeed:Ljava/lang/String;

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1099
    const-string v8, "DNLINKSPEED"

    iget-object v9, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mDnlinkspeed:Ljava/lang/String;

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1100
    const-string v8, "LINGER"

    iget-object v9, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mLinger:Ljava/lang/String;

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1101
    const-string v8, "DELIVERY-ERR-SDU"

    iget-object v9, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mDeliveryerrsdu:Ljava/lang/String;

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1102
    const-string v8, "DELIVERY-ORDER"

    iget-object v9, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mDeliveryorder:Ljava/lang/String;

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1103
    const-string v8, "TRAFFIC-CLASS"

    iget-object v9, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mTrafficclass:Ljava/lang/String;

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1104
    const-string v8, "MAX-SDU-SIZE"

    iget-object v9, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mMaxsdusize:Ljava/lang/String;

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1105
    const-string v8, "MAX-BITRATE-UPLINK"

    iget-object v9, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mMaxbitrateuplink:Ljava/lang/String;

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1106
    const-string v8, "MAX-BITRATE-DNLINK"

    iget-object v9, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mMaxbitratednlink:Ljava/lang/String;

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1107
    const-string v8, "RESIDUAL-BER"

    iget-object v9, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mResidualber:Ljava/lang/String;

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1108
    const-string v8, "SDU-ERROR-RATIO"

    iget-object v9, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mSduerrorratio:Ljava/lang/String;

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1109
    const-string v8, "TRAFFIC-HANDL-PROI"

    iget-object v9, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mTraffichandlproi:Ljava/lang/String;

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1110
    const-string v8, "TRANSFER-DELAY"

    iget-object v9, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mTransferdelay:Ljava/lang/String;

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1111
    const-string v8, "GUARANTEED-BITRATE-UPLINK"

    iget-object v9, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mGuaranteedbitrateuplink:Ljava/lang/String;

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1112
    const-string v8, "GUARANTEED-BITRATE-DNLINK"

    iget-object v9, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mGuaranteedbitratednlink:Ljava/lang/String;

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1113
    const-string v8, "MAX-NUM-RETRY"

    iget-object v9, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mMaxnumretry:Ljava/lang/String;

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1114
    const-string v8, "FIRST-RETRY-TIMEOUT"

    iget-object v9, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mFirstretrytimeout:Ljava/lang/String;

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1115
    const-string v8, "REREG-THRESHOLD"

    iget-object v9, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mReregthreshold:Ljava/lang/String;

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1116
    const-string v8, "T-BIT"

    iget-object v9, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mTbit:Ljava/lang/String;

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1118
    iget-object v8, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mNapauthinfo:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1119
    .local v4, napAuthInfoSize:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1120
    .local v3, napAuthInfoMapList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v2, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mNapauthinfo:Ljava/util/ArrayList;

    .line 1121
    .local v2, napAuthInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/omacp/parser/NapdefClass$NapAuthInfo;>;"
    const/4 v0, 0x0

    .local v0, j:I
    :goto_0
    if-ge v0, v4, :cond_2

    .line 1122
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1123
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "AUTHTYPE"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/omacp/parser/NapdefClass$NapAuthInfo;

    iget-object v8, v8, Lcom/mediatek/omacp/parser/NapdefClass$NapAuthInfo;->mAuthtype:Ljava/lang/String;

    invoke-virtual {v1, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1124
    const-string v9, "AUTHNAME"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/omacp/parser/NapdefClass$NapAuthInfo;

    iget-object v8, v8, Lcom/mediatek/omacp/parser/NapdefClass$NapAuthInfo;->mAuthname:Ljava/lang/String;

    invoke-virtual {v1, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1125
    const-string v9, "AUTHSECRET"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/omacp/parser/NapdefClass$NapAuthInfo;

    iget-object v8, v8, Lcom/mediatek/omacp/parser/NapdefClass$NapAuthInfo;->mAuthsecret:Ljava/lang/String;

    invoke-virtual {v1, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/omacp/parser/NapdefClass$NapAuthInfo;

    iget-object v8, v8, Lcom/mediatek/omacp/parser/NapdefClass$NapAuthInfo;->mAuthentity:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1127
    const-string v9, "AUTH_ENTITY"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/omacp/parser/NapdefClass$NapAuthInfo;

    iget-object v8, v8, Lcom/mediatek/omacp/parser/NapdefClass$NapAuthInfo;->mAuthentity:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v1, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1129
    :cond_1
    const-string v9, "SPI"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/omacp/parser/NapdefClass$NapAuthInfo;

    iget-object v8, v8, Lcom/mediatek/omacp/parser/NapdefClass$NapAuthInfo;->mSpi:Ljava/lang/String;

    invoke-virtual {v1, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1131
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1133
    .end local v1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const-string v8, "NAPAUTHINFO"

    invoke-virtual {p1, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1135
    iget-object v8, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mValidity:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1136
    .local v7, validitySize:I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1137
    .local v6, validityMapList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v5, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mValidity:Ljava/util/ArrayList;

    .line 1138
    .local v5, validityList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/omacp/parser/NapdefClass$Validity;>;"
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v7, :cond_3

    .line 1139
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1140
    .restart local v1       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "COUNTRY"

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/omacp/parser/NapdefClass$Validity;

    iget-object v8, v8, Lcom/mediatek/omacp/parser/NapdefClass$Validity;->mCountry:Ljava/lang/String;

    invoke-virtual {v1, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    const-string v9, "NETWORK"

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/omacp/parser/NapdefClass$Validity;

    iget-object v8, v8, Lcom/mediatek/omacp/parser/NapdefClass$Validity;->mNetwork:Ljava/lang/String;

    invoke-virtual {v1, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1142
    const-string v9, "SID"

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/omacp/parser/NapdefClass$Validity;

    iget-object v8, v8, Lcom/mediatek/omacp/parser/NapdefClass$Validity;->mSid:Ljava/lang/String;

    invoke-virtual {v1, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    const-string v9, "SOC"

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/omacp/parser/NapdefClass$Validity;

    iget-object v8, v8, Lcom/mediatek/omacp/parser/NapdefClass$Validity;->mSoc:Ljava/lang/String;

    invoke-virtual {v1, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1144
    const-string v9, "VALIDUNTIL"

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/omacp/parser/NapdefClass$Validity;

    iget-object v8, v8, Lcom/mediatek/omacp/parser/NapdefClass$Validity;->mValiduntil:Ljava/lang/String;

    invoke-virtual {v1, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1145
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1138
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1147
    .end local v1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    const-string v8, "VALIDITY"

    invoke-virtual {p1, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1148
    return-void
.end method

.method private setPxParams(Landroid/content/Intent;Lcom/mediatek/omacp/parser/ProxyClass;)V
    .locals 12
    .parameter "intent"
    .parameter "proxyClass"

    .prologue
    const/4 v11, 0x0

    .line 1029
    const-string v9, "PROXY-ID"

    iget-object v10, p2, Lcom/mediatek/omacp/parser/ProxyClass;->mProxyId:Ljava/lang/String;

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1030
    const-string v9, "PROXY-PW"

    iget-object v10, p2, Lcom/mediatek/omacp/parser/ProxyClass;->mProxyPw:Ljava/lang/String;

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1031
    const-string v9, "PPGAUTH-TYPE"

    iget-object v10, p2, Lcom/mediatek/omacp/parser/ProxyClass;->mPpgauthType:Ljava/lang/String;

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1032
    const-string v9, "PROXY-PROVIDER-ID"

    iget-object v10, p2, Lcom/mediatek/omacp/parser/ProxyClass;->mProxyProviderId:Ljava/lang/String;

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1033
    const-string v9, "NAME"

    iget-object v10, p2, Lcom/mediatek/omacp/parser/ProxyClass;->mName:Ljava/lang/String;

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1035
    const-string v9, "TRUST"

    iget-object v10, p2, Lcom/mediatek/omacp/parser/ProxyClass;->mTrust:Ljava/lang/String;

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1036
    const-string v9, "MASTER"

    iget-object v10, p2, Lcom/mediatek/omacp/parser/ProxyClass;->mMaster:Ljava/lang/String;

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1037
    const-string v9, "STARTPAGE"

    iget-object v10, p2, Lcom/mediatek/omacp/parser/ProxyClass;->mStartpage:Ljava/lang/String;

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1038
    const-string v9, "BASAUTH-ID"

    iget-object v10, p2, Lcom/mediatek/omacp/parser/ProxyClass;->mBasauthId:Ljava/lang/String;

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1039
    const-string v9, "BASAUTH-PW"

    iget-object v10, p2, Lcom/mediatek/omacp/parser/ProxyClass;->mBasauthPw:Ljava/lang/String;

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1044
    iget-object v9, p2, Lcom/mediatek/omacp/parser/ProxyClass;->mPxauthinfo:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1045
    .local v7, pxAuthInfoSize:I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1046
    .local v6, pxAuthInfoMapList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v5, p2, Lcom/mediatek/omacp/parser/ProxyClass;->mPxauthinfo:Ljava/util/ArrayList;

    .line 1047
    .local v5, pxAuthInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/omacp/parser/ProxyClass$PxAuthInfo;>;"
    const/4 v0, 0x0

    .local v0, j:I
    :goto_0
    if-ge v0, v7, :cond_0

    .line 1048
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1049
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "PXAUTH-TYPE"

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/omacp/parser/ProxyClass$PxAuthInfo;

    iget-object v9, v9, Lcom/mediatek/omacp/parser/ProxyClass$PxAuthInfo;->mPxauthType:Ljava/lang/String;

    invoke-virtual {v1, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    const-string v10, "PXAUTH-ID"

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/omacp/parser/ProxyClass$PxAuthInfo;

    iget-object v9, v9, Lcom/mediatek/omacp/parser/ProxyClass$PxAuthInfo;->mPxauthId:Ljava/lang/String;

    invoke-virtual {v1, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    const-string v10, "PXAUTH-PW"

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/omacp/parser/ProxyClass$PxAuthInfo;

    iget-object v9, v9, Lcom/mediatek/omacp/parser/ProxyClass$PxAuthInfo;->mPxauthPw:Ljava/lang/String;

    invoke-virtual {v1, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1047
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1055
    .end local v1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string v9, "PXAUTHINFO"

    invoke-virtual {p1, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1057
    iget-object v9, p2, Lcom/mediatek/omacp/parser/ProxyClass;->mPxphysical:Ljava/util/ArrayList;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;

    .line 1058
    .local v8, pxPhysical:Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;
    const-string v9, "PHYSICAL-PROXY-ID"

    iget-object v10, v8, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;->mPhysicalProxyId:Ljava/lang/String;

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1059
    const-string v9, "DOMAIN"

    iget-object v10, v8, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;->mDomain:Ljava/util/ArrayList;

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1060
    const-string v9, "PXADDR"

    iget-object v10, v8, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;->mPxaddr:Ljava/lang/String;

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1061
    const-string v9, "PXADDRTYPE"

    iget-object v10, v8, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;->mPxaddrtype:Ljava/lang/String;

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1062
    const-string v9, "PXADDR-FQDN"

    iget-object v10, v8, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;->mPxaddrFqdn:Ljava/lang/String;

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1063
    const-string v9, "WSP-VERSION"

    iget-object v10, v8, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;->mWspVersion:Ljava/lang/String;

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1064
    const-string v9, "PUSHENABLED"

    iget-object v10, v8, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;->mPushenabled:Ljava/lang/String;

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1065
    const-string v9, "PULLENABLED"

    iget-object v10, v8, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;->mPullenabled:Ljava/lang/String;

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1067
    iget-object v9, p2, Lcom/mediatek/omacp/parser/ProxyClass;->mPxphysical:Ljava/util/ArrayList;

    if-eqz v9, :cond_3

    iget-object v9, p2, Lcom/mediatek/omacp/parser/ProxyClass;->mPxphysical:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    .line 1068
    iget-object v9, p2, Lcom/mediatek/omacp/parser/ProxyClass;->mPxphysical:Ljava/util/ArrayList;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;

    iget-object v9, v9, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;->mPort:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1069
    .local v4, portSize:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1070
    .local v3, portMapList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v9, p2, Lcom/mediatek/omacp/parser/ProxyClass;->mPxphysical:Ljava/util/ArrayList;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;

    iget-object v2, v9, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;->mPort:Ljava/util/ArrayList;

    .line 1071
    .local v2, portList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/omacp/parser/ApplicationClass$Port;>;"
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_2

    .line 1072
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1073
    .restart local v1       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "PORTNBR"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/omacp/parser/ApplicationClass$Port;

    iget-object v9, v9, Lcom/mediatek/omacp/parser/ApplicationClass$Port;->mPortnbr:Ljava/lang/String;

    invoke-virtual {v1, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/omacp/parser/ApplicationClass$Port;

    iget-object v9, v9, Lcom/mediatek/omacp/parser/ApplicationClass$Port;->mService:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1076
    const-string v10, "SERVICE"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/omacp/parser/ApplicationClass$Port;

    iget-object v9, v9, Lcom/mediatek/omacp/parser/ApplicationClass$Port;->mService:Ljava/util/ArrayList;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1078
    :cond_1
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1071
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1080
    .end local v1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const-string v9, "PORT"

    invoke-virtual {p1, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1082
    .end local v2           #portList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/omacp/parser/ApplicationClass$Port;>;"
    .end local v3           #portMapList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v4           #portSize:I
    :cond_3
    return-void
.end method

.method private showCustomDialog()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 656
    iget-object v5, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApSettingsListName:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 657
    .local v4, size:I
    new-array v3, v4, [Ljava/lang/CharSequence;

    .line 658
    .local v3, items:[Ljava/lang/CharSequence;
    new-array v1, v4, [Z

    .line 659
    .local v1, defaultValues:[Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 660
    iget-object v5, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApSettingsListName:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    aput-object v5, v3, v2

    .line 661
    aput-boolean v7, v1, v2

    .line 659
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 664
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 665
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    new-instance v5, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$6;

    invoke-direct {v5, p0}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$6;-><init>(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)V

    invoke-virtual {v0, v3, v1, v5}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 692
    const v5, 0x7f050013

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 693
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 694
    const v5, 0x7f050014

    new-instance v6, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$7;

    invoke-direct {v6, p0}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$7;-><init>(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 701
    new-instance v5, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$8;

    invoke-direct {v5, p0}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$8;-><init>(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 710
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mCustomDialog:Landroid/app/AlertDialog;

    .line 711
    iget-object v5, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mCustomDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/AbsListView;->clearChoices()V

    .line 712
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_1

    .line 713
    iget-object v5, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApSettingsListNameChecked:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 712
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 715
    :cond_1
    iget-object v5, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mCustomDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 716
    iget-object v5, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mCustomDialog:Landroid/app/AlertDialog;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 717
    return-void
.end method

.method private showInvalidSettingDialog()V
    .locals 4

    .prologue
    .line 805
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 806
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f050063

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f050062

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f050026

    new-instance v3, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$10;

    invoke-direct {v3, p0}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$10;-><init>(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$9;

    invoke-direct {v2, p0}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$9;-><init>(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 820
    return-void
.end method

.method private showUnLockPinDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter "dialogUnlockPin"

    .prologue
    .line 308
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 309
    .local v2, factory:Landroid/view/LayoutInflater;
    const v5, 0x7f030003

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .local v4, textEntryView:Landroid/view/View;
    move-object v5, v4

    .line 310
    check-cast v5, Landroid/widget/LinearLayout;

    const v6, 0x7f060009

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 312
    .local v1, editText:Landroid/widget/EditText;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f05002b

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f050026

    new-instance v7, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$3;

    invoke-direct {v7, p0, v1, p1}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$3;-><init>(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;Landroid/widget/EditText;I)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f05000a

    new-instance v7, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$2;

    invoke-direct {v7, p0, v1}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$2;-><init>(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;Landroid/widget/EditText;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 338
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    new-instance v5, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$4;

    invoke-direct {v5, p0, v1}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$4;-><init>(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;Landroid/widget/EditText;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 344
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 345
    .local v3, pinDialog:Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 346
    return-object v3
.end method

.method public static verifyPin([BI[BLjava/lang/String;)Z
    .locals 4
    .parameter "pin"
    .parameter "sec"
    .parameter "body"
    .parameter "mac"

    .prologue
    const/4 v2, 0x0

    .line 420
    packed-switch p1, :pswitch_data_0

    .line 442
    :cond_0
    :goto_0
    return v2

    .line 427
    :pswitch_0
    const/4 v1, 0x0

    .line 429
    .local v1, inputMac:Ljava/lang/String;
    :try_start_0
    invoke-static {p2, p0}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->calculateRFC2104HMAC([B[B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 434
    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 430
    :catch_0
    move-exception v0

    .line 432
    .local v0, e:Ljava/security/SignatureException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 438
    .end local v0           #e:Ljava/security/SignatureException;
    .end local v1           #inputMac:Ljava/lang/String;
    :pswitch_1
    invoke-static {p0}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->verifyUSERPINMAC([B)Z

    move-result v2

    goto :goto_0

    .line 420
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static verifyUSERPINMAC([B)Z
    .locals 12
    .parameter "key"

    .prologue
    .line 449
    const-string v5, ""

    .line 450
    .local v5, mMacResult:Ljava/lang/String;
    sget-object v9, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sMac:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 451
    .local v4, mMacCharArray:[C
    array-length v2, v4

    .line 452
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 453
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-char v11, v4, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    rem-int/lit8 v10, v10, 0xa

    add-int/lit8 v10, v10, 0x30

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 452
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 459
    :cond_0
    const/4 v6, 0x0

    .line 461
    .local v6, userMac:Ljava/lang/String;
    :try_start_0
    sget-object v9, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sBody:[B

    invoke-static {v9, p0}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->calculateRFC2104HMAC([B[B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 468
    :goto_1
    const/4 v8, 0x0

    .line 469
    .local v8, userMacResult:Ljava/lang/String;
    if-nez v6, :cond_1

    .line 470
    const-string v9, "Omacp/OmacpMessageSettingsDetail"

    const-string v10, "OmacpMessageSettingsDetail verifyUSERPINMAC userMac is null."

    invoke-static {v9, v10}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const/4 v9, 0x0

    .line 481
    :goto_2
    return v9

    .line 462
    .end local v8           #userMacResult:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 464
    .local v0, e:Ljava/security/SignatureException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 474
    .end local v0           #e:Ljava/security/SignatureException;
    .restart local v8       #userMacResult:Ljava/lang/String;
    :cond_1
    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    .line 475
    .local v7, userMacCharArray:[C
    array-length v3, v7

    .line 476
    .local v3, lengthUser:I
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v3, :cond_2

    .line 477
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-char v11, v7, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    rem-int/lit8 v10, v10, 0xa

    add-int/lit8 v10, v10, 0x30

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 476
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 481
    :cond_2
    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    goto :goto_2
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 638
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mFullInstallBtn:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 640
    const-string v0, "Omacp/OmacpMessageSettingsDetail"

    const-string v1, "OmacpMessageSettingsDetail fullInstallBtn click."

    invoke-static {v0, v1}, Lcom/mediatek/omacp/utils/MTKlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sIsFullInstallation:Z

    .line 644
    invoke-direct {p0}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->handleInstall()V

    .line 653
    :cond_0
    :goto_0
    return-void

    .line 646
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mCustomInstallBtn:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 648
    const-string v0, "Omacp/OmacpMessageSettingsDetail"

    const-string v1, "OmacpMessageSettingsDetail customInstallBtn click."

    invoke-static {v0, v1}, Lcom/mediatek/omacp/utils/MTKlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    invoke-direct {p0}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->showCustomDialog()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 269
    const-string v0, "Omacp/OmacpMessageSettingsDetail"

    const-string v1, "onConfigurationChanged-Start"

    invoke-static {v0, v1}, Lcom/mediatek/omacp/utils/MTKlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 271
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 225
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 227
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 229
    const v1, 0x7f030002

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 231
    const v1, 0x7f060005

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mDetailText:Landroid/widget/TextView;

    .line 232
    const v1, 0x7f060007

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mFullInstallBtn:Landroid/widget/Button;

    .line 233
    const v1, 0x7f060008

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mCustomInstallBtn:Landroid/widget/Button;

    .line 235
    iget-object v1, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mFullInstallBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v1, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mCustomInstallBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 241
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "Omacp/OmacpMessageSettingsDetail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OmacpMessageSettingsDetail onCreate savedInstanceState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " intent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/omacp/utils/MTKlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-direct {p0, v0}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->initActivityState(Landroid/content/Intent;)V

    .line 247
    iget-object v1, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mResultReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.mediatek.omacp.settings.result"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 249
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 251
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    sput-object v1, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sTeleManager:Landroid/telephony/TelephonyManager;

    .line 252
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 275
    packed-switch p1, :pswitch_data_0

    .line 303
    :goto_0
    return-object v0

    .line 277
    :pswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 278
    .local v0, progressDialog:Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 280
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 281
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    goto :goto_0

    .line 285
    .end local v0           #progressDialog:Landroid/app/ProgressDialog;
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f050029

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f050026

    new-instance v3, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$1;

    invoke-direct {v3, p0}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$1;-><init>(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f05000a

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f05002a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 297
    :pswitch_2
    const/16 v1, 0x1f43

    invoke-direct {p0, v1}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->showUnLockPinDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 300
    :pswitch_3
    const/16 v1, 0x1f42

    invoke-direct {p0, v1}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->showUnLockPinDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 275
    :pswitch_data_0
    .packed-switch 0x1f40
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 256
    const/16 v0, 0x1f40

    invoke-virtual {p0, v0}, Landroid/app/Activity;->removeDialog(I)V

    .line 257
    iget-boolean v0, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mIsNetworkStateReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 261
    iget-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mTimerHandler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 262
    iget-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mTimerHandler:Landroid/os/Handler;

    const/16 v1, 0x7d1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 263
    iget-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mTimerHandler:Landroid/os/Handler;

    const/16 v1, 0x7d2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 264
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 265
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 1659
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1660
    return-void
.end method
