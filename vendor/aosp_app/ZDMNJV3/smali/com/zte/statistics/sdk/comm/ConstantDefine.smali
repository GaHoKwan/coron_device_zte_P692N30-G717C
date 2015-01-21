.class public final Lcom/zte/statistics/sdk/comm/ConstantDefine;
.super Ljava/lang/Object;
.source "ConstantDefine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;,
        Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;
    }
.end annotation


# static fields
.field public static MAX_EVENT_TIME:I

.field public static defualtIMEI:Ljava/lang/String;

.field public static defualtUrl:Ljava/lang/String;

.field public static interval:J

.field public static maxUseTimes:I

.field public static proxyPackage:Ljava/lang/String;

.field public static proxyUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const-wide/16 v0, 0x258

    sput-wide v0, Lcom/zte/statistics/sdk/comm/ConstantDefine;->interval:J

    .line 38
    const/16 v0, 0x1e

    sput v0, Lcom/zte/statistics/sdk/comm/ConstantDefine;->maxUseTimes:I

    .line 39
    const/16 v0, 0x64

    sput v0, Lcom/zte/statistics/sdk/comm/ConstantDefine;->MAX_EVENT_TIME:I

    .line 41
    const-string v0, "https://cloud.ztedevice.com/dcs/"

    sput-object v0, Lcom/zte/statistics/sdk/comm/ConstantDefine;->defualtUrl:Ljava/lang/String;

    .line 44
    const-string v0, "com.zte.aliveupdate"

    sput-object v0, Lcom/zte/statistics/sdk/comm/ConstantDefine;->proxyPackage:Ljava/lang/String;

    .line 45
    const-string v0, "content://com.zte.statistics/message"

    sput-object v0, Lcom/zte/statistics/sdk/comm/ConstantDefine;->proxyUrl:Ljava/lang/String;

    .line 46
    const-string v0, "999999999999999"

    sput-object v0, Lcom/zte/statistics/sdk/comm/ConstantDefine;->defualtIMEI:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
