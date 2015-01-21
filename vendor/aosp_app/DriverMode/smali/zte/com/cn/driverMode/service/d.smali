.class final enum Lzte/com/cn/driverMode/service/d;
.super Lzte/com/cn/driverMode/service/a;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lzte/com/cn/driverMode/service/a;-><init>(Ljava/lang/String;ILjava/lang/String;B)V

    return-void
.end method


# virtual methods
.method public final a(Lzte/com/cn/driverMode/service/cp;)V
    .locals 2

    invoke-virtual {p0}, Lzte/com/cn/driverMode/service/d;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GENERIC"

    invoke-virtual {p1, v0, v1}, Lzte/com/cn/driverMode/service/cp;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
