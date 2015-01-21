.class public abstract Lcom/zte/zdm/b/f/d/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final c:Ljava/lang/String; = "b64"

.field public static final d:Ljava/lang/String; = "bool"

.field public static final e:Ljava/lang/String; = "chr"

.field public static final f:Ljava/lang/String; = "int"

.field public static final g:Ljava/lang/String; = "node"

.field public static final h:Ljava/lang/String; = "null"

.field public static final i:Ljava/lang/String; = "xml"

.field public static final j:I = 0x0

.field public static final k:I = 0x1

.field public static final l:Ljava/lang/String; = "text/plain"

.field public static final m:Ljava/lang/String; = "true"

.field public static final n:Ljava/lang/String; = "false"

.field public static final o:Ljava/lang/String; = "."

.field public static final p:C = '/'

.field public static final q:Ljava/lang/String; = "?"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private r:I

.field private s:Ljava/lang/String;

.field private t:Lcom/zte/zdm/b/f/d/b;

.field private u:Lcom/zte/zdm/b/f/d/a;

.field private v:Ljava/lang/String;

.field private w:Ljava/util/Date;

.field private x:I

.field private y:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/zte/zdm/b/f/d/b;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/zte/zdm/b/f/d/g;

    const-string v1, "format required"

    invoke-direct {v0, v1}, Lcom/zte/zdm/b/f/d/g;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Lcom/zte/zdm/b/f/d/g;

    const-string v1, "URI required"

    invoke-direct {v0, v1}, Lcom/zte/zdm/b/f/d/g;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-object p1, p0, Lcom/zte/zdm/b/f/d/f;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/zte/zdm/b/f/d/f;->b:Ljava/lang/String;

    iput p3, p0, Lcom/zte/zdm/b/f/d/f;->r:I

    if-eqz p4, :cond_4

    :goto_0
    iput-object p4, p0, Lcom/zte/zdm/b/f/d/f;->s:Ljava/lang/String;

    iput-object p5, p0, Lcom/zte/zdm/b/f/d/f;->t:Lcom/zte/zdm/b/f/d/b;

    iput-object v1, p0, Lcom/zte/zdm/b/f/d/f;->v:Ljava/lang/String;

    iput-object v1, p0, Lcom/zte/zdm/b/f/d/f;->w:Ljava/util/Date;

    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/zdm/b/f/d/f;->x:I

    return-void

    :cond_4
    const-string p4, ""

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/zte/zdm/b/f/d/b;Ljava/lang/String;Ljava/util/Date;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/zte/zdm/b/f/d/f;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/zte/zdm/b/f/d/b;)V

    iput-object p6, p0, Lcom/zte/zdm/b/f/d/f;->v:Ljava/lang/String;

    iput-object p7, p0, Lcom/zte/zdm/b/f/d/f;->w:Ljava/util/Date;

    iput p8, p0, Lcom/zte/zdm/b/f/d/f;->x:I

    return-void
.end method

.method public static a(Lcom/zte/zdm/d/c/ai;)Lcom/zte/zdm/b/f/d/f;
    .locals 8

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ai;->a()Lcom/zte/zdm/d/c/bm;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/zte/zdm/b/f/d/g;

    const-string v1, "nodes location URI required"

    invoke-direct {v0, v1}, Lcom/zte/zdm/b/f/d/g;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bm;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/zte/zdm/b/f/d/g;

    const-string v1, "invalude nodes URI (empty)"

    invoke-direct {v0, v1}, Lcom/zte/zdm/b/f/d/g;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ai;->c()Lcom/zte/zdm/d/c/ap;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/zte/zdm/d/c/ap;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    :goto_0
    move-object v2, v0

    :goto_1
    const-string v0, "node"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/zte/zdm/b/f/d/d;

    invoke-direct {v0, v1, v3, v5, v5}, Lcom/zte/zdm/b/f/d/d;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/zte/zdm/b/f/d/b;)V

    :goto_2
    return-object v0

    :cond_2
    const-string v0, "chr"

    goto :goto_0

    :cond_3
    const-string v2, "chr"

    goto :goto_1

    :cond_4
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/zte/zdm/d/c/ap;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    :goto_3
    move-object v4, v0

    :goto_4
    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ai;->e()Lcom/zte/zdm/d/c/n;

    move-result-object v0

    if-nez v0, :cond_7

    new-instance v0, Lcom/zte/zdm/b/f/d/g;

    const-string v1, "no leaf nodes data available"

    invoke-direct {v0, v1}, Lcom/zte/zdm/b/f/d/g;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const-string v0, "text/plain"

    goto :goto_3

    :cond_6
    const-string v4, "text/plain"

    goto :goto_4

    :cond_7
    invoke-virtual {v0}, Lcom/zte/zdm/d/c/n;->d()Ljava/lang/String;

    move-result-object v7

    new-instance v0, Lcom/zte/zdm/b/f/d/e;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/zte/zdm/b/f/d/e;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/zte/zdm/b/f/d/b;I[B)V

    goto :goto_2
