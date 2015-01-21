.class final Lcom/nuance/dragon/toolkit/elvis/a$b$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/elvis/a$b;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/elvis/a$b;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$6;->a:Lcom/nuance/dragon/toolkit/elvis/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$6;->a:Lcom/nuance/dragon/toolkit/elvis/a$b;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a$b;->j(Lcom/nuance/dragon/toolkit/elvis/a$b;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$6;->a:Lcom/nuance/dragon/toolkit/elvis/a$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/a$b;->a(Z)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$6;->a:Lcom/nuance/dragon/toolkit/elvis/a$b;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a$b;->c(Lcom/nuance/dragon/toolkit/elvis/a$b;)Lcom/nuance/dragon/toolkit/elvis/a$c;

    move-result-object v0

    sget-object v1, Lcom/nuance/dragon/toolkit/elvis/a$c;->c:Lcom/nuance/dragon/toolkit/elvis/a$c;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$6;->a:Lcom/nuance/dragon/toolkit/elvis/a$b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/a$b;->c(Lcom/nuance/dragon/toolkit/elvis/a$b;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$6;->a:Lcom/nuance/dragon/toolkit/elvis/a$b;

    new-instance v1, Lcom/nuance/dragon/toolkit/elvis/ElvisError;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/nuance/dragon/toolkit/elvis/ElvisError;-><init>(I)V

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/a$b;->a(Lcom/nuance/dragon/toolkit/elvis/a$b;Lcom/nuance/dragon/toolkit/elvis/ElvisError;)V

    goto :goto_0
.end method
