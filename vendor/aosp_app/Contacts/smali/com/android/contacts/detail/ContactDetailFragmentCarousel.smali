.class public Lcom/android/contacts/detail/ContactDetailFragmentCarousel;
.super Landroid/widget/HorizontalScrollView;
.source "ContactDetailFragmentCarousel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final ABOUT_PAGE:I = 0x0

.field private static final FRAGMENT_WIDTH_SCREEN_WIDTH_FRACTION:F = 1.0f

.field private static final MAX_FRAGMENT_VIEW_COUNT:I = 0x2

.field private static final TAG:Ljava/lang/String; = null

.field private static final UPDATES_PAGE:I = 0x1


# instance fields
.field private final mAboutFragTouchInterceptListener:Landroid/view/View$OnClickListener;

.field private mAboutFragment:Lcom/android/contacts/widget/FrameLayoutWithOverlay;

.field private mAllowedHorizontalScrollLength:I

.field private mCurrentPage:I

.field private mEnableSwipe:Z

.field private mHistoryFragment:Lcom/android/contacts/widget/FrameLayoutWithOverlay;

.field private mLastScrollPosition:I

.field private mLowerThreshold:I

.field private mMinFragmentWidth:I

.field private final mUpdatesFragTouchInterceptListener:Landroid/view/View$OnClickListener;

.field private mUpdatesFragment:Lcom/android/contacts/widget/FrameLayoutWithOverlay;

