.class public Lpt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/expression/ExpressionRepository;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/expression/ExpressionRepository;)V
    .locals 0
    .parameter

    .prologue
    .line 623
    iput-object p1, p0, Lpt;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 627
    iget-object v0, p0, Lpt;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;Z)Z

    .line 628
    iget-object v0, p0, Lpt;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xfe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 629
    iget-object v0, p0, Lpt;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->e(Lcom/sohu/inputmethod/expression/ExpressionRepository;)V

    .line 630
    return-void
.end method
