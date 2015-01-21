.class final Lcom/nuance/dragon/toolkit/elvis/a$8$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/nuance/dragon/toolkit/elvis/a$8;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/elvis/a$8;Z)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/elvis/a$8$2;->b:Lcom/nuance/dragon/toolkit/elvis/a$8;

    iput-boolean p2, p0, Lcom/nuance/dragon/toolkit/elvis/a$8$2;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$8$2;->b:Lcom/nuance/dragon/toolkit/elvis/a$8;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$8;->a:Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$AdaptationCheckListener;

    iget-boolean v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$8$2;->a:Z

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$AdaptationCheckListener;->onComplete(Z)V

    return-void
.end method
