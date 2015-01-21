.class Lcom/zte/zdm/b/f/a/e;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1


# instance fields
.field c:Ljava/lang/String;

.field d:I

.field e:Ljava/lang/String;

.field f:Lcom/zte/zdm/b/f/d/b;

.field g:Ljava/lang/String;

.field h:I

.field i:I

.field j:[B

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field m:Lcom/zte/zdm/b/f/d/a;

.field private n:I

.field private o:Ljava/util/List;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/zte/zdm/b/f/a/e;->d:I

    iput-object v1, p0, Lcom/zte/zdm/b/f/a/e;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/zte/zdm/b/f/a/e;->f:Lcom/zte/zdm/b/f/d/b;

    iput-object v1, p0, Lcom/zte/zdm/b/f/a/e;->g:Ljava/lang/String;

    iput v2, p0, Lcom/zte/zdm/b/f/a/e;->h:I

    iput v2, p0, Lcom/zte/zdm/b/f/a/e;->i:I

    iput-object v1, p0, Lcom/zte/zdm/b/f/a/e;->j:[B

    iput-object v1, p0, Lcom/zte/zdm/b/f/a/e;->k:Ljava/lang/String;

    iput-object v1, p0, Lcom/zte/zdm/b/f/a/e;->l:Ljava/lang/String;

    iput-object v1, p0, Lcom/zte/zdm/b/f/a/e;->m:Lcom/zte/zdm/b/f/d/a;

    iput p1, p0, Lcom/zte/zdm/b/f/a/e;->n:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/b/f/a/e;->o:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/zte/zdm/b/f/a/e;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/zte/zdm/b/f/a/e;->d:I

    iput-object v1, p0, Lcom/zte/zdm/b/f/a/e;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/zte/zdm/b/f/a/e;->f:Lcom/zte/zdm/b/f/d/b;

    iput-object v1, p0, Lcom/zte/zdm/b/f/a/e;->g:Ljava/lang/String;

    iput v2, p0, Lcom/zte/zdm/b/f/a/e;->h:I

    iput v2, p0, Lcom/zte/zdm/b/f/a/e;->i:I

    iput-object v1, p0, Lcom/zte/zdm/b/f/a/e;->j:[B

    iput-object v1, p0, Lcom/zte/zdm/b/f/a/e;->k:Ljava/lang/String;

    iput-object v1, p0, Lcom/zte/zdm/b/f/a/e;->l:Ljava/lang/String;

    iput-object v1, p0, Lcom/zte/zdm/b/f/a/e;->m:Lcom/zte/zdm/b/f/d/a;

    iput p2, p0, Lcom/zte/zdm/b/f/a/e;->n:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/b/f/a/e;->o:Ljava/util/List;

    return-void
.end method

.method static a(Lcom/zte/zdm/b/f/d;)V
    .locals 2

    invoke-virtual {p0}, Lcom/zte/zdm/b/f/d;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/f/d/f;

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/d/f;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/b/f/d;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/zdm/b/f/d;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/f/d/f;

    invoke-virtual {p0}, Lcom/zte/zdm/b/f/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/f/d/f;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/zdm/b/f/d;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/f/d;

    invoke-static {v0}, Lcom/zte/zdm/b/f/a/e;->a(Lcom/zte/zdm/b/f/d;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a([Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/FileInputStream;

    const-string v1, "resource/out.xml"

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/zte/zdm/b/f/a/ah;->a(Ljava/io/InputStream;)Lcom/zte/zdm/b/f/b;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/c;->f()Lcom/zte/zdm/b/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/d;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/f/d/f;

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/d/f;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/f/a/e;->l:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/zte/zdm/b/f/a/e;)V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/f/a/e;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/b/f/a/f;->a(Ljava/lang/String;)Lcom/zte/zdm/b/f/a/f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p2}, Lcom/zte/zdm/b/f/a/f;->a(Lcom/zte/zdm/b/f/a/e;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/f/a/e;->o:Ljava/util/List;

    return-object v0
.end method

.method public c()Lcom/zte/zdm/b/f/d;
    .locals 5

    new-instance v1, Lcom/zte/zdm/b/f/d/d;

    iget-object v0, p0, Lcom/zte/zdm/b/f/a/e;->l:Ljava/lang/String;

    iget v2, p0, Lcom/zte/zdm/b/f/a/e;->d:I

    iget-object v3, p0, Lcom/zte/zdm/b/f/a/e;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/zte/zdm/b/f/a/e;->f:Lcom/zte/zdm/b/f/d/b;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/zte/zdm/b/f/d/d;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/zte/zdm/b/f/d/b;)V

    iget-object v0, p0, Lcom/zte/zdm/b/f/a/e;->g:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/zte/zdm/b/f/d/d;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/f/a/e;->k:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/zte/zdm/b/f/d/d;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/f/a/e;->m:Lcom/zte/zdm/b/f/d/a;

    invoke-virtual {v1, v0}, Lcom/zte/zdm/b/f/d/d;->a(Lcom/zte/zdm/b/f/d/a;)V

    new-instance v2, Lcom/zte/zdm/b/f/d;

    invoke-direct {v2, v1}, Lcom/zte/zdm/b/f/d;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/zte/zdm/b/f/a/e;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/f/a/e;

    iget-object v4, v0, Lcom/zte/zdm/b/f/a/e;->l:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/zte/zdm/b/f/d/d;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/a/e;->d()Lcom/zte/zdm/b/f/d;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/zte/zdm/b/f/d;->b(Lcom/zte/zdm/b/f/d;)V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lcom/zte/zdm/b/f/a/e;->a(Lcom/zte/zdm/b/f/d;)V

    return-object v2
.end method

.method d()Lcom/zte/zdm/b/f/d;
    .locals 11

    const/4 v6, 0x0

    iget v0, p0, Lcom/zte/zdm/b/f/a/e;->n:I

    if-nez v0, :cond_1

    new-instance v2, Lcom/zte/zdm/b/f/d/d;

    iget-object v0, p0, Lcom/zte/zdm/b/f/a/e;->l:Ljava/lang/String;

    iget v1, p0, Lcom/zte/zdm/b/f/a/e;->d:I

    iget-object v3, p0, Lcom/zte/zdm/b/f/a/e;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/zte/zdm/b/f/a/e;->f:Lcom/zte/zdm/b/f/d/b;

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/zte/zdm/b/f/d/d;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/zte/zdm/b/f/d/b;)V

    iget-object v0, p0, Lcom/zte/zdm/b/f/a/e;->g:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/zte/zdm/b/f/d/d;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/f/a/e;->l:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/zte/zdm/b/f/d/d;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/f/a/e;->k:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/zte/zdm/b/f/d/d;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/f/a/e;->m:Lcom/zte/zdm/b/f/d/a;

    invoke-virtual {v2, v0}, Lcom/zte/zdm/b/f/d/d;->a(Lcom/zte/zdm/b/f/d/a;)V

    new-instance v1, Lcom/zte/zdm/b/f/d;

    invoke-direct {v1, v2}, Lcom/zte/zdm/b/f/d;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/zte/zdm/b/f/a/e;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/f/a/e;

    iget-object v4, v0, Lcom/zte/zdm/b/f/a/e;->l:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/zte/zdm/b/f/d/d;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/a/e;->d()Lcom/zte/zdm/b/f/d;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zte/zdm/b/f/d;->b(Lcom/zte/zdm/b/f/d;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/zte/zdm/b/f/a/e;->j:[B

    if-nez v0, :cond_2

    new-array v0, v6, [B

    :goto_2
    iput-object v0, p0, Lcom/zte/zdm/b/f/a/e;->j:[B

    new-instance v0, Lcom/zte/zdm/b/f/d/e;

    iget-object v1, p0, Lcom/zte/zdm/b/f/a/e;->l:Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/zdm/b/f/a/e;->c:Ljava/lang/String;

    iget v3, p0, Lcom/zte/zdm/b/f/a/e;->d:I

    iget-object v4, p0, Lcom/zte/zdm/b/f/a/e;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/zte/zdm/b/f/a/e;->f:Lcom/zte/zdm/b/f/d/b;

    iget-object v7, p0, Lcom/zte/zdm/b/f/a/e;->g:Ljava/lang/String;

    const/4 v8, 0x0

    iget v9, p0, Lcom/zte/zdm/b/f/a/e;->h:I

    iget-object v10, p0, Lcom/zte/zdm/b/f/a/e;->j:[B

    invoke-direct/range {v0 .. v10}, Lcom/zte/zdm/b/f/d/e;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/zte/zdm/b/f/d/b;ILjava/lang/String;Ljava/util/Date;I[B)V

    iget-object v1, p0, Lcom/zte/zdm/b/f/a/e;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/f/d/e;->f(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/zdm/b/f/a/e;->m:Lcom/zte/zdm/b/f/d/a;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/f/d/e;->a(Lcom/zte/zdm/b/f/d/a;)V

    new-instance v1, Lcom/zte/zdm/b/f/d;

    invoke-direct {v1, v0}, Lcom/zte/zdm/b/f/d;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/zte/zdm/b/f/a/e;->j:[B

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NodeData [name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/b/f/a/e;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", children="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/b/f/a/e;->o:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
