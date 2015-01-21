.class Lcom/zte/privacy/q;
.super Lcom/zte/privacy/ao;


# instance fields
.field final synthetic dQ:I

.field final synthetic dR:Lcom/zte/privacy/az;

.field final synthetic dS:Lcom/zte/privacy/F;


# direct methods
.method constructor <init>(Lcom/zte/privacy/F;ILcom/zte/privacy/az;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/privacy/q;->dS:Lcom/zte/privacy/F;

    iput p2, p0, Lcom/zte/privacy/q;->dQ:I

    iput-object p3, p0, Lcom/zte/privacy/q;->dR:Lcom/zte/privacy/az;

    invoke-direct {p0}, Lcom/zte/privacy/ao;-><init>()V

    return-void
.end method


# virtual methods
.method public aq()Lcom/zte/privacy/A;
    .locals 4

    new-instance v1, Lcom/zte/privacy/aB;

    iget v0, p0, Lcom/zte/privacy/q;->dQ:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/zte/privacy/q;->dR:Lcom/zte/privacy/az;

    iget-object v3, p0, Lcom/zte/privacy/q;->dS:Lcom/zte/privacy/F;

    iget-object v3, v3, Lcom/zte/privacy/F;->gW:Lcom/zte/privacy/av;

    invoke-static {v3}, Lcom/zte/privacy/av;->a(Lcom/zte/privacy/av;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/zte/privacy/aB;-><init>(ZLcom/zte/privacy/az;Ljava/io/PrintWriter;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
