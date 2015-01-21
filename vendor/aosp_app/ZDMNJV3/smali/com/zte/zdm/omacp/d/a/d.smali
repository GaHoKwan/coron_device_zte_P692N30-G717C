.class Lcom/zte/zdm/omacp/d/a/d;
.super Ljava/util/Hashtable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/zte/zdm/omacp/d/a/d;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/omacp/d/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/zte/zdm/omacp/d/b;->a()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/zte/zdm/omacp/d/b;->a(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/zte/zdm/omacp/d/a/d;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/zte/zdm/omacp/d/a/d;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/omacp/d/a/c;

    invoke-virtual {v0, p2}, Lcom/zte/zdm/omacp/d/a/c;->a(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/zte/zdm/omacp/d/a/c;

    invoke-direct {v0}, Lcom/zte/zdm/omacp/d/a/c;-><init>()V

    invoke-virtual {v0, p2}, Lcom/zte/zdm/omacp/d/a/c;->a(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/zte/zdm/omacp/d/a/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
