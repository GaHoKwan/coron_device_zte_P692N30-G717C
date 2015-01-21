.class Lcom/zte/privacy/V;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/privacy/an;


# instance fields
.field final synthetic jB:Lcom/zte/privacy/aw;

.field final synthetic jC:I


# direct methods
.method constructor <init>(Lcom/zte/privacy/aw;I)V
    .locals 0

    iput-object p1, p0, Lcom/zte/privacy/V;->jB:Lcom/zte/privacy/aw;

    iput p2, p0, Lcom/zte/privacy/V;->jC:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;Z)Lcom/zte/privacy/m;
    .locals 5

    new-instance v0, Lcom/zte/privacy/I;

    const-string v1, "pv%02d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/zte/privacy/V;->jC:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/privacy/V;->jB:Lcom/zte/privacy/aw;

    iget-object v2, v2, Lcom/zte/privacy/aw;->pr:Lcom/zte/privacy/z;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/zte/privacy/I;-><init>(Ljava/lang/String;Lcom/zte/privacy/z;Ljava/lang/String;Z)V

    return-object v0
.end method
