.class public Loy;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 785
    iput-object p1, p0, Loy;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    iput-object p2, p0, Loy;->a:Ljava/lang/String;

    iput-object p3, p0, Loy;->b:Ljava/lang/String;

    iput-object p4, p0, Loy;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0xe4

    .line 787
    iget-object v0, p0, Loy;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 788
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Loy;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 789
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 790
    iget-object v0, p0, Loy;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    iget-object v1, p0, Loy;->b:Ljava/lang/String;

    iget-object v2, p0, Loy;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 791
    iget-object v0, p0, Loy;->c:Ljava/lang/String;

    iget-object v1, p0, Loy;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    invoke-static {v1}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->d(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Loy;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 793
    iput v3, v0, Landroid/os/Message;->what:I

    .line 794
    iget-object v1, p0, Loy;->a:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 795
    iget-object v1, p0, Loy;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    invoke-static {v1}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 812
    :cond_0
    :goto_0
    return-void

    .line 798
    :cond_1
    iget-object v0, p0, Loy;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    const-string v1, "download author pic fail!!!"

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->c(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;Ljava/lang/String;)V

    goto :goto_0

    .line 801
    :cond_2
    iget-object v0, p0, Loy;->c:Ljava/lang/String;

    iget-object v1, p0, Loy;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    invoke-static {v1}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->d(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 802
    iget-object v0, p0, Loy;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 803
    iput v3, v0, Landroid/os/Message;->what:I

    .line 804
    iget-object v1, p0, Loy;->a:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 805
    iget-object v1, p0, Loy;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    invoke-static {v1}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
