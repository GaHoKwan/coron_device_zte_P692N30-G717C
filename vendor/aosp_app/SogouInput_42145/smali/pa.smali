.class public Lpa;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 618
    iput-object p1, p0, Lpa;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    .line 619
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 621
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 626
    const/4 v0, 0x1

    return v0
.end method
