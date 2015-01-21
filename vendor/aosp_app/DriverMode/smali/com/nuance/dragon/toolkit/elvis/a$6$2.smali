.class final Lcom/nuance/dragon/toolkit/elvis/a$6$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/nuance/dragon/toolkit/elvis/a$6;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/elvis/a$6;Z)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/elvis/a$6$2;->b:Lcom/nuance/dragon/toolkit/elvis/a$6;

    iput-boolean p2, p0, Lcom/nuance/dragon/toolkit/elvis/a$6$2;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$6$2;->b:Lcom/nuance/dragon/toolkit/elvis/a$6;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$6;->a:Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$RebuildListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$6$2;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$6$2;->b:Lcom/nuance/dragon/toolkit/elvis/a$6;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$6;->a:Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$RebuildListener;

    new-instance v1, Lcom/nuance/dragon/toolkit/elvis/Grammar;

    invoke-direct {v1}, Lcom/nuance/dragon/toolkit/elvis/Grammar;-><init>()V

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/a$6$2;->b:Lcom/nuance/dragon/toolkit/elvis/a$6;

    iget-object v2, v2, Lcom/nuance/dragon/toolkit/elvis/a$6;->b:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$RebuildListener;->onComplete(Lcom/nuance/dragon/toolkit/elvis/Grammar;Ljava/util/List;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$6$2;->b:Lcom/nuance/dragon/toolkit/elvis/a$6;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$6;->a:Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$RebuildListener;

    new-instance v1, Lcom/nuance/dragon/toolkit/elvis/ElvisError;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/nuance/dragon/toolkit/elvis/ElvisError;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$RebuildListener;->onError(Lcom/nuance/dragon/toolkit/elvis/ElvisError;)V

    goto :goto_0
.end method
