.class public Lot;
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
    .line 236
    iput-object p1, p0, Lot;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 240
    iget-object v0, p0, Lot;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;)Lpb;

    move-result-object v0

    invoke-interface {v0}, Lpb;->b()V

    .line 241
    return-void
.end method
