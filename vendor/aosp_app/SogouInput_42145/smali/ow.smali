.class public Low;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Low;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 338
    iget-object v0, p0, Low;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->fX:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->fX:I

    .line 340
    :try_start_0
    iget-object v0, p0, Low;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->c(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Low;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->c(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    iget-object v0, p0, Low;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->c(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 342
    iget-object v0, p0, Low;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.android.browser"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 343
    if-eqz v0, :cond_1

    .line 344
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 350
    :goto_0
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 351
    iget-object v1, p0, Low;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    invoke-static {v1}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 356
    :cond_0
    :goto_1
    return-void

    .line 348
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 353
    :catch_0
    move-exception v0

    goto :goto_1
.end method
