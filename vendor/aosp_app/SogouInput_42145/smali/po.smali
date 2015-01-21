.class public Lpo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/expression/ExpressionRepository;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/expression/ExpressionRepository;)V
    .locals 0
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lpo;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 271
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    move v0, v1

    .line 297
    :goto_1
    return v0

    .line 273
    :pswitch_0
    iget-object v2, p0, Lpo;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:I

    .line 274
    iget-object v2, p0, Lpo;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Lcom/sohu/inputmethod/expression/ExpressionRepository;->b:I

    .line 275
    iget-object v2, p0, Lpo;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    iget-object v3, p0, Lpo;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    iget v3, v3, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:I

    iget-object v4, p0, Lpo;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    iget v4, v4, Lcom/sohu/inputmethod/expression/ExpressionRepository;->b:I

    invoke-static {v2, v3, v4}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 276
    iget-object v2, p0, Lpo;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    const-string v3, "isInPopupWindowRange==============false"

    invoke-static {v2, v3}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;Ljava/lang/String;)V

    .line 277
    iget-object v2, p0, Lpo;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    iput-boolean v0, v2, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Z

    .line 281
    :goto_2
    :pswitch_1
    iget-object v0, p0, Lpo;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:I

    .line 282
    iget-object v0, p0, Lpo;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->b:I

    goto :goto_0

    .line 279
    :cond_1
    iget-object v0, p0, Lpo;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    iput-boolean v1, v0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Z

    goto :goto_2

    .line 285
    :pswitch_2
    iget-object v2, p0, Lpo;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v2}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Landroid/widget/PopupWindow;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lpo;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v2}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 286
    iget-object v2, p0, Lpo;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    iget-object v3, p0, Lpo;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    iget v3, v3, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:I

    iget-object v4, p0, Lpo;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    iget v4, v4, Lcom/sohu/inputmethod/expression/ExpressionRepository;->b:I

    invoke-static {v2, v3, v4}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;II)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lpo;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    iget-boolean v2, v2, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Z

    if-nez v2, :cond_0

    .line 287
    iget-object v1, p0, Lpo;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    const-string v2, "isInPopupWindowRange==============false"

    invoke-static {v1, v2}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;Ljava/lang/String;)V

    .line 288
    iget-object v1, p0, Lpo;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v1}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_1

    .line 271
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
