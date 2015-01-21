.class public Lcom/zte/privacy/I;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/privacy/m;


# instance fields
.field gX:Lcom/zte/privacy/z;

.field p:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/zte/privacy/z;Ljava/lang/String;Z)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v4, p0, Lcom/zte/privacy/I;->p:I

    iput-object p2, p0, Lcom/zte/privacy/I;->gX:Lcom/zte/privacy/z;

    const-string v0, "{"

    invoke-virtual {p2, v0}, Lcom/zte/privacy/z;->e(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/zte/privacy/z;->push()V

    const-string v0, "DexAnnotationVisitor av%02d = %s.visitAnnotation(%s, %s);"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/zte/privacy/I;->p:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    aput-object p1, v1, v5

    const/4 v2, 0x2

    invoke-static {p3}, Lcom/zte/privacy/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/privacy/g;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p2, v0, v1}, Lcom/zte/privacy/z;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "if(av%02d != null) {"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/zte/privacy/I;->p:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p2, v0, v1}, Lcom/zte/privacy/z;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/zte/privacy/z;->push()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/zte/privacy/m;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/zte/privacy/I;->gX:Lcom/zte/privacy/z;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Lcom/zte/privacy/z;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/privacy/I;->gX:Lcom/zte/privacy/z;

    invoke-virtual {v0}, Lcom/zte/privacy/z;->push()V

    iget v0, p0, Lcom/zte/privacy/I;->p:I

    iget v1, p0, Lcom/zte/privacy/I;->p:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/zte/privacy/I;->p:I

    iget-object v2, p0, Lcom/zte/privacy/I;->gX:Lcom/zte/privacy/z;

    const-string v3, "DexAnnotationVisitor av%02d = av%02d.visitAnnotation(%s, %s);"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    const/4 v0, 0x2

    invoke-static {p1}, Lcom/zte/privacy/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x3

    invoke-static {p2}, Lcom/zte/privacy/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-virtual {v2, v3, v4}, Lcom/zte/privacy/z;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/zte/privacy/I;->gX:Lcom/zte/privacy/z;

    const-string v1, "if(av%02d != null) {"

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p0, Lcom/zte/privacy/I;->p:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/zte/privacy/z;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/zte/privacy/I;->gX:Lcom/zte/privacy/z;

    invoke-virtual {v0}, Lcom/zte/privacy/z;->push()V

    return-object p0
.end method

.method public a()V
    .locals 5

    iget-object v0, p0, Lcom/zte/privacy/I;->gX:Lcom/zte/privacy/z;

    const-string v1, "av%02d.visitEnd();"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/zte/privacy/I;->p:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/zte/privacy/z;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/zte/privacy/I;->p:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/zte/privacy/I;->p:I

    iget-object v0, p0, Lcom/zte/privacy/I;->gX:Lcom/zte/privacy/z;

    invoke-virtual {v0}, Lcom/zte/privacy/z;->Q()V

    iget-object v0, p0, Lcom/zte/privacy/I;->gX:Lcom/zte/privacy/z;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Lcom/zte/privacy/z;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/privacy/I;->gX:Lcom/zte/privacy/z;

    invoke-virtual {v0}, Lcom/zte/privacy/z;->Q()V

    iget-object v0, p0, Lcom/zte/privacy/I;->gX:Lcom/zte/privacy/z;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Lcom/zte/privacy/z;->e(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lcom/zte/privacy/I;->gX:Lcom/zte/privacy/z;

    const-string v1, "av%02d.visit(%s, %s);"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/zte/privacy/I;->p:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Lcom/zte/privacy/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Lcom/zte/privacy/g;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/zte/privacy/z;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/zte/privacy/I;->gX:Lcom/zte/privacy/z;

    const-string v1, "av%02d.visitEnum(%s, %s, %s);"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/zte/privacy/I;->p:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Lcom/zte/privacy/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Lcom/zte/privacy/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p3}, Lcom/zte/privacy/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/zte/privacy/z;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public g(Ljava/lang/String;)Lcom/zte/privacy/m;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/zte/privacy/I;->gX:Lcom/zte/privacy/z;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Lcom/zte/privacy/z;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/privacy/I;->gX:Lcom/zte/privacy/z;

    invoke-virtual {v0}, Lcom/zte/privacy/z;->push()V

    iget v0, p0, Lcom/zte/privacy/I;->p:I

    iget v1, p0, Lcom/zte/privacy/I;->p:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/zte/privacy/I;->p:I

    iget-object v2, p0, Lcom/zte/privacy/I;->gX:Lcom/zte/privacy/z;

    const-string v3, "DexAnnotationVisitor av%02d = av%02d.visitArray(%s);"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    const/4 v0, 0x2

    invoke-static {p1}, Lcom/zte/privacy/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-virtual {v2, v3, v4}, Lcom/zte/privacy/z;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/zte/privacy/I;->gX:Lcom/zte/privacy/z;

    const-string v1, "if(av%02d != null) {"

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p0, Lcom/zte/privacy/I;->p:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/zte/privacy/z;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/zte/privacy/I;->gX:Lcom/zte/privacy/z;

    invoke-virtual {v0}, Lcom/zte/privacy/z;->push()V

    return-object p0
.end method
