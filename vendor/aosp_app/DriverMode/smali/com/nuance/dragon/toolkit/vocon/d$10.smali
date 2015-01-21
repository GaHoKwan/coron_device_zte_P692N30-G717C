.class final Lcom/nuance/dragon/toolkit/vocon/d$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResourceReleaseListener;

.field final synthetic c:Lcom/nuance/dragon/toolkit/vocon/d;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/vocon/d;Ljava/lang/String;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResourceReleaseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocon/d$10;->c:Lcom/nuance/dragon/toolkit/vocon/d;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/vocon/d$10;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/vocon/d$10;->b:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResourceReleaseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$10;->c:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d;->a(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$10;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/vocon/NativeVocon;->m(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$10;->c:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d;->b(Lcom/nuance/dragon/toolkit/vocon/d;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nuance/dragon/toolkit/vocon/d$10$1;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/vocon/d$10$1;-><init>(Lcom/nuance/dragon/toolkit/vocon/d$10;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
