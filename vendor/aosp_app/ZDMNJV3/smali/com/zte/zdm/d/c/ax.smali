.class public final Lcom/zte/zdm/d/c/ax;
.super Lcom/zte/zdm/d/c/a;


# static fields
.field public static e:Ljava/lang/String;


# instance fields
.field private f:Ljava/lang/Boolean;

.field private g:Lcom/zte/zdm/d/c/bm;

.field private h:Ljava/util/ArrayList;

.field private i:Ljava/lang/String;

.field private j:Lcom/zte/zdm/d/c/u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Search"

    sput-object v0, Lcom/zte/zdm/d/c/ax;->e:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zte/zdm/d/c/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/d/c/ax;->h:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/zte/zdm/d/c/m;ZZLcom/zte/zdm/d/c/s;Lcom/zte/zdm/d/c/bm;[Lcom/zte/zdm/d/c/bb;Ljava/lang/String;Lcom/zte/zdm/d/c/ap;Lcom/zte/zdm/d/c/u;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/zte/zdm/d/c/a;-><init>(Lcom/zte/zdm/d/c/m;Z)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/d/c/ax;->h:Ljava/util/ArrayList;

    invoke-virtual {p0, p4}, Lcom/zte/zdm/d/c/ax;->a(Lcom/zte/zdm/d/c/s;)V

    invoke-virtual {p0, p8}, Lcom/zte/zdm/d/c/ax;->a(Lcom/zte/zdm/d/c/ap;)V

    invoke-virtual {p0, p6}, Lcom/zte/zdm/d/c/ax;->a([Lcom/zte/zdm/d/c/bb;)V

    invoke-virtual {p0, p9}, Lcom/zte/zdm/d/c/ax;->a(Lcom/zte/zdm/d/c/u;)V

    if-eqz p3, :cond_0

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/zte/zdm/d/c/ax;->f:Ljava/lang/Boolean;

    iput-object p5, p0, Lcom/zte/zdm/d/c/ax;->g:Lcom/zte/zdm/d/c/bm;

    iput-object p7, p0, Lcom/zte/zdm/d/c/ax;->i:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/zte/zdm/d/c/bm;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/c/ax;->g:Lcom/zte/zdm/d/c/bm;

    return-void
.end method

.method public a(Lcom/zte/zdm/d/c/u;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/zte/zdm/d/c/ax;->j:Lcom/zte/zdm/d/c/u;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/c/ax;->i:Ljava/lang/String;

    return-void
.end method

.method public a([Lcom/zte/zdm/d/c/bb;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sources cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/d/c/ax;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/zte/zdm/d/c/ax;->h:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public b(Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/zte/zdm/d/c/ax;->f:Ljava/lang/Boolean;

    return-void

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/zte/zdm/d/c/ax;->e:Ljava/lang/String;

    return-object v0
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/ax;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/ax;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/d/c/ax;->f:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public i()Lcom/zte/zdm/d/c/bm;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/ax;->g:Lcom/zte/zdm/d/c/bm;

    return-object v0
.end method

.method public j()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/ax;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/ax;->i:Ljava/lang/String;

    return-object v0
.end method

.method public l()Lcom/zte/zdm/d/c/u;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/ax;->j:Lcom/zte/zdm/d/c/u;

    return-object v0
.end method
