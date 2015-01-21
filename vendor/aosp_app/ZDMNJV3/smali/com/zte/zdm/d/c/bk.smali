.class public final Lcom/zte/zdm/d/c/bk;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/zte/zdm/d/c/bj;

.field private b:Lcom/zte/zdm/d/c/bh;

.field private c:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/zte/zdm/d/c/bj;Lcom/zte/zdm/d/c/bh;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/zdm/d/c/bk;-><init>(Lcom/zte/zdm/d/c/bj;Lcom/zte/zdm/d/c/bh;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/zte/zdm/d/c/bj;Lcom/zte/zdm/d/c/bh;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/zte/zdm/d/c/bk;->a(Lcom/zte/zdm/d/c/bj;)V

    invoke-virtual {p0, p2}, Lcom/zte/zdm/d/c/bk;->a(Lcom/zte/zdm/d/c/bh;)V

    iput-boolean p3, p0, Lcom/zte/zdm/d/c/bk;->c:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/zte/zdm/d/c/bj;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/bk;->a:Lcom/zte/zdm/d/c/bj;

    return-object v0
.end method

.method public a(Lcom/zte/zdm/d/c/bh;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "body cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/zte/zdm/d/c/bk;->b:Lcom/zte/zdm/d/c/bh;

    return-void
.end method

.method public a(Lcom/zte/zdm/d/c/bj;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "header cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/zte/zdm/d/c/bk;->a:Lcom/zte/zdm/d/c/bj;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zte/zdm/d/c/bk;->c:Z

    return-void
.end method

.method public b()Lcom/zte/zdm/d/c/bh;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/bk;->b:Lcom/zte/zdm/d/c/bh;

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zte/zdm/d/c/bk;->c:Z

    return v0
.end method