.field private mUpperThreshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/high16 v1, -0x8000

    .line 100
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    iput v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAllowedHorizontalScrollLength:I

    .line 55
    iput v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mLowerThreshold:I

    .line 61
    iput v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpperThreshold:I

    .line 67
    iput v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mMinFragmentWidth:I

    .line 85
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    .line 221
    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragmentCarousel$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel$1;-><init>(Lcom/android/contacts/detail/ContactDetailFragmentCarousel;)V

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAboutFragTouchInterceptListener:Landroid/view/View$OnClickListener;

    .line 236
    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragmentCarousel$2;

    invoke-direct {v1, p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel$2;-><init>(Lcom/android/contacts/detail/ContactDetailFragmentCarousel;)V

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpdatesFragTouchInterceptListener:Landroid/view/View$OnClickListener;

    .line 102
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 104
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f040025

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 106
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/detail/ContactDetailFragmentCarousel;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->changeCurrentPageIndex(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/detail/ContactDetailFragmentCarousel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->snapToEdge()V

    return-void
.end method

.method private changeCurrentPageIndex(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 362
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    if-eq v0, p1, :cond_0

    .line 363
    iput p1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    .line 364
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->notifyPagerChange(I)V

    .line 366
    :cond_0
    return-void
.end method

.method private getDesiredPage()I
    .locals 6

    .prologue
    .line 299
    iget v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    packed-switch v1, :pswitch_data_0

    .line 319
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailEnhancementExtension()Lcom/android/contacts/ext/ContactDetailEnhancementExtension;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mLastScrollPosition:I

    iget v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpperThreshold:I

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->getUpdatePageIndex()I

    move-result v4

    const-string v5, "ExtensionForOP09"

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getDesiredPageHistoryEx(IIILjava/lang/String;)I

    move-result v0

    .line 323
    .local v0, historyPageIndex:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    move v1, v0

    .line 324
    .end local v0           #historyPageIndex:I
    :goto_0
    return v1

    .line 303
    :pswitch_0
    iget v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mLastScrollPosition:I

    iget v2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mLowerThreshold:I

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 312
    :pswitch_1
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailEnhancementExtension()Lcom/android/contacts/ext/ContactDetailEnhancementExtension;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mLastScrollPosition:I

    iget v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpperThreshold:I

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->isEnableSwipe()Z

    move-result v4

    const-string v5, "ExtensionForOP09"

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getDesiredPageUpdatesEx(IIZLjava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 327
    .restart local v0       #historyPageIndex:I
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid current page "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 299
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private notifyPagerChange(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 369
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailEnhancementExtension()Lcom/android/contacts/ext/ContactDetailEnhancementExtension;

    move-result-object v0

    const-string v1, "ExtensionForOP09"

    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->onFragmentPageChange(ILjava/lang/String;)V

    .line 371
    return-void
.end method

.method private snapToEdge()V
    .locals 3

    .prologue
    .line 288
    iget v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    iget v2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAllowedHorizontalScrollLength:I

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->getScrollOffset(II)I

    move-result v0

    .line 290
    .local v0, x:I
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 291
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->updateTouchInterceptors()V

    .line 292
    return-void
.end method

.method private updateTouchInterceptors()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 253
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAboutFragment:Lcom/android/contacts/widget/FrameLayoutWithOverlay;

    if-eqz v0, :cond_0

    .line 254
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAboutFragment:Lcom/android/contacts/widget/FrameLayoutWithOverlay;

    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/contacts/widget/FrameLayoutWithOverlay;->setOverlayClickable(Z)V

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpdatesFragment:Lcom/android/contacts/widget/FrameLayoutWithOverlay;

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpdatesFragment:Lcom/android/contacts/widget/FrameLayoutWithOverlay;

    iget v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    if-eq v3, v1, :cond_4

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/contacts/widget/FrameLayoutWithOverlay;->setOverlayClickable(Z)V

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mHistoryFragment:Lcom/android/contacts/widget/FrameLayoutWithOverlay;

    if-eqz v0, :cond_2

    .line 261
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mHistoryFragment:Lcom/android/contacts/widget/FrameLayoutWithOverlay;

    invoke-virtual {v0, v2}, Lcom/android/contacts/widget/FrameLayoutWithOverlay;->setOverlayClickable(Z)V

    .line 264
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 254
    goto :goto_0

    :cond_4
    move v1, v2

    .line 257
    goto :goto_1
.end method


# virtual methods
.method public animateAppear()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 353
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 354
    .local v1, x:I
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpdatesFragment:Lcom/android/contacts/widget/FrameLayoutWithOverlay;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 355
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpdatesFragment:Lcom/android/contacts/widget/FrameLayoutWithOverlay;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 356
    .local v0, animator:Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 357
    return-void
.end method

.method public enableSwipe(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mEnableSwipe:Z

    if-eq v0, p1, :cond_0

    .line 187
    iput-boolean p1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mEnableSwipe:Z

    .line 188
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpdatesFragment:Lcom/android/contacts/widget/FrameLayoutWithOverlay;

    if-eqz v0, :cond_0

    .line 189
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpdatesFragment:Lcom/android/contacts/widget/FrameLayoutWithOverlay;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 190
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    if-nez v0, :cond_2

    .line 191
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAboutFragment:Lcom/android/contacts/widget/FrameLayoutWithOverlay;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 195
    :goto_1
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->updateTouchInterceptors()V

    .line 198
    :cond_0
    return-void

    .line 189
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    .line 193
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpdatesFragment:Lcom/android/contacts/widget/FrameLayoutWithOverlay;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    return v0
.end method

.method protected getMaxFragmentViewCount()I
    .locals 3

    .prologue
    .line 374
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailEnhancementExtension()Lcom/android/contacts/ext/ContactDetailEnhancementExtension;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "ExtensionForOP09"

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getMaxFragmentViewCountEx(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getScrollOffset(II)I
    .locals 1
    .parameter "currentPage"
    .parameter "allowedHorizontalScrollLength"

    .prologue
    .line 392
    if-nez p1, :cond_1

    const/4 p2, 0x0

    .end local p2
    :cond_0
    :goto_0
    return p2

    .restart local p2
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->getUpdatePageIndex()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->getVisibleFragmentViewCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    mul-int/2addr p2, v0

    goto :goto_0
.end method

.method protected getUpdatePageIndex()I
    .locals 1

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->isEnableSwipe()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected getVisibleFragmentViewCount()I
    .locals 3

    .prologue
    .line 384
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailEnhancementExtension()Lcom/android/contacts/ext/ContactDetailEnhancementExtension;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->isEnableSwipe()Z

    move-result v1

    const-string v2, "ExtensionForOP09"

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getVisibleFragmentViewCountEx(ZLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected isEnableSwipe()Z
    .locals 1

    .prologue
    .line 380
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mEnableSwipe:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 13
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 111
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 112
    .local v1, screenWidth:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 115
    .local v2, screenHeight:I
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->getMaxFragmentViewCount()I

    move-result v3

    .line 119
    .local v3, fragmentViewCount:I
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAllowedHorizontalScrollLength:I

    const/high16 v4, -0x8000

    if-ne v0, v4, :cond_0

    .line 120
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailEnhancementExtension()Lcom/android/contacts/ext/ContactDetailEnhancementExtension;

    move-result-object v0

    const/high16 v4, 0x3f80

    const-string v5, "ExtensionForOP09"

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->onMeasureEx(IIIFLjava/lang/String;)Lcom/android/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;

    move-result-object v12

    .line 125
    .local v12, measureInfo:Lcom/android/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;
    if-eqz v12, :cond_0

    .line 126
    iget v0, v12, Lcom/android/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;->mMinFragmentWidth:I

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mMinFragmentWidth:I

    .line 127
    iget v0, v12, Lcom/android/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;->mAllowedHorizontalScrollLength:I

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAllowedHorizontalScrollLength:I

    .line 128
    iget v0, v12, Lcom/android/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;->mLowerThreshold:I

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mLowerThreshold:I

    .line 129
    iget v0, v12, Lcom/android/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;->mUpperThreshold:I

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpperThreshold:I

    .line 134
    .end local v12           #measureInfo:Lcom/android/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 140
    .local v6, child:Landroid/view/View;
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailEnhancementExtension()Lcom/android/contacts/ext/ContactDetailEnhancementExtension;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mEnableSwipe:Z

    iget v7, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mMinFragmentWidth:I

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->getVisibleFragmentViewCount()I

    move-result v8

    const-string v11, "ExtensionForOP09"

    move v9, v2

    move v10, v1

    invoke-virtual/range {v4 .. v11}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->childMeasureEx(ZLandroid/view/View;IIIILjava/lang/String;)V

    .line 147
    .end local v6           #child:Landroid/view/View;
    :cond_1
    invoke-static {v1, p1}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->resolveSize(II)I

    move-result v0

    invoke-static {v2, p2}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->resolveSize(II)I

    move-result v4

    invoke-virtual {p0, v0, v4}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 150
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 3
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 268
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 270
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mEnableSwipe:Z

    if-nez v0, :cond_0

    .line 271
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailEnhancementExtension()Lcom/android/contacts/ext/ContactDetailEnhancementExtension;

    move-result-object v0

    const-string v1, "ExtensionForOP09"

    invoke-virtual {v0, v1}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->onScrollChangedEx(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    :goto_0
    return-void

    .line 277
    :cond_0
    iput p1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mLastScrollPosition:I

    .line 278
    const-string v0, "YY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onScrollChanged]mLastScrollPosition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mLastScrollPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 332
    iget-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mEnableSwipe:Z

    if-nez v2, :cond_1

    .line 333
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailEnhancementExtension()Lcom/android/contacts/ext/ContactDetailEnhancementExtension;

    move-result-object v2

    const-string v3, "ExtensionForOP09"

    invoke-virtual {v2, v3}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->onTouchEx(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 346
    :cond_0
    :goto_0
    return v0

    .line 338
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 341
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->getDesiredPage()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->changeCurrentPageIndex(I)V

    .line 343
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->snapToEdge()V

    move v0, v1

    .line 344
    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    if-eqz v0, :cond_0

    .line 211
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->changeCurrentPageIndex(I)V

    .line 213
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->snapToEdge()V

    .line 215
    :cond_0
    return-void
.end method

.method public setCurrentPage(I)V
    .locals 0
    .parameter "pageIndex"

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->changeCurrentPageIndex(I)V

    .line 167
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->updateTouchInterceptors()V

    .line 168
    return-void
.end method

.method public setFragmentViews(Lcom/android/contacts/widget/FrameLayoutWithOverlay;Lcom/android/contacts/widget/FrameLayoutWithOverlay;)V
    .locals 2
    .parameter "about"
    .parameter "updates"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAboutFragment:Lcom/android/contacts/widget/FrameLayoutWithOverlay;

    .line 175
    iput-object p2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpdatesFragment:Lcom/android/contacts/widget/FrameLayoutWithOverlay;

    .line 177
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAboutFragment:Lcom/android/contacts/widget/FrameLayoutWithOverlay;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAboutFragTouchInterceptListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/widget/FrameLayoutWithOverlay;->setOverlayOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpdatesFragment:Lcom/android/contacts/widget/FrameLayoutWithOverlay;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpdatesFragTouchInterceptListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/widget/FrameLayoutWithOverlay;->setOverlayOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    return-void
.end method

.method public setHistoryFragmentView(Lcom/android/contacts/widget/FrameLayoutWithOverlay;)V
    .locals 2
    .parameter "fragmentView"

    .prologue
    .line 403
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mHistoryFragment:Lcom/android/contacts/widget/FrameLayoutWithOverlay;

    .line 407
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mHistoryFragment:Lcom/android/contacts/widget/FrameLayoutWithOverlay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/widget/FrameLayoutWithOverlay;->setOverlayOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    return-void
.end method
