.class public Lcom/mediatek/deviceregister/Const;
.super Ljava/lang/Object;
.source "Const.java"


# static fields
.field public static final ACTION_BOOTCOMPLETED:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field public static final ACTION_CDMA_AUTO_SMS_REGISTER_FEASIBLE:Ljava/lang/String; = "android.provider.Telephony.CDMA_AUTO_SMS_REGISTER_FEASIBLE"

.field public static final ACTION_CT_CONFIRMED_MESSAGE:Ljava/lang/String; = "android.telephony.sms.CDMA_REG_SMS_ACTION"

.field public static final ACTION_REGISTER_MESSAGE_SEND:Ljava/lang/String; = "android.intent.action.REGISTER_SMS_SEND"

.field public static final CHECKSUM_LENGTH:I = 0x8

.field public static final COMMAND_TYPE_RECEIVED:B = 0x4t

.field public static final COMMAND_TYPE_SEND:B = 0x3t

.field public static final DEFALT_RECEIVED_FEASIBLE_BROADCAST:Z = false

.field public static final IMSI_DEFAULT_VALUE:Ljava/lang/String; = "000000000000000"

.field public static final KEY_RECEIVED_FEASIBLE_BROADCAST:Ljava/lang/String; = "received_feasible_broadcast"

.field public static final MANUFACTURE_MAX_LENGTH:I = 0x3

.field public static final MEID_TO_PESN_HASH_NAME:Ljava/lang/String; = "SHA-1"

.field public static final MODEL_MAX_LENGTH:I = 0x14

.field public static final ONE_MINUTE:I = 0xea60

.field public static final OPERATOR_CT:Ljava/lang/String; = "46003"

.field public static final OPERATOR_CT_MAC:Ljava/lang/String; = "45502"

.field public static final PESN_PREFIX:Ljava/lang/String; = "80"

.field public static final PORT:S = 0x0s

.field public static final PROTOCOL_VERSION_ESN:B = 0x1t

.field public static final PROTOCOL_VERSION_MEID:B = 0x2t

.field public static final SEND_MESSAGE_RETRY_TIMES_MAX:I = 0x3

.field public static final SEND_MESSAGE_TIME_UP:I = 0x67

.field public static final SERVER_ADDRESS:Ljava/lang/String; = "10659401"

.field public static final TAG:Ljava/lang/String; = "DeviceRegister/"

.field public static final UIM_ID_LIST:[I = null

.field public static final UIM_NONE:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/deviceregister/Const;->UIM_ID_LIST:[I

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
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