.end method

.method public static a(Lcom/zte/zdm/d/c/c/b;)Lcom/zte/zdm/b/f/d/f;
    .locals 11

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/c/b;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/zte/zdm/b/f/d/d;

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/c/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/c/b;->h()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "node"

    :goto_0
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/c/b;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/c/b;->j()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/zte/zdm/d/c/c/b;->k()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/c/b;->g()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_2

    const/4 v8, 0x0

    :goto_2
    invoke-direct/range {v0 .. v8}, Lcom/zte/zdm/b/f/d/d;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/zte/zdm/b/f/d/b;Ljava/lang/String;Ljava/util/Date;I)V

    :goto_3
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/zte/zdm/d/c/c/b;->h()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    new-instance v5, Lcom/zte/zdm/b/f/d/b;

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/c/b;->j()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/zte/zdm/b/f/d/b;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/zte/zdm/d/c/c/b;->g()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_2

    :cond_3
    new-instance v0, Lcom/zte/zdm/b/f/d/e;

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/c/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/c/b;->h()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/c/b;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/c/b;->j()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    const/4 v5, 0x0

    :goto_4
    invoke-virtual {p0}, Lcom/zte/zdm/d/c/c/b;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/c/b;->k()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/c/b;->g()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_5

    const/4 v9, 0x0

    :goto_5
    invoke-virtual {p0}, Lcom/zte/zdm/d/c/c/b;->d()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-direct/range {v0 .. v10}, Lcom/zte/zdm/b/f/d/e;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/zte/zdm/b/f/d/b;ILjava/lang/String;Ljava/util/Date;I[B)V

    goto :goto_3

    :cond_4
    new-instance v5, Lcom/zte/zdm/b/f/d/b;

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/c/b;->j()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/zte/zdm/b/f/d/b;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Lcom/zte/zdm/d/c/c/b;->g()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    goto :goto_5
.end method


