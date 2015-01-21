.class Llz;
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
    .line 981
    iput-object p1, p0, Llz;->a:Lls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 983
    iget-object v0, p0, Llz;->a:Lls;

    invoke-static {v0}, Lls;->a(Lls;)Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    move-result-object v0

    iget-object v1, p0, Llz;->a:Lls;

    invoke-static {v1}, Lls;->a(Lls;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a(Ljava/lang/String;)Lku;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llz;->a:Lls;

    invoke-static {v0}, Lls;->a(Lls;)Lkr;

    move-result-object v0

    iget-object v1, p0, Llz;->a:Lls;

    invoke-static {v1}, Lls;->a(Lls;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkr;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 985
    iget-object v0, p0, Llz;->a:Lls;

    invoke-static {v0}, Lls;->a(Lls;)Lkr;

    move-result-object v0

    iget-object v1, p0, Llz;->a:Lls;

    invoke-static {v1}, Lls;->a(Lls;)Lls;

    move-result-object v1

    iget-object v2, p0, Llz;->a:Lls;

    invoke-static {v2}, Lls;->a(Lls;)Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    move-result-object v2

    iget-object v3, p0, Llz;->a:Lls;

    invoke-static {v3}, Lls;->a(Lls;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a(Ljava/lang/String;)Lku;

    move-result-object v2

    iget-object v3, p0, Llz;->a:Lls;

    invoke-static {v3}, Lls;->a(Lls;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lkr;->a(Lkq;Lku;Landroid/os/Handler;)V

    .line 987
    :cond_0
    return-void
.end method
