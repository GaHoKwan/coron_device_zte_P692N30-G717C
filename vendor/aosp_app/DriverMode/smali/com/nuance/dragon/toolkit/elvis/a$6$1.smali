.class final Lcom/nuance/dragon/toolkit/elvis/a$6$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/elvis/a$6;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/elvis/a$6;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/elvis/a$6$1;->a:Lcom/nuance/dragon/toolkit/elvis/a$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$6$1;->a:Lcom/nuance/dragon/toolkit/elvis/a$6;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$6;->a:Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$RebuildListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$6$1;->a:Lcom/nuance/dragon/toolkit/elvis/a$6;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$6;->a:Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$RebuildListener;

    new-instance v1, Lcom/nuance/dragon/toolkit/elvis/ElvisError;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Lcom/nuance/dragon/toolkit/elvis/ElvisError;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$RebuildListener;->onError(Lcom/nuance/dragon/toolkit/elvis/ElvisError;)V

    :cond_0
    return-void
.end method
