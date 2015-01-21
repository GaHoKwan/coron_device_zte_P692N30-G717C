.class Lja;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Liu;


# direct methods
.method constructor <init>(Liu;)V
    .locals 0
    .parameter

    .prologue
    .line 900
    iput-object p1, p0, Lja;->a:Liu;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 902
    iget-object v0, p0, Lja;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Lage;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lja;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Lage;

    move-result-object v0

    iget-object v0, v0, Lage;->a:Lgy;

    if-eqz v0, :cond_0

    .line 904
    iget-object v0, p0, Lja;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Lage;

    move-result-object v0

    iget-object v0, v0, Lage;->a:Lgy;

    invoke-virtual {v0}, Lgy;->a()V

    .line 907
    :cond_0
    iget-object v0, p0, Lja;->a:Liu;

    iget-object v1, p0, Lja;->a:Liu;

    invoke-static {v1}, Liu;->b(Liu;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Liu;->a(Liu;I)I

    .line 908
    iget-object v0, p0, Lja;->a:Liu;

    iget-object v1, p0, Lja;->a:Liu;

    invoke-static {v1}, Liu;->a(Liu;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Liu;->c(Liu;Ljava/lang/String;)V

    .line 909
    iget-object v0, p0, Lja;->a:Liu;

    const-string v1, "refreshing!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v0, v1}, Liu;->b(Liu;Ljava/lang/String;)V

    .line 910
    return-void
.end method
