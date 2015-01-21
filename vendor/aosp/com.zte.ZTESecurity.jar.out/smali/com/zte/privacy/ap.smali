.class Lcom/zte/privacy/ap;
.super Lcom/zte/privacy/aD;


# instance fields
.field final synthetic mr:Ljava/lang/String;

.field final synthetic ms:Lcom/zte/privacy/R;


# direct methods
.method constructor <init>(Lcom/zte/privacy/R;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    iput-object p1, p0, Lcom/zte/privacy/ap;->ms:Lcom/zte/privacy/R;

    iput-object p8, p0, Lcom/zte/privacy/ap;->mr:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/zte/privacy/aD;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    const/16 v6, 0x2f

    invoke-super {p0}, Lcom/zte/privacy/aD;->a()V

    iget-object v0, p0, Lcom/zte/privacy/ap;->gX:Lcom/zte/privacy/z;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/zte/privacy/ap;->ms:Lcom/zte/privacy/R;

    iget-object v2, v2, Lcom/zte/privacy/R;->jz:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/zte/privacy/ap;->ms:Lcom/zte/privacy/R;

    iget-object v4, v4, Lcom/zte/privacy/R;->y:Ljava/lang/String;

    const/16 v5, 0x2e

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/privacy/ap;->mr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".java"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/zte/privacy/R;->a(Lcom/zte/privacy/z;Ljava/io/File;)V

    return-void
.end method
