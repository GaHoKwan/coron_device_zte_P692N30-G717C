.class final Lcom/nuance/dragon/toolkit/vocon/d$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/vocon/d$b;

.field final synthetic b:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$RebuildListener;

.field final synthetic c:Lcom/nuance/dragon/toolkit/vocon/Grammar;

.field final synthetic d:Lcom/nuance/dragon/toolkit/vocon/d;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/vocon/d;Lcom/nuance/dragon/toolkit/vocon/d$b;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$RebuildListener;Lcom/nuance/dragon/toolkit/vocon/Grammar;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocon/d$8;->d:Lcom/nuance/dragon/toolkit/vocon/d;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/vocon/d$8;->a:Lcom/nuance/dragon/toolkit/vocon/d$b;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/vocon/d$8;->b:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$RebuildListener;

    iput-object p4, p0, Lcom/nuance/dragon/toolkit/vocon/d$8;->c:Lcom/nuance/dragon/toolkit/vocon/Grammar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$8;->d:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d;->f(Lcom/nuance/dragon/toolkit/vocon/d;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$8;->d:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d;->b(Lcom/nuance/dragon/toolkit/vocon/d;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nuance/dragon/toolkit/vocon/d$8$1;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/vocon/d$8$1;-><init>(Lcom/nuance/dragon/toolkit/vocon/d$8;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$8;->d:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d;->g(Lcom/nuance/dragon/toolkit/vocon/d;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$8;->d:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/vocon/d;->a(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/d$8;->d:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/vocon/d;->g(Lcom/nuance/dragon/toolkit/vocon/d;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/dragon/toolkit/vocon/NativeVocon;->k(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/vocon/Grammar;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/d$8;->d:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/vocon/d;->b(Lcom/nuance/dragon/toolkit/vocon/d;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/nuance/dragon/toolkit/vocon/d$8$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/nuance/dragon/toolkit/vocon/d$8$2;-><init>(Lcom/nuance/dragon/toolkit/vocon/d$8;Lcom/nuance/dragon/toolkit/vocon/Grammar;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
