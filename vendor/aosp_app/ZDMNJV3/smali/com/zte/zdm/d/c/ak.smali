.class public final Lcom/zte/zdm/d/c/ak;
.super Lcom/zte/zdm/d/c/a;


# static fields
.field public static e:Ljava/lang/String;


# instance fields
.field private f:Lcom/zte/zdm/d/c/bm;

.field private g:Lcom/zte/zdm/d/c/bb;

.field private h:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Map"

    sput-object v0, Lcom/zte/zdm/d/c/ak;->e:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zte/zdm/d/c/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/d/c/ak;->h:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/zte/zdm/d/c/m;Lcom/zte/zdm/d/c/bm;Lcom/zte/zdm/d/c/bb;Lcom/zte/zdm/d/c/s;Lcom/zte/zdm/d/c/ap;[Lcom/zte/zdm/d/c/al;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/zte/zdm/d/c/a;-><init>(Lcom/zte/zdm/d/c/m;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/d/c/ak;->h:Ljava/util/ArrayList;

    invoke-virtual {p0, p5}, Lcom/zte/zdm/d/c/ak;->a(Lcom/zte/zdm/d/c/ap;)V

    invoke-virtual {p0, p4}, Lcom/zte/zdm/d/c/ak;->a(Lcom/zte/zdm/d/c/s;)V

    invoke-virtual {p0, p2}, Lcom/zte/zdm/d/c/ak;->a(Lcom/zte/zdm/d/c/bm;)V

    invoke-virtual {p0, p3}, Lcom/zte/zdm/d/c/ak;->a(Lcom/zte/zdm/d/c/bb;)V

    invoke-virtual {p0, p6}, Lcom/zte/zdm/d/c/ak;->a([Lcom/zte/zdm/d/c/al;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/zte/zdm/d/c/bb;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/zte/zdm/d/c/ak;->g:Lcom/zte/zdm/d/c/bb;

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
    iput-object p1, p0, Lcom/zte/zdm/d/c/ak;->f:Lcom/zte/zdm/d/c/bm;

    return-void
.end method

.method public a([Lcom/zte/zdm/d/c/al;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mapItems cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/d/c/ak;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/zte/zdm/d/c/ak;->h:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/zte/zdm/d/c/ak;->e:Ljava/lang/String;

    return-object v0
.end method

.method public g()Lcom/zte/zdm/d/c/bm;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/ak;->f:Lcom/zte/zdm/d/c/bm;

    return-object v0
.end method

.method public h()Lcom/zte/zdm/d/c/bb;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/ak;->g:Lcom/zte/zdm/d/c/bb;

    return-object v0
.end method

.method public i()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/ak;->h:Ljava/util/ArrayList;

    return-object v0
.end method
