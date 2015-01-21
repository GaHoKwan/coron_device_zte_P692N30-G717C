.class public Lcom/zte/zdm/b/c/c/b;
.super Lcom/zte/zdm/b/c/c/a;

# interfaces
.implements Lcom/zte/zdm/b/c/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/b/c/c/a;-><init>()V

    return-void
.end method

.method public static a(Lcom/zte/zdm/d/c/ag;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ag;->a()Lcom/zte/zdm/d/c/m;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/b/c/c/b;->a(Lcom/zte/zdm/d/c/m;)V
    :try_end_0
    .catch Lcom/zte/zdm/b/c/c; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ag;->k()Ljava/util/ArrayList;

    move-result-object v0

    new-array v1, v2, [Lcom/zte/zdm/d/c/ai;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/zdm/d/c/ai;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    :cond_0
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "The item element is missing"

    aput-object v1, v0, v2

    new-instance v1, Lcom/zte/zdm/b/c/c;

    const-string v2, "Invalid capabilities request ({1})"

    invoke-direct {v1, v2, v0}, Lcom/zte/zdm/b/c/c;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :catch_0
    move-exception v0

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0}, Lcom/zte/zdm/b/c/c;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    new-instance v0, Lcom/zte/zdm/b/c/c;

    const-string v2, "Invalid {0} capabilities ({1})"

    invoke-direct {v0, v2, v1}, Lcom/zte/zdm/b/c/c;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_1
    const/4 v1, 0x0

    :try_start_1
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/ai;->a()Lcom/zte/zdm/d/c/bm;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/b/c/c/b;->a(Lcom/zte/zdm/d/c/bm;)V
    :try_end_1
    .catch Lcom/zte/zdm/b/c/c; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "missing target"

    aput-object v1, v0, v2

    new-instance v1, Lcom/zte/zdm/b/c/c;

    const-string v2, "Invalid capabilities request ({1})"

    invoke-direct {v1, v2, v0}, Lcom/zte/zdm/b/c/c;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method public static a(Lcom/zte/zdm/d/c/at;)V
    .locals 2

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/at;->a()Lcom/zte/zdm/d/c/m;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/b/c/c/b;->a(Lcom/zte/zdm/d/c/m;)V

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/at;->k()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/zte/zdm/b/c/c;

    const-string v1, "No node specified for device info"

    invoke-direct {v0, v1}, Lcom/zte/zdm/b/c/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static a(Lcom/zte/zdm/d/c/c;Z)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/zte/zdm/b/c/c/a;->a(Lcom/zte/zdm/d/c/c;)V
    :try_end_0
    .catch Lcom/zte/zdm/b/c/c; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/c;->g()I

    move-result v0

    invoke-static {v0}, Lcom/zte/zdm/d/c/d;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v3, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/c;->g()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    new-instance v1, Lcom/zte/zdm/b/c/c;

    const-string v2, "The alert code {0} is not an initialization code"

    invoke-direct {v1, v2, v0}, Lcom/zte/zdm/b/c/c;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :catch_0
    move-exception v0

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0}, Lcom/zte/zdm/b/c/c;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    new-instance v0, Lcom/zte/zdm/b/c/c;

    const-string v2, "Invalid alert command ({0})"

    invoke-direct {v0, v2, v1}, Lcom/zte/zdm/b/c/c;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_0
    if-nez p1, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/zte/zdm/d/c/c;->k()Ljava/util/ArrayList;

    move-result-object v0

    new-array v1, v2, [Lcom/zte/zdm/d/c/ai;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/zdm/d/c/ai;

    if-eqz v0, :cond_3

    array-length v1, v0

    if-nez v1, :cond_4

    :cond_3
    new-instance v0, Lcom/zte/zdm/b/c/c;

    const-string v1, "The item element is missing"

    invoke-direct {v0, v1}, Lcom/zte/zdm/b/c/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/4 v1, 0x0

    :try_start_1
    aget-object v1, v0, v1

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/ai;->b()Lcom/zte/zdm/d/c/bb;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/zdm/b/c/c/b;->a(Lcom/zte/zdm/d/c/bb;)V
    :try_end_1
    .catch Lcom/zte/zdm/b/c/c; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v1, 0x0

    :try_start_2
    aget-object v1, v0, v1

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/ai;->a()Lcom/zte/zdm/d/c/bm;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/zdm/b/c/c/b;->a(Lcom/zte/zdm/d/c/bm;)V
    :try_end_2
    .catch Lcom/zte/zdm/b/c/c; {:try_start_2 .. :try_end_2} :catch_2

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/ai;->c()Lcom/zte/zdm/d/c/ap;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/ap;->g()Lcom/zte/zdm/d/c/e;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_5
    new-instance v0, Lcom/zte/zdm/b/c/c;

    const-string v1, "The sync anchor element is missing"

    invoke-direct {v0, v1}, Lcom/zte/zdm/b/c/c;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "source"

    aput-object v1, v0, v2

    new-instance v1, Lcom/zte/zdm/b/c/c;

    const-string v2, "Invalid alert command ({0})"

    invoke-direct {v1, v2, v0}, Lcom/zte/zdm/b/c/c;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :catch_2
    move-exception v0

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "target"

    aput-object v1, v0, v2

    new-instance v1, Lcom/zte/zdm/b/c/c;

    const-string v2, "Invalid alert command ({0})"

    invoke-direct {v1, v2, v0}, Lcom/zte/zdm/b/c/c;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method
