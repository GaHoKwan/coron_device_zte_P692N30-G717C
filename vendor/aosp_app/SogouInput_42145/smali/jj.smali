.class Ljj;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljf;


# direct methods
.method constructor <init>(Ljf;)V
    .locals 0
    .parameter

    .prologue
    .line 906
    iput-object p1, p0, Ljj;->a:Ljf;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 908
    iget-object v0, p0, Ljj;->a:Ljf;

    invoke-static {v0}, Ljf;->a(Ljf;)Lage;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljj;->a:Ljf;

    invoke-static {v0}, Ljf;->a(Ljf;)Lage;

    move-result-object v0

    iget-object v0, v0, Lage;->a:Lgy;

    if-eqz v0, :cond_0

    .line 910
    iget-object v0, p0, Ljj;->a:Ljf;

    invoke-static {v0}, Ljf;->a(Ljf;)Lage;

    move-result-object v0

    iget-object v0, v0, Lage;->a:Lgy;

    invoke-virtual {v0}, Lgy;->a()V

    .line 913
    :cond_0
    iget-object v0, p0, Ljj;->a:Ljf;

    invoke-static {v0, v1}, Ljf;->b(Ljf;Z)Z

    .line 914
    iget-object v0, p0, Ljj;->a:Ljf;

    invoke-static {v0}, Ljf;->c(Ljf;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 915
    iget-object v0, p0, Ljj;->a:Ljf;

    invoke-static {v0}, Ljf;->h(Ljf;)V

    .line 922
    :goto_0
    iget-object v0, p0, Ljj;->a:Ljf;

    const-string v1, "refreshing!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v0, v1}, Ljf;->a(Ljf;Ljava/lang/String;)V

    .line 923
    return-void

    .line 918
    :cond_1
    iget-object v0, p0, Ljj;->a:Ljf;

    invoke-static {v0, v1}, Ljf;->c(Ljf;Z)Z

    .line 919
    iget-object v0, p0, Ljj;->a:Ljf;

    invoke-static {v0, v1}, Ljf;->a(Ljf;I)I

    .line 920
    iget-object v0, p0, Ljj;->a:Ljf;

    iget-object v1, p0, Ljj;->a:Ljf;

    invoke-static {v1}, Ljf;->b(Ljf;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljf;->c(Ljf;Ljava/lang/String;)V

    goto :goto_0
.end method
