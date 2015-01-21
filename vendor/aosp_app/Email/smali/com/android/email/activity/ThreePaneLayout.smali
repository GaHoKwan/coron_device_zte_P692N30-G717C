.class public Lcom/android/email/activity/ThreePaneLayout;
.super Landroid/widget/LinearLayout;
.source "ThreePaneLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/ThreePaneLayout$1;,
        Lcom/android/email/activity/ThreePaneLayout$SavedState;,
        Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;,
        Lcom/android/email/activity/ThreePaneLayout$EmptyCallback;,
        Lcom/android/email/activity/ThreePaneLayout$Callback;
    }
.end annotation


# static fields
.field private static final ANIMATION_DEBUG:Z = false

.field private static final ANIMATION_DURATION:I = 0x96

.field private static final INDEX_GONE:I = 0x2

.field private static final INDEX_INVISIBLE:I = 0x1

.field private static final INDEX_VISIBLE:I = 0x0

.field private static final INTERPOLATOR:Landroid/animation/TimeInterpolator; = null

.field public static final PANE_LEFT:I = 0x4

.field public static final PANE_MIDDLE:I = 0x2

.field public static final PANE_RIGHT:I = 0x1

.field private static final PROP_MAILBOX_LIST_LEFT:Ljava/lang/String; = "mailboxListLeftAnim"

.field private static final PROP_MESSAGE_LIST_WIDTH:Ljava/lang/String; = "messageListWidthAnim"

.field public static final STATE_LEFT_VISIBLE:I = 0x0

.field public static final STATE_MIDDLE_EXPANDED:I = 0x2

.field public static final STATE_RIGHT_VISIBLE:I = 0x1

.field private static final STATE_UNINITIALIZED:I = -0x1


# instance fields
.field private mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;

.field private mConvViewExpandList:Z

.field private mFirstSizeChangedDone:Z

.field private mInMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

.field private mInitialPaneState:I

.field private mIsSearchResult:Z

.field private mLastAnimator:Landroid/animation/Animator;

.field private mLastAnimatorListener:Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;

.field private mLeftPane:Landroid/view/View;

.field private mMailboxListWidth:I

.field private mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

.field private mMessageListWidth:I

.field private mMiddlePane:Landroid/view/View;

.field private mPaneState:I

.field private mRightPane:Landroid/view/View;

