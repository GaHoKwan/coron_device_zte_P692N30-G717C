.class final Lcom/nuance/dragon/toolkit/vocon/d$a$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/nuance/dragon/toolkit/vocon/d$a$1;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/vocon/d$a$1;Z)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocon/d$a$1$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$a$1;

    iput-boolean p2, p0, Lcom/nuance/dragon/toolkit/vocon/d$a$1$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$a$1$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$a$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$a$1;->c:Lcom/nuance/dragon/toolkit/vocon/d$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d$a;->a(Lcom/nuance/dragon/toolkit/vocon/d$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$a$1$1;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$a$1$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$a$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$a$1;->c:Lcom/nuance/dragon/toolkit/vocon/d$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d$a;->b(Lcom/nuance/dragon/toolkit/vocon/d$a;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$a$1$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$a$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$a$1;->c:Lcom/nuance/dragon/toolkit/vocon/d$a;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$a;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d;->j(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/d$a;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$a$1$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$a$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$a$1;->c:Lcom/nuance/dragon/toolkit/vocon/d$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d$a;->c(Lcom/nuance/dragon/toolkit/vocon/d$a;)Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$CompileListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$a$1$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$a$1;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/vocon/d$a$1;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$CompileListener;->onComplete(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$a$1$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$a$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$a$1;->c:Lcom/nuance/dragon/toolkit/vocon/d$a;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$a;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$a$1$1;->b:Lcom/nuance/dragon/toolkit/vocon/d$a$1;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/vocon/d$a$1;->b:Ljava/lang/String;

    new-instance v2, Lcom/nuance/dragon/toolkit/vocon/d$a$1$1$1;

    invoke-direct {v2, p0}, Lcom/nuance/dragon/toolkit/vocon/d$a$1$1$1;-><init>(Lcom/nuance/dragon/toolkit/vocon/d$a$1$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/vocon/d;->clean(Ljava/lang/String;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$CleanListener;)V

    goto :goto_0
.end method
