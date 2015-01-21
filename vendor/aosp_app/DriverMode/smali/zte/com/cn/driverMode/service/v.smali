.class final Lzte/com/cn/driverMode/service/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource$Listener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/service/m;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/service/m;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/v;->a:Lzte/com/cn/driverMode/service/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;)V
    .locals 3

    const-string v0, "LocalEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "recorderSourceListener  onError:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onStarted(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;)V
    .locals 3

    const-string v0, "LocalEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "recorderSourceListener  onSart:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/v;->a:Lzte/com/cn/driverMode/service/m;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lzte/com/cn/driverMode/service/m;->s:Z

    return-void
.end method

.method public final onStopped(Lcom/nuance/dragon/toolkit/audio/sources/RecorderSource;)V
    .locals 3

    const-string v0, "LocalEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "recorderSourceListener  onStop:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/v;->a:Lzte/com/cn/driverMode/service/m;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lzte/com/cn/driverMode/service/m;->s:Z

    return-void
.end method
