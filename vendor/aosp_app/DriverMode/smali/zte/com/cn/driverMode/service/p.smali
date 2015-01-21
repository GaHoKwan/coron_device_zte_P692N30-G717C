.class final Lzte/com/cn/driverMode/service/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$RebuildListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/service/m;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/service/m;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/p;->a:Lzte/com/cn/driverMode/service/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/nuance/dragon/toolkit/vocon/Grammar;Ljava/util/List;)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "LocalEngine"

    const-string v1, "loadGrammar(Vocon)  completed.\n"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/p;->a:Lzte/com/cn/driverMode/service/m;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/m;->h(Lzte/com/cn/driverMode/service/m;)Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/p;->a:Lzte/com/cn/driverMode/service/m;

    invoke-static {v0, v3}, Lzte/com/cn/driverMode/service/m;->a(Lzte/com/cn/driverMode/service/m;Z)Z

    sget-object v0, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    sget-object v0, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/p;->a:Lzte/com/cn/driverMode/service/m;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/m;->b(Lzte/com/cn/driverMode/service/m;)Lzte/com/cn/driverMode/service/bv;

    move-result-object v0

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/bv;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x1007

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lzte/com/cn/driverMode/service/p;->a:Lzte/com/cn/driverMode/service/m;

    invoke-static {v1}, Lzte/com/cn/driverMode/service/m;->b(Lzte/com/cn/driverMode/service/m;)Lzte/com/cn/driverMode/service/bv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lzte/com/cn/driverMode/service/bv;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final onError(Lcom/nuance/dragon/toolkit/vocon/VoconError;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "LocalEngine"

    const-string v1, "RebuildListener--->onError()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/p;->a:Lzte/com/cn/driverMode/service/m;

    invoke-static {v0, v2}, Lzte/com/cn/driverMode/service/m;->a(Lzte/com/cn/driverMode/service/m;Z)Z

    sget-object v0, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    sget-object v0, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    sget-object v0, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/p;->a:Lzte/com/cn/driverMode/service/m;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/m;->b(Lzte/com/cn/driverMode/service/m;)Lzte/com/cn/driverMode/service/bv;

    move-result-object v0

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/bv;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x1006

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/vocon/VoconError;->getReasonCode()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lzte/com/cn/driverMode/service/p;->a:Lzte/com/cn/driverMode/service/m;

    invoke-static {v1}, Lzte/com/cn/driverMode/service/m;->b(Lzte/com/cn/driverMode/service/m;)Lzte/com/cn/driverMode/service/bv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lzte/com/cn/driverMode/service/bv;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