.field private mShowHideViews:[[[Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fe0

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/android/email/activity/ThreePaneLayout;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, -0x1

    .line 147
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 78
    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    .line 81
    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    .line 121
    sget-object v0, Lcom/android/email/activity/ThreePaneLayout$EmptyCallback;->INSTANCE:Lcom/android/email/activity/ThreePaneLayout$Callback;

    iput-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mIsSearchResult:Z

    .line 148
    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->initView()V

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, -0x1

    .line 142
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    .line 81
    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    .line 121
    sget-object v0, Lcom/android/email/activity/ThreePaneLayout$EmptyCallback;->INSTANCE:Lcom/android/email/activity/ThreePaneLayout$Callback;

    iput-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mIsSearchResult:Z

    .line 143
    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->initView()V

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, -0x1

    .line 137
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    .line 81
    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    .line 121
    sget-object v0, Lcom/android/email/activity/ThreePaneLayout$EmptyCallback;->INSTANCE:Lcom/android/email/activity/ThreePaneLayout$Callback;

    iput-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mIsSearchResult:Z

    .line 138
    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->initView()V

    .line 139
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/ThreePaneLayout;)Lcom/android/email/activity/MessageCommandButtonView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/activity/ThreePaneLayout;)Lcom/android/email/activity/ThreePaneLayout$Callback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;

    return-object v0
.end method

.method private changePaneState(IZ)Z
    .locals 17
    .parameter "newState"
    .parameter "animate"

    .prologue
    .line 334
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/ThreePaneLayout;->isPaneCollapsible()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x2

    move/from16 v0, p1

    if-ne v0, v3, :cond_0

    .line 335
    const/16 p1, 0x1

    .line 337
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/email/activity/ThreePaneLayout;->mFirstSizeChangedDone:Z

    if-nez v3, :cond_1

    .line 341
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    .line 342
    const/4 v3, 0x0

    .line 402
    :goto_0
    return v3

    .line 344
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    move/from16 v0, p1

    if-ne v0, v3, :cond_2

    .line 345
    const/4 v3, 0x0

    goto :goto_0

    .line 348
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_3

    .line 349
    const/16 p2, 0x0

    .line 352
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/ThreePaneLayout;->getVisiblePanes()I

    move-result v8

    .line 353
    .local v8, previousVisiblePanes:I
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    .line 357
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 364
    .local v13, totalWidth:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/ThreePaneLayout;->getMailboxListWidth()I

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 365
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/ThreePaneLayout;->getMessageListWidth()I

    move-result v5

    sub-int v5, v13, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 367
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    packed-switch v3, :pswitch_data_0

    .line 385
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 370
    :pswitch_0
    const-string v4, "moving to [mailbox list + message list]"

    .line 371
    .local v4, animatorLabel:Ljava/lang/String;
    const/4 v9, 0x0

    .line 372
    .local v9, expectedMailboxLeft:I
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/ThreePaneLayout;->getMailboxListWidth()I

    move-result v3

    sub-int v10, v13, v3

    .line 387
    .local v10, expectedMessageListWidth:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v10}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 388
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/ThreePaneLayout;->mShowHideViews:[[[Landroid/view/View;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    aget-object v12, v3, v5

    .line 389
    .local v12, showHideViews:[[Landroid/view/View;
    new-instance v2, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;

    const/4 v3, 0x0

    aget-object v5, v12, v3

    const/4 v3, 0x1

    aget-object v6, v12, v3

    const/4 v3, 0x2

    aget-object v7, v12, v3

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;-><init>(Lcom/android/email/activity/ThreePaneLayout;Ljava/lang/String;[Landroid/view/View;[Landroid/view/View;[Landroid/view/View;I)V

    .line 396
    .local v2, listener:Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;
    if-eqz p2, :cond_5

    const/16 v3, 0x96

    :goto_2
    const/4 v5, 0x2

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    const/4 v6, 0x0

    const-string v7, "mailboxListLeftAnim"

    const/4 v14, 0x2

    new-array v14, v14, [I

    const/4 v15, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentMailboxLeft()I

    move-result v16

    aput v16, v14, v15

    const/4 v15, 0x1

    aput v9, v14, v15

    invoke-static {v7, v14}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "messageListWidthAnim"

    const/4 v14, 0x2

    new-array v14, v14, [I

    const/4 v15, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentMessageListWidth()I

    move-result v16

    aput v16, v14, v15

    const/4 v15, 0x1

    aput v10, v14, v15

    invoke-static {v7, v14}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v5}, Lcom/android/email/activity/ThreePaneLayout;->startLayoutAnimation(ILcom/android/email/activity/ThreePaneLayout$AnimatorListener;[Landroid/animation/PropertyValuesHolder;)V

    .line 402
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 376
    .end local v2           #listener:Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;
    .end local v4           #animatorLabel:Ljava/lang/String;
    .end local v9           #expectedMailboxLeft:I
    .end local v10           #expectedMessageListWidth:I
    .end local v12           #showHideViews:[[Landroid/view/View;
    :pswitch_1
    const-string v4, "moving to [message list + message view]"

    .line 377
    .restart local v4       #animatorLabel:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/ThreePaneLayout;->getMailboxListWidth()I

    move-result v11

    .line 381
    .local v11, mailboxListWidth:I
    if-nez v11, :cond_4

    const/4 v9, -0x1

    .line 382
    .restart local v9       #expectedMailboxLeft:I
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/ThreePaneLayout;->getMessageListWidth()I

    move-result v10

    .line 383
    .restart local v10       #expectedMessageListWidth:I
    goto :goto_1

    .line 381
    .end local v9           #expectedMailboxLeft:I
    .end local v10           #expectedMessageListWidth:I
    :cond_4
    neg-int v9, v11

    goto :goto_3

    .line 396
    .end local v11           #mailboxListWidth:I
    .restart local v2       #listener:Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;
    .restart local v9       #expectedMailboxLeft:I
    .restart local v10       #expectedMessageListWidth:I
    .restart local v12       #showHideViews:[[Landroid/view/View;
    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    .line 367
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getCurrentMailboxLeft()I
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    return v0
.end method

.method private getCurrentMessageListWidth()I
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    return v0
.end method

.method private getMailboxListWidth()I
    .locals 1

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->shouldShowMailboxList()Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    const/4 v0, 0x0

    .line 330
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMailboxListWidth:I

    goto :goto_0
.end method

.method private getMessageListWidth()I
    .locals 2

    .prologue
    .line 406
    iget-boolean v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mConvViewExpandList:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 407
    const/4 v0, 0x0

    .line 409
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageListWidth:I

    goto :goto_0
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 154
    return-void
.end method

.method private onFirstSizeChanged()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 313
    iget v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    if-eq v0, v2, :cond_0

    .line 314
    iget v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZ)Z

    .line 315
    iput v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    .line 317
    :cond_0
    return-void
.end method

.method private setViewWidth(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "value"

    .prologue
    .line 433
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 434
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 435
    return-void
.end method

.method private shouldShowMailboxList()Z
    .locals 1

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mIsSearchResult:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private varargs startLayoutAnimation(ILcom/android/email/activity/ThreePaneLayout$AnimatorListener;[Landroid/animation/PropertyValuesHolder;)V
    .locals 4
    .parameter "duration"
    .parameter "listener"
    .parameter "values"

    .prologue
    .line 462
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLastAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    .line 463
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLastAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 465
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLastAnimatorListener:Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;

    if-eqz v1, :cond_1

    .line 472
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLastAnimatorListener:Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;

    invoke-virtual {v1}, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->cancel()V

    .line 475
    :cond_1
    invoke-static {p0, p3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 477
    .local v0, animator:Landroid/animation/ObjectAnimator;
    sget-object v1, Lcom/android/email/activity/ThreePaneLayout;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 478
    if-eqz p2, :cond_2

    .line 479
    invoke-virtual {v0, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 481
    :cond_2
    iput-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLastAnimator:Landroid/animation/Animator;

    .line 482
    iput-object p2, p0, Lcom/android/email/activity/ThreePaneLayout;->mLastAnimatorListener:Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;

    .line 483
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 484
    return-void
.end method


# virtual methods
.method public getInMessageCommandButtons()Lcom/android/email/activity/MessageCommandButtonView;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mInMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    return-object v0
.end method

.method public getLeftPaneId()I
    .locals 1

    .prologue
    .line 415
    const v0, 0x7f0f010b

    return v0
.end method

.method public getMessageCommandButtons()Lcom/android/email/activity/MessageCommandButtonView;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    return-object v0
.end method

.method public getMiddlePaneId()I
    .locals 1

    .prologue
    .line 422
    const v0, 0x7f0f010c

    return v0
.end method

.method public getPaneState()I
    .locals 1

    .prologue
    .line 491
    iget v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    return v0
.end method

.method public getRightPaneId()I
    .locals 1

    .prologue
    .line 429
    const v0, 0x7f0f010e

    return v0
.end method

.method public getVisiblePanes()I
    .locals 2

    .prologue
    .line 276
    const/4 v0, 0x0

    .line 277
    .local v0, ret:I
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 278
    or-int/lit8 v0, v0, 0x4

    .line 280
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 281
    or-int/lit8 v0, v0, 0x2

    .line 283
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 284
    or-int/lit8 v0, v0, 0x1

    .line 286
    :cond_2
    return v0
.end method

.method public isLeftPaneVisible()Z
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMiddlePaneVisible()Z
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPaneCollapsible()Z
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method public isRightPaneVisible()Z
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 173
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 175
    const v3, 0x7f0f010b

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    .line 176
    const v3, 0x7f0f010c

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    .line 177
    const v3, 0x7f0f010d

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/MessageCommandButtonView;

    iput-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    .line 179
    const v3, 0x7f0f010f

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/MessageCommandButtonView;

    iput-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mInMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    .line 182
    const v3, 0x7f0f010e

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    .line 183
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mConvViewExpandList:Z

    .line 184
    new-array v1, v10, [[Landroid/view/View;

    new-array v3, v10, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    aput-object v4, v3, v8

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    aput-object v4, v3, v9

    aput-object v3, v1, v7

    new-array v3, v8, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    aput-object v4, v3, v7

    aput-object v3, v1, v8

    new-array v3, v8, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mInMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    aput-object v4, v3, v7

    aput-object v3, v1, v9

    .line 195
    .local v1, stateRightVisible:[[Landroid/view/View;
    new-array v2, v10, [[Landroid/view/View;

    new-array v3, v9, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mInMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    aput-object v4, v3, v8

    aput-object v3, v2, v7

    new-array v3, v10, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    aput-object v4, v3, v8

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    aput-object v4, v3, v9

    aput-object v3, v2, v8

    new-array v3, v7, [Landroid/view/View;

    aput-object v3, v2, v9

    .line 204
    .local v2, stateRightVisibleHideConvList:[[Landroid/view/View;
    new-array v3, v10, [[[Landroid/view/View;

    new-array v4, v10, [[Landroid/view/View;

    new-array v5, v9, [Landroid/view/View;

    iget-object v6, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    aput-object v6, v5, v8

    aput-object v5, v4, v7

    new-array v5, v8, [Landroid/view/View;

    iget-object v6, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    aput-object v6, v5, v7

    aput-object v5, v4, v8

    new-array v5, v9, [Landroid/view/View;

    iget-object v6, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/android/email/activity/ThreePaneLayout;->mInMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    aput-object v6, v5, v8

    aput-object v5, v4, v9

    aput-object v4, v3, v7

    iget-boolean v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mConvViewExpandList:Z

    if-eqz v4, :cond_0

    .end local v1           #stateRightVisible:[[Landroid/view/View;
    :goto_0
    aput-object v1, v3, v8

    new-array v4, v10, [[Landroid/view/View;

    new-array v5, v7, [Landroid/view/View;

    aput-object v5, v4, v7

    new-array v5, v7, [Landroid/view/View;

    aput-object v5, v4, v8

    new-array v5, v7, [Landroid/view/View;

    aput-object v5, v4, v9

    aput-object v4, v3, v9

    iput-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mShowHideViews:[[[Landroid/view/View;

    .line 227
    iput v7, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    .line 229
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 230
    .local v0, resources:Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mMailboxListWidth:I

    .line 232
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageListWidth:I

    .line 233
    return-void

    .end local v0           #resources:Landroid/content/res/Resources;
    .restart local v1       #stateRightVisible:[[Landroid/view/View;
    :cond_0
    move-object v1, v2

    .line 204
    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 166
    move-object v0, p1

    check-cast v0, Lcom/android/email/activity/ThreePaneLayout$SavedState;

    .line 167
    .local v0, ss:Lcom/android/email/activity/ThreePaneLayout$SavedState;
    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 168
    iget v1, v0, Lcom/android/email/activity/ThreePaneLayout$SavedState;->mPaneState:I

    iput v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    .line 169
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 158
    new-instance v0, Lcom/android/email/activity/ThreePaneLayout$SavedState;

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/email/activity/ThreePaneLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 159
    .local v0, ss:Lcom/android/email/activity/ThreePaneLayout$SavedState;
    iget v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    iput v1, v0, Lcom/android/email/activity/ThreePaneLayout$SavedState;->mPaneState:I

    .line 160
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 264
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 265
    iget-boolean v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mFirstSizeChangedDone:Z

    if-nez v0, :cond_0

    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mFirstSizeChangedDone:Z

    .line 267
    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->onFirstSizeChanged()V

    .line 269
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/android/email/activity/ThreePaneLayout$Callback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 244
    if-nez p1, :cond_0

    sget-object p1, Lcom/android/email/activity/ThreePaneLayout$EmptyCallback;->INSTANCE:Lcom/android/email/activity/ThreePaneLayout$Callback;

    .end local p1
    :cond_0
    iput-object p1, p0, Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;

    .line 245
    return-void
.end method

.method public setIsSearch(Z)V
    .locals 0
    .parameter "isSearch"

    .prologue
    .line 236
    iput-boolean p1, p0, Lcom/android/email/activity/ThreePaneLayout;->mIsSearchResult:Z

    .line 237
    return-void
.end method

.method public setMailboxListLeftAnim(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 442
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 443
    return-void
.end method

.method public setMessageListWidthAnim(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 447
    return-void
.end method

.method public showLeftPane()Z
    .locals 2

    .prologue
    .line 303
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZ)Z

    move-result v0

    return v0
.end method

.method public showRightPane()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 323
    invoke-direct {p0, v0, v0}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZ)Z

    move-result v0

    return v0
.end method
