.class final Lcom/nuance/dragon/toolkit/elvis/a$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/nuance/dragon/toolkit/elvis/a$4;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/elvis/a$4;Z)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/elvis/a$4$1;->b:Lcom/nuance/dragon/toolkit/elvis/a$4;

    iput-boolean p2, p0, Lcom/nuance/dragon/toolkit/elvis/a$4$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$4$1;->b:Lcom/nuance/dragon/toolkit/elvis/a$4;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$4;->b:Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$SaveListener;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$4$1;->b:Lcom/nuance/dragon/toolkit/elvis/a$4;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/elvis/a$4;->c:Lcom/nuance/dragon/toolkit/elvis/a;

    iget-boolean v2, p0, Lcom/nuance/dragon/toolkit/elvis/a$4$1;->a:Z

    invoke-interface {v0, v1, v2}, Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$SaveListener;->onSaved(Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer;Z)V

    return-void
.end method
