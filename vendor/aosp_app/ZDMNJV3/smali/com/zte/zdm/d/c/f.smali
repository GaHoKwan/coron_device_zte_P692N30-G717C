.class public final Lcom/zte/zdm/d/c/f;
.super Lcom/zte/zdm/d/c/a;


# static fields
.field public static e:Ljava/lang/String;


# instance fields
.field private f:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Atomic"

    sput-object v0, Lcom/zte/zdm/d/c/f;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zte/zdm/d/c/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/d/c/f;->f:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/zte/zdm/d/c/m;ZLcom/zte/zdm/d/c/ap;[Lcom/zte/zdm/d/c/a;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/zte/zdm/d/c/a;-><init>(Lcom/zte/zdm/d/c/m;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/d/c/f;->f:Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/zte/zdm/d/c/f;->b:Ljava/lang/Boolean;

    invoke-virtual {p0, p3}, Lcom/zte/zdm/d/c/f;->a(Lcom/zte/zdm/d/c/ap;)V

    invoke-virtual {p0, p4}, Lcom/zte/zdm/d/c/f;->a([Lcom/zte/zdm/d/c/a;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a([Lcom/zte/zdm/d/c/a;)V
    .locals 4

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "commands cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    aget-object v1, p1, v0

    instance-of v1, v1, Lcom/zte/zdm/d/c/b;

    if-nez v1, :cond_2

    aget-object v1, p1, v0

    instance-of v1, v1, Lcom/zte/zdm/d/c/c;

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

    instance-of v1, v1, Lcom/zte/zdm/d/c/at;

    if-nez v1, :cond_2

    aget-object v1, p1, v0

    instance-of v1, v1, Lcom/zte/zdm/d/c/ay;

    if-nez v1, :cond_2

    aget-object v1, p1, v0

    instance-of v1, v1, Lcom/zte/zdm/d/c/bf;

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal nested command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v0, p1, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/zte/zdm/d/c/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/zte/zdm/d/c/f;->f:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/zte/zdm/d/c/f;->e:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/f;->f:Ljava/util/ArrayList;

    return-object v0
.end method
