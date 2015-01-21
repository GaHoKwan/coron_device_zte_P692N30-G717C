.class abstract enum Lzte/com/cn/driverMode/service/a;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lzte/com/cn/driverMode/service/a;

.field public static final enum b:Lzte/com/cn/driverMode/service/a;

.field public static final enum c:Lzte/com/cn/driverMode/service/a;

.field public static final enum d:Lzte/com/cn/driverMode/service/a;

.field public static final enum e:Lzte/com/cn/driverMode/service/a;

.field private static final synthetic g:[Lzte/com/cn/driverMode/service/a;


# instance fields
.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lzte/com/cn/driverMode/service/b;

    const-string v1, "APPNAME"

    const-string v2, "appName"

    invoke-direct {v0, v1, v2}, Lzte/com/cn/driverMode/service/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lzte/com/cn/driverMode/service/a;->a:Lzte/com/cn/driverMode/service/a;

    new-instance v0, Lzte/com/cn/driverMode/service/c;

    const-string v1, "COUNTRY"

    const-string v2, "country"

    invoke-direct {v0, v1, v2}, Lzte/com/cn/driverMode/service/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lzte/com/cn/driverMode/service/a;->b:Lzte/com/cn/driverMode/service/a;

    new-instance v0, Lzte/com/cn/driverMode/service/d;

    const-string v1, "OPERATOR"

    const-string v2, "operator"

    invoke-direct {v0, v1, v2}, Lzte/com/cn/driverMode/service/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lzte/com/cn/driverMode/service/a;->c:Lzte/com/cn/driverMode/service/a;

    new-instance v0, Lzte/com/cn/driverMode/service/e;

    const-string v1, "VERSIONNAME"

    const-string v2, "versionName"

    invoke-direct {v0, v1, v2}, Lzte/com/cn/driverMode/service/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lzte/com/cn/driverMode/service/a;->d:Lzte/com/cn/driverMode/service/a;

    new-instance v0, Lzte/com/cn/driverMode/service/f;

    const-string v1, "DEVICE"

    const-string v2, "device"

    invoke-direct {v0, v1, v2}, Lzte/com/cn/driverMode/service/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lzte/com/cn/driverMode/service/a;->e:Lzte/com/cn/driverMode/service/a;

    const/4 v0, 0x5

    new-array v0, v0, [Lzte/com/cn/driverMode/service/a;

    const/4 v1, 0x0

    sget-object v2, Lzte/com/cn/driverMode/service/a;->a:Lzte/com/cn/driverMode/service/a;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lzte/com/cn/driverMode/service/a;->b:Lzte/com/cn/driverMode/service/a;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lzte/com/cn/driverMode/service/a;->c:Lzte/com/cn/driverMode/service/a;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lzte/com/cn/driverMode/service/a;->d:Lzte/com/cn/driverMode/service/a;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lzte/com/cn/driverMode/service/a;->e:Lzte/com/cn/driverMode/service/a;

    aput-object v2, v0, v1

    sput-object v0, Lzte/com/cn/driverMode/service/a;->g:[Lzte/com/cn/driverMode/service/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lzte/com/cn/driverMode/service/a;->f:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lzte/com/cn/driverMode/service/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lzte/com/cn/driverMode/service/a;
    .locals 1

    const-class v0, Lzte/com/cn/driverMode/service/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/a;

    return-object v0
.end method

.method public static values()[Lzte/com/cn/driverMode/service/a;
    .locals 1

    sget-object v0, Lzte/com/cn/driverMode/service/a;->g:[Lzte/com/cn/driverMode/service/a;

    invoke-virtual {v0}, [Lzte/com/cn/driverMode/service/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lzte/com/cn/driverMode/service/a;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public abstract a(Lzte/com/cn/driverMode/service/cp;)V
.end method

.method public final a(Lzte/com/cn/driverMode/service/cp;Ljava/lang/String;)V
    .locals 1

    const-string v0, "***"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lzte/com/cn/driverMode/service/a;->a(Lzte/com/cn/driverMode/service/cp;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/service/a;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lzte/com/cn/driverMode/service/cp;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
