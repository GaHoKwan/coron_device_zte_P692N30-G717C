.class public Lcom/zte/statistics/sdk/a;
.super Ljava/lang/Object;


# static fields
.field public static carrier:Ljava/lang/String;

.field public static db:Z

.field public static dc:Z

.field public static dd:Ljava/lang/String;

.field public static de:I

.field public static df:Ljava/lang/String;

.field public static dg:Ljava/lang/String;

.field public static dh:Ljava/lang/String;

.field public static di:Ljava/lang/String;

.field public static dj:Ljava/lang/String;

.field public static dk:J

.field public static dl:Ljava/lang/String;

.field public static version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/zte/statistics/sdk/a;->db:Z

    sput-boolean v0, Lcom/zte/statistics/sdk/a;->dc:Z

    sput-object v1, Lcom/zte/statistics/sdk/a;->dg:Ljava/lang/String;

    sput-object v1, Lcom/zte/statistics/sdk/a;->dh:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/zte/statistics/sdk/a;->dk:J

    sget-object v0, Lcom/zte/statistics/sdk/comm/ConstantDefine;->dB:Ljava/lang/String;

    sput-object v0, Lcom/zte/statistics/sdk/a;->dl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
