.class final Lcom/nuance/dragon/toolkit/elvis/a$9$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/nuance/dragon/toolkit/elvis/a$9;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/elvis/a$9;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/elvis/a$9$2;->b:Lcom/nuance/dragon/toolkit/elvis/a$9;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/elvis/a$9$2;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$9$2;->b:Lcom/nuance/dragon/toolkit/elvis/a$9;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$9;->a:Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$WakeupCheckListener;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$9$2;->a:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$WakeupCheckListener;->onComplete(Ljava/util/List;)V

    return-void
.end method
