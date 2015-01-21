.class Lcom/zte/privacy/U;
.super Lcom/zte/privacy/c;


# instance fields
.field final synthetic jB:Lcom/zte/privacy/aw;


# direct methods
.method constructor <init>(Lcom/zte/privacy/aw;Lcom/zte/privacy/i;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/privacy/U;->jB:Lcom/zte/privacy/aw;

    invoke-direct {p0, p2}, Lcom/zte/privacy/c;-><init>(Lcom/zte/privacy/i;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-super {p0}, Lcom/zte/privacy/c;->a()V

    iget-object v0, p0, Lcom/zte/privacy/U;->o:Lcom/zte/privacy/i;

    invoke-interface {v0}, Lcom/zte/privacy/i;->Q()V

    iget-object v0, p0, Lcom/zte/privacy/U;->o:Lcom/zte/privacy/i;

    const-string v1, "}"

    invoke-interface {v0, v1}, Lcom/zte/privacy/i;->e(Ljava/lang/String;)V

    return-void
.end method
