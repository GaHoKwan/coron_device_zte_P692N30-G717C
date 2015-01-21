.class final Lcom/nuance/dragon/toolkit/elvis/a$8$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/elvis/a$8;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/elvis/a$8;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/elvis/a$8$1;->a:Lcom/nuance/dragon/toolkit/elvis/a$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$8$1;->a:Lcom/nuance/dragon/toolkit/elvis/a$8;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$8;->a:Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$AdaptationCheckListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$AdaptationCheckListener;->onComplete(Z)V

    return-void
.end method
