.class final Lcom/nuance/dragon/toolkit/elvis/a$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/nuance/dragon/toolkit/elvis/a;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/elvis/a;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/elvis/a$10;->d:Lcom/nuance/dragon/toolkit/elvis/a;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/elvis/a$10;->a:Ljava/lang/String;

    iput p3, p0, Lcom/nuance/dragon/toolkit/elvis/a$10;->b:I

    iput-object p4, p0, Lcom/nuance/dragon/toolkit/elvis/a$10;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$10;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$10;->b:I

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$10;->d:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a;->a(Lcom/nuance/dragon/toolkit/elvis/a;)Lcom/nuance/dragon/toolkit/elvis/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/nuance/dragon/toolkit/elvis/e;->a(Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$10;->d:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v0, v2}, Lcom/nuance/dragon/toolkit/elvis/a;->b(Lcom/nuance/dragon/toolkit/elvis/a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$10;->d:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v0, v2}, Lcom/nuance/dragon/toolkit/elvis/a;->c(Lcom/nuance/dragon/toolkit/elvis/a;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$10;->d:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a;->b(Lcom/nuance/dragon/toolkit/elvis/a;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$10;->d:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a;->a(Lcom/nuance/dragon/toolkit/elvis/a;)Lcom/nuance/dragon/toolkit/elvis/e;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$10;->a:Ljava/lang/String;

    iget v2, p0, Lcom/nuance/dragon/toolkit/elvis/a$10;->b:I

    invoke-interface {v0, v1, v2}, Lcom/nuance/dragon/toolkit/elvis/e;->a(Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$10;->d:Lcom/nuance/dragon/toolkit/elvis/a;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$10;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/a;->b(Lcom/nuance/dragon/toolkit/elvis/a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$10;->d:Lcom/nuance/dragon/toolkit/elvis/a;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$10;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/a;->c(Lcom/nuance/dragon/toolkit/elvis/a;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
