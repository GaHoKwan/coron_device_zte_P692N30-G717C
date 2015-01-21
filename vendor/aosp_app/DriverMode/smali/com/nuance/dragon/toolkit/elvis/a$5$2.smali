.class final Lcom/nuance/dragon/toolkit/elvis/a$5$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/elvis/Grammar;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/nuance/dragon/toolkit/elvis/a$5;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/elvis/a$5;Lcom/nuance/dragon/toolkit/elvis/Grammar;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/elvis/a$5$2;->d:Lcom/nuance/dragon/toolkit/elvis/a$5;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/elvis/a$5$2;->a:Lcom/nuance/dragon/toolkit/elvis/Grammar;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/elvis/a$5$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/nuance/dragon/toolkit/elvis/a$5$2;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$5$2;->d:Lcom/nuance/dragon/toolkit/elvis/a$5;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$5;->a:Lcom/nuance/dragon/toolkit/elvis/a$a;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$5$2;->d:Lcom/nuance/dragon/toolkit/elvis/a$5;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/elvis/a$5;->d:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/elvis/a;->h(Lcom/nuance/dragon/toolkit/elvis/a;)Lcom/nuance/dragon/toolkit/elvis/a$a;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$5$2;->a:Lcom/nuance/dragon/toolkit/elvis/Grammar;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$5$2;->d:Lcom/nuance/dragon/toolkit/elvis/a$5;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$5;->c:Lcom/nuance/dragon/toolkit/elvis/Grammar;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$5$2;->d:Lcom/nuance/dragon/toolkit/elvis/a$5;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$5;->d:Lcom/nuance/dragon/toolkit/elvis/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error loading Elvis state from: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/a$5$2;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$5$2;->d:Lcom/nuance/dragon/toolkit/elvis/a$5;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$5;->b:Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$RebuildListener;

    new-instance v1, Lcom/nuance/dragon/toolkit/elvis/ElvisError;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lcom/nuance/dragon/toolkit/elvis/ElvisError;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$RebuildListener;->onError(Lcom/nuance/dragon/toolkit/elvis/ElvisError;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$5$2;->d:Lcom/nuance/dragon/toolkit/elvis/a$5;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$5;->c:Lcom/nuance/dragon/toolkit/elvis/Grammar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$5$2;->d:Lcom/nuance/dragon/toolkit/elvis/a$5;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$5;->d:Lcom/nuance/dragon/toolkit/elvis/a;

    new-instance v1, Lcom/nuance/dragon/toolkit/elvis/a$a;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/a$5$2;->d:Lcom/nuance/dragon/toolkit/elvis/a$5;

    iget-object v2, v2, Lcom/nuance/dragon/toolkit/elvis/a$5;->d:Lcom/nuance/dragon/toolkit/elvis/a;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/elvis/a$5$2;->d:Lcom/nuance/dragon/toolkit/elvis/a$5;

    iget-object v3, v3, Lcom/nuance/dragon/toolkit/elvis/a$5;->c:Lcom/nuance/dragon/toolkit/elvis/Grammar;

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/elvis/a$5$2;->a:Lcom/nuance/dragon/toolkit/elvis/Grammar;

    iget-object v5, p0, Lcom/nuance/dragon/toolkit/elvis/a$5$2;->d:Lcom/nuance/dragon/toolkit/elvis/a$5;

    iget-object v5, v5, Lcom/nuance/dragon/toolkit/elvis/a$5;->b:Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$RebuildListener;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nuance/dragon/toolkit/elvis/a$a;-><init>(Lcom/nuance/dragon/toolkit/elvis/a;Lcom/nuance/dragon/toolkit/elvis/Grammar;Lcom/nuance/dragon/toolkit/elvis/Grammar;Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$RebuildListener;)V

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/a;->a(Lcom/nuance/dragon/toolkit/elvis/a;Lcom/nuance/dragon/toolkit/elvis/a$a;)Lcom/nuance/dragon/toolkit/elvis/a$a;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$5$2;->a:Lcom/nuance/dragon/toolkit/elvis/Grammar;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$5$2;->d:Lcom/nuance/dragon/toolkit/elvis/a$5;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$5;->d:Lcom/nuance/dragon/toolkit/elvis/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to load Elvis state from: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/a$5$2;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", doing a full grammar rebuild"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$5$2;->d:Lcom/nuance/dragon/toolkit/elvis/a$5;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$5;->d:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a;->h(Lcom/nuance/dragon/toolkit/elvis/a;)Lcom/nuance/dragon/toolkit/elvis/a$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/a$a;->a(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$5$2;->d:Lcom/nuance/dragon/toolkit/elvis/a$5;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$5;->d:Lcom/nuance/dragon/toolkit/elvis/a;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$5$2;->d:Lcom/nuance/dragon/toolkit/elvis/a$5;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$5;->d:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a;->h(Lcom/nuance/dragon/toolkit/elvis/a;)Lcom/nuance/dragon/toolkit/elvis/a$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/a$a;->a(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$5$2;->d:Lcom/nuance/dragon/toolkit/elvis/a$5;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$5;->d:Lcom/nuance/dragon/toolkit/elvis/a;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$5$2;->a:Lcom/nuance/dragon/toolkit/elvis/Grammar;

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/a;->a(Lcom/nuance/dragon/toolkit/elvis/a;Lcom/nuance/dragon/toolkit/elvis/Grammar;)Lcom/nuance/dragon/toolkit/elvis/Grammar;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$5$2;->d:Lcom/nuance/dragon/toolkit/elvis/a$5;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$5;->b:Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$RebuildListener;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$5$2;->a:Lcom/nuance/dragon/toolkit/elvis/Grammar;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/a$5$2;->c:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$RebuildListener;->onComplete(Lcom/nuance/dragon/toolkit/elvis/Grammar;Ljava/util/List;)V

    goto :goto_0
.end method
