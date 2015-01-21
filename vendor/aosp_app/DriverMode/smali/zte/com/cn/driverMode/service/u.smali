.class final Lzte/com/cn/driverMode/service/u;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/audio/SpeechDetectionListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/service/m;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/service/m;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/u;->a:Lzte/com/cn/driverMode/service/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEndOfSpeech()V
    .locals 2

    const-string v0, "LocalEngine"

    const-string v1, "End of speech detected..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onStartOfSpeech()V
    .locals 2

    const-string v0, "TAG"

    const-string v1, "Start of speech detected..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/u;->a:Lzte/com/cn/driverMode/service/m;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/m;->j()V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/u;->a:Lzte/com/cn/driverMode/service/m;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/m;->b(Lzte/com/cn/driverMode/service/m;)Lzte/com/cn/driverMode/service/bv;

    move-result-object v0

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/bv;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x1008

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lzte/com/cn/driverMode/service/u;->a:Lzte/com/cn/driverMode/service/m;

    invoke-static {v1}, Lzte/com/cn/driverMode/service/m;->b(Lzte/com/cn/driverMode/service/m;)Lzte/com/cn/driverMode/service/bv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lzte/com/cn/driverMode/service/bv;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lzte/com/cn/driverMode/service/u;->a:Lzte/com/cn/driverMode/service/m;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lzte/com/cn/driverMode/service/m;->m:Z

    return-void
.end method
