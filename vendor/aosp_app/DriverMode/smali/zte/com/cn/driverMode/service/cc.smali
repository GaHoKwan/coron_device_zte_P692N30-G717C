.class final Lzte/com/cn/driverMode/service/cc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$Listener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/service/ca;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/service/ca;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/cc;->a:Lzte/com/cn/driverMode/service/ca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStarted(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;)V
    .locals 2

    const-string v0, "DMTtsEngine"

    const-string v1, "playListener start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onStopped(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;)V
    .locals 2

    const-string v0, "DMTtsEngine"

    const-string v1, "playListener stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
