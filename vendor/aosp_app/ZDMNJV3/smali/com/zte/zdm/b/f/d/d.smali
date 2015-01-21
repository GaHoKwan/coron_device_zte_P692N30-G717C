.class public Lcom/zte/zdm/b/f/d/d;
.super Lcom/zte/zdm/b/f/d/f;


# instance fields
.field private a:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/zte/zdm/b/f/d/b;)V
    .locals 9

    const/4 v6, 0x0

    const-string v2, "node"

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, v6

    invoke-direct/range {v0 .. v8}, Lcom/zte/zdm/b/f/d/d;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/zte/zdm/b/f/d/b;Ljava/lang/String;Ljava/util/Date;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/zte/zdm/b/f/d/b;Ljava/lang/String;Ljava/util/Date;I)V
    .locals 1

    invoke-direct/range {p0 .. p8}, Lcom/zte/zdm/b/f/d/f;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/zte/zdm/b/f/d/b;Ljava/lang/String;Ljava/util/Date;I)V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/b/f/d/d;->a:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/zte/zdm/b/f/d/d;->a:Ljava/util/Vector;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/zte/zdm/b/f/d/d;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a()[Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/zte/zdm/b/f/d/d;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/zte/zdm/b/f/d/d;->a:Ljava/util/Vector;

    monitor-enter v4

    :try_start_0
    iget-object v0, p0, Lcom/zte/zdm/b/f/d/d;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/zte/zdm/b/f/d/d;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v5

    move v2, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v3, v2, 0x1

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v1, v2

    move v2, v3

    goto :goto_0

    :cond_0
    monitor-exit v4

    move-object v0, v1

    :goto_1
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b()Lcom/zte/zdm/d/c/ai;
    .locals 8

    iget-object v6, p0, Lcom/zte/zdm/b/f/d/d;->a:Ljava/util/Vector;

    monitor-enter v6

    :try_start_0
    const-string v0, ""

    iget-object v1, p0, Lcom/zte/zdm/b/f/d/d;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zte/zdm/b/f/d/d;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v5, v0

    new-instance v4, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/zte/zdm/b/f/d/d;->g()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/zte/zdm/d/c/ap;

    invoke-direct {v3}, Lcom/zte/zdm/d/c/ap;-><init>()V

    invoke-virtual {p0}, Lcom/zte/zdm/b/f/d/d;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/zte/zdm/d/c/ap;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/zdm/b/f/d/d;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/zte/zdm/d/c/ap;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/zte/zdm/d/c/ai;

    const/4 v1, 0x0

    new-instance v2, Lcom/zte/zdm/d/c/bb;

    const/4 v7, 0x0

    invoke-direct {v2, v4, v7}, Lcom/zte/zdm/d/c/bb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/zte/zdm/d/c/n;

    invoke-direct {v4, v5}, Lcom/zte/zdm/d/c/n;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/zte/zdm/d/c/ai;-><init>(Lcom/zte/zdm/d/c/bm;Lcom/zte/zdm/d/c/bb;Lcom/zte/zdm/d/c/ap;Lcom/zte/zdm/d/c/n;Z)V

    monitor-exit v6

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Lcom/zte/zdm/b/f/d/g;

    const-string v1, "no child nodes name to be delete given"

    invoke-direct {v0, v1}, Lcom/zte/zdm/b/f/d/g;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/zte/zdm/b/f/d/d;->a:Ljava/util/Vector;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/zte/zdm/b/f/d/d;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    new-instance v0, Lcom/zte/zdm/b/f/d/g;

    const-string v2, "the name isn\'t a child nodes mane of this interior node"

    invoke-direct {v0, v2}, Lcom/zte/zdm/b/f/d/g;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    iget-object v1, p0, Lcom/zte/zdm/b/f/d/d;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zte/zdm/b/f/d/d;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/zte/zdm/b/f/d/d;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
