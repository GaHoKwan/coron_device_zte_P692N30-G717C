.class public Lcom/zte/zdm/b/f/d/e;
.super Lcom/zte/zdm/b/f/d/f;


# static fields
.field private static final r:Lcom/zte/zdm/b/f/b/d;


# instance fields
.field protected a:[B

.field protected b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/zte/zdm/b/f/b/d;->a()Lcom/zte/zdm/b/f/b/d;

    move-result-object v0

    sput-object v0, Lcom/zte/zdm/b/f/d/e;->r:Lcom/zte/zdm/b/f/b/d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/zte/zdm/b/f/d/b;ILjava/lang/String;Ljava/util/Date;I[B)V
    .locals 10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v1 .. v9}, Lcom/zte/zdm/b/f/d/f;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/zte/zdm/b/f/d/b;Ljava/lang/String;Ljava/util/Date;I)V

    if-nez p10, :cond_0

    new-instance v1, Lcom/zte/zdm/b/f/d/g;

    const-string v2, "a value required for a leaf node"

    invoke-direct {v1, v2}, Lcom/zte/zdm/b/f/d/g;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/zte/zdm/b/f/d/e;->a:[B

    if-nez p6, :cond_1

    invoke-static {p2}, Lcom/zte/zdm/b/f/d/c;->a(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p10

    invoke-static {v1, v0}, Lcom/zte/zdm/b/f/d/c;->a(I[B)I

    move-result p6

    :cond_1
    move/from16 v0, p6

    iput v0, p0, Lcom/zte/zdm/b/f/d/e;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/zte/zdm/b/f/d/b;I[B)V
    .locals 11

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/zte/zdm/b/f/d/e;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/zte/zdm/b/f/d/b;ILjava/lang/String;Ljava/util/Date;I[B)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/zte/zdm/b/f/d/e;->b:I

    return-void
.end method

.method public a([B)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Lcom/zte/zdm/b/f/d/g;

    const-string v1, "a value required for a leaf node"

    invoke-direct {v0, v1}, Lcom/zte/zdm/b/f/d/g;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/zte/zdm/b/f/d/e;->r:Lcom/zte/zdm/b/f/b/d;

    invoke-virtual {v0, p0}, Lcom/zte/zdm/b/f/b/d;->b(Lcom/zte/zdm/b/f/d/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/zte/zdm/b/f/d/e;->r:Lcom/zte/zdm/b/f/b/d;

    invoke-virtual {p0}, Lcom/zte/zdm/b/f/d/e;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/zte/zdm/b/f/b/d;->a(Ljava/lang/String;[B)V

    :cond_1
    iput-object p1, p0, Lcom/zte/zdm/b/f/d/e;->a:[B

    return-void
.end method

.method public a()[B
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/f/d/e;->a:[B

    return-object v0
.end method

.method public b()Lcom/zte/zdm/d/c/ai;
    .locals 7

    const/4 v1, 0x0

    new-instance v4, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/zte/zdm/b/f/d/e;->g()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/zte/zdm/d/c/ap;

    invoke-direct {v3}, Lcom/zte/zdm/d/c/ap;-><init>()V

    invoke-virtual {p0}, Lcom/zte/zdm/b/f/d/e;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/zte/zdm/d/c/ap;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/zdm/b/f/d/e;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/zte/zdm/d/c/ap;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/zte/zdm/d/c/ai;

    new-instance v2, Lcom/zte/zdm/d/c/bb;

    invoke-direct {v2, v4, v1}, Lcom/zte/zdm/d/c/bb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/zte/zdm/d/c/n;

    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/zte/zdm/b/f/d/e;->a:[B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v4, v5}, Lcom/zte/zdm/d/c/n;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/zte/zdm/d/c/ai;-><init>(Lcom/zte/zdm/d/c/bm;Lcom/zte/zdm/d/c/bb;Lcom/zte/zdm/d/c/ap;Lcom/zte/zdm/d/c/n;Z)V

    return-object v0
.end method

.method public b(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/zte/zdm/b/f/d/e;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/zte/zdm/b/f/d/f;->b(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public c(I)Lcom/zte/zdm/d/c/c/b;
    .locals 3

    invoke-super {p0, p1}, Lcom/zte/zdm/b/f/d/f;->c(I)Lcom/zte/zdm/d/c/c/b;

    move-result-object v0

    const/16 v1, 0x40

    invoke-static {p1, v1}, Lcom/zte/zdm/b/f/d/h;->a(II)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/zdm/b/f/d/e;->a:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/zte/zdm/d/c/c/b;->c(Ljava/lang/String;)V

    :cond_0
    const/16 v1, 0x7f

    invoke-static {p1, v1}, Lcom/zte/zdm/b/f/d/h;->a(II)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/zte/zdm/b/f/d/e;->b:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/d/c/c/b;->e(Ljava/lang/String;)V

    :cond_1
    const/16 v1, 0x8

    invoke-static {p1, v1}, Lcom/zte/zdm/b/f/d/h;->a(II)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/zte/zdm/b/f/d/e;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/d/c/c/b;->d(Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d()[B
    .locals 2

    sget-object v0, Lcom/zte/zdm/b/f/d/e;->r:Lcom/zte/zdm/b/f/b/d;

    invoke-virtual {v0, p0}, Lcom/zte/zdm/b/f/b/d;->a(Lcom/zte/zdm/b/f/d/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zte/zdm/b/f/d/e;->r:Lcom/zte/zdm/b/f/b/d;

    invoke-virtual {p0}, Lcom/zte/zdm/b/f/d/e;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/f/b/d;->a(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/b/f/d/e;->a:[B

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/b/f/d/e;->a:[B

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/zte/zdm/b/f/d/e;->d()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/b/f/d/e;->b:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/zte/zdm/b/f/d/e;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/b/f/d/e;->d()[B

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/zte/zdm/b/f/b/e; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "toString caught error"

    invoke-static {p0, v1, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
