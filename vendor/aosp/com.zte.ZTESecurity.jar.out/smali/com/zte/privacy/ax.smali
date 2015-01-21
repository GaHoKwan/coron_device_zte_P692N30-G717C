.class Lcom/zte/privacy/ax;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/privacy/aA;


# instance fields
.field final synthetic ps:Lcom/zte/privacy/aD;

.field final synthetic pv:Lcom/zte/privacy/z;


# direct methods
.method constructor <init>(Lcom/zte/privacy/aD;Lcom/zte/privacy/z;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/privacy/ax;->ps:Lcom/zte/privacy/aD;

    iput-object p2, p0, Lcom/zte/privacy/ax;->pv:Lcom/zte/privacy/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/zte/privacy/ax;->pv:Lcom/zte/privacy/z;

    const-string v1, "fv.visitEnd();"

    invoke-virtual {v0, v1}, Lcom/zte/privacy/z;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/privacy/ax;->pv:Lcom/zte/privacy/z;

    invoke-virtual {v0}, Lcom/zte/privacy/z;->Q()V

    iget-object v0, p0, Lcom/zte/privacy/ax;->pv:Lcom/zte/privacy/z;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Lcom/zte/privacy/z;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/privacy/ax;->pv:Lcom/zte/privacy/z;

    invoke-virtual {v0}, Lcom/zte/privacy/z;->Q()V

    iget-object v0, p0, Lcom/zte/privacy/ax;->pv:Lcom/zte/privacy/z;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Lcom/zte/privacy/z;->e(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;Z)Lcom/zte/privacy/m;
    .locals 3

    new-instance v0, Lcom/zte/privacy/I;

    const-string v1, "fv"

    iget-object v2, p0, Lcom/zte/privacy/ax;->pv:Lcom/zte/privacy/z;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/zte/privacy/I;-><init>(Ljava/lang/String;Lcom/zte/privacy/z;Ljava/lang/String;Z)V

    return-object v0
.end method
