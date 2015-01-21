.class public final Lcom/zte/zdm/d/c/al;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/zte/zdm/d/c/bm;

.field private b:Lcom/zte/zdm/d/c/bb;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/zte/zdm/d/c/bm;Lcom/zte/zdm/d/c/bb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/zte/zdm/d/c/al;->a(Lcom/zte/zdm/d/c/bm;)V

    invoke-virtual {p0, p2}, Lcom/zte/zdm/d/c/al;->a(Lcom/zte/zdm/d/c/bb;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/zte/zdm/d/c/bm;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/al;->a:Lcom/zte/zdm/d/c/bm;

    return-object v0
.end method

.method public a(Lcom/zte/zdm/d/c/bb;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/zte/zdm/d/c/al;->b:Lcom/zte/zdm/d/c/bb;

    return-void
.end method

.method public a(Lcom/zte/zdm/d/c/bm;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "target cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/zte/zdm/d/c/al;->a:Lcom/zte/zdm/d/c/bm;

    return-void
.end method

.method public b()Lcom/zte/zdm/d/c/bb;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/al;->b:Lcom/zte/zdm/d/c/bb;

    return-object v0
.end method
