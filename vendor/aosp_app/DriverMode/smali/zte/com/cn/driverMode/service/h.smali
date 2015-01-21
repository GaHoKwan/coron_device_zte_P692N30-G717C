.class final Lzte/com/cn/driverMode/service/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/service/g;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/service/g;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/h;->a:Lzte/com/cn/driverMode/service/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMarkerReached(Landroid/media/AudioTrack;)V
    .locals 6

    const-string v0, "BeepPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onMarkerReached, play beep took : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lzte/com/cn/driverMode/service/h;->a:Lzte/com/cn/driverMode/service/g;

    invoke-static {v4}, Lzte/com/cn/driverMode/service/g;->a(Lzte/com/cn/driverMode/service/g;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/h;->a:Lzte/com/cn/driverMode/service/g;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/g;->b(Lzte/com/cn/driverMode/service/g;)Lzte/com/cn/driverMode/service/i;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/h;->a:Lzte/com/cn/driverMode/service/g;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/g;->b(Lzte/com/cn/driverMode/service/g;)Lzte/com/cn/driverMode/service/i;

    move-result-object v0

    invoke-interface {v0}, Lzte/com/cn/driverMode/service/i;->a()V

    :cond_0
    return-void
.end method

.method public final onPeriodicNotification(Landroid/media/AudioTrack;)V
    .locals 0

    return-void
.end method
