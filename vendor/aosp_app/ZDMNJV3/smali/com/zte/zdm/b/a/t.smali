.class final Lcom/zte/zdm/b/a/t;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/Map;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/b/a/t;->a:Ljava/util/Map;

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/zte/zdm/d/c/bn;
    .locals 1

    new-instance v0, Lcom/zte/zdm/d/c/bn;

    invoke-direct {v0, p1}, Lcom/zte/zdm/d/c/bn;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method a(I)Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/b/a/t;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method a(Ljava/lang/String;Lcom/zte/zdm/d/c/a;)Ljava/util/List;
    .locals 9

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/zte/zdm/b/a/t;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/Integer;

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/zte/zdm/d/c/a;->a()Lcom/zte/zdm/d/c/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/m;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/zte/zdm/d/c/a;->f()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/zte/zdm/d/c/bn;

    const-string v1, ""

    invoke-direct {v4, v1}, Lcom/zte/zdm/d/c/bn;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/zte/zdm/b/c/e;->a(Lcom/zte/zdm/d/c/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/bn;I)Lcom/zte/zdm/d/c/bd;

    move-result-object v1

    iget-object v0, p0, Lcom/zte/zdm/b/a/t;->a:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/zte/zdm/d/c/bn;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/zdm/d/c/bn;

    invoke-virtual {v1, v0}, Lcom/zte/zdm/d/c/bd;->a([Lcom/zte/zdm/d/c/bn;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v7
.end method

.method a()V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/a/t;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method a(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/b/a/t;->a:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/b/a/t;->a:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/zte/zdm/b/a/t;->a(Ljava/lang/String;)Lcom/zte/zdm/d/c/bn;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1}, Lcom/zte/zdm/b/a/t;->a(Ljava/lang/String;)Lcom/zte/zdm/d/c/bn;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/zte/zdm/b/a/t;->a:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
