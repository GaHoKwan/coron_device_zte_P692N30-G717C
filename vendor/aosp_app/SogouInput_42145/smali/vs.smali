.class public Lvs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/platform/AppDetailActivity;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/platform/AppDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1294
    iput-object p1, p0, Lvs;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1298
    iget-object v0, p0, Lvs;->a:Lcom/sohu/inputmethod/platform/AppDetailActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1299
    const/4 v0, 0x1

    return v0
.end method
