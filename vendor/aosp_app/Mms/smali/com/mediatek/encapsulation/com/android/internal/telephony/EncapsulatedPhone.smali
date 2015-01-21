.class public interface abstract Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedPhone;
.super Ljava/lang/Object;
.source "EncapsulatedPhone.java"

# interfaces
.implements Lcom/android/internal/telephony/Phone;


# static fields
.field public static final APN_ALREADY_ACTIVE:I = 0x0

.field public static final APN_ALREADY_INACTIVE:I = 0x4

.field public static final APN_REQUEST_FAILED:I = 0x3

.field public static final APN_REQUEST_STARTED:I = 0x1

.field public static final APN_TYPE_ALL:Ljava/lang/String; = "*"

.field public static final APN_TYPE_MMS:Ljava/lang/String; = "mms"

.field public static final APN_TYPE_NOT_AVAILABLE:I = 0x2

.field public static final DATA_APN_TYPE_KEY:Ljava/lang/String; = "apnType"

.field public static final GEMINI_SIM_1:I = 0x0

.field public static final GEMINI_SIM_2:I = 0x1

.field public static final GEMINI_SIM_3:I = 0x2

.field public static final GEMINI_SIM_4:I = 0x3

.field public static final GEMINI_SIM_ID_KEY:Ljava/lang/String; = "simId"

#the value of this static final field might be set in the static constructor
.field public static final GEMINI_SIM_NUM:I = 0x0

.field public static final REASON_NO_SUCH_PDP:Ljava/lang/String; = "noSuchPdp"

.field public static final SIM_INDICATOR_ABSENT:I = 0x0

.field public static final SIM_INDICATOR_CONNECTED:I = 0x7

.field public static final SIM_INDICATOR_INVALID:I = 0x3

.field public static final SIM_INDICATOR_LOCKED:I = 0x2

.field public static final SIM_INDICATOR_NORMAL:I = 0x5

.field public static final SIM_INDICATOR_RADIOOFF:I = 0x1

.field public static final SIM_INDICATOR_ROAMING:I = 0x6

.field public static final SIM_INDICATOR_ROAMINGCONNECTED:I = 0x8

.field public static final SIM_INDICATOR_SEARCHING:I = 0x4

.field public static final SIM_INDICATOR_UNKNOWN:I = -0x1

.field public static final STATE_KEY:Ljava/lang/String; = "state"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    sput v0, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedPhone;->GEMINI_SIM_NUM:I

    return-void
.end method


# virtual methods
.method public abstract get3GCapabilitySIM()I
.end method

.method public abstract getSN()Ljava/lang/String;
.end method
