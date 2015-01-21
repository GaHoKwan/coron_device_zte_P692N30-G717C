.class Lio;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lim;


# direct methods
.method constructor <init>(Lim;)V
    .locals 0
    .parameter

    .prologue
    .line 601
    iput-object p1, p0, Lio;->a:Lim;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 604
    iget-object v0, p0, Lio;->a:Lim;

    invoke-static {v0}, Lim;->a(Lim;)Lage;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio;->a:Lim;

    invoke-static {v0}, Lim;->a(Lim;)Lage;

    move-result-object v0

    iget-object v0, v0, Lage;->a:Lgy;

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lio;->a:Lim;

    invoke-static {v0}, Lim;->a(Lim;)Lage;

    move-result-object v0

    iget-object v0, v0, Lage;->a:Lgy;

    invoke-virtual {v0}, Lgy;->a()V

    .line 607
    :cond_0
    iget-object v0, p0, Lio;->a:Lim;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lim;->b(Lim;Z)Z

    .line 608
    iget-object v0, p0, Lio;->a:Lim;

    invoke-static {v0}, Lim;->e(Lim;)V

    .line 609
    iget-object v0, p0, Lio;->a:Lim;

    const-string v1, "refreshing!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v0, v1}, Lim;->a(Lim;Ljava/lang/String;)V

    .line 610
    return-void
.end method
