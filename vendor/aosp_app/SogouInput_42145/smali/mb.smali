.class Lmb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lls;


# direct methods
.method constructor <init>(Lls;)V
    .locals 0
    .parameter

    .prologue
    .line 1008
    iput-object p1, p0, Lmb;->a:Lls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/16 v3, 0xe2

    const/4 v2, 0x0

    .line 1011
    iget-object v0, p0, Lmb;->a:Lls;

    invoke-static {v0}, Lls;->a(Lls;)Lkr;

    move-result-object v0

    iget-object v1, p0, Lmb;->a:Lls;

    invoke-static {v1}, Lls;->a(Lls;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkr;->a(Ljava/lang/String;)Lko;

    move-result-object v0

    .line 1012
    if-eqz v0, :cond_1

    .line 1013
    iget-object v1, p0, Lmb;->a:Lls;

    const-string v2, "=======================mController not null================="

    invoke-static {v1, v2}, Lls;->a(Lls;Ljava/lang/String;)V

    .line 1014
    invoke-virtual {v0}, Lko;->a()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1015
    iget-object v0, p0, Lmb;->a:Lls;

    invoke-static {v0}, Lls;->a(Lls;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1016
    iget-object v0, p0, Lmb;->a:Lls;

    invoke-static {v0}, Lls;->a(Lls;)Lkr;

    move-result-object v0

    iget-object v1, p0, Lmb;->a:Lls;

    invoke-static {v1}, Lls;->a(Lls;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkr;->a(Ljava/lang/String;)V

    .line 1017
    iget-object v0, p0, Lmb;->a:Lls;

    invoke-static {v0}, Lls;->a(Lls;)Lkr;

    move-result-object v0

    iget-object v1, p0, Lmb;->a:Lls;

    invoke-static {v1}, Lls;->a(Lls;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkr;->a(Ljava/lang/String;)V

    .line 1018
    iget-object v0, p0, Lmb;->a:Lls;

    invoke-static {v0}, Lls;->a(Lls;)Lkr;

    move-result-object v0

    iget-object v1, p0, Lmb;->a:Lls;

    invoke-static {v1}, Lls;->a(Lls;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkr;->c(Ljava/lang/String;)V

    .line 1019
    iget-object v0, p0, Lmb;->a:Lls;

    iget-object v1, p0, Lmb;->a:Lls;

    invoke-static {v1}, Lls;->a(Lls;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lls;->a(Lls;I)V

    .line 1039
    :goto_0
    return-void

    .line 1021
    :cond_0
    invoke-virtual {v0}, Lko;->g()V

    .line 1022
    invoke-virtual {v0}, Lko;->c()V

    goto :goto_0

    .line 1025
    :cond_1
    new-instance v0, Lks;

    iget-object v1, p0, Lmb;->a:Lls;

    invoke-static {v1}, Lls;->a(Lls;)Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lks;-><init>(Landroid/content/Context;)V

    .line 1026
    iget-object v1, p0, Lmb;->a:Lls;

    invoke-static {v1}, Lls;->a(Lls;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lks;->a(Ljava/lang/String;)V

    .line 1028
    iget-object v0, p0, Lmb;->a:Lls;

    invoke-static {v0}, Lls;->a(Lls;)Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    move-result-object v0

    iget-object v1, p0, Lmb;->a:Lls;

    invoke-static {v1}, Lls;->a(Lls;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a(Ljava/lang/String;)Lku;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1029
    iget-object v0, p0, Lmb;->a:Lls;

    invoke-static {v0}, Lls;->a(Lls;)Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    move-result-object v0

    iget-object v1, p0, Lmb;->a:Lls;

    invoke-static {v1}, Lls;->a(Lls;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a(Ljava/lang/String;)Lku;

    move-result-object v0

    const/4 v1, 0x4

    iput v1, v0, Lku;->b:I

    .line 1031
    :cond_2
    iget-object v0, p0, Lmb;->a:Lls;

    invoke-static {v0, v2}, Lls;->c(Lls;Z)Z

    .line 1032
    iget-object v0, p0, Lmb;->a:Lls;

    invoke-static {v0}, Lls;->a(Lls;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1033
    iget-object v0, p0, Lmb;->a:Lls;

    invoke-static {v0, v2}, Lls;->a(Lls;I)I

    .line 1034
    iget-object v0, p0, Lmb;->a:Lls;

    invoke-static {v0, v2}, Lls;->b(Lls;I)I

    .line 1036
    iget-object v0, p0, Lmb;->a:Lls;

    iget-object v1, p0, Lmb;->a:Lls;

    invoke-static {v1}, Lls;->a(Lls;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lls;->a(Lls;I)V

    goto :goto_0
.end method