# virtual methods
.method public a(Lcom/zte/zdm/b/f/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/b/f/d/f;->u:Lcom/zte/zdm/b/f/d/a;

    return-void
.end method

.method public a(Lcom/zte/zdm/b/f/d/b;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/b/f/d/f;->t:Lcom/zte/zdm/b/f/d/b;

    return-void
.end method

.method public a(ILcom/zte/zdm/d/c/ai;)Z
    .locals 3

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p2}, Lcom/zte/zdm/d/c/ai;->e()Lcom/zte/zdm/d/c/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/n;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zte/zdm/b/f/d/f;->c(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    new-instance v1, Lcom/zte/zdm/b/f/d/b;

    invoke-virtual {p2}, Lcom/zte/zdm/d/c/ai;->e()Lcom/zte/zdm/d/c/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/zdm/d/c/n;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/zte/zdm/b/f/d/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/zte/zdm/b/f/d/f;->a(Lcom/zte/zdm/b/f/d/b;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p2}, Lcom/zte/zdm/d/c/ai;->e()Lcom/zte/zdm/d/c/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/n;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zte/zdm/b/f/d/f;->d(Ljava/lang/String;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x4 -> :sswitch_0
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public abstract b()Lcom/zte/zdm/d/c/ai;
.end method

.method public b(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-object v0

    :sswitch_0
    iget-object v1, p0, Lcom/zte/zdm/b/f/d/f;->t:Lcom/zte/zdm/b/f/d/b;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/b/f/d/f;->t:Lcom/zte/zdm/b/f/d/b;

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/d/b;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/zte/zdm/b/f/d/f;->j()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/zte/zdm/b/f/d/f;->i()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lcom/zte/zdm/b/f/d/f;->n()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_4
    iget-object v1, p0, Lcom/zte/zdm/b/f/d/f;->w:Ljava/util/Date;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/b/f/d/f;->w:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0}, Lcom/zte/zdm/b/f/d/f;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_6
    iget v1, p0, Lcom/zte/zdm/b/f/d/f;->x:I

    if-eqz v1, :cond_0

    iget v0, p0, Lcom/zte/zdm/b/f/d/f;->x:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x10 -> :sswitch_3
        0x20 -> :sswitch_4
        0x40 -> :sswitch_5
        0x80 -> :sswitch_6
    .end sparse-switch
.end method

.method public c(I)Lcom/zte/zdm/d/c/c/b;
    .locals 3

    const/4 v1, 0x0

    new-instance v2, Lcom/zte/zdm/d/c/c/b;

    invoke-direct {v2}, Lcom/zte/zdm/d/c/c/b;-><init>()V

    invoke-virtual {p0}, Lcom/zte/zdm/b/f/d/f;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/zte/zdm/d/c/c/b;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/zte/zdm/b/f/d/h;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/b/f/d/f;->t:Lcom/zte/zdm/b/f/d/b;

    if-nez v0, :cond_5

    move-object v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/zte/zdm/d/c/c/b;->i(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/zte/zdm/b/f/d/h;->a(II)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/zte/zdm/b/f/d/f;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/zte/zdm/d/c/c/b;->g(Ljava/lang/String;)V

    :cond_1
    const/16 v0, 0x20

    invoke-static {p1, v0}, Lcom/zte/zdm/b/f/d/h;->a(II)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/zte/zdm/b/f/d/f;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/zte/zdm/d/c/c/b;->j(Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/zte/zdm/b/f/d/h;->a(II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/zte/zdm/b/f/d/f;->o()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_6

    :goto_1
    invoke-virtual {v2, v1}, Lcom/zte/zdm/d/c/c/b;->h(Ljava/lang/String;)V

    :cond_3
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lcom/zte/zdm/b/f/d/h;->a(II)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/zte/zdm/b/f/d/f;->p()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/zte/zdm/d/c/c/b;->f(Ljava/lang/String;)V

    :cond_4
    return-object v2

    :cond_5
    iget-object v0, p0, Lcom/zte/zdm/b/f/d/f;->t:Lcom/zte/zdm/b/f/d/b;

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/d/b;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/zte/zdm/b/f/d/f;->o()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public c(Ljava/lang/String;)V
    .locals 5

    const/16 v4, 0x2f

    iget-object v0, p0, Lcom/zte/zdm/b/f/d/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/zte/zdm/b/f/d/f;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/b/f/d/f;->a:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/zte/zdm/b/f/d/f;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public abstract c()Z
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "clone able error"

    invoke-static {p0, v1, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(I)Lcom/zte/zdm/d/c/ai;
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/zte/zdm/b/f/d/f;->b(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    return-object v1

    :cond_0
    new-instance v4, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/zte/zdm/b/f/d/f;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?prop="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/zte/zdm/b/f/d/h;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/zte/zdm/d/c/ai;

    new-instance v2, Lcom/zte/zdm/d/c/bb;

    invoke-direct {v2, v4, v1}, Lcom/zte/zdm/d/c/bb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/zte/zdm/d/c/n;

    invoke-direct {v4, v3}, Lcom/zte/zdm/d/c/n;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v3, v1

    invoke-direct/range {v0 .. v5}, Lcom/zte/zdm/d/c/ai;-><init>(Lcom/zte/zdm/d/c/bm;Lcom/zte/zdm/d/c/bb;Lcom/zte/zdm/d/c/ap;Lcom/zte/zdm/d/c/n;Z)V

    move-object v1, v0

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/b/f/d/f;->v:Ljava/lang/String;

    return-void
.end method

.method public abstract d()[B
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/b/f/d/f;->a:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/b/f/d/f;->y:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/f/d/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/b/f/d/f;->r:I

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/b/f/d/f;->a:Ljava/lang/String;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/zte/zdm/b/f/d/f;->a:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/b/f/d/f;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/f/d/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/f/d/f;->s:Ljava/lang/String;

    return-object v0
.end method

.method public l()Lcom/zte/zdm/b/f/d/b;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/f/d/f;->t:Lcom/zte/zdm/b/f/d/b;

    return-object v0
.end method

.method public m()Lcom/zte/zdm/b/f/d/a;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/f/d/f;->u:Lcom/zte/zdm/b/f/d/a;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/f/d/f;->v:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/f/d/f;->w:Ljava/util/Date;

    return-object v0
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/b/f/d/f;->x:I

    return v0
.end method

.method public q()Lcom/zte/zdm/d/c/ai;
    .locals 2

    invoke-virtual {p0}, Lcom/zte/zdm/b/f/d/f;->b()Lcom/zte/zdm/d/c/ai;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/zdm/d/c/ai;->a(Lcom/zte/zdm/d/c/n;)V

    return-object v0
.end method

.method public r()Lcom/zte/zdm/d/c/ai;
    .locals 2

    invoke-virtual {p0}, Lcom/zte/zdm/b/f/d/f;->b()Lcom/zte/zdm/d/c/ai;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/b/f/d/f;->c()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/zdm/d/c/ai;->a(Lcom/zte/zdm/d/c/n;)V

    :cond_0
    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/f/d/f;->y:Ljava/lang/String;

    return-object v0
.end method
