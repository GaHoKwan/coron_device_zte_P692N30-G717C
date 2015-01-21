.class final Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$6;->b:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$6;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$6;->b:Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;->b(Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink;)Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$a;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$6;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/audio/sinks/PlayerSink$a;->a(Ljava/util/List;)V

    return-void
.end method
