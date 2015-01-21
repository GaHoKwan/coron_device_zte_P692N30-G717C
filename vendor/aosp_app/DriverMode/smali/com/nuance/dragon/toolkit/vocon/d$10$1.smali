.class final Lcom/nuance/dragon/toolkit/vocon/d$10$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/vocon/d$10;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/vocon/d$10;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocon/d$10$1;->a:Lcom/nuance/dragon/toolkit/vocon/d$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$10$1;->a:Lcom/nuance/dragon/toolkit/vocon/d$10;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$10;->b:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResourceReleaseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$10$1;->a:Lcom/nuance/dragon/toolkit/vocon/d$10;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$10;->b:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResourceReleaseListener;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$10$1;->a:Lcom/nuance/dragon/toolkit/vocon/d$10;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/vocon/d$10;->c:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResourceReleaseListener;->onReleased(Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;)V

    :cond_0
    return-void
.end method
