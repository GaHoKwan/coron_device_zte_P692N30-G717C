.class public Lcom/autonavi/a/a/q;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Lcom/autonavi/a/a/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/autonavi/a/a/q;->a:Ljava/lang/String;

    sput-object v0, Lcom/autonavi/a/a/q;->b:Lcom/autonavi/a/a/q;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/telephony/TelephonyManager;)Lcom/autonavi/a/a/q;
    .locals 1

    sget-object v0, Lcom/autonavi/a/a/q;->b:Lcom/autonavi/a/a/q;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/a/a/q;

    invoke-direct {v0}, Lcom/autonavi/a/a/q;-><init>()V

    sput-object v0, Lcom/autonavi/a/a/q;->b:Lcom/autonavi/a/a/q;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/autonavi/a/a/q;->a:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/autonavi/a/a/q;->b:Lcom/autonavi/a/a/q;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/autonavi/a/a/q;->a:Ljava/lang/String;

    return-object v0
.end method
