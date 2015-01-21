.class final Lcom/nuance/dragon/toolkit/vocon/d$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$RebuildListener;

.field final synthetic b:Lcom/nuance/dragon/toolkit/vocon/d;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/vocon/d;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$RebuildListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocon/d$6;->b:Lcom/nuance/dragon/toolkit/vocon/d;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/vocon/d$6;->a:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$RebuildListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$6;->b:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/vocon/d;->h(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/Grammar;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$6;->b:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/vocon/d;->f(Lcom/nuance/dragon/toolkit/vocon/d;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$6;->b:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d;->h(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/Grammar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/vocon/Grammar;->getContexts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/vocon/VoconContext;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->getSlotIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/vocon/d$6;->b:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v3}, Lcom/nuance/dragon/toolkit/vocon/d;->a(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/nuance/dragon/toolkit/vocon/NativeVocon;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/vocon/d$6;->b:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v3}, Lcom/nuance/dragon/toolkit/vocon/d;->a(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/nuance/dragon/toolkit/vocon/NativeVocon;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :cond_3
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$6;->b:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/vocon/d;->b(Lcom/nuance/dragon/toolkit/vocon/d;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/nuance/dragon/toolkit/vocon/d$6$1;

    invoke-direct {v2, p0, v0}, Lcom/nuance/dragon/toolkit/vocon/d$6$1;-><init>(Lcom/nuance/dragon/toolkit/vocon/d$6;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
