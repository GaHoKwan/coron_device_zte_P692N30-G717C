.class public final Lcom/zte/zdm/d/c/n;
.super Lcom/zte/zdm/d/c/u;


# instance fields
.field private b:Lcom/zte/zdm/d/c/e;

.field private c:Lcom/zte/zdm/d/c/y;

.field private d:Lcom/zte/zdm/d/c/c/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/d/c/u;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zte/zdm/d/c/u;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/zte/zdm/d/c/e;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/n;->b:Lcom/zte/zdm/d/c/e;

    return-object v0
.end method

.method public a(Lcom/zte/zdm/d/c/c/a;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mgmtTree cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/zte/zdm/d/c/n;->d:Lcom/zte/zdm/d/c/c/a;

    return-void
.end method

.method public a(Lcom/zte/zdm/d/c/e;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "anchor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/zte/zdm/d/c/n;->b:Lcom/zte/zdm/d/c/e;

    return-void
.end method

.method public a(Lcom/zte/zdm/d/c/y;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "devInf cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/zte/zdm/d/c/n;->c:Lcom/zte/zdm/d/c/y;

    return-void
.end method

.method public b()Lcom/zte/zdm/d/c/y;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/n;->c:Lcom/zte/zdm/d/c/y;

    return-object v0
.end method

.method public c()Lcom/zte/zdm/d/c/c/a;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/n;->d:Lcom/zte/zdm/d/c/c/a;

    return-object v0
.end method
