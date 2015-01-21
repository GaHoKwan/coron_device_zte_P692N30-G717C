.class final Lcom/nuance/dragon/toolkit/vocon/d$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$SaveListener;

.field final synthetic b:Lcom/nuance/dragon/toolkit/vocon/Grammar;

.field final synthetic c:Lcom/nuance/dragon/toolkit/vocon/d;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/vocon/d;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$SaveListener;Lcom/nuance/dragon/toolkit/vocon/Grammar;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocon/d$7;->c:Lcom/nuance/dragon/toolkit/vocon/d;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/vocon/d$7;->a:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$SaveListener;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/vocon/d$7;->b:Lcom/nuance/dragon/toolkit/vocon/Grammar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$7;->c:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d;->h(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/Grammar;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Error: grammar is not loaded."

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$7;->c:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d;->b(Lcom/nuance/dragon/toolkit/vocon/d;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nuance/dragon/toolkit/vocon/d$7$1;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/vocon/d$7$1;-><init>(Lcom/nuance/dragon/toolkit/vocon/d$7;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$7;->c:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d;->a(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$7;->c:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/vocon/d;->g(Lcom/nuance/dragon/toolkit/vocon/d;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/d$7;->b:Lcom/nuance/dragon/toolkit/vocon/Grammar;

    invoke-interface {v0, v1, v2}, Lcom/nuance/dragon/toolkit/vocon/NativeVocon;->a(Ljava/lang/String;Lcom/nuance/dragon/toolkit/vocon/Grammar;)Z

    move-result v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$7;->c:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/vocon/d;->b(Lcom/nuance/dragon/toolkit/vocon/d;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/nuance/dragon/toolkit/vocon/d$7$2;

    invoke-direct {v2, p0, v0}, Lcom/nuance/dragon/toolkit/vocon/d$7$2;-><init>(Lcom/nuance/dragon/toolkit/vocon/d$7;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
