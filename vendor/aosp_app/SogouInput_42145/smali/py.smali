.class Lpy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lpw;


# direct methods
.method constructor <init>(Lpw;)V
    .locals 0
    .parameter

    .prologue
    .line 1402
    iput-object p1, p0, Lpy;->a:Lpw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 1407
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 1408
    if-ltz v1, :cond_0

    iget-object v0, p0, Lpy;->a:Lpw;

    iget-object v0, v0, Lpw;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1409
    iget-object v0, p0, Lpy;->a:Lpw;

    iget-object v0, v0, Lpw;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnp;

    .line 1410
    const/4 v2, 0x2

    iput v2, v0, Lnp;->a:I

    .line 1411
    const/4 v2, 0x0

    iput v2, v0, Lnp;->b:I

    .line 1412
    iget-object v0, p0, Lpy;->a:Lpw;

    iget-object v0, v0, Lpw;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1413
    const/16 v2, 0xea

    iput v2, v0, Landroid/os/Message;->what:I

    .line 1414
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1415
    iget-object v2, p0, Lpy;->a:Lpw;

    iget-object v2, v2, Lpw;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v2}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1417
    iget-object v0, p0, Lpy;->a:Lpw;

    iget-object v0, v0, Lpw;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnp;

    iget-object v0, v0, Lnp;->c:Ljava/lang/String;

    .line 1418
    iget-object v1, p0, Lpy;->a:Lpw;

    iget-object v1, v1, Lpw;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v1}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lpy;->a:Lpw;

    iget-object v1, v1, Lpw;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v1}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1419
    iget-object v1, p0, Lpy;->a:Lpw;

    iget-object v1, v1, Lpw;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v1}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lol;

    .line 1420
    invoke-virtual {v0}, Lol;->b()V

    .line 1423
    :cond_0
    return-void
.end method
