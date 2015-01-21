.class Ljk;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljf;


# direct methods
.method constructor <init>(Ljf;)V
    .locals 0
    .parameter

    .prologue
    .line 937
    iput-object p1, p0, Ljk;->a:Ljf;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 939
    iget-object v0, p0, Ljk;->a:Ljf;

    invoke-static {v0}, Ljf;->a(Ljf;)Lage;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljk;->a:Ljf;

    invoke-static {v0}, Ljf;->a(Ljf;)Lage;

    move-result-object v0

    iget-object v0, v0, Lage;->a:Lgy;

    if-eqz v0, :cond_0

    .line 941
    iget-object v0, p0, Ljk;->a:Ljf;

    invoke-static {v0}, Ljf;->a(Ljf;)Lage;

    move-result-object v0

    iget-object v0, v0, Lage;->a:Lgy;

    invoke-virtual {v0}, Lgy;->a()V

    .line 944
    :cond_0
    iget-object v0, p0, Ljk;->a:Ljf;

    iget-object v1, p0, Ljk;->a:Ljf;

    invoke-static {v1}, Ljf;->b(Ljf;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljf;->a(Ljf;I)I

    .line 945
    iget-object v0, p0, Ljk;->a:Ljf;

    iget-object v1, p0, Ljk;->a:Ljf;

    invoke-static {v1}, Ljf;->b(Ljf;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljf;->c(Ljf;Ljava/lang/String;)V

    .line 946
    iget-object v0, p0, Ljk;->a:Ljf;

    const-string v1, "refreshing!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v0, v1}, Ljf;->a(Ljf;Ljava/lang/String;)V

    .line 947
    return-void
.end method
