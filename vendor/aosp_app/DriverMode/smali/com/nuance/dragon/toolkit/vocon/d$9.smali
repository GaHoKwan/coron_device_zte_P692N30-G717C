.class final Lcom/nuance/dragon/toolkit/vocon/d$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResourceLoadListener;

.field final synthetic c:Lcom/nuance/dragon/toolkit/vocon/d;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/vocon/d;Ljava/lang/String;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResourceLoadListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocon/d$9;->c:Lcom/nuance/dragon/toolkit/vocon/d;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/vocon/d$9;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/vocon/d$9;->b:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResourceLoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$9;->c:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d;->a(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$9;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/vocon/NativeVocon;->l(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$9;->c:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/vocon/d;->b(Lcom/nuance/dragon/toolkit/vocon/d;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/nuance/dragon/toolkit/vocon/d$9$1;

    invoke-direct {v2, p0, v0}, Lcom/nuance/dragon/toolkit/vocon/d$9$1;-><init>(Lcom/nuance/dragon/toolkit/vocon/d$9;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
