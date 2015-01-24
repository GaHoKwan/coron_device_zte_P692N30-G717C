.class public final Lcom/zte/statistics/sdk/comm/ConstantDefine;
.super Ljava/lang/Object;


# static fields
.field public static dA:I

.field public static dB:Ljava/lang/String;

.field public static dC:Ljava/lang/String;

.field public static dy:J

.field public static dz:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0x64

    const-wide/16 v0, 0x258

    sput-wide v0, Lcom/zte/statistics/sdk/comm/ConstantDefine;->dy:J

    sput v2, Lcom/zte/statistics/sdk/comm/ConstantDefine;->dz:I

    sput v2, Lcom/zte/statistics/sdk/comm/ConstantDefine;->dA:I

    const-string v0, "https://cloud.ztedevice.com/dcs/"

    sput-object v0, Lcom/zte/statistics/sdk/comm/ConstantDefine;->dB:Ljava/lang/String;

    const-string v0, "999999999999999"

    sput-object v0, Lcom/zte/statistics/sdk/comm/ConstantDefine;->dC:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
