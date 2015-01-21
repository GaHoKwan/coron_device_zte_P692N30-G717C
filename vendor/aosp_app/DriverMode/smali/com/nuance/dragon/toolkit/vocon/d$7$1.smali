.class final Lcom/nuance/dragon/toolkit/vocon/d$7$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/vocon/d$7;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/vocon/d$7;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocon/d$7$1;->a:Lcom/nuance/dragon/toolkit/vocon/d$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$7$1;->a:Lcom/nuance/dragon/toolkit/vocon/d$7;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$7;->a:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$SaveListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$7$1;->a:Lcom/nuance/dragon/toolkit/vocon/d$7;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$7;->a:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$SaveListener;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$7$1;->a:Lcom/nuance/dragon/toolkit/vocon/d$7;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/vocon/d$7;->c:Lcom/nuance/dragon/toolkit/vocon/d;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$SaveListener;->onSaved(Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;Z)V

    :cond_0
    return-void
.end method
