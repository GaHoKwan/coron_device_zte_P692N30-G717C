.class final Lcom/nuance/dragon/toolkit/elvis/a$5$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/elvis/a$5;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/elvis/a$5;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/elvis/a$5$1;->a:Lcom/nuance/dragon/toolkit/elvis/a$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$5$1;->a:Lcom/nuance/dragon/toolkit/elvis/a$5;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$5;->a:Lcom/nuance/dragon/toolkit/elvis/a$a;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$5$1;->a:Lcom/nuance/dragon/toolkit/elvis/a$5;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/elvis/a$5;->d:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/elvis/a;->h(Lcom/nuance/dragon/toolkit/elvis/a;)Lcom/nuance/dragon/toolkit/elvis/a$a;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$5$1;->a:Lcom/nuance/dragon/toolkit/elvis/a$5;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$5;->d:Lcom/nuance/dragon/toolkit/elvis/a;

    const-string v1, "Cannot load Elvis State or Grammar.  Elvis is not initialized. "

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$5$1;->a:Lcom/nuance/dragon/toolkit/elvis/a$5;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$5;->b:Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$RebuildListener;

    new-instance v1, Lcom/nuance/dragon/toolkit/elvis/ElvisError;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Lcom/nuance/dragon/toolkit/elvis/ElvisError;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$RebuildListener;->onError(Lcom/nuance/dragon/toolkit/elvis/ElvisError;)V

    :cond_0
    return-void
.end method
