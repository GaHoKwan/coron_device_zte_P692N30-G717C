.class final Lzte/com/cn/driverMode/service/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/service/m;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/service/m;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/n;->a:Lzte/com/cn/driverMode/service/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Lcom/nuance/dragon/toolkit/vocon/VoconError;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "today"

    const-string v1, "Music BargeIn ResultListener: Error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "today"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error code ->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/vocon/VoconError;->getReasonCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/vocon/VoconError;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    sget-object v0, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    sget-object v0, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v1, 0x4

    aput-boolean v4, v0, v1

    sget-object v0, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v1, 0x7

    aput-boolean v4, v0, v1

    sget-object v0, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v1, 0x5

    aput-boolean v4, v0, v1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/n;->a:Lzte/com/cn/driverMode/service/m;

    iput-boolean v3, v0, Lzte/com/cn/driverMode/service/m;->f:Z

    iget-object v0, p0, Lzte/com/cn/driverMode/service/n;->a:Lzte/com/cn/driverMode/service/m;

    iput-boolean v3, v0, Lzte/com/cn/driverMode/service/m;->g:Z

    iget-object v0, p0, Lzte/com/cn/driverMode/service/n;->a:Lzte/com/cn/driverMode/service/m;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/m;->a(Lzte/com/cn/driverMode/service/m;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/n;->a:Lzte/com/cn/driverMode/service/m;

    iget-boolean v0, v0, Lzte/com/cn/driverMode/service/m;->r:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/n;->a:Lzte/com/cn/driverMode/service/m;

    iput-boolean v4, v0, Lzte/com/cn/driverMode/service/m;->r:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/vocon/VoconError;->getReasonCode()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/n;->a:Lzte/com/cn/driverMode/service/m;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/m;->b(Lzte/com/cn/driverMode/service/m;)Lzte/com/cn/driverMode/service/bv;

    move-result-object v0

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/bv;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x1018

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lzte/com/cn/driverMode/service/n;->a:Lzte/com/cn/driverMode/service/m;

    invoke-static {v1}, Lzte/com/cn/driverMode/service/m;->b(Lzte/com/cn/driverMode/service/m;)Lzte/com/cn/driverMode/service/bv;

    move-result-object v1

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v0, v2, v3}, Lzte/com/cn/driverMode/service/bv;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public final onResult(Lcom/nuance/dragon/toolkit/vocon/VoconResult;)V
    .locals 8

    const-wide/16 v6, 0x190

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/n;->a:Lzte/com/cn/driverMode/service/m;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/m;->a(Lzte/com/cn/driverMode/service/m;)V

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->getRecognizedWakeupPhrase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Music BargeIn Listener: result ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v2, 0x6

    aput-boolean v4, v1, v2

    sget-object v1, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v2, 0x3

    aput-boolean v4, v1, v2

    sget-object v1, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v2, 0x4

    aput-boolean v5, v1, v2

    sget-object v1, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v2, 0x7

    aput-boolean v5, v1, v2

    sget-object v1, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v2, 0x5

    aput-boolean v5, v1, v2

    iget-object v1, p0, Lzte/com/cn/driverMode/service/n;->a:Lzte/com/cn/driverMode/service/m;

    iput-boolean v4, v1, Lzte/com/cn/driverMode/service/m;->f:Z

    iget-object v1, p0, Lzte/com/cn/driverMode/service/n;->a:Lzte/com/cn/driverMode/service/m;

    iput-boolean v4, v1, Lzte/com/cn/driverMode/service/m;->g:Z

    iget-object v1, p0, Lzte/com/cn/driverMode/service/n;->a:Lzte/com/cn/driverMode/service/m;

    iget-boolean v1, v1, Lzte/com/cn/driverMode/service/m;->r:Z

    if-nez v1, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/n;->a:Lzte/com/cn/driverMode/service/m;

    iput-boolean v5, v0, Lzte/com/cn/driverMode/service/m;->r:Z

    :goto_0
    return-void

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lzte/com/cn/driverMode/service/n;->a:Lzte/com/cn/driverMode/service/m;

    invoke-static {v1}, Lzte/com/cn/driverMode/service/m;->b(Lzte/com/cn/driverMode/service/m;)Lzte/com/cn/driverMode/service/bv;

    move-result-object v1

    invoke-virtual {v1}, Lzte/com/cn/driverMode/service/bv;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x1017

    iput v2, v1, Landroid/os/Message;->what:I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "MUSIC_BARGIN_RESULT"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/n;->a:Lzte/com/cn/driverMode/service/m;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/m;->b(Lzte/com/cn/driverMode/service/m;)Lzte/com/cn/driverMode/service/bv;

    move-result-object v0

    invoke-virtual {v0, v1, v6, v7}, Lzte/com/cn/driverMode/service/bv;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lzte/com/cn/driverMode/service/n;->a:Lzte/com/cn/driverMode/service/m;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/m;->b(Lzte/com/cn/driverMode/service/m;)Lzte/com/cn/driverMode/service/bv;

    move-result-object v0

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/bv;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x1018

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lzte/com/cn/driverMode/service/n;->a:Lzte/com/cn/driverMode/service/m;

    invoke-static {v1}, Lzte/com/cn/driverMode/service/m;->b(Lzte/com/cn/driverMode/service/m;)Lzte/com/cn/driverMode/service/bv;

    move-result-object v1

    invoke-virtual {v1, v0, v6, v7}, Lzte/com/cn/driverMode/service/bv;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
