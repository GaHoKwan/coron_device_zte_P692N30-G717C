.class final Lcom/nuance/dragon/toolkit/vocon/d$a$1$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$CleanListener;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/vocon/d$a$1$1;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/vocon/d$a$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocon/d$a$1$1$1;->a:Lcom/nuance/dragon/toolkit/vocon/d$a$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCleaned()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$a$1$1$1;->a:Lcom/nuance/dragon/toolkit/vocon/d$a$1$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$a$1$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$a$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$a$1;->c:Lcom/nuance/dragon/toolkit/vocon/d$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d$a;->b(Lcom/nuance/dragon/toolkit/vocon/d$a;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$a$1$1$1;->a:Lcom/nuance/dragon/toolkit/vocon/d$a$1$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$a$1$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$a$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$a$1;->c:Lcom/nuance/dragon/toolkit/vocon/d$a;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$a;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d;->j(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/d$a;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$a$1$1$1;->a:Lcom/nuance/dragon/toolkit/vocon/d$a$1$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$a$1$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$a$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$a$1;->c:Lcom/nuance/dragon/toolkit/vocon/d$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d$a;->c(Lcom/nuance/dragon/toolkit/vocon/d$a;)Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$CompileListener;

    move-result-object v0

    new-instance v1, Lcom/nuance/dragon/toolkit/vocon/VoconError;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lcom/nuance/dragon/toolkit/vocon/VoconError;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$CompileListener;->onError(Lcom/nuance/dragon/toolkit/vocon/VoconError;)V

    return-void
.end method
