.class final Lcom/nuance/dragon/toolkit/vocon/d$8$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/vocon/Grammar;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/nuance/dragon/toolkit/vocon/d$8;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/vocon/d$8;Lcom/nuance/dragon/toolkit/vocon/Grammar;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocon/d$8$2;->c:Lcom/nuance/dragon/toolkit/vocon/d$8;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/vocon/d$8$2;->a:Lcom/nuance/dragon/toolkit/vocon/Grammar;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/vocon/d$8$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$8$2;->c:Lcom/nuance/dragon/toolkit/vocon/d$8;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$8;->a:Lcom/nuance/dragon/toolkit/vocon/d$b;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$8$2;->c:Lcom/nuance/dragon/toolkit/vocon/d$8;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/vocon/d$8;->d:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/vocon/d;->i(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/d$b;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$8$2;->a:Lcom/nuance/dragon/toolkit/vocon/Grammar;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$8$2;->c:Lcom/nuance/dragon/toolkit/vocon/d$8;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$8;->c:Lcom/nuance/dragon/toolkit/vocon/Grammar;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$8$2;->c:Lcom/nuance/dragon/toolkit/vocon/d$8;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$8;->d:Lcom/nuance/dragon/toolkit/vocon/d;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VoCon loading VoCon state from: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/d$8$2;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$8$2;->c:Lcom/nuance/dragon/toolkit/vocon/d$8;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$8;->b:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$RebuildListener;

    new-instance v1, Lcom/nuance/dragon/toolkit/vocon/VoconError;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lcom/nuance/dragon/toolkit/vocon/VoconError;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$RebuildListener;->onError(Lcom/nuance/dragon/toolkit/vocon/VoconError;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$8$2;->c:Lcom/nuance/dragon/toolkit/vocon/d$8;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$8;->c:Lcom/nuance/dragon/toolkit/vocon/Grammar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$8$2;->c:Lcom/nuance/dragon/toolkit/vocon/d$8;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$8;->d:Lcom/nuance/dragon/toolkit/vocon/d;

    new-instance v1, Lcom/nuance/dragon/toolkit/vocon/d$b;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/d$8$2;->c:Lcom/nuance/dragon/toolkit/vocon/d$8;

    iget-object v2, v2, Lcom/nuance/dragon/toolkit/vocon/d$8;->d:Lcom/nuance/dragon/toolkit/vocon/d;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/vocon/d$8$2;->c:Lcom/nuance/dragon/toolkit/vocon/d$8;

    iget-object v3, v3, Lcom/nuance/dragon/toolkit/vocon/d$8;->c:Lcom/nuance/dragon/toolkit/vocon/Grammar;

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/vocon/d$8$2;->a:Lcom/nuance/dragon/toolkit/vocon/Grammar;

    iget-object v5, p0, Lcom/nuance/dragon/toolkit/vocon/d$8$2;->c:Lcom/nuance/dragon/toolkit/vocon/d$8;

    iget-object v5, v5, Lcom/nuance/dragon/toolkit/vocon/d$8;->b:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$RebuildListener;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nuance/dragon/toolkit/vocon/d$b;-><init>(Lcom/nuance/dragon/toolkit/vocon/d;Lcom/nuance/dragon/toolkit/vocon/Grammar;Lcom/nuance/dragon/toolkit/vocon/Grammar;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$RebuildListener;)V

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/vocon/d;->a(Lcom/nuance/dragon/toolkit/vocon/d;Lcom/nuance/dragon/toolkit/vocon/d$b;)Lcom/nuance/dragon/toolkit/vocon/d$b;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$8$2;->a:Lcom/nuance/dragon/toolkit/vocon/Grammar;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$8$2;->c:Lcom/nuance/dragon/toolkit/vocon/d$8;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$8;->d:Lcom/nuance/dragon/toolkit/vocon/d;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to load VoCon state from: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/d$8$2;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", doing a full grammar rebuild"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$8$2;->c:Lcom/nuance/dragon/toolkit/vocon/d$8;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$8;->d:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d;->i(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/d$b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/vocon/d$b;->a(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$8$2;->c:Lcom/nuance/dragon/toolkit/vocon/d$8;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$8;->d:Lcom/nuance/dragon/toolkit/vocon/d;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$8$2;->c:Lcom/nuance/dragon/toolkit/vocon/d$8;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$8;->d:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d;->i(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/d$b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/vocon/d$b;->a(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$8$2;->c:Lcom/nuance/dragon/toolkit/vocon/d$8;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$8;->d:Lcom/nuance/dragon/toolkit/vocon/d;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$8$2;->c:Lcom/nuance/dragon/toolkit/vocon/d$8;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$8;->d:Lcom/nuance/dragon/toolkit/vocon/d;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$8$2;->a:Lcom/nuance/dragon/toolkit/vocon/Grammar;

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/vocon/d;->a(Lcom/nuance/dragon/toolkit/vocon/d;Lcom/nuance/dragon/toolkit/vocon/Grammar;)Lcom/nuance/dragon/toolkit/vocon/Grammar;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$8$2;->c:Lcom/nuance/dragon/toolkit/vocon/d$8;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$8;->b:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$RebuildListener;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$8$2;->a:Lcom/nuance/dragon/toolkit/vocon/Grammar;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$RebuildListener;->onComplete(Lcom/nuance/dragon/toolkit/vocon/Grammar;Ljava/util/List;)V

    goto :goto_0
.end method
