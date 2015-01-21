.class final Lcom/nuance/dragon/toolkit/vocon/d$6$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/nuance/dragon/toolkit/vocon/d$6;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/vocon/d$6;Z)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocon/d$6$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$6;

    iput-boolean p2, p0, Lcom/nuance/dragon/toolkit/vocon/d$6$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$6$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$6;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$6;->a:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$RebuildListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$6$1;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$6$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$6;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$6;->a:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$RebuildListener;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$6$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$6;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/vocon/d$6;->b:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/vocon/d;->h(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/Grammar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$RebuildListener;->onComplete(Lcom/nuance/dragon/toolkit/vocon/Grammar;Ljava/util/List;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$6$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$6;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$6;->b:Lcom/nuance/dragon/toolkit/vocon/d;

    new-instance v1, Lcom/nuance/dragon/toolkit/vocon/Grammar;

    invoke-direct {v1}, Lcom/nuance/dragon/toolkit/vocon/Grammar;-><init>()V

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/vocon/d;->a(Lcom/nuance/dragon/toolkit/vocon/d;Lcom/nuance/dragon/toolkit/vocon/Grammar;)Lcom/nuance/dragon/toolkit/vocon/Grammar;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$6$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$6;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$6;->a:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$RebuildListener;

    new-instance v1, Lcom/nuance/dragon/toolkit/vocon/VoconError;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Lcom/nuance/dragon/toolkit/vocon/VoconError;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$RebuildListener;->onError(Lcom/nuance/dragon/toolkit/vocon/VoconError;)V

    goto :goto_0
.end method
