.class Loj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private a:Landroid/widget/AbsListView$OnScrollListener;

.field final synthetic a:Lnr;


# direct methods
.method public constructor <init>(Lnr;Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2203
    iput-object p1, p0, Loj;->a:Lnr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2204
    iput-object p2, p0, Loj;->a:Landroid/widget/AbsListView$OnScrollListener;

    .line 2205
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2208
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 2209
    if-eq v2, v0, :cond_0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 2210
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 2211
    iget-object v2, p0, Loj;->a:Landroid/widget/AbsListView$OnScrollListener;

    move-object v0, p1

    check-cast v0, Landroid/widget/AbsListView;

    const/4 v3, 0x2

    invoke-interface {v2, v0, v3}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 2212
    iget-object v0, p0, Loj;->a:Landroid/widget/AbsListView$OnScrollListener;

    check-cast p1, Landroid/widget/AbsListView;

    invoke-interface {v0, p1, v1}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 2214
    :cond_1
    return v1

    :cond_2
    move v0, v1

    .line 2209
    goto :goto_0
.end method
