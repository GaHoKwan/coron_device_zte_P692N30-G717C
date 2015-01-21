.class public Lpp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/expression/ExpressionRepository;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/expression/ExpressionRepository;)V
    .locals 0
    .parameter

    .prologue
    .line 302
    iput-object p1, p0, Lpp;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lpp;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lpp;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a()V

    .line 308
    iget-object v0, p0, Lpp;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->c()V

    .line 310
    :cond_0
    return-void
.end method
