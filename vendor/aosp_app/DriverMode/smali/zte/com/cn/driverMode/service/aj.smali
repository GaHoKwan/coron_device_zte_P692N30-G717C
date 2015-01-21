.class final Lzte/com/cn/driverMode/service/aj;
.super Ljava/lang/Object;

# interfaces
.implements Lzte/com/cn/driverMode/service/cf;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lzte/com/cn/driverMode/service/ai;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/service/ai;J)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/aj;->b:Lzte/com/cn/driverMode/service/ai;

    iput-wide p2, p0, Lzte/com/cn/driverMode/service/aj;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 2

    iget-wide v0, p0, Lzte/com/cn/driverMode/service/aj;->a:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-string v0, "zyt"

    const-string v1, "\u4e0b\u8f7d\u5b8c\u6210\u3002\u3002\u3002\u3002\u3002"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "zyt"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDownloadError :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
