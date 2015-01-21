.class public Lcom/zte/statistics/sdk/util/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ACTIVATION:Ljava/lang/String; = "activation"

.field public static final APPID:Ljava/lang/String; = "appid"

.field public static final APPVERSION:Ljava/lang/String; = "app_version"

.field public static final COUNT:Ljava/lang/String; = "count"

.field public static final DATAS:Ljava/lang/String; = "datas"

.field public static final EVENT:Ljava/lang/String; = "event"

.field public static final EVENTS:Ljava/lang/String; = "events"

.field public static final IMEI:Ljava/lang/String; = "did"

.field public static final LASTINCREASETIME:Ljava/lang/String; = "ITL"

.field public static final MARKET:Ljava/lang/String; = "market"

.field public static final PREF_FEEDBACK:Ljava/lang/String; = "feedback"

.field public static final PREF_KEY_APP_ACTIVITY_ENABLED:Ljava/lang/String; = "appConfiguration.activity_enabled"

.field public static final PREF_KEY_APP_CONFIG_PREFIX:Ljava/lang/String; = "appConfiguration."

.field public static final PREF_KEY_APP_EVENT_ENABLED:Ljava/lang/String; = "appConfiguration.event_enabled"

.field public static final PREF_KEY_APP_EXCEPTION_ENABLED:Ljava/lang/String; = "appConfiguration.exception_enabled"

.field public static final PREF_KEY_APP_METRICS_ENABLED:Ljava/lang/String; = "appConfiguration.metrics_enabled"

.field public static final PREF_KEY_APP_VERSION_CODE:Ljava/lang/String; = "app_version_code"

.field public static final PREF_KEY_CURRENTAPP_USES:Ljava/lang/String; = "uses"

.field public static final PREF_KEY_USER_ENTERED_EMAIL:Ljava/lang/String; = "userEnteredEmail"

.field public static final PREF_KEY_USER_ENTERED_PHONE:Ljava/lang/String; = "userEnteredPhone"

.field public static final PREF_NAME:Ljava/lang/String; = "STATISTICS"

.field public static final PROP:Ljava/lang/String; = "prop"

.field public static final SEMOCOLON:Ljava/lang/String; = ";"

.field public static final TIME:Ljava/lang/String; = "time"

.field public static final TIMES:Ljava/lang/String; = "times"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final VALUE:Ljava/lang/String; = "value"

.field public static final ZTEFEEDBACK_UID:Ljava/lang/String; = "ztefeedback_uid"

.field public static final ZTEMARKET:Ljava/lang/String; = "marketinfo"

.field private static final networkTypeLookup:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 33
    const-string v2, "GPRS"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 34
    const-string v2, "EDGE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 35
    const-string v2, "UMTS"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 36
    const-string v2, "CDMA"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 37
    const-string v2, "EVDO_0"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 38
    const-string v2, "EVDO_A"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 39
    const-string v2, "1xRTT"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 40
    const-string v2, "HSDPA"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 41
    const-string v2, "HSUPA"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 42
    const-string v2, "HSPA"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 43
    const-string v2, "IDEN"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 44
    const-string v2, "EVDO_B"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 45
    const-string v2, "LTE"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 46
    const-string v2, "EHRPD"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 47
    const-string v2, "HSPAP"

    aput-object v2, v0, v1

    .line 32
    sput-object v0, Lcom/zte/statistics/sdk/util/Constants;->networkTypeLookup:[Ljava/lang/String;

    .line 3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static networkTypeAsString(I)Ljava/lang/String;
    .locals 3
    .parameter "networkTypeAsInt"

    .prologue
    .line 52
    :try_start_0
    sget-object v1, Lcom/zte/statistics/sdk/util/Constants;->networkTypeLookup:[Ljava/lang/String;

    aget-object v1, v1, p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-object v1

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    sget-object v1, Lcom/zte/statistics/sdk/util/Constants;->networkTypeLookup:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    goto :goto_0
.end method
