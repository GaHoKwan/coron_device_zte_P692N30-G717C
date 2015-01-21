.class final Lzte/com/cn/driverMode/service/cb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$TtsListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/service/ca;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/service/ca;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/cb;->a:Lzte/com/cn/driverMode/service/ca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ttsGenerationFinished(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;Z)V
    .locals 3

    const-string v0, "DMTtsEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ttsGenerationFinished : success="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final ttsGenerationStarted(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;)V
    .locals 2

    const-string v0, "DMTtsEngine"

    const-string v1, "ttsGenerationStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/cb;->a:Lzte/com/cn/driverMode/service/ca;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lzte/com/cn/driverMode/service/ca;->a(Lzte/com/cn/driverMode/service/ca;Z)Z

    iget-object v0, p0, Lzte/com/cn/driverMode/service/cb;->a:Lzte/com/cn/driverMode/service/ca;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/ca;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x2001

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lzte/com/cn/driverMode/service/cb;->a:Lzte/com/cn/driverMode/service/ca;

    iget-object v1, v1, Lzte/com/cn/driverMode/service/ca;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final ttsStreamingFinished(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;)V
    .locals 4

    const-string v0, "DMTtsEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ttsStreamingFinished, isNoNeedNotify="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lzte/com/cn/driverMode/service/cb;->a:Lzte/com/cn/driverMode/service/ca;

    invoke-static {v2}, Lzte/com/cn/driverMode/service/ca;->a(Lzte/com/cn/driverMode/service/ca;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/cb;->a:Lzte/com/cn/driverMode/service/ca;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lzte/com/cn/driverMode/service/ca;->a(Lzte/com/cn/driverMode/service/ca;Z)Z

    iget-object v0, p0, Lzte/com/cn/driverMode/service/cb;->a:Lzte/com/cn/driverMode/service/ca;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/ca;->a(Lzte/com/cn/driverMode/service/ca;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/cb;->a:Lzte/com/cn/driverMode/service/ca;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/ca;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x2003

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lzte/com/cn/driverMode/service/cb;->a:Lzte/com/cn/driverMode/service/ca;

    iget-object v1, v1, Lzte/com/cn/driverMode/service/ca;->a:Landroid/os/Handler;

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/service/cb;->a:Lzte/com/cn/driverMode/service/ca;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/ca;->b(Lzte/com/cn/driverMode/service/ca;)Z

    return-void
.end method

.method public final ttsStreamingStarted(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;)V
    .locals 2

    const-string v0, "DMTtsEngine"

    const-string v1, "ttsStreamingStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
