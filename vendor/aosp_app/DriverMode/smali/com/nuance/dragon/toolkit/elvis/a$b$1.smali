.class final Lcom/nuance/dragon/toolkit/elvis/a$b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/nuance/dragon/toolkit/elvis/a$b;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/elvis/a$b;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$1;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$1;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    sget-object v1, Lcom/nuance/dragon/toolkit/elvis/a$c;->a:Lcom/nuance/dragon/toolkit/elvis/a$c;

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/a$b;->a(Lcom/nuance/dragon/toolkit/elvis/a$b;Lcom/nuance/dragon/toolkit/elvis/a$c;)Lcom/nuance/dragon/toolkit/elvis/a$c;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$1;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$b;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a;->a(Lcom/nuance/dragon/toolkit/elvis/a;)Lcom/nuance/dragon/toolkit/elvis/e;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$1;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/e;->b(Ljava/util/List;)Z

    move-result v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$1;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/elvis/a$b;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/elvis/a;->b(Lcom/nuance/dragon/toolkit/elvis/a;)V

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$1;->b:Lcom/nuance/dragon/toolkit/elvis/a$b;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a$b;->a(Lcom/nuance/dragon/toolkit/elvis/a$b;)V

    :cond_0
    return-void
.end method