.class public final Lcom/zte/zdm/d/c/bh;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = ":Alert:Add:Atomic:Copy:Delete:Exec:Get:Map:Put:Replace:Results:Search:Sequence:Status:Sync:"


# instance fields
.field private b:Ljava/util/ArrayList;

.field private c:Ljava/lang/Boolean;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/d/c/bh;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>([Lcom/zte/zdm/d/c/a;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/d/c/bh;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/zte/zdm/d/c/bh;->a([Lcom/zte/zdm/d/c/a;)V

    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/zte/zdm/d/c/bh;->c:Ljava/lang/Boolean;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/bh;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/zte/zdm/d/c/bh;->c:Ljava/lang/Boolean;

    return-void

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public a([Lcom/zte/zdm/d/c/a;)V
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "commands cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    aget-object v1, p1, v0

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "commands["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] cannot be null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    aget-object v1, p1, v0

    instance-of v1, v1, Lcom/zte/zdm/d/c/c;

    if-nez v1, :cond_2

    aget-object v1, p1, v0

    instance-of v1, v1, Lcom/zte/zdm/d/c/b;

    if-nez v1, :cond_2

    aget-object v1, p1, v0

    instance-of v1, v1, Lcom/zte/zdm/d/c/f;

    if-nez v1, :cond_2

    aget-object v1, p1, v0

    instance-of v1, v1, Lcom/zte/zdm/d/c/r;

    if-nez v1, :cond_2

    aget-object v1, p1, v0

    instance-of v1, v1, Lcom/zte/zdm/d/c/w;

    if-nez v1, :cond_2

    aget-object v1, p1, v0

    instance-of v1, v1, Lcom/zte/zdm/d/c/ae;

    if-nez v1, :cond_2

    aget-object v1, p1, v0

    instance-of v1, v1, Lcom/zte/zdm/d/c/ag;

    if-nez v1, :cond_2

    aget-object v1, p1, v0

    instance-of v1, v1, Lcom/zte/zdm/d/c/ak;

    if-nez v1, :cond_2

    aget-object v1, p1, v0

    instance-of v1, v1, Lcom/zte/zdm/d/c/as;

    if-nez v1, :cond_2

    aget-object v1, p1, v0

    instance-of v1, v1, Lcom/zte/zdm/d/c/at;

    if-nez v1, :cond_2

    aget-object v1, p1, v0

    instance-of v1, v1, Lcom/zte/zdm/d/c/aw;

    if-nez v1, :cond_2

    aget-object v1, p1, v0

    instance-of v1, v1, Lcom/zte/zdm/d/c/ax;

    if-nez v1, :cond_2

    aget-object v1, p1, v0

    instance-of v1, v1, Lcom/zte/zdm/d/c/ay;

    if-nez v1, :cond_2

    aget-object v1, p1, v0

    instance-of v1, v1, Lcom/zte/zdm/d/c/bd;

    if-nez v1, :cond_2

    aget-object v1, p1, v0

    instance-of v1, v1, Lcom/zte/zdm/d/c/bf;

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "commands["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] cannot be a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/zte/zdm/d/c/bh;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/zte/zdm/d/c/bh;->b:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/bh;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/bh;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/d/c/bh;->c:Ljava/lang/Boolean;

    goto :goto_0
.end method
