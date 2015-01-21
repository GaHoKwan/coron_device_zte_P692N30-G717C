.class final Lcom/nuance/dragon/toolkit/vocon/d$8$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/vocon/d$8;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/vocon/d$8;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocon/d$8$1;->a:Lcom/nuance/dragon/toolkit/vocon/d$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$8$1;->a:Lcom/nuance/dragon/toolkit/vocon/d$8;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$8;->a:Lcom/nuance/dragon/toolkit/vocon/d$b;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$8$1;->a:Lcom/nuance/dragon/toolkit/vocon/d$8;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/vocon/d$8;->d:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/vocon/d;->i(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/d$b;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$8$1;->a:Lcom/nuance/dragon/toolkit/vocon/d$8;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$8;->d:Lcom/nuance/dragon/toolkit/vocon/d;

    const-string v1, "Cannot load VoCon State or Grammar.  VoCon is not initialized. "

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$8$1;->a:Lcom/nuance/dragon/toolkit/vocon/d$8;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$8;->b:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$RebuildListener;

    new-instance v1, Lcom/nuance/dragon/toolkit/vocon/VoconError;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/nuance/dragon/toolkit/vocon/VoconError;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$RebuildListener;->onError(Lcom/nuance/dragon/toolkit/vocon/VoconError;)V

    :cond_0
    return-void
.end method
