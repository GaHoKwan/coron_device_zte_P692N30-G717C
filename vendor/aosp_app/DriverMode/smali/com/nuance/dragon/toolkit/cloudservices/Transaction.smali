.class public final Lcom/nuance/dragon/toolkit/cloudservices/Transaction;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Z

.field private final c:Ljava/util/List;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

.field private final f:Lcom/nuance/dragon/toolkit/cloudservices/Transaction$Listener;

.field private final g:I

.field private h:Lcom/nuance/dragon/toolkit/cloudservices/Transaction$a;

.field private i:Lcom/nuance/dragon/toolkit/cloudservices/f;

.field private j:I

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;Lcom/nuance/dragon/toolkit/cloudservices/Transaction$Listener;I)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;-><init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;Lcom/nuance/dragon/toolkit/cloudservices/Transaction$Listener;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;Lcom/nuance/dragon/toolkit/cloudservices/Transaction$Listener;IZ)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "commandName"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "listener"

    invoke-static {v0, p3}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "timeout"

    const-string v3, "equal or greater than 0"

    if-ltz p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->c:Ljava/util/List;

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->e:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->f:Lcom/nuance/dragon/toolkit/cloudservices/Transaction$Listener;

    iput p4, p0, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->g:I

    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/h;

    invoke-direct {v0, p0}, Lcom/nuance/dragon/toolkit/cloudservices/h;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/Transaction;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->i:Lcom/nuance/dragon/toolkit/cloudservices/f;

    iput v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->j:I

    iput-boolean p5, p0, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->a:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->d:Ljava/lang/String;

    return-object v0
.end method

.method final a(I)V
    .locals 0

    iput p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->j:I

    return-void
.end method

.method final a(Lcom/nuance/dragon/toolkit/cloudservices/Transaction$a;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->h:Lcom/nuance/dragon/toolkit/cloudservices/Transaction$a;

    return-void
.end method

.method final a(Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;Z)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->f:Lcom/nuance/dragon/toolkit/cloudservices/Transaction$Listener;

    invoke-interface {v0, p0, p1, p2}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction$Listener;->onTransactionResult(Lcom/nuance/dragon/toolkit/cloudservices/Transaction;Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;Z)V

    return-void
.end method

.method final a(Lcom/nuance/dragon/toolkit/cloudservices/d;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->i:Lcom/nuance/dragon/toolkit/cloudservices/f;

    invoke-virtual {v0, p1}, Lcom/nuance/dragon/toolkit/cloudservices/f;->a(Lcom/nuance/dragon/toolkit/cloudservices/d;)V

    return-void
.end method

.method final a(Lcom/nuance/dragon/toolkit/cloudservices/f;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->i:Lcom/nuance/dragon/toolkit/cloudservices/f;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/f;->b()V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->i:Lcom/nuance/dragon/toolkit/cloudservices/f;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->i:Lcom/nuance/dragon/toolkit/cloudservices/f;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/f;->a()V

    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->k:Ljava/lang/String;

    return-void
.end method

.method public final addParam(Lcom/nuance/dragon/toolkit/cloudservices/Param;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->i:Lcom/nuance/dragon/toolkit/cloudservices/f;

    invoke-virtual {v0, p1}, Lcom/nuance/dragon/toolkit/cloudservices/f;->a(Lcom/nuance/dragon/toolkit/cloudservices/Param;)V

    return-void
.end method

.method final b()Lcom/nuance/dragon/toolkit/data/Data$Dictionary;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->e:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    return-object v0
.end method

.method final c()I
    .locals 1

    iget v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->g:I

    return v0
.end method

.method public final cancel()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->i:Lcom/nuance/dragon/toolkit/cloudservices/f;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/f;->e()V

    return-void
.end method

.method final d()I
    .locals 1

    iget v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->j:I

    return v0
.end method

.method final e()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->c:Ljava/util/List;

    return-object v0
.end method

.method public final enable()V
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->a:Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->h:Lcom/nuance/dragon/toolkit/cloudservices/Transaction$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->h:Lcom/nuance/dragon/toolkit/cloudservices/Transaction$a;

    invoke-interface {v0, p0}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction$a;->a(Lcom/nuance/dragon/toolkit/cloudservices/Transaction;)V

    :cond_0
    return-void
.end method

.method final f()Lcom/nuance/dragon/toolkit/cloudservices/Transaction$Listener;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->f:Lcom/nuance/dragon/toolkit/cloudservices/Transaction$Listener;

    return-object v0
.end method

.method public final finish()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->b:Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->i:Lcom/nuance/dragon/toolkit/cloudservices/f;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/f;->f()V

    return-void
.end method

.method final g()Lcom/nuance/dragon/toolkit/cloudservices/Transaction$a;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->h:Lcom/nuance/dragon/toolkit/cloudservices/Transaction$a;

    return-object v0
.end method

.method final h()Lcom/nuance/dragon/toolkit/cloudservices/f;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->i:Lcom/nuance/dragon/toolkit/cloudservices/f;

    return-object v0
.end method

.method final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final isActive()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->i:Lcom/nuance/dragon/toolkit/cloudservices/f;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/f;->c()Z

    move-result v0

    return v0
.end method

.method public final isComplete()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->i:Lcom/nuance/dragon/toolkit/cloudservices/f;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/f;->d()Z

    move-result v0

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->b:Z

    return v0
.end method

.method final j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->a:Z

    return v0
.end method
