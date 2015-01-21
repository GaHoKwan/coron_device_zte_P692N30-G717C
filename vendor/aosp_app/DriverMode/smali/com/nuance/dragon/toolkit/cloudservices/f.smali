.class abstract Lcom/nuance/dragon/toolkit/cloudservices/f;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Lcom/nuance/dragon/toolkit/cloudservices/d;

.field protected final b:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

.field private final c:Z

.field private final d:Z

.field private e:Z


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/cloudservices/d;ZZLcom/nuance/dragon/toolkit/cloudservices/Transaction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/nuance/dragon/toolkit/cloudservices/f;->b:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    iput-boolean p2, p0, Lcom/nuance/dragon/toolkit/cloudservices/f;->c:Z

    iput-boolean p3, p0, Lcom/nuance/dragon/toolkit/cloudservices/f;->d:Z

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/f;->a:Lcom/nuance/dragon/toolkit/cloudservices/d;

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/f;->e:Z

    return-void
.end method

.method final a(ILjava/lang/String;)V
    .locals 7

    const/4 v4, 0x0

    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/f;->b:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    const/4 v2, 0x3

    move-object v3, p2

    move-object v5, v4

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/Transaction;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/cloudservices/f;->a(Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;)V

    return-void
.end method

.method a(Lcom/nuance/a/a/a/b/c/c/i;)V
    .locals 0

    return-void
.end method

.method a(Lcom/nuance/dragon/toolkit/cloudservices/Param;)V
    .locals 0

    return-void
.end method

.method final a(Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;)V
    .locals 3

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/f;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/g;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/f;->a:Lcom/nuance/dragon/toolkit/cloudservices/d;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/f;->b:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/cloudservices/g;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/d;Lcom/nuance/dragon/toolkit/cloudservices/Transaction;)V

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/cloudservices/f;->a(Lcom/nuance/dragon/toolkit/cloudservices/f;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/f;->b:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->f()Lcom/nuance/dragon/toolkit/cloudservices/Transaction$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/f;->b:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    invoke-interface {v0, v1, p1}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction$Listener;->onTransactionError(Lcom/nuance/dragon/toolkit/cloudservices/Transaction;Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;)V

    :cond_0
    return-void
.end method

.method a(Lcom/nuance/dragon/toolkit/cloudservices/d;)V
    .locals 0

    return-void
.end method

.method protected final a(Lcom/nuance/dragon/toolkit/cloudservices/f;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/f;->b:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    invoke-virtual {v0, p1}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->a(Lcom/nuance/dragon/toolkit/cloudservices/f;)V

    return-void
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/f;->b:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/Transaction;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/cloudservices/f;->a(Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;)V

    return-void
.end method

.method final a(S)V
    .locals 2

    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/f;->b:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    invoke-direct {v0, v1, p1}, Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/Transaction;I)V

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/cloudservices/f;->a(Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;)V

    return-void
.end method

.method b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/f;->e:Z

    return-void
.end method

.method final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/f;->c:Z

    return v0
.end method

.method final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/f;->d:Z

    return v0
.end method

.method e()V
    .locals 5

    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/g;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/f;->a:Lcom/nuance/dragon/toolkit/cloudservices/d;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/f;->b:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/cloudservices/g;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/d;Lcom/nuance/dragon/toolkit/cloudservices/Transaction;)V

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/cloudservices/f;->a(Lcom/nuance/dragon/toolkit/cloudservices/f;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/f;->b:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->f()Lcom/nuance/dragon/toolkit/cloudservices/Transaction$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/f;->b:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    new-instance v2, Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/cloudservices/f;->b:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/Transaction;B)V

    invoke-interface {v0, v1, v2}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction$Listener;->onTransactionError(Lcom/nuance/dragon/toolkit/cloudservices/Transaction;Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;)V

    return-void
.end method

.method f()V
    .locals 0

    return-void
.end method

.method final g()V
    .locals 3

    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/f;->b:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    const/high16 v2, 0xfff

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/Transaction;I)V

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/cloudservices/f;->a(Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;)V

    return-void
.end method
