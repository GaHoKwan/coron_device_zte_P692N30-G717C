.class final Lcom/nuance/dragon/toolkit/vocon/d$c$2$1$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/vocon/d$c$2$1;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/vocon/d$c$2$1;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$2$1$3;->a:Lcom/nuance/dragon/toolkit/vocon/d$c$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$2$1$3;->a:Lcom/nuance/dragon/toolkit/vocon/d$c$2$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$c$2$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$c$2;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$c$2;->d:Lcom/nuance/dragon/toolkit/vocon/d$c;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/vocon/d$c;->disconnectAudioSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$2$1$3;->a:Lcom/nuance/dragon/toolkit/vocon/d$c$2$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$c$2$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$c$2;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$c$2;->d:Lcom/nuance/dragon/toolkit/vocon/d$c;

    new-instance v1, Lcom/nuance/dragon/toolkit/vocon/VoconError;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/nuance/dragon/toolkit/vocon/VoconError;-><init>(I)V

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/vocon/d$c;->a(Lcom/nuance/dragon/toolkit/vocon/d$c;Lcom/nuance/dragon/toolkit/vocon/VoconError;)V

    return-void
.end method
