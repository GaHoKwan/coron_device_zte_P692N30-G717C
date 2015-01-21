.class final Lcom/nuance/dragon/toolkit/vocon/d$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/vocon/d$4;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/vocon/d$4;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocon/d$4$1;->a:Lcom/nuance/dragon/toolkit/vocon/d$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$4$1;->a:Lcom/nuance/dragon/toolkit/vocon/d$4;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$4;->a:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ReleaseListener;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$4$1;->a:Lcom/nuance/dragon/toolkit/vocon/d$4;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/vocon/d$4;->b:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ReleaseListener;->onReleased(Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;)V

    return-void
.end method
