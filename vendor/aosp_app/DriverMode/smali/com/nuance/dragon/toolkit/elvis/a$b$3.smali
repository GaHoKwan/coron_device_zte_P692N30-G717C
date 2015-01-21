.class final Lcom/nuance/dragon/toolkit/elvis/a$b$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/nuance/dragon/toolkit/elvis/a$b;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/elvis/a$b;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$3;->c:Lcom/nuance/dragon/toolkit/elvis/a$b;

    iput-boolean p2, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$3;->a:Z

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$3;->c:Lcom/nuance/dragon/toolkit/elvis/a$b;

    sget-object v1, Lcom/nuance/dragon/toolkit/elvis/a$c;->c:Lcom/nuance/dragon/toolkit/elvis/a$c;

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/a$b;->a(Lcom/nuance/dragon/toolkit/elvis/a$b;Lcom/nuance/dragon/toolkit/elvis/a$c;)Lcom/nuance/dragon/toolkit/elvis/a$c;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$3;->c:Lcom/nuance/dragon/toolkit/elvis/a$b;

    iget-boolean v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$3;->a:Z

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/a$b;->a(Lcom/nuance/dragon/toolkit/elvis/a$b;Z)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$3;->c:Lcom/nuance/dragon/toolkit/elvis/a$b;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$b;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a;->a(Lcom/nuance/dragon/toolkit/elvis/a;)Lcom/nuance/dragon/toolkit/elvis/e;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$3;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/e;->c(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$3;->c:Lcom/nuance/dragon/toolkit/elvis/a$b;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/elvis/a$b;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/elvis/a;->b(Lcom/nuance/dragon/toolkit/elvis/a;)V

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$3;->c:Lcom/nuance/dragon/toolkit/elvis/a$b;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a$b;->a(Lcom/nuance/dragon/toolkit/elvis/a$b;)V

    :cond_0
    return-void
.end method
