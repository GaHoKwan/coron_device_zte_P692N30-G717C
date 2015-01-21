.class Lhy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lhr;


# direct methods
.method constructor <init>(Lhr;)V
    .locals 0
    .parameter

    .prologue
    .line 593
    iput-object p1, p0, Lhy;->a:Lhr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 595
    iget-object v0, p0, Lhy;->a:Lhr;

    const-string v1, "running to refreshing the theme list ...sd..."

    invoke-static {v0, v1}, Lhr;->a(Lhr;Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Lhy;->a:Lhr;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lhr;->a(Lhr;Z)Z

    .line 597
    iget-object v0, p0, Lhy;->a:Lhr;

    invoke-static {v0}, Lhr;->b(Lhr;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lhy;->a:Lhr;

    invoke-static {v0}, Lhr;->b(Lhr;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 599
    :cond_0
    iget-object v0, p0, Lhy;->a:Lhr;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lhr;->b(Lhr;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 600
    iget-object v0, p0, Lhy;->a:Lhr;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lhr;->b(Lhr;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 601
    iget-object v0, p0, Lhy;->a:Lhr;

    invoke-static {v0}, Lhr;->f(Lhr;)V

    .line 602
    return-void
.end method
