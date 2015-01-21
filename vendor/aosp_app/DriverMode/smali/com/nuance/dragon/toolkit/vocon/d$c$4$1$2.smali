.class final Lcom/nuance/dragon/toolkit/vocon/d$c$4$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/vocon/VoconResult;

.field final synthetic b:Lcom/nuance/dragon/toolkit/vocon/d$c$4$1;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/vocon/d$c$4$1;Lcom/nuance/dragon/toolkit/vocon/VoconResult;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$4$1$2;->b:Lcom/nuance/dragon/toolkit/vocon/d$c$4$1;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$4$1$2;->a:Lcom/nuance/dragon/toolkit/vocon/VoconResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$4$1$2;->b:Lcom/nuance/dragon/toolkit/vocon/d$c$4$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$c$4$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$c$4;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$c$4;->h:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$4$1$2;->a:Lcom/nuance/dragon/toolkit/vocon/VoconResult;

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;->onResult(Lcom/nuance/dragon/toolkit/vocon/VoconResult;)V

    return-void
.end method
