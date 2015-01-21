.class public Lzte/com/cn/cloudnotepad/ui/widget/NotesListLinearLayout;
.super Landroid/widget/LinearLayout;
.source "NotesListLinearLayout.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreX:F

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 21
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lzte/com/cn/cloudnotepad/ui/widget/NotesListLinearLayout;->mTouchSlop:I

    .line 22
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/widget/NotesListLinearLayout;->mContext:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    .line 28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 29
    .local v0, action:I
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/widget/NotesListLinearLayout;->mContext:Landroid/content/Context;

    check-cast v1, Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNoteListAdapter:Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;

    iget-boolean v1, v1, Lzte/com/cn/cloudnotepad/ui/NoteListAdapter;->isSelectedMode:Z

    if-eqz v1, :cond_0

    .line 30
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 43
    :goto_0
    return v1

    .line 32
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 43
    :cond_1
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 34
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lzte/com/cn/cloudnotepad/ui/widget/NotesListLinearLayout;->mPreX:F

    goto :goto_1

    .line 37
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/NotesListLinearLayout;->mPreX:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Lzte/com/cn/cloudnotepad/ui/widget/NotesListLinearLayout;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 38
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/widget/NotesListLinearLayout;->mContext:Landroid/content/Context;

    check-cast v1, Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mDrawer:Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;

    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/ui/widget/SlidingDrawer;->animateOpen()V

    .line 39
    const/4 v1, 0x1

    goto :goto_0

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
