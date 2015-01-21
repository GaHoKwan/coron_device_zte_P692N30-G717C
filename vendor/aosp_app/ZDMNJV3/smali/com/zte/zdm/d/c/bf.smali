.class public final Lcom/zte/zdm/d/c/bf;
.super Lcom/zte/zdm/d/c/a;


# static fields
.field public static e:Ljava/lang/String;


# instance fields
.field private f:Lcom/zte/zdm/d/c/bm;

.field private g:Lcom/zte/zdm/d/c/bb;

.field private h:Lcom/zte/zdm/d/c/ap;

.field private i:Ljava/util/ArrayList;

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Sync"

    sput-object v0, Lcom/zte/zdm/d/c/bf;->e:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zte/zdm/d/c/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/d/c/bf;->i:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/zte/zdm/d/c/m;ZLcom/zte/zdm/d/c/s;Lcom/zte/zdm/d/c/bm;Lcom/zte/zdm/d/c/bb;Lcom/zte/zdm/d/c/ap;I[Lcom/zte/zdm/d/c/a;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/zte/zdm/d/c/a;-><init>(Lcom/zte/zdm/d/c/m;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/d/c/bf;->i:Ljava/util/ArrayList;

    invoke-virtual {p0, p8}, Lcom/zte/zdm/d/c/bf;->a([Lcom/zte/zdm/d/c/a;)V

    invoke-virtual {p0, p3}, Lcom/zte/zdm/d/c/bf;->a(Lcom/zte/zdm/d/c/s;)V

    invoke-virtual {p0, p6}, Lcom/zte/zdm/d/c/bf;->a(Lcom/zte/zdm/d/c/ap;)V

    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/zte/zdm/d/c/bf;->b:Ljava/lang/Boolean;

    iput-object p4, p0, Lcom/zte/zdm/d/c/bf;->f:Lcom/zte/zdm/d/c/bm;

    iput-object p5, p0, Lcom/zte/zdm/d/c/bf;->g:Lcom/zte/zdm/d/c/bb;

    iput p7, p0, Lcom/zte/zdm/d/c/bf;->j:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/zte/zdm/d/c/bf;->j:I

    return-void
.end method

.method public a(Lcom/zte/zdm/d/c/bb;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/c/bf;->g:Lcom/zte/zdm/d/c/bb;

    return-void
.end method

.method public a(Lcom/zte/zdm/d/c/bm;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/c/bf;->f:Lcom/zte/zdm/d/c/bm;

    return-void
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

    instance-of v1, v1, Lcom/zte/zdm/d/c/b;

    if-nez v1, :cond_2

    aget-object v1, p1, v0

    instance-of v1, v1, Lcom/zte/zdm/d/c/at;

    if-nez v1, :cond_2

    aget-object v1, p1, v0

    instance-of v1, v1, Lcom/zte/zdm/d/c/w;

    if-nez v1, :cond_2

    aget-object v1, p1, v0

    instance-of v1, v1, Lcom/zte/zdm/d/c/r;

    if-nez v1, :cond_2

    aget-object v1, p1, v0

    instance-of v1, v1, Lcom/zte/zdm/d/c/f;

    if-nez v1, :cond_2

    aget-object v1, p1, v0

    instance-of v1, v1, Lcom/zte/zdm/d/c/ak;

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

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/zte/zdm/d/c/bf;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/zte/zdm/d/c/bf;->i:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/zte/zdm/d/c/bf;->e:Ljava/lang/String;

    return-object v0
.end method

.method public g()Lcom/zte/zdm/d/c/bm;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/bf;->f:Lcom/zte/zdm/d/c/bm;

    return-object v0
.end method

.method public h()Lcom/zte/zdm/d/c/bb;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/bf;->g:Lcom/zte/zdm/d/c/bb;

    return-object v0
.end method

.method public i()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/bf;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/d/c/bf;->j:I

    return v0
.end method
