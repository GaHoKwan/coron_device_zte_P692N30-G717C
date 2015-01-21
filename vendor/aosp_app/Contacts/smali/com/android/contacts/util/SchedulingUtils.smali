.class public Lcom/android/contacts/util/SchedulingUtils;
.super Ljava/lang/Object;
.source "SchedulingUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doAfterDraw(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2
    .parameter "view"
    .parameter "runnable"

    .prologue
    .line 42
    new-instance v0, Lcom/android/contacts/util/SchedulingUtils$2;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/util/SchedulingUtils$2;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 49
    .local v0, listener:Landroid/view/ViewTreeObserver$OnDrawListener;
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 50
    return-void
.end method

.method public static doAfterLayout(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2
    .parameter "view"
    .parameter "runnable"

    .prologue
    .line 29
    new-instance v0, Lcom/android/contacts/util/SchedulingUtils$1;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/util/SchedulingUtils$1;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 37
    .local v0, listener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 38
    return-void
.end method
