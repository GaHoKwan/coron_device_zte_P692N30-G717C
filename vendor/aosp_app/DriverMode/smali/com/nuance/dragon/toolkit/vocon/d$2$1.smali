.class final Lcom/nuance/dragon/toolkit/vocon/d$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/vocon/d$2;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/vocon/d$2;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocon/d$2$1;->a:Lcom/nuance/dragon/toolkit/vocon/d$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$2$1;->a:Lcom/nuance/dragon/toolkit/vocon/d$2;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$2;->b:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$CleanListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$2$1;->a:Lcom/nuance/dragon/toolkit/vocon/d$2;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$2;->b:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$CleanListener;

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$CleanListener;->onCleaned()V

    :cond_0
    return-void
.end method
