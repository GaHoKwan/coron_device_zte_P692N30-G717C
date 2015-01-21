.class public Lpr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/expression/ExpressionRepository;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/expression/ExpressionRepository;)V
    .locals 0
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Lpr;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 345
    iget-object v0, p0, Lpr;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    iget-object v1, p0, Lpr;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v1}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->b(Lcom/sohu/inputmethod/expression/ExpressionRepository;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->e(Lcom/sohu/inputmethod/expression/ExpressionRepository;I)V

    .line 346
    return-void
.end method
