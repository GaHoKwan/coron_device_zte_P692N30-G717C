.class Lanc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx;


# instance fields
.field final synthetic a:Lanb;


# direct methods
.method constructor <init>(Lanb;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lanc;->a:Lanb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lanc;->a:Lanb;

    const-string v1, "Before fist word coming"

    invoke-static {v0, v1}, Lanb;->a(Lanb;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lanc;->a:Lanb;

    const-string v1, "learn first word finished"

    invoke-static {v0, v1}, Lanb;->a(Lanb;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public a(Lrt;)V
    .locals 3
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lanc;->a:Lanb;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDownloadListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lrt;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lanb;->a(Lanb;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public a(Lry;)V
    .locals 4
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lanc;->a:Lanb;

    invoke-static {v0}, Lanb;->a(Lanb;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lanc;->a:Lanb;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lanb;->a(Lanb;Z)Z

    .line 106
    iget-object v0, p0, Lanc;->a:Lanb;

    iget-object v0, v0, Lanb;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->getInstance(Landroid/content/Context;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    iget-object v1, p1, Lry;->b:Ljava/lang/String;

    iget-object v2, p1, Lry;->a:Ljava/lang/String;

    iget v3, p1, Lry;->a:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sohu/inputmethod/engine/IMEInterface;->learnWord(Ljava/lang/String;Ljava/lang/String;I)I

    .line 108
    :cond_0
    iget-object v0, p0, Lanc;->a:Lanb;

    invoke-static {v0}, Lanb;->a(Lanb;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lanc;->a:Lanb;

    invoke-static {v0}, Lanb;->a(Lanb;)Lang;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lanc;->a:Lanb;

    invoke-static {v0}, Lanb;->a(Lanb;)Lang;

    move-result-object v0

    invoke-interface {v0, p1}, Lang;->a(Lry;)V

    .line 111
    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lanc;->a:Lanb;

    const-string v1, "After last word comes"

    invoke-static {v0, v1}, Lanb;->a(Lanb;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lanc;->a:Lanb;

    iget-object v0, v0, Lanb;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->getInstance(Landroid/content/Context;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->saveUserDict()V

    .line 100
    return-void
.end method
