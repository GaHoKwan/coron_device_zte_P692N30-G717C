.class Lcom/zte/privacy/aw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/privacy/y;


# instance fields
.field final synthetic pr:Lcom/zte/privacy/z;

.field final synthetic ps:Lcom/zte/privacy/aD;


# direct methods
.method constructor <init>(Lcom/zte/privacy/aD;Lcom/zte/privacy/z;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/privacy/aw;->ps:Lcom/zte/privacy/aD;

    iput-object p2, p0, Lcom/zte/privacy/aw;->pr:Lcom/zte/privacy/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A(I)Lcom/zte/privacy/an;
    .locals 5

    iget-object v0, p0, Lcom/zte/privacy/aw;->pr:Lcom/zte/privacy/z;

    const-string v1, "DexAnnotationAble pv%02d = mv.visitParameterAnnotation(%s);"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/zte/privacy/z;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/zte/privacy/V;

    invoke-direct {v0, p0, p1}, Lcom/zte/privacy/V;-><init>(Lcom/zte/privacy/aw;I)V

    return-object v0
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/zte/privacy/aw;->pr:Lcom/zte/privacy/z;

    const-string v1, "mv.visitEnd();"

    invoke-virtual {v0, v1}, Lcom/zte/privacy/z;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/privacy/aw;->pr:Lcom/zte/privacy/z;

    invoke-virtual {v0}, Lcom/zte/privacy/z;->Q()V

    iget-object v0, p0, Lcom/zte/privacy/aw;->pr:Lcom/zte/privacy/z;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Lcom/zte/privacy/z;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/privacy/aw;->pr:Lcom/zte/privacy/z;

    invoke-virtual {v0}, Lcom/zte/privacy/z;->Q()V

    iget-object v0, p0, Lcom/zte/privacy/aw;->pr:Lcom/zte/privacy/z;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Lcom/zte/privacy/z;->e(Ljava/lang/String;)V

    return-void
.end method

.method public aq()Lcom/zte/privacy/A;
    .locals 2

    iget-object v0, p0, Lcom/zte/privacy/aw;->pr:Lcom/zte/privacy/z;

    const-string v1, "DexCodeVisitor code=mv.visitCode();"

    invoke-virtual {v0, v1}, Lcom/zte/privacy/z;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/privacy/aw;->pr:Lcom/zte/privacy/z;

    const-string v1, "if(code != null) {"

    invoke-virtual {v0, v1}, Lcom/zte/privacy/z;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/privacy/aw;->pr:Lcom/zte/privacy/z;

    invoke-virtual {v0}, Lcom/zte/privacy/z;->push()V

    new-instance v0, Lcom/zte/privacy/U;

    iget-object v1, p0, Lcom/zte/privacy/aw;->pr:Lcom/zte/privacy/z;

    invoke-direct {v0, p0, v1}, Lcom/zte/privacy/U;-><init>(Lcom/zte/privacy/aw;Lcom/zte/privacy/i;)V

    return-object v0
.end method

.method public c(Ljava/lang/String;Z)Lcom/zte/privacy/m;
    .locals 3

    new-instance v0, Lcom/zte/privacy/I;

    const-string v1, "mv"

    iget-object v2, p0, Lcom/zte/privacy/aw;->pr:Lcom/zte/privacy/z;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/zte/privacy/I;-><init>(Ljava/lang/String;Lcom/zte/privacy/z;Ljava/lang/String;Z)V

    return-object v0
.end method
