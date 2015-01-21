.class public Lcom/zte/feedback/sdk/util/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final APPID:Ljava/lang/String; = "appid"

.field public static final APPUID:Ljava/lang/String; = "appuid"

.field public static final APPVERSION:Ljava/lang/String; = "app_version"

.field public static final IMEI:Ljava/lang/String; = "did"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final ZTEMARKET:Ljava/lang/String; = "marketinfo"

.field private static final networkTypeLookup:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 15
    const-string v2, "GPRS"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 16
    const-string v2, "EDGE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 17
    const-string v2, "UMTS"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 18
    const-string v2, "CDMA"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 19
    const-string v2, "EVDO_0"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 20
    const-string v2, "EVDO_A"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 21
    const-string v2, "1xRTT"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 22
    const-string v2, "HSDPA"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 23
    const-string v2, "HSUPA"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 24
    const-string v2, "HSPA"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 25
    const-string v2, "IDEN"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 26
    const-string v2, "EVDO_B"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 27
    const-string v2, "LTE"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 28
    const-string v2, "EHRPD"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 29
    const-string v2, "HSPAP"

    aput-object v2, v0, v1

    .line 14
    sput-object v0, Lcom/zte/feedback/sdk/util/Constants;->networkTypeLookup:[Ljava/lang/String;

    .line 4
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static networkTypeAsString(I)Ljava/lang/String;
    .locals 3
    .parameter "networkTypeAsInt"

    .prologue
    .line 34
    :try_start_0
    sget-object v1, Lcom/zte/feedback/sdk/util/Constants;->networkTypeLookup:[Ljava/lang/String;

    aget-object v1, v1, p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    return-object v1

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    sget-object v1, Lcom/zte/feedback/sdk/util/Constants;->networkTypeLookup:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    goto :goto_0
.end method
