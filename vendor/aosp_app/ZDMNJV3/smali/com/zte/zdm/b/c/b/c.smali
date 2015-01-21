.class public Lcom/zte/zdm/b/c/b/c;
.super Ljava/lang/Object;


# static fields
.field private static final c:Ljava/lang/String; = "Alert"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private d:[Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;

.field private h:I

.field private i:C

.field private j:C

.field private k:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ANDTPI"

    iput-object v0, p0, Lcom/zte/zdm/b/c/b/c;->a:Ljava/lang/String;

    const-string v0, "TP"

    iput-object v0, p0, Lcom/zte/zdm/b/c/b/c;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I[Ljava/lang/String;)V
    .locals 9

    const/16 v7, 0x20

    const/4 v3, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, v3

    move v6, v3

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/zte/zdm/b/c/b/c;-><init>(I[Ljava/lang/String;IILjava/lang/String;ICC)V

    return-void
.end method

.method public constructor <init>(I[Ljava/lang/String;IILjava/lang/String;ICC)V
    .locals 3

    const/16 v1, 0x20

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ANDTPI"

    iput-object v0, p0, Lcom/zte/zdm/b/c/b/c;->a:Ljava/lang/String;

    const-string v0, "TP"

    iput-object v0, p0, Lcom/zte/zdm/b/c/b/c;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/zte/zdm/d/c/d;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a user alert code"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eq p7, v1, :cond_1

    const-string v0, "ANDTPI"

    invoke-virtual {v0, p7}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not one of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ANDTPI"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eq p8, v1, :cond_2

    const-string v0, "TP"

    invoke-virtual {v0, p8}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Echo type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not one of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "TP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput p1, p0, Lcom/zte/zdm/b/c/b/c;->k:I

    if-nez p2, :cond_3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/zdm/b/c/b/c;->d:[Ljava/lang/String;

    :goto_0
    iput p3, p0, Lcom/zte/zdm/b/c/b/c;->e:I

    iput p4, p0, Lcom/zte/zdm/b/c/b/c;->f:I

    iput-object p5, p0, Lcom/zte/zdm/b/c/b/c;->g:Ljava/lang/String;

    iput p6, p0, Lcom/zte/zdm/b/c/b/c;->h:I

    iput-char p7, p0, Lcom/zte/zdm/b/c/b/c;->i:C

    iput-char p8, p0, Lcom/zte/zdm/b/c/b/c;->j:C

    return-void

    :cond_3
    iput-object p2, p0, Lcom/zte/zdm/b/c/b/c;->d:[Ljava/lang/String;

    goto :goto_0
.end method

.method protected static a(I[Ljava/lang/String;IILjava/lang/String;ICC)Lcom/zte/zdm/b/c/b/c;
    .locals 9

    new-instance v0, Lcom/zte/zdm/b/c/b/c;

    move v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/zte/zdm/b/c/b/c;-><init>(I[Ljava/lang/String;IILjava/lang/String;ICC)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;II)Lcom/zte/zdm/b/c/b/c;
    .locals 8

    const/16 v6, 0x20

    const/16 v0, 0x44c

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v4, 0x0

    const/4 v5, -0x1

    move v2, p1

    move v3, p2

    move v7, v6

    invoke-static/range {v0 .. v7}, Lcom/zte/zdm/b/c/b/c;->a(I[Ljava/lang/String;IILjava/lang/String;ICC)Lcom/zte/zdm/b/c/b/c;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;IILjava/lang/String;)Lcom/zte/zdm/b/c/b/c;
    .locals 8

    const/16 v6, 0x20

    const/16 v0, 0x44d

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v5, -0x1

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v7, v6

    invoke-static/range {v0 .. v7}, Lcom/zte/zdm/b/c/b/c;->a(I[Ljava/lang/String;IILjava/lang/String;ICC)Lcom/zte/zdm/b/c/b/c;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;IILjava/lang/String;ICC)Lcom/zte/zdm/b/c/b/c;
    .locals 8

    const/16 v0, 0x44e

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lcom/zte/zdm/b/c/b/c;->a(I[Ljava/lang/String;IILjava/lang/String;ICC)Lcom/zte/zdm/b/c/b/c;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;[Ljava/lang/String;)Lcom/zte/zdm/b/c/b/c;
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-static {p0, p1, v1, v1, v0}, Lcom/zte/zdm/b/c/b/c;->a(Ljava/lang/String;[Ljava/lang/String;IILjava/lang/String;)Lcom/zte/zdm/b/c/b/c;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;[Ljava/lang/String;IILjava/lang/String;)Lcom/zte/zdm/b/c/b/c;
    .locals 8

    const/16 v6, 0x20

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "options cannot be null or zero length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    aput-object p0, v1, v3

    const/4 v0, 0x1

    array-length v2, p1

    invoke-static {p1, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x44f

    const/4 v5, -0x1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v7, v6

    invoke-static/range {v0 .. v7}, Lcom/zte/zdm/b/c/b/c;->a(I[Ljava/lang/String;IILjava/lang/String;ICC)Lcom/zte/zdm/b/c/b/c;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lcom/zte/zdm/b/c/b/c;
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, v0, v0}, Lcom/zte/zdm/b/c/b/c;->a(Ljava/lang/String;II)Lcom/zte/zdm/b/c/b/c;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;[Ljava/lang/String;IILjava/lang/String;)Lcom/zte/zdm/b/c/b/c;
    .locals 8

    const/16 v6, 0x20

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "options cannot be null or zero length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    aput-object p0, v1, v3

    const/4 v0, 0x1

    array-length v2, p1

    invoke-static {p1, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x450

    const/4 v5, -0x1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v7, v6

    invoke-static/range {v0 .. v7}, Lcom/zte/zdm/b/c/b/c;->a(I[Ljava/lang/String;IILjava/lang/String;ICC)Lcom/zte/zdm/b/c/b/c;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Lcom/zte/zdm/b/c/b/c;
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-static {p0, v1, v1, v0}, Lcom/zte/zdm/b/c/b/c;->a(Ljava/lang/String;IILjava/lang/String;)Lcom/zte/zdm/b/c/b/c;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/String;)Lcom/zte/zdm/b/c/b/c;
    .locals 7

    const/16 v5, 0x20

    const/4 v1, -0x1

    const/4 v3, 0x0

    move-object v0, p0

    move v2, v1

    move v4, v1

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/zte/zdm/b/c/b/c;->a(Ljava/lang/String;IILjava/lang/String;ICC)Lcom/zte/zdm/b/c/b/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "Alert"

    return-object v0
.end method

.method public a(C)V
    .locals 0

    iput-char p1, p0, Lcom/zte/zdm/b/c/b/c;->i:C

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/zte/zdm/b/c/b/c;->e:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/b/c/b/c;->g:Ljava/lang/String;

    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/b/c/b/c;->d:[Ljava/lang/String;

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/b/c/b/c;->e:I

    return v0
.end method

.method public b(C)V
    .locals 0

    iput-char p1, p0, Lcom/zte/zdm/b/c/b/c;->j:C

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/zte/zdm/b/c/b/c;->f:I

    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/zte/zdm/b/c/b/c;->h:I

    return-void
.end method

.method public c()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/c/b/c;->d:[Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/b/c/b/c;->f:I

    return v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/zte/zdm/b/c/b/c;->k:I

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/c/b/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/b/c/b/c;->h:I

    return v0
.end method

.method public g()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h()C
    .locals 1

    iget-char v0, p0, Lcom/zte/zdm/b/c/b/c;->i:C

    return v0
.end method

.method public i()C
    .locals 1

    iget-char v0, p0, Lcom/zte/zdm/b/c/b/c;->j:C

    return v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/b/c/b/c;->k:I

    return v0
.end method
