.class public Lla;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lla;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 315
    const-string v0, "THEME_TYPE"

    iget-object v1, p0, Lla;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a(Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    new-instance v0, Lrr;

    iget-object v1, p0, Lla;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a(Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Laox;->aq:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lrr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://shouji.sogou.com/api/android/skins/picshot_search.php?skin_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lla;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a(Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;)Llf;

    move-result-object v2

    invoke-virtual {v2}, Llf;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Laox;->ar:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lrr;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 319
    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lla;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a(Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;)Llf;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lla;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a(Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;)Llf;

    move-result-object v0

    invoke-virtual {v0}, Llf;->a()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lla;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    iget-object v1, p0, Lla;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a(Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;)Llf;

    move-result-object v1

    invoke-virtual {v1}, Llf;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a(Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 321
    iget-object v0, p0, Lla;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a(Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;)Llf;

    move-result-object v0

    invoke-virtual {v0}, Llf;->a()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    const-string v0, "URL_TYPE"

    iget-object v1, p0, Lla;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a(Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lla;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    iget-object v1, p0, Lla;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a(Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;)Lls;

    move-result-object v1

    invoke-virtual {v1}, Lls;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
