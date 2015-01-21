.class public final Lcom/android/mms/ui/MessageListView;
.super Landroid/widget/ListView;
.source "MessageListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageListView$OnSizeChangedListener;
    }
.end annotation


# static fields
.field private static mVelocity:F


# instance fields
.field private mOnSizeChangedListener:Lcom/android/mms/ui/MessageListView$OnSizeChangedListener;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/high16 v0, 0x4000

    sput v0, Lcom/android/mms/ui/MessageListView;->mVelocity:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 38
    return-void
.end method


# virtual methods
.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 75
    packed-switch p1, :pswitch_data_0

    .line 91
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v3

    :goto_0
    return v3

    .line 77
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/MessageListItem;

    .line 78
    .local v2, view:Lcom/android/mms/ui/MessageListItem;
    if-eqz v2, :cond_0

    .line 81
    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    .line 82
    .local v1, item:Lcom/android/mms/ui/MessageItem;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "clipboard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 85
    .local v0, clip:Landroid/text/ClipboardManager;
    iget-object v3, v1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 86
    const/4 v3, 0x1

    goto :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
    .end packed-switch
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 96
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    .line 98
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mOnSizeChangedListener:Lcom/android/mms/ui/MessageListView$OnSizeChangedListener;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mOnSizeChangedListener:Lcom/android/mms/ui/MessageListView$OnSizeChangedListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/mms/ui/MessageListView$OnSizeChangedListener;->onSizeChanged(IIII)V

    .line 101
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 44
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 71
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 46
    :pswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_1

    .line 47
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 51
    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 49
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1

    .line 54
    :pswitch_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_2

    .line 55
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 57
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/MessageListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 58
    iget-object v1, p0, Lcom/android/mms/ui/MessageListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 60
    iget-object v1, p0, Lcom/android/mms/ui/MessageListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    sput v1, Lcom/android/mms/ui/MessageListView;->mVelocity:F

    .line 61
    sget v1, Lcom/android/mms/ui/MessageListView;->mVelocity:F

    invoke-static {v1}, Lcom/android/mms/ui/MyScrollListener;->setScrollVelocity(F)V

    goto :goto_0

    .line 65
    :pswitch_2
    iget-object v1, p0, Lcom/android/mms/ui/MessageListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/android/mms/ui/MessageListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    goto :goto_0

    .line 44
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method setOnSizeChangedListener(Lcom/android/mms/ui/MessageListView$OnSizeChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/mms/ui/MessageListView;->mOnSizeChangedListener:Lcom/android/mms/ui/MessageListView$OnSizeChangedListener;

    .line 109
    return-void
.end method
