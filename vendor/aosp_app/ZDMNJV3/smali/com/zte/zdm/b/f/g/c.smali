.class public Lcom/zte/zdm/b/f/g/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Stack;

.field private b:Lcom/zte/zdm/b/f/c;


# direct methods
.method constructor <init>(Lcom/zte/zdm/b/f/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/b/f/g/c;->a:Ljava/util/Stack;

    iput-object p1, p0, Lcom/zte/zdm/b/f/g/c;->b:Lcom/zte/zdm/b/f/c;

    return-void
.end method


# virtual methods
.method a()Z
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/f/g/c;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    return v0
.end method

.method a(Lcom/zte/zdm/b/f/g/d;)Z
    .locals 1

    const-string v0, "rollbackAdd,nothing need to do,the whole tree file already to be rollbacked..."

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "BackupDelete,nothing need to do,if fail it will rollback whole tree file..."

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public a(Ljava/lang/String;Lcom/zte/zdm/b/f/d/f;)Z
    .locals 5

    const/4 v1, 0x1

    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const-string v0, "BackupReplace,nothing need to do,if fail it will rollback whole tree file..."

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/b/f/g/c;->b:Lcom/zte/zdm/b/f/c;

    invoke-virtual {v0, p1}, Lcom/zte/zdm/b/f/c;->g(Ljava/lang/String;)Lcom/zte/zdm/b/f/d;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/zte/zdm/b/f/d;->e()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "BackupReplace,can not find the tree node..."

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/zte/zdm/b/f/d;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/f/d/f;

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/d/f;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v3, Lcom/zte/zdm/b/f/g/d;

    invoke-direct {v3}, Lcom/zte/zdm/b/f/g/d;-><init>()V

    :try_start_0
    sget-object v0, Lcom/zte/zdm/b/f/g/e;->c:Lcom/zte/zdm/b/f/g/e;

    iput-object v0, v3, Lcom/zte/zdm/b/f/g/d;->a:Lcom/zte/zdm/b/f/g/e;

    iget-object v0, v3, Lcom/zte/zdm/b/f/g/d;->b:Lcom/zte/zdm/b/f/g/f;

    iput-object p1, v0, Lcom/zte/zdm/b/f/g/f;->a:Ljava/lang/String;

    iget-object v4, v3, Lcom/zte/zdm/b/f/g/d;->b:Lcom/zte/zdm/b/f/g/f;

    invoke-virtual {v2}, Lcom/zte/zdm/b/f/d;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/f/d/e;

    check-cast v0, Lcom/zte/zdm/b/f/d/e;

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/d/e;->d()[B

    move-result-object v0

    iput-object v0, v4, Lcom/zte/zdm/b/f/g/f;->b:[B

    iget-object v0, v3, Lcom/zte/zdm/b/f/g/d;->c:Lcom/zte/zdm/b/f/g/f;

    iput-object p1, v0, Lcom/zte/zdm/b/f/g/f;->a:Ljava/lang/String;

    iget-object v0, v3, Lcom/zte/zdm/b/f/g/d;->c:Lcom/zte/zdm/b/f/g/f;

    check-cast p2, Lcom/zte/zdm/b/f/d/e;

    invoke-virtual {p2}, Lcom/zte/zdm/b/f/d/e;->d()[B

    move-result-object v2

    iput-object v2, v0, Lcom/zte/zdm/b/f/g/f;->b:[B
    :try_end_0
    .catch Lcom/zte/zdm/b/f/b/e; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/zte/zdm/b/f/g/c;->a:Ljava/util/Stack;

    invoke-virtual {v0, v3}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    :cond_3
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/b/e;->printStackTrace()V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "BackupCopy,nothing need to do,if fail it will rollback whole tree file..."

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 1

    const-string v0, "BackupAdd,nothing need to do,if fail it will rollback whole tree file..."

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method b()Lcom/zte/zdm/b/f/g/d;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/f/g/c;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/b/f/g/c;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/f/g/d;

    goto :goto_0
.end method

.method b(Lcom/zte/zdm/b/f/g/d;)Z
    .locals 1

    const-string v0, "rollbackDelete,nothing need to do,the whole tree file already to be rollbacked..."

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method c()V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/f/g/c;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    return-void
.end method

.method c(Lcom/zte/zdm/b/f/g/d;)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/zte/zdm/b/f/g/c;->b:Lcom/zte/zdm/b/f/c;

    iget-object v2, p1, Lcom/zte/zdm/b/f/g/d;->b:Lcom/zte/zdm/b/f/g/f;

    iget-object v2, v2, Lcom/zte/zdm/b/f/g/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/zte/zdm/b/f/c;->g(Ljava/lang/String;)Lcom/zte/zdm/b/f/d;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/zte/zdm/b/f/d;->e()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string v0, "rollbackReplace,can not find the tree node..."

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;)V

    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {v2}, Lcom/zte/zdm/b/f/d;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/f/d/f;

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/d/f;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {v2}, Lcom/zte/zdm/b/f/d;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/f/d/e;

    check-cast v0, Lcom/zte/zdm/b/f/d/e;

    iget-object v2, p1, Lcom/zte/zdm/b/f/g/d;->b:Lcom/zte/zdm/b/f/g/f;

    iget-object v2, v2, Lcom/zte/zdm/b/f/g/f;->b:[B

    invoke-virtual {v0, v2}, Lcom/zte/zdm/b/f/d/e;->a([B)V
    :try_end_0
    .catch Lcom/zte/zdm/b/f/d/g; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/zte/zdm/b/f/b/e; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "rollbackReplace,error,catch the node exception..."

    invoke-static {p0, v2, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "rollbackReplace,error,catch the node io exception..."

    invoke-static {p0, v2, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0
.end method

.method d(Lcom/zte/zdm/b/f/g/d;)Z
    .locals 1

    const-string v0, "rollbackCopy,nothing need to do,the whole tree file already to be rollbacked..."

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
