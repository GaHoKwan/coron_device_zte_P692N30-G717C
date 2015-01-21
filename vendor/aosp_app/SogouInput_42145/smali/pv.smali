.class public Lpv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/expression/ExpressionRepository;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/expression/ExpressionRepository;)V
    .locals 0
    .parameter

    .prologue
    .line 805
    iput-object p1, p0, Lpv;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 811
    if-ltz p3, :cond_0

    iget-object v0, p0, Lpv;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_0

    .line 812
    iget-object v0, p0, Lpv;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 813
    iget-object v0, p0, Lpv;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 814
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 815
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 816
    iget-object v1, p0, Lpv;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v1}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 819
    :cond_0
    return-void
.end method
