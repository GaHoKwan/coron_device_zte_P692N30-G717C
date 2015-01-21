.class final Lcom/nuance/dragon/toolkit/vocon/d$b$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/vocon/VoconError;

.field final synthetic b:Lcom/nuance/dragon/toolkit/vocon/d$b;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/vocon/d$b;Lcom/nuance/dragon/toolkit/vocon/VoconError;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$3;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$3;->a:Lcom/nuance/dragon/toolkit/vocon/VoconError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$3;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d$b;->b(Lcom/nuance/dragon/toolkit/vocon/d$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$3;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d$b;->e(Lcom/nuance/dragon/toolkit/vocon/d$b;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$3;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d$b;->f(Lcom/nuance/dragon/toolkit/vocon/d$b;)Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$RebuildListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$3;->a:Lcom/nuance/dragon/toolkit/vocon/VoconError;

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$RebuildListener;->onError(Lcom/nuance/dragon/toolkit/vocon/VoconError;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$3;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$b;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d;->i(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/d$b;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$3;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$b$3;->b:Lcom/nuance/dragon/toolkit/vocon/d$b;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$b;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/vocon/d;->a(Lcom/nuance/dragon/toolkit/vocon/d;Lcom/nuance/dragon/toolkit/vocon/d$b;)Lcom/nuance/dragon/toolkit/vocon/d$b;

    :cond_0
    return-void
.end method
