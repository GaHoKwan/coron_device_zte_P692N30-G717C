.class final Lzte/com/cn/driverMode/service/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$InitializeListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/service/q;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/service/q;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/r;->a:Lzte/com/cn/driverMode/service/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoaded(Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;Z)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/r;->a:Lzte/com/cn/driverMode/service/q;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/q;->a:Lzte/com/cn/driverMode/service/m;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/m;->b(Lzte/com/cn/driverMode/service/m;)Lzte/com/cn/driverMode/service/bv;

    move-result-object v0

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/bv;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    if-eqz p2, :cond_0

    const-string v1, "LocalEngine"

    const-string v2, "Vocon initialize  completed.\n"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v2, 0x4

    aput-boolean v3, v1, v2

    sget-object v1, Lzte/com/cn/driverMode/service/m;->e:[Z

    const/4 v2, 0x7

    aput-boolean v3, v1, v2

    const/16 v1, 0x1001

    iput v1, v0, Landroid/os/Message;->what:I

    :goto_0
    iget-object v1, p0, Lzte/com/cn/driverMode/service/r;->a:Lzte/com/cn/driverMode/service/q;

    iget-object v1, v1, Lzte/com/cn/driverMode/service/q;->a:Lzte/com/cn/driverMode/service/m;

    invoke-static {v1}, Lzte/com/cn/driverMode/service/m;->b(Lzte/com/cn/driverMode/service/m;)Lzte/com/cn/driverMode/service/bv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lzte/com/cn/driverMode/service/bv;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const-string v1, "LocalEngine"

    const-string v2, "Vocon initialize  Failed.\n"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x1002

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0
.end method
