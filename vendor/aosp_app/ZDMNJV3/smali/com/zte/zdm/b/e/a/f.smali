.class public Lcom/zte/zdm/b/e/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/zdm/b/e/a/j;


# instance fields
.field private a:Lcom/zte/zdm/b/e/a/c;


# direct methods
.method constructor <init>(Lcom/zte/zdm/b/e/a/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/zdm/b/e/a/f;->a:Lcom/zte/zdm/b/e/a/c;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/zte/zdm/b/e/e;Lcom/zte/zdm/g/d/b;)Lcom/zte/zdm/b/e/a/a/b;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/zte/zdm/d/a/k;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(ILcom/zte/zdm/b/e/e;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExceptionState handleException() responseCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/zte/zdm/b/e/e;->c(I)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/f;->a:Lcom/zte/zdm/b/e/a/c;

    iget-object v1, p0, Lcom/zte/zdm/b/e/a/f;->a:Lcom/zte/zdm/b/e/a/c;

    iget-object v1, v1, Lcom/zte/zdm/b/e/a/c;->w:Lcom/zte/zdm/b/e/a/j;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/e/a/c;->a(Lcom/zte/zdm/b/e/a/j;)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/f;->a:Lcom/zte/zdm/b/e/a/c;

    const/16 v1, 0x387

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/e/a/c;->c(I)V

    return-void
.end method

.method public a(Lcom/zte/zdm/b/e/a/b/g;Lcom/zte/zdm/b/e/e;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/zte/zdm/b/e/a/b/g;Lcom/zte/zdm/b/e/e;Lcom/zte/zdm/b/b/a;ILcom/zte/zdm/g/d/b;)V
    .locals 0

    return-void
.end method
