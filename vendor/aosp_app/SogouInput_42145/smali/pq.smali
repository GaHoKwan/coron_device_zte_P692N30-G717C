.class public Lpq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpb;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/expression/ExpressionRepository;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/expression/ExpressionRepository;)V
    .locals 0
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Lpq;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lpq;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lpq;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 327
    :cond_0
    iget-object v0, p0, Lpq;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    iget-object v1, p0, Lpq;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v1}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->d(Lcom/sohu/inputmethod/expression/ExpressionRepository;I)V

    .line 328
    return-void
.end method

.method public a(Loz;)V
    .locals 1
    .parameter

    .prologue
    .line 317
    iget-object v0, p0, Lpq;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v0, p1}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;Loz;)Loz;

    .line 318
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lpq;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lpq;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 337
    :cond_0
    iget-object v0, p0, Lpq;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    iget-object v1, p0, Lpq;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v1}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;I)I

    .line 338
    iget-object v0, p0, Lpq;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Lpq;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 340
    :cond_1
    return-void
.end method
