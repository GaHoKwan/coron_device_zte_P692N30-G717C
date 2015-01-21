.class final Lcom/nuance/dragon/toolkit/vocon/d$c$1$1$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/vocon/VoconResult;

.field final synthetic b:Lcom/nuance/dragon/toolkit/vocon/d$c$1$1;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/vocon/d$c$1$1;Lcom/nuance/dragon/toolkit/vocon/VoconResult;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$1$1$8;->b:Lcom/nuance/dragon/toolkit/vocon/d$c$1$1;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$1$1$8;->a:Lcom/nuance/dragon/toolkit/vocon/VoconResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$1$1$8;->b:Lcom/nuance/dragon/toolkit/vocon/d$c$1$1;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d$c$1$1;->a(Lcom/nuance/dragon/toolkit/vocon/d$c$1$1;)I

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$1$1$8;->b:Lcom/nuance/dragon/toolkit/vocon/d$c$1$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$c$1$1;->c:Lcom/nuance/dragon/toolkit/vocon/d$c$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$c$1;->e:Lcom/nuance/dragon/toolkit/vocon/d$c;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$c;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d;->c(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/d$c;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$1$1$8;->b:Lcom/nuance/dragon/toolkit/vocon/d$c$1$1;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/vocon/d$c$1$1;->c:Lcom/nuance/dragon/toolkit/vocon/d$c$1;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/vocon/d$c$1;->e:Lcom/nuance/dragon/toolkit/vocon/d$c;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$1$1$8;->b:Lcom/nuance/dragon/toolkit/vocon/d$c$1$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$c$1$1;->c:Lcom/nuance/dragon/toolkit/vocon/d$c$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$c$1;->e:Lcom/nuance/dragon/toolkit/vocon/d$c;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d$c;->h(Lcom/nuance/dragon/toolkit/vocon/d$c;)Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$1$1$8;->b:Lcom/nuance/dragon/toolkit/vocon/d$c$1$1;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/vocon/d$c$1$1;->b(Lcom/nuance/dragon/toolkit/vocon/d$c$1$1;)I

    move-result v1

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$1$1$8;->b:Lcom/nuance/dragon/toolkit/vocon/d$c$1$1;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/vocon/d$c$1$1;->c(Lcom/nuance/dragon/toolkit/vocon/d$c$1$1;)I

    move-result v2

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$1$1$8;->b:Lcom/nuance/dragon/toolkit/vocon/d$c$1$1;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/vocon/d$c$1$1;->c:Lcom/nuance/dragon/toolkit/vocon/d$c$1;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/vocon/d$c$1;->e:Lcom/nuance/dragon/toolkit/vocon/d$c;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/vocon/d$c;->i(Lcom/nuance/dragon/toolkit/vocon/d$c;)Z

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$1$1$8;->b:Lcom/nuance/dragon/toolkit/vocon/d$c$1$1;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/vocon/d$c$1$1;->c:Lcom/nuance/dragon/toolkit/vocon/d$c$1;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/vocon/d$c$1;->e:Lcom/nuance/dragon/toolkit/vocon/d$c;

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/vocon/d$c;->disconnectAudioSource()Lcom/nuance/dragon/toolkit/audio/AudioSource;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$1$1$8;->b:Lcom/nuance/dragon/toolkit/vocon/d$c$1$1;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/vocon/d$c$1$1;->c:Lcom/nuance/dragon/toolkit/vocon/d$c$1;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/vocon/d$c$1;->e:Lcom/nuance/dragon/toolkit/vocon/d$c;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/vocon/d$c;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/vocon/d;->d(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/d$c;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$1$1$8;->b:Lcom/nuance/dragon/toolkit/vocon/d$c$1$1;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/vocon/d$c$1$1;->c:Lcom/nuance/dragon/toolkit/vocon/d$c$1;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/vocon/d$c$1;->e:Lcom/nuance/dragon/toolkit/vocon/d$c;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/vocon/d$c;->j(Lcom/nuance/dragon/toolkit/vocon/d$c;)Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$1$1$8;->a:Lcom/nuance/dragon/toolkit/vocon/VoconResult;

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;->onResult(Lcom/nuance/dragon/toolkit/vocon/VoconResult;)V

    :cond_1
    return-void
.end method
