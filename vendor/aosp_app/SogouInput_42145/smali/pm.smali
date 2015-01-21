.class public Lpm;
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
    .line 837
    iput-object p1, p0, Lpm;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 841
    iget-object v0, p0, Lpm;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->finish()V

    .line 842
    return-void
.end method
