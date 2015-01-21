.class final Lcom/nuance/dragon/toolkit/elvis/a$b$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:I

.field final synthetic c:Z

.field final synthetic d:Lcom/nuance/dragon/toolkit/elvis/a$b;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/elvis/a$b;Ljava/util/List;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$2;->d:Lcom/nuance/dragon/toolkit/elvis/a$b;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$2;->a:Ljava/util/List;

    iput p3, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$2;->b:I

    iput-boolean p4, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$2;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$2;->d:Lcom/nuance/dragon/toolkit/elvis/a$b;

    sget-object v1, Lcom/nuance/dragon/toolkit/elvis/a$c;->b:Lcom/nuance/dragon/toolkit/elvis/a$c;

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/a$b;->a(Lcom/nuance/dragon/toolkit/elvis/a$b;Lcom/nuance/dragon/toolkit/elvis/a$c;)Lcom/nuance/dragon/toolkit/elvis/a$c;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$2;->d:Lcom/nuance/dragon/toolkit/elvis/a$b;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/a$b;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a;->a(Lcom/nuance/dragon/toolkit/elvis/a;)Lcom/nuance/dragon/toolkit/elvis/e;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$2;->a:Ljava/util/List;

    iget v3, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$2;->b:I

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$2;->c:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    :goto_0
    invoke-interface {v1, v2, v3, v0}, Lcom/nuance/dragon/toolkit/elvis/e;->a(Ljava/util/List;II)Z

    move-result v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$2;->d:Lcom/nuance/dragon/toolkit/elvis/a$b;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/elvis/a$b;->a:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/elvis/a;->b(Lcom/nuance/dragon/toolkit/elvis/a;)V

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$b$2;->d:Lcom/nuance/dragon/toolkit/elvis/a$b;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/elvis/a$b;->a(Lcom/nuance/dragon/toolkit/elvis/a$b;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
