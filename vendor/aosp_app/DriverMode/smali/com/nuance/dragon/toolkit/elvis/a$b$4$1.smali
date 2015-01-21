.class final Lcom/nuance/dragon/toolkit/elvis/a$b$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/nuance/dragon/toolkit/elvis/ElvisResult;

.field final synthetic c:Lcom/nuance/dragon/toolkit/elvis/a$b$4;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/elvis/a$b$4;ZLcom/nuance/dragon/toolkit/elvis/ElvisResult;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$4$1;->c:Lcom/nuance/dragon/toolkit/elvis/a$b$4;

    iput-boolean p2, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$4$1;->a:Z

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$4$1;->b:Lcom/nuance/dragon/toolkit/elvis/ElvisResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$4$1;->c:Lcom/nuance/dragon/toolkit/elvis/a$b$4;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$b$4;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a$b;->c(Lcom/nuance/dragon/toolkit/elvis/a$b;)Lcom/nuance/dragon/toolkit/elvis/a$c;

    move-result-object v0

    sget-object v1, Lcom/nuance/dragon/toolkit/elvis/a$c;->c:Lcom/nuance/dragon/toolkit/elvis/a$c;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$4$1;->c:Lcom/nuance/dragon/toolkit/elvis/a$b$4;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$b$4;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    iget-boolean v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$4$1;->a:Z

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/a$b;->c(Lcom/nuance/dragon/toolkit/elvis/a$b;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$4$1;->b:Lcom/nuance/dragon/toolkit/elvis/ElvisResult;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$4$1;->c:Lcom/nuance/dragon/toolkit/elvis/a$b$4;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$b$4;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    new-instance v1, Lcom/nuance/dragon/toolkit/elvis/ElvisError;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/nuance/dragon/toolkit/elvis/ElvisError;-><init>(I)V

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/a$b;->a(Lcom/nuance/dragon/toolkit/elvis/a$b;Lcom/nuance/dragon/toolkit/elvis/ElvisError;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$4$1;->c:Lcom/nuance/dragon/toolkit/elvis/a$b$4;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$b$4;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$4$1;->b:Lcom/nuance/dragon/toolkit/elvis/ElvisResult;

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/a$b;->a(Lcom/nuance/dragon/toolkit/elvis/a$b;Lcom/nuance/dragon/toolkit/elvis/ElvisResult;)V

    goto :goto_0
.end method
