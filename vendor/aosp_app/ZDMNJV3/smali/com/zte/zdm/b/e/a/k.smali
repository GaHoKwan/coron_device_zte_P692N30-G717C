.class public Lcom/zte/zdm/b/e/a/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/zdm/b/e/a/j;


# instance fields
.field private a:Lcom/zte/zdm/b/e/a/c;


# direct methods
.method constructor <init>(Lcom/zte/zdm/b/e/a/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/zdm/b/e/a/k;->a:Lcom/zte/zdm/b/e/a/c;

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

    const-string v0, ""

    return-object v0
.end method

.method public a(ILcom/zte/zdm/b/e/e;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/zte/zdm/b/e/a/b/g;Lcom/zte/zdm/b/e/e;)V
    .locals 2

    const-string v0, "TermState performDestroyPhase()"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/a/k;->a:Lcom/zte/zdm/b/e/a/c;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/a/c;->q()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/zte/zdm/b/e/a/b/g;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/zte/zdm/b/e/a/b/g;->d()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zte/zdm/b/e/a/k;->a:Lcom/zte/zdm/b/e/a/c;

    iget-object v1, p0, Lcom/zte/zdm/b/e/a/k;->a:Lcom/zte/zdm/b/e/a/c;

    iget-object v1, v1, Lcom/zte/zdm/b/e/a/c;->t:Lcom/zte/zdm/b/e/a/j;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/e/a/c;->a(Lcom/zte/zdm/b/e/a/j;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/zte/zdm/b/e/a/b/g;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UT:sessionListener.notifyDlSessionCompleted() "

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/zte/zdm/b/e/e;->f()V

    goto :goto_0
.end method

.method public a(Lcom/zte/zdm/b/e/a/b/g;Lcom/zte/zdm/b/e/e;Lcom/zte/zdm/b/b/a;ILcom/zte/zdm/g/d/b;)V
    .locals 0

    return-void
.end method
