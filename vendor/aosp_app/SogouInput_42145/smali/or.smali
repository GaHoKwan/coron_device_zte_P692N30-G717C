.class public Lor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loz;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lor;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lor;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 185
    const/16 v1, 0xdb

    iput v1, v0, Landroid/os/Message;->what:I

    .line 186
    iget-object v1, p0, Lor;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    invoke-static {v1}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 187
    return-void
.end method

.method public a(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 192
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 213
    return-void
.end method

.method public b(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 197
    iget-object v0, p0, Lor;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xdd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 198
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lor;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xe0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 219
    return-void
.end method

.method public c(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 202
    iget-object v0, p0, Lor;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    const-string v1, "[[[[[[[[[[[[[[[[[[[[[[[[[onDownloading]]]]]]]]]]]]]]]]]]]]]]]]"

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->c(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lor;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 204
    const/16 v1, 0xdc

    iput v1, v0, Landroid/os/Message;->what:I

    .line 205
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 206
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 207
    iget-object v1, p0, Lor;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    invoke-static {v1}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 208
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lor;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xe2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 224
    return-void
.end method
