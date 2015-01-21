.class public Lox;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpi;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 359
    iput-object p1, p0, Lox;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)V
    .locals 0
    .parameter

    .prologue
    .line 376
    return-void
.end method

.method public a(Ljava/lang/Integer;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 363
    iget-object v0, p0, Lox;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;)Lcom/sohu/inputmethod/expression/PreviewPager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 364
    iget-object v0, p0, Lox;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;)Lcom/sohu/inputmethod/expression/PreviewPager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/expression/PreviewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 366
    if-eqz v0, :cond_0

    iget-object v1, p0, Lox;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    invoke-static {v1}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->d(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 367
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lox;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    invoke-static {v2}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 368
    :cond_0
    iget-object v0, p0, Lox;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position================================"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->c(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lox;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CurrentScreen============================="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lox;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    invoke-static {v2}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;)Lcom/sohu/inputmethod/expression/PreviewPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sohu/inputmethod/expression/PreviewPager;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->c(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;Ljava/lang/String;)V

    .line 371
    :cond_1
    return-void
.end method
