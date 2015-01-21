.class public Lcom/mediatek/smsreg/SmsRegConst;
.super Ljava/lang/Object;
.source "SmsRegConst.java"


# static fields
.field public static final ACTION_BOOTCOMPLETED:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field public static final ACTION_SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field public static final CMCCID:I = 0x1

.field private static final CONFIG_FILE:Ljava/lang/String; = "smsSelfRegConfig.xml"

.field public static final CUCOMID:I = 0x2

.field public static final DM_REGISTER_SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.intent.action.DM_REGISTER_SMS_RECEIVED"

.field public static final GEMINI_SIM_1:I = 0x0

.field public static final GEMINI_SIM_2:I = 0x1

.field public static final GEMINI_SIM_ID_KEY:Ljava/lang/String; = "simId"

.field public static final GEMSIM:[I = null

.field private static final PRODUCTIVE_PATH_IN_CUSTOM:Ljava/lang/String; = "/custom/etc/dm/productive/"

.field private static final PRODUCTIVE_PATH_IN_SYSTEM:Ljava/lang/String; = "/system/etc/dm/productive/"

.field public static final RETRY_SEND_SMSREG:Ljava/lang/String; = "com.mediatek.smsreg.RETRY_SEND_SMSREG"

.field public static final SIM_STATE_ABSENT:I = 0x1

.field public static final SIM_STATE_NETWORK_LOCKED:I = 0x4

.field public static final SIM_STATE_PIN_REQUIRED:I = 0x2

.field public static final SIM_STATE_PUK_REQUIRED:I = 0x3

.field public static final SIM_STATE_READY:I = 0x5

.field public static final SIM_STATE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SmsReg/SmsRegConst"

.field private static final TEST_PATH_IN_CUSTOM:Ljava/lang/String; = "/custom/etc/dm/test/"

.field private static final TEST_PATH_IN_SYSTEM:Ljava/lang/String; = "/system/etc/dm/test/"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/smsreg/SmsRegConst;->GEMSIM:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConfigPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 88
    invoke-static {}, Lcom/mediatek/smsreg/SmsRegConst;->getSwitchValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    new-instance v0, Ljava/io/File;

    const-string v1, "/custom/etc/dm/productive/smsSelfRegConfig.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    .local v0, smsRegConfig:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    const-string v1, "SmsReg/SmsRegConst"

    const-string v2, "CIP PRODUCTIVE Smsreg Config Path"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const-string v1, "/custom/etc/dm/productive/smsSelfRegConfig.xml"

    .line 103
    :goto_0
    return-object v1

    .line 94
    :cond_0
    const-string v1, "/system/etc/dm/productive/smsSelfRegConfig.xml"

    goto :goto_0

    .line 98
    .end local v0           #smsRegConfig:Ljava/io/File;
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v1, "/custom/etc/dm/test/smsSelfRegConfig.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    .restart local v0       #smsRegConfig:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 100
    const-string v1, "SmsReg/SmsRegConst"

    const-string v2, "CIP TEST Smsreg Config Path"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v1, "/custom/etc/dm/test/smsSelfRegConfig.xml"

    goto :goto_0

    .line 103
    :cond_2
    const-string v1, "/system/etc/dm/test/smsSelfRegConfig.xml"

    goto :goto_0
.end method

.method public static getSwitchValue()Ljava/lang/String;
    .locals 6

    .prologue
    .line 70
    :try_start_0
    const-string v4, "DmAgent"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 71
    .local v1, binder:Landroid/os/IBinder;
    if-nez v1, :cond_0

    .line 72
    const-string v4, "MTKPhone"

    const-string v5, "ServiceManager.getService(DmAgent) failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v4, 0x0

    .line 80
    :goto_0
    return-object v4

    .line 75
    :cond_0
    invoke-static {v1}, Lcom/mediatek/common/dm/DmAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/dm/DmAgent;

    move-result-object v0

    .line 76
    .local v0, agent:Lcom/mediatek/common/dm/DmAgent;
    invoke-interface {v0}, Lcom/mediatek/common/dm/DmAgent;->getSwitchValue()[B

    move-result-object v3

    .line 77
    .local v3, switchValue:[B
    if-eqz v3, :cond_1

    .line 78
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    .end local v0           #agent:Lcom/mediatek/common/dm/DmAgent;
    .end local v3           #switchValue:[B
    :catch_0
    move-exception v2

    .line 83
    .local v2, e:Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/Error;

    invoke-direct {v4, v2}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 80
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v0       #agent:Lcom/mediatek/common/dm/DmAgent;
    .restart local v3       #switchValue:[B
    :cond_1
    :try_start_1
    const-string v4, "0"
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
