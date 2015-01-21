.class final Lcom/nuance/dragon/toolkit/vocon/d$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ReleaseListener;

.field final synthetic b:Lcom/nuance/dragon/toolkit/vocon/d;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/vocon/d;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ReleaseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocon/d$4;->b:Lcom/nuance/dragon/toolkit/vocon/d;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/vocon/d$4;->a:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ReleaseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$4;->b:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d;->f(Lcom/nuance/dragon/toolkit/vocon/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$4;->b:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d;->a(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/vocon/NativeVocon;->a()V

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$4;->b:Lcom/nuance/dragon/toolkit/vocon/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/vocon/d;->a(Lcom/nuance/dragon/toolkit/vocon/d;Z)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$4;->b:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d;->k(Lcom/nuance/dragon/toolkit/vocon/d;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$4;->a:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ReleaseListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$4;->b:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d;->b(Lcom/nuance/dragon/toolkit/vocon/d;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nuance/dragon/toolkit/vocon/d$4$1;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/vocon/d$4$1;-><init>(Lcom/nuance/dragon/toolkit/vocon/d$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
