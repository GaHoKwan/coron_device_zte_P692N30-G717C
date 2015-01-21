.class public Lcom/zte/privacy/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/privacy/aE;
.implements Lcom/zte/privacy/am;


# instance fields
.field o:Lcom/zte/privacy/i;

.field p:I


# direct methods
.method public constructor <init>(Lcom/zte/privacy/i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/privacy/c;->p:I

    iput-object p1, p0, Lcom/zte/privacy/c;->o:Lcom/zte/privacy/i;

    return-void
.end method

.method private a(Lcom/zte/privacy/C;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p1, Lcom/zte/privacy/C;->gR:Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/privacy/c;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/zte/privacy/c;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/zte/privacy/C;->gR:Ljava/lang/Object;

    iget-object v0, p0, Lcom/zte/privacy/c;->o:Lcom/zte/privacy/i;

    const-string v1, "DexLabel %s=new DexLabel();"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/zte/privacy/C;->gR:Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p1, Lcom/zte/privacy/C;->gR:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public a([Lcom/zte/privacy/C;)Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "new DexLabel[]{"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    array-length v4, p1

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, p1, v2

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    invoke-direct {p0, v5}, Lcom/zte/privacy/c;->a(Lcom/zte/privacy/C;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/zte/privacy/c;->o:Lcom/zte/privacy/i;

    const-string v1, "code.visitEnd();"

    invoke-interface {v0, v1}, Lcom/zte/privacy/i;->e(Ljava/lang/String;)V

    return-void
.end method

.method public a(II)V
    .locals 5

    iget-object v0, p0, Lcom/zte/privacy/c;->o:Lcom/zte/privacy/i;

    const-string v1, "code.visitMonitorStmt(%s,%s);"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/zte/privacy/c;->c(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(III)V
    .locals 5

    iget-object v0, p0, Lcom/zte/privacy/c;->o:Lcom/zte/privacy/i;

    const-string v1, "code.visitMoveStmt(%s,%s,%s);"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/zte/privacy/c;->c(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0, p3}, Lcom/zte/privacy/c;->d(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(IIII)V
    .locals 5

    iget-object v0, p0, Lcom/zte/privacy/c;->o:Lcom/zte/privacy/i;

    const-string v1, "code.visitBinopLitXStmt(%s,%s,%s,%s);"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/zte/privacy/c;->c(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(IIIII)V
    .locals 5

    iget-object v0, p0, Lcom/zte/privacy/c;->o:Lcom/zte/privacy/i;

    const-string v1, "code.visitArrayStmt(%s,%s,%s,%s,%s);"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/zte/privacy/c;->c(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {p0, p5}, Lcom/zte/privacy/c;->d(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(IIII[Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lcom/zte/privacy/c;->o:Lcom/zte/privacy/i;

    const-string v1, "code.visitFillArrayStmt(%s,%s,%s,%s,%s);"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/zte/privacy/c;->c(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {p5}, Lcom/zte/privacy/g;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(IIILcom/zte/privacy/C;)V
    .locals 5

    iget-object v0, p0, Lcom/zte/privacy/c;->o:Lcom/zte/privacy/i;

    const-string v1, "code.visitJumpStmt(%s,%s,%s,%s);"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/zte/privacy/c;->c(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-direct {p0, p4}, Lcom/zte/privacy/c;->a(Lcom/zte/privacy/C;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(IIILcom/zte/privacy/ac;I)V
    .locals 5

    iget-object v0, p0, Lcom/zte/privacy/c;->o:Lcom/zte/privacy/i;

    const-string v1, "code.visitFieldStmt(%s,%s,%s,%s,%s);"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/zte/privacy/c;->c(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Lcom/zte/privacy/g;->a(Lcom/zte/privacy/ac;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {p0, p5}, Lcom/zte/privacy/c;->d(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(IIILjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/zte/privacy/c;->o:Lcom/zte/privacy/i;

    const-string v1, "code.visitClassStmt(%s,%s,%s,%s);"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/zte/privacy/c;->c(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Lcom/zte/privacy/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(IILcom/zte/privacy/C;)V
    .locals 5

    iget-object v0, p0, Lcom/zte/privacy/c;->o:Lcom/zte/privacy/i;

    const-string v1, "code.visitJumpStmt(%s,%s,%s);"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/zte/privacy/c;->c(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-direct {p0, p3}, Lcom/zte/privacy/c;->a(Lcom/zte/privacy/C;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(IILcom/zte/privacy/C;II[Lcom/zte/privacy/C;)V
    .locals 5

    iget-object v0, p0, Lcom/zte/privacy/c;->o:Lcom/zte/privacy/i;

    const-string v1, "code.visitTableSwitchStmt(%s,%s,%s,%s,%s,%s);"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/zte/privacy/c;->c(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-direct {p0, p3}, Lcom/zte/privacy/c;->a(Lcom/zte/privacy/C;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-virtual {p0, p6}, Lcom/zte/privacy/c;->a([Lcom/zte/privacy/C;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(IILcom/zte/privacy/C;[I[Lcom/zte/privacy/C;)V
    .locals 5

    iget-object v0, p0, Lcom/zte/privacy/c;->o:Lcom/zte/privacy/i;

    const-string v1, "code.visitLookupSwitchStmt(%s,%s,%s,%s,%s);"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/zte/privacy/c;->c(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-direct {p0, p3}, Lcom/zte/privacy/c;->a(Lcom/zte/privacy/C;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Lcom/zte/privacy/g;->a([I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {p0, p5}, Lcom/zte/privacy/c;->a([Lcom/zte/privacy/C;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(IILcom/zte/privacy/ac;I)V
    .locals 5

    iget-object v0, p0, Lcom/zte/privacy/c;->o:Lcom/zte/privacy/i;

    const-string v1, "code.visitFieldStmt(%s,%s,%s,%s);"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/zte/privacy/c;->c(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Lcom/zte/privacy/g;->a(Lcom/zte/privacy/ac;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p0, p4}, Lcom/zte/privacy/c;->d(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(IILjava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lcom/zte/privacy/c;->o:Lcom/zte/privacy/i;

    const-string v1, "((OdexCodeVisitor)code).visitReturnStmt(%s,%s,%s);"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/zte/privacy/c;->c(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Lcom/zte/privacy/g;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(IILjava/lang/Object;I)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    instance-of v0, p3, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/privacy/c;->o:Lcom/zte/privacy/i;

    const-string v1, "code.visitConstStmt(%s,%s,%s,%s); // int: 0x%08x  float:%f"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/zte/privacy/c;->c(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p3}, Lcom/zte/privacy/g;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, p4}, Lcom/zte/privacy/c;->d(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object p3, v2, v8

    const/4 v3, 0x5

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    instance-of v0, p3, Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zte/privacy/c;->o:Lcom/zte/privacy/i;

    const-string v1, "code.visitConstStmt(%s,%s,%s,%s); // long: 0x%016x  double:%f"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/zte/privacy/c;->c(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p3}, Lcom/zte/privacy/g;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, p4}, Lcom/zte/privacy/c;->d(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object p3, v2, v8

    const/4 v3, 0x5

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zte/privacy/c;->o:Lcom/zte/privacy/i;

    const-string v1, "code.visitConstStmt(%s,%s,%s,%s);"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/zte/privacy/c;->c(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p3}, Lcom/zte/privacy/g;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, p4}, Lcom/zte/privacy/c;->d(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(IILjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/zte/privacy/c;->o:Lcom/zte/privacy/i;

    const-string v1, "code.visitClassStmt(%s,%s,%s);"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/zte/privacy/c;->c(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Lcom/zte/privacy/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(ILcom/zte/privacy/C;)V
    .locals 5

    iget-object v0, p0, Lcom/zte/privacy/c;->o:Lcom/zte/privacy/i;

    const-string v1, "code.visitJumpStmt(%s,%s);"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/zte/privacy/c;->c(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, p2}, Lcom/zte/privacy/c;->a(Lcom/zte/privacy/C;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(I[I)V
    .locals 5

    iget-object v0, p0, Lcom/zte/privacy/c;->o:Lcom/zte/privacy/i;

    const-string v1, "code.visitArguments(%s,%s);"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Lcom/zte/privacy/g;->a([I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(I[II)V
    .locals 5

    iget-object v0, p0, Lcom/zte/privacy/c;->o:Lcom/zte/privacy/i;

    const-string v1, "((OdexCodeVisitor)code).visitMethodStmt(%s,%s,%s);"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/zte/privacy/c;->c(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Lcom/zte/privacy/g;->a([I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(I[ILcom/zte/privacy/az;)V
    .locals 5

    iget-object v0, p0, Lcom/zte/privacy/c;->o:Lcom/zte/privacy/i;

    const-string v1, "code.visitMethodStmt(%s,%s,%s);"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/zte/privacy/c;->c(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Lcom/zte/privacy/g;->a([I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Lcom/zte/privacy/g;->a(Lcom/zte/privacy/az;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(I[ILjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/zte/privacy/c;->o:Lcom/zte/privacy/i;

    const-string v1, "code.visitFilledNewArrayStmt(%s,%s,%s);"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/zte/privacy/c;->c(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Lcom/zte/privacy/g;->a([I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Lcom/zte/privacy/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/zte/privacy/C;Lcom/zte/privacy/C;[Lcom/zte/privacy/C;[Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/zte/privacy/c;->o:Lcom/zte/privacy/i;

    const-string v1, "code.visitTryCatch(%s,%s,%s,%s);"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/zte/privacy/c;->a(Lcom/zte/privacy/C;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, p2}, Lcom/zte/privacy/c;->a(Lcom/zte/privacy/C;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0, p3}, Lcom/zte/privacy/c;->a([Lcom/zte/privacy/C;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Lcom/zte/privacy/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zte/privacy/C;Lcom/zte/privacy/C;I)V
    .locals 5

    iget-object v0, p0, Lcom/zte/privacy/c;->o:Lcom/zte/privacy/i;

    const-string v1, "code.visitLocalVariable(%s,%s,%s,%s,%s,%s);"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/zte/privacy/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Lcom/zte/privacy/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Lcom/zte/privacy/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-direct {p0, p4}, Lcom/zte/privacy/c;->a(Lcom/zte/privacy/C;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-direct {p0, p5}, Lcom/zte/privacy/c;->a(Lcom/zte/privacy/C;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public b(III)V
    .locals 5

    iget-object v0, p0, Lcom/zte/privacy/c;->o:Lcom/zte/privacy/i;

    const-string v1, "code.visitReturnStmt(%s,%s,%s);"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/zte/privacy/c;->c(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0, p3}, Lcom/zte/privacy/c;->d(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public b(IIII)V
    .locals 5

    iget-object v0, p0, Lcom/zte/privacy/c;->o:Lcom/zte/privacy/i;

    const-string v1, "code.visitMoveStmt(%s,%s,%s,%s);"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/zte/privacy/c;->c(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p0, p4}, Lcom/zte/privacy/c;->d(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public b(IIIII)V
    .locals 5

    iget-object v0, p0, Lcom/zte/privacy/c;->o:Lcom/zte/privacy/i;

    const-string v1, "code.visitBinopStmt(%s,%s,%s,%s,%s);"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/zte/privacy/c;->c(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {p0, p5}, Lcom/zte/privacy/c;->d(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public b(ILcom/zte/privacy/C;)V
    .locals 5

    iget-object v0, p0, Lcom/zte/privacy/c;->o:Lcom/zte/privacy/i;

    const-string v1, "code.visitLineNumber(%s,%s);"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, p2}, Lcom/zte/privacy/c;->a(Lcom/zte/privacy/C;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public b(Lcom/zte/privacy/C;)V
    .locals 5

    iget-object v0, p0, Lcom/zte/privacy/c;->o:Lcom/zte/privacy/i;

    const-string v1, "code.visitLabel(%s);"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/zte/privacy/c;->a(Lcom/zte/privacy/C;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method c(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OP_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/zte/privacy/r;->x(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(IIII)V
    .locals 5

    iget-object v0, p0, Lcom/zte/privacy/c;->o:Lcom/zte/privacy/i;

    const-string v1, "code.visitUnopStmt(%s,%s,%s,%s);"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/zte/privacy/c;->c(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p0, p4}, Lcom/zte/privacy/c;->d(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public c(IIIII)V
    .locals 5

    iget-object v0, p0, Lcom/zte/privacy/c;->o:Lcom/zte/privacy/i;

    const-string v1, "code.visitCmpStmt(%s,%s,%s,%s,%s);"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/zte/privacy/c;->c(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {p0, p5}, Lcom/zte/privacy/c;->d(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method d(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "TYPE_SINGLE"

    goto :goto_0

    :pswitch_1
    const-string v0, "TYPE_WIDE"

    goto :goto_0

    :pswitch_2
    const-string v0, "TYPE_OBJECT"

    goto :goto_0

    :pswitch_3
    const-string v0, "TYPE_BOOLEAN"

    goto :goto_0

    :pswitch_4
    const-string v0, "TYPE_BYTE"

    goto :goto_0

    :pswitch_5
    const-string v0, "TYPE_CHAR"

    goto :goto_0

    :pswitch_6
    const-string v0, "TYPE_SHORT"

    goto :goto_0

    :pswitch_7
    const-string v0, "TYPE_INT"

    goto :goto_0

    :pswitch_8
    const-string v0, "TYPE_FLOAT"

    goto :goto_0

    :pswitch_9
    const-string v0, "TYPE_LONG"

    goto :goto_0

    :pswitch_a
    const-string v0, "TYPE_DOUBLE"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public d(IIIII)V
    .locals 5

    iget-object v0, p0, Lcom/zte/privacy/c;->o:Lcom/zte/privacy/i;

    const-string v1, "code.visitUnopStmt(%s,%s,%s,%s,%s);"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/zte/privacy/c;->c(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p0, p4}, Lcom/zte/privacy/c;->d(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {p0, p5}, Lcom/zte/privacy/c;->d(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public e(I)V
    .locals 5

    iget-object v0, p0, Lcom/zte/privacy/c;->o:Lcom/zte/privacy/i;

    const-string v1, "code.visitReturnStmt(%s);"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/zte/privacy/c;->c(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public e(IIIII)V
    .locals 5

    iget-object v0, p0, Lcom/zte/privacy/c;->o:Lcom/zte/privacy/i;

    const-string v1, "((OdexCodeVisitor)code).visitFieldStmt(%s,%s,%s,%s,%s);"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/zte/privacy/c;->c(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {p0, p5}, Lcom/zte/privacy/c;->d(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
