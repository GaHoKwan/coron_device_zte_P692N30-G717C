.class public Lcom/android/contacts/detail/ContactDetailTabCarousel;
.super Landroid/widget/HorizontalScrollView;
.source "ContactDetailTabCarousel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/detail/ContactDetailTabCarousel$TabClickListener;,
        Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;
    }
.end annotation


# static fields
.field private static final MAX_ALPHA:F = 0.5f

.field private static final TAB_COUNT:I = 0x3

.field private static final TAB_INDEX_ABOUT:I = 0x0

.field private static final TAB_INDEX_HISTORY:I = 0x1

.field private static final TAB_INDEX_UPDATES:I = 0x2

.field private static final TAG:Ljava/lang/String; = null

.field private static final TRANSITION_MOVE_IN_TIME:I = 0x96

.field private static final TRANSITION_TIME:I = 0xc8


# instance fields
.field private mAboutTab:Lcom/android/contacts/detail/CarouselTab;

.field private final mAboutTabTouchInterceptListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$TabClickListener;

.field private mAllowedHorizontalScrollLength:I

.field private mAllowedVerticalScrollLength:I

.field private mCurrentTab:I

.field private mLastScrollPosition:I

.field private mListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;

.field private final mPhotoSetter:Lcom/android/contacts/detail/ContactDetailPhotoSetter;

.field private mPhotoView:Landroid/widget/ImageView;

.field private mPhotoViewOverlay:Landroid/view/View;

.field private mScrollScaleFactor:F

.field private mScrollToCurrentTab:Z

.field private mShadow:Landroid/view/View;

.field private mStatusPhotoView:Landroid/widget/ImageView;

.field private mStatusView:Landroid/widget/TextView;

.field private mTabAndShadowContainer:Landroid/view/View;

.field private mTabDisplayLabelHeight:I

.field private mTabDivider:Landroid/view/View;

.field private mTabHeightScreenWidthFraction:F

.field private mTabShadowHeight:I

.field private mTabWidthScreenWidthFraction:F

.field private mUpdatesTab:Lcom/android/contacts/detail/CarouselTab;

.field private final mUpdatesTabTouchInterceptListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$TabClickListener;

.field private final mYCoordinateArray:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/high16 v2, -0x8000

    const/4 v3, 0x1

    .line 111
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    new-instance v1, Lcom/android/contacts/detail/ContactDetailPhotoSetter;

    invoke-direct {v1}, Lcom/android/contacts/detail/ContactDetailPhotoSetter;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mPhotoSetter:Lcom/android/contacts/detail/ContactDetailPhotoSetter;

    .line 76
    iput v4, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mCurrentTab:I

    .line 85
    const/4 v1, 0x3

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mYCoordinateArray:[F

    .line 89
    iput-boolean v4, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mScrollToCurrentTab:Z

    .line 90
    iput v2, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mLastScrollPosition:I

    .line 91
    iput v2, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAllowedHorizontalScrollLength:I

    .line 92
    iput v2, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAllowedVerticalScrollLength:I

    .line 95
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mScrollScaleFactor:F

    .line 277
    new-instance v1, Lcom/android/contacts/detail/ContactDetailTabCarousel$TabClickListener;

    invoke-direct {v1, p0, v4}, Lcom/android/contacts/detail/ContactDetailTabCarousel$TabClickListener;-><init>(Lcom/android/contacts/detail/ContactDetailTabCarousel;I)V

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAboutTabTouchInterceptListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$TabClickListener;

    .line 280
    new-instance v1, Lcom/android/contacts/detail/ContactDetailTabCarousel$TabClickListener;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/detail/ContactDetailTabCarousel$TabClickListener;-><init>(Lcom/android/contacts/detail/ContactDetailTabCarousel;I)V

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mUpdatesTabTouchInterceptListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$TabClickListener;

    .line 113
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 115
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 117
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f09000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabDisplayLabelHeight:I

    .line 120
    const v1, 0x7f09000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabShadowHeight:I

    .line 123
    const/high16 v1, 0x7f0d

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabWidthScreenWidthFraction:F

    .line 126
    const v1, 0x7f0d0001

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabHeightScreenWidthFraction:F

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/detail/ContactDetailTabCarousel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mCurrentTab:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/contacts/detail/ContactDetailTabCarousel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->updateAlphaLayers()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/detail/ContactDetailTabCarousel;)Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;

    return-object v0
.end method

.method private updateAlphaLayers()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f00

    .line 385
    iget v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mLastScrollPosition:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    iget v2, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAllowedHorizontalScrollLength:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 386
    .local v0, alpha:F
    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-static {v0, v1, v2}, Lcom/android/contacts/util/MoreMath;->clamp(FFF)F

    move-result v0

    .line 387
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAboutTab:Lcom/android/contacts/detail/CarouselTab;

    invoke-virtual {v1, v0}, Lcom/android/contacts/widget/FrameLayoutWithOverlay;->setAlphaLayerValue(F)V

    .line 388
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mUpdatesTab:Lcom/android/contacts/detail/CarouselTab;

    sub-float v2, v3, v0

    invoke-virtual {v1, v2}, Lcom/android/contacts/widget/FrameLayoutWithOverlay;->setAlphaLayerValue(F)V

    .line 389
    return-void
.end method


# virtual methods
.method public animateAppear(II)V
    .locals 22
    .parameter "width"
    .parameter "scrollOffset"

    .prologue
    .line 292
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabHeightScreenWidthFraction:F

    move/from16 v19, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v11, v19, v20

    .line 294
    .local v11, photoHeight:F
    const/4 v13, 0x0

    .line 301
    .local v13, pixelsToScrollVertically:I
    const/high16 v19, -0x8000

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 303
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabDisplayLabelHeight:I

    .line 304
    const/4 v4, 0x0

    .line 316
    .local v4, animateZoomAndFade:Z
    :goto_0
    if-eqz v13, :cond_0

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabAndShadowContainer:Landroid/view/View;

    move-object/from16 v19, v0

    neg-int v0, v13

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setTranslationY(F)V

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabAndShadowContainer:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    .line 322
    .local v5, animator:Landroid/view/ViewPropertyAnimator;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 323
    const-wide/16 v19, 0x96

    move-wide/from16 v0, v19

    invoke-virtual {v5, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 326
    .end local v5           #animator:Landroid/view/ViewPropertyAnimator;
    :cond_0
    if-eqz v4, :cond_6

    .line 335
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabWidthScreenWidthFraction:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabHeightScreenWidthFraction:F

    move/from16 v20, v0

    cmpl-float v19, v19, v20

    if-nez v19, :cond_3

    const/16 v16, 0x1

    .line 338
    .local v16, squarePicture:Z
    :goto_1
    if-eqz v16, :cond_4

    .line 339
    const/4 v7, 0x0

    .line 361
    .local v7, firstTransitionTime:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAboutTab:Lcom/android/contacts/detail/CarouselTab;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v7, v1}, Lcom/android/contacts/detail/CarouselTab;->fadeInLabelViewAnimator(IZ)V

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mUpdatesTab:Lcom/android/contacts/detail/CarouselTab;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v7, v1}, Lcom/android/contacts/detail/CarouselTab;->fadeInLabelViewAnimator(IZ)V

    .line 364
    const/high16 v19, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabWidthScreenWidthFraction:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v14, v19, v20

    .line 366
    .local v14, pixelsToTranslate:F
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v6, v0, [Landroid/view/View;

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mUpdatesTab:Lcom/android/contacts/detail/CarouselTab;

    move-object/from16 v20, v0

    aput-object v20, v6, v19

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabDivider:Landroid/view/View;

    move-object/from16 v20, v0

    aput-object v20, v6, v19

    .local v6, arr$:[Landroid/view/View;
    array-length v9, v6

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_3
    if-ge v8, v9, :cond_5

    aget-object v18, v6, v8

    .line 367
    .local v18, view:Landroid/view/View;
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/view/View;->setTranslationX(F)V

    .line 368
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v17

    .line 369
    .local v17, translateAnimator:Landroid/view/ViewPropertyAnimator;
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 370
    const-wide/16 v19, 0xc8

    move-object/from16 v0, v17

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 366
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 306
    .end local v4           #animateZoomAndFade:Z
    .end local v6           #arr$:[Landroid/view/View;
    .end local v7           #firstTransitionTime:I
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v14           #pixelsToTranslate:F
    .end local v16           #squarePicture:Z
    .end local v17           #translateAnimator:Landroid/view/ViewPropertyAnimator;
    .end local v18           #view:Landroid/view/View;
    :cond_1
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v19

    add-int v12, v19, p2

    .line 307
    .local v12, pixelsOfPhotoLeft:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabDisplayLabelHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-le v12, v0, :cond_2

    .line 309
    const/4 v13, 0x0

    .line 313
    :goto_4
    const/4 v4, 0x1

    .restart local v4       #animateZoomAndFade:Z
    goto/16 :goto_0

    .line 311
    .end local v4           #animateZoomAndFade:Z
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabDisplayLabelHeight:I

    move/from16 v19, v0

    sub-int v13, v19, v12

    goto :goto_4

    .line 335
    .end local v12           #pixelsOfPhotoLeft:I
    .restart local v4       #animateZoomAndFade:Z
    :cond_3
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 344
    .restart local v16       #squarePicture:Z
    :cond_4
    const/high16 v19, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabWidthScreenWidthFraction:F

    move/from16 v20, v0

    div-float v15, v19, v20

    .line 345
    .local v15, revScale:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAboutTab:Lcom/android/contacts/detail/CarouselTab;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/view/View;->setScaleX(F)V

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAboutTab:Lcom/android/contacts/detail/CarouselTab;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setPivotX(F)V

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAboutTab:Lcom/android/contacts/detail/CarouselTab;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 348
    .local v3, aboutAnimator:Landroid/view/ViewPropertyAnimator;
    const-wide/16 v19, 0xc8

    move-wide/from16 v0, v19

    invoke-virtual {v3, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 349
    const/high16 v19, 0x3f80

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mPhotoView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/view/View;->setScaleY(F)V

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mPhotoView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/high16 v20, 0x3f00

    mul-float v20, v20, v11

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setPivotY(F)V

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mPhotoView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    .line 355
    .local v10, photoAnimator:Landroid/view/ViewPropertyAnimator;
    const-wide/16 v19, 0xc8

    move-wide/from16 v0, v19

    invoke-virtual {v10, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 356
    const/high16 v19, 0x3f80

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 357
    const/16 v7, 0xc8

    .restart local v7       #firstTransitionTime:I
    goto/16 :goto_2

    .line 375
    .end local v3           #aboutAnimator:Landroid/view/ViewPropertyAnimator;
    .end local v10           #photoAnimator:Landroid/view/ViewPropertyAnimator;
    .end local v15           #revScale:F
    .restart local v6       #arr$:[Landroid/view/View;
    .restart local v8       #i$:I
    .restart local v9       #len$:I
    .restart local v14       #pixelsToTranslate:F
    :cond_5
    if-eqz v16, :cond_6

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mShadow:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_6

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mShadow:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setAlpha(F)V

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mShadow:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    const-wide/16 v20, 0xc8

    invoke-virtual/range {v19 .. v21}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    const/high16 v20, 0x3f80

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 382
    .end local v6           #arr$:[Landroid/view/View;
    .end local v7           #firstTransitionTime:I
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v14           #pixelsToTranslate:F
    .end local v16           #squarePicture:Z
    :cond_6
    return-void
.end method

.method public getAllowedHorizontalScrollLength()I
    .locals 1

    .prologue
    .line 472
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAllowedHorizontalScrollLength:I

    return v0
.end method

.method public getAllowedVerticalScrollLength()I
    .locals 1

    .prologue
    .line 480
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAllowedVerticalScrollLength:I

    return v0
.end method

.method public getStoredYCoordinateForTab(I)F
    .locals 1
    .parameter "tabIndex"

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mYCoordinateArray:[F

    aget v0, v0, p1

    return v0
.end method

.method protected getTabCount()I
    .locals 1

    .prologue
    .line 611
    const/4 v0, 0x3

    return v0
.end method

.method public loadData(Lcom/android/contacts/model/Contact;)V
    .locals 5
    .parameter "contactData"

    .prologue
    .line 550
    if-nez p1, :cond_0

    .line 568
    :goto_0
    return-void

    .line 554
    :cond_0
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->getPhotoUri()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 555
    .local v0, expandOnClick:Z
    :goto_1
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mPhotoSetter:Lcom/android/contacts/detail/ContactDetailPhotoSetter;

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, p1, v4, v0}, Lcom/android/contacts/detail/ContactDetailPhotoSetter;->setupContactPhotoForClick(Landroid/content/Context;Lcom/android/contacts/model/Contact;Landroid/widget/ImageView;Z)Landroid/view/View$OnClickListener;

    move-result-object v1

    .line 558
    .local v1, listener:Landroid/view/View$OnClickListener;
    if-nez v0, :cond_1

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcom/android/contacts/model/Contact;->isWritableContact(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 559
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mPhotoViewOverlay:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 566
    :goto_2
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mStatusView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mStatusPhotoView:Landroid/widget/ImageView;

    invoke-static {v2, p1, v3, v4}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setSocialSnippet(Landroid/content/Context;Lcom/android/contacts/model/Contact;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 554
    .end local v0           #expandOnClick:Z
    .end local v1           #listener:Landroid/view/View$OnClickListener;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 563
    .restart local v0       #expandOnClick:Z
    .restart local v1       #listener:Landroid/view/View$OnClickListener;
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mPhotoViewOverlay:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method

.method public moveToYCoordinate(IF)V
    .locals 0
    .parameter "tabIndex"
    .parameter "y"

    .prologue
    .line 449
    invoke-virtual {p0, p2}, Landroid/view/View;->setY(F)V

    .line 450
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->storeYCoordinate(IF)V

    .line 451
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 132
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 133
    const v0, 0x7f0700dc

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabAndShadowContainer:Landroid/view/View;

    .line 134
    const v0, 0x7f0700de

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/CarouselTab;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAboutTab:Lcom/android/contacts/detail/CarouselTab;

    .line 135
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAboutTab:Lcom/android/contacts/detail/CarouselTab;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0122

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/CarouselTab;->setLabel(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAboutTab:Lcom/android/contacts/detail/CarouselTab;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAboutTabTouchInterceptListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$TabClickListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/widget/FrameLayoutWithOverlay;->setOverlayOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    const v0, 0x7f0700df

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabDivider:Landroid/view/View;

    .line 140
    const v0, 0x7f0700e1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/CarouselTab;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mUpdatesTab:Lcom/android/contacts/detail/CarouselTab;

    .line 141
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mUpdatesTab:Lcom/android/contacts/detail/CarouselTab;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0123

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/CarouselTab;->setLabel(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mUpdatesTab:Lcom/android/contacts/detail/CarouselTab;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mUpdatesTabTouchInterceptListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$TabClickListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/widget/FrameLayoutWithOverlay;->setOverlayOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    const v0, 0x7f0700e2

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mShadow:Landroid/view/View;

    .line 146
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mShadow:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAboutTab:Lcom/android/contacts/detail/CarouselTab;

    const v1, 0x7f0700a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mPhotoView:Landroid/widget/ImageView;

    .line 150
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAboutTab:Lcom/android/contacts/detail/CarouselTab;

    const v1, 0x7f0700a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mPhotoViewOverlay:Landroid/view/View;

    .line 154
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mUpdatesTab:Lcom/android/contacts/detail/CarouselTab;

    const v1, 0x7f0700ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mStatusView:Landroid/widget/TextView;

    .line 155
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mUpdatesTab:Lcom/android/contacts/detail/CarouselTab;

    const v1, 0x7f0700ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mStatusPhotoView:Landroid/widget/ImageView;

    .line 161
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 162
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mStatusPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 163
    const-string v0, "contact tab page"

    const-string v1, "onFinishInflate-"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 592
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 593
    .local v0, interceptTouch:Z
    if-eqz v0, :cond_0

    .line 594
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;

    invoke-interface {v1}, Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;->onTouchDown()V

    .line 596
    :cond_0
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 236
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 241
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mScrollToCurrentTab:Z

    if-nez v0, :cond_0

    .line 260
    :goto_0
    return-void

    .line 244
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mScrollToCurrentTab:Z

    .line 245
    new-instance v0, Lcom/android/contacts/detail/ContactDetailTabCarousel$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailTabCarousel$1;-><init>(Lcom/android/contacts/detail/ContactDetailTabCarousel;)V

    invoke-static {p0, v0}, Lcom/android/contacts/util/SchedulingUtils;->doAfterLayout(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected onLayoutSetTab(I)V
    .locals 3
    .parameter "currentTab"

    .prologue
    const/4 v1, 0x0

    .line 604
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mCurrentTab:I

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 608
    return-void

    .line 604
    :cond_0
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mCurrentTab:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAllowedHorizontalScrollLength:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAllowedHorizontalScrollLength:I

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v9, 0x4000

    const/high16 v8, 0x3f80

    .line 168
    const-string v6, "KKK"

    const-string v7, "onMeasure+"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 171
    .local v1, screenWidth:I
    iget v6, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabWidthScreenWidthFraction:F

    int-to-float v7, v1

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 174
    .local v5, tabWidth:I
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->getTabCount()I

    move-result v3

    .line 181
    .local v3, tabCount:I
    mul-int v6, v5, v3

    mul-int v7, v5, v3

    div-int/2addr v7, v1

    add-int/lit8 v7, v7, -0x1

    mul-int/2addr v7, v1

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAllowedHorizontalScrollLength:I

    .line 188
    iget v6, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAllowedHorizontalScrollLength:I

    if-nez v6, :cond_1

    .line 193
    iput v8, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mScrollScaleFactor:F

    .line 194
    sget-object v6, Lcom/android/contacts/detail/ContactDetailTabCarousel;->TAG:Ljava/lang/String;

    const-string v7, "set scale-factor to 1.0 to avoid divide-by-zero"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :goto_0
    int-to-float v6, v1

    iget v7, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabHeightScreenWidthFraction:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget v7, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabShadowHeight:I

    add-int v4, v6, v7

    .line 202
    .local v4, tabHeight:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 203
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 206
    .local v0, child:Landroid/view/View;
    const/4 v6, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {v6, v8, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    const/high16 v7, 0x3f00

    add-float/2addr v6, v7

    float-to-int v2, v6

    .line 220
    .local v2, seperatorPixels:I
    mul-int v6, v3, v5

    add-int/lit8 v7, v3, -0x1

    mul-int/2addr v7, v2

    add-int/2addr v6, v7

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/view/View;->measure(II)V

    .line 228
    .end local v0           #child:Landroid/view/View;
    .end local v2           #seperatorPixels:I
    :cond_0
    iget v6, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabDisplayLabelHeight:I

    sub-int v6, v4, v6

    iget v7, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabShadowHeight:I

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAllowedVerticalScrollLength:I

    .line 229
    invoke-static {v1, p1}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->resolveSize(II)I

    move-result v6

    invoke-static {v4, p2}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->resolveSize(II)I

    move-result v7

    invoke-virtual {p0, v6, v7}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 232
    return-void

    .line 196
    .end local v4           #tabHeight:I
    :cond_1
    iget v6, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAllowedHorizontalScrollLength:I

    div-int v6, v1, v6

    int-to-float v6, v6

    iput v6, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mScrollScaleFactor:F

    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "oldX"
    .parameter "oldY"

    .prologue
    .line 393
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 399
    iget v2, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mLastScrollPosition:I

    if-ne v2, p1, :cond_0

    .line 412
    :goto_0
    return-void

    .line 406
    :cond_0
    int-to-float v2, p1

    iget v3, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mScrollScaleFactor:F

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 407
    .local v1, scaledL:I
    int-to-float v2, p3

    iget v3, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mScrollScaleFactor:F

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 408
    .local v0, oldScaledL:I
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;

    invoke-interface {v2, v1, p2, v0, p4}, Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;->onScrollChanged(IIII)V

    .line 410
    iput p1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mLastScrollPosition:I

    .line 411
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->updateAlphaLayers()V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 579
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 587
    invoke-super {p0, p2}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 581
    :pswitch_0
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;

    invoke-interface {v1}, Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;->onTouchDown()V

    goto :goto_0

    .line 584
    :pswitch_1
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;

    invoke-interface {v1}, Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;->onTouchUp()V

    goto :goto_0

    .line 579
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 419
    invoke-virtual {p0, v1, v1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 420
    invoke-virtual {p0, v1}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->setCurrentTab(I)V

    .line 421
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->moveToYCoordinate(IF)V

    .line 422
    return-void
.end method

.method public restoreCurrentTab(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 428
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->setCurrentTab(I)V

    .line 432
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mScrollToCurrentTab:Z

    .line 433
    return-void
.end method

.method public restoreYCoordinate()V
    .locals 1

    .prologue
    .line 441
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mCurrentTab:I

    invoke-virtual {p0, v0}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->getStoredYCoordinateForTab(I)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setY(F)V

    .line 442
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 7
    .parameter "position"

    .prologue
    const/4 v6, 0x1

    .line 489
    const/4 v1, 0x0

    .line 490
    .local v1, deselected2:Lcom/android/contacts/detail/CarouselTab;
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailEnhancementExtension()Lcom/android/contacts/ext/ContactDetailEnhancementExtension;

    move-result-object v4

    const-string v5, "ExtensionForOP09"

    invoke-virtual {v4, v5}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->isUseOperation(Ljava/lang/String;)Z

    move-result v2

    .line 494
    .local v2, isCT:Z
    packed-switch p1, :pswitch_data_0

    .line 526
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid tab position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 496
    :pswitch_0
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAboutTab:Lcom/android/contacts/detail/CarouselTab;

    .line 498
    .local v3, selected:Lcom/android/contacts/detail/CarouselTab;
    if-eqz v2, :cond_4

    .line 499
    const/4 v0, 0x0

    .line 500
    .local v0, deselected:Lcom/android/contacts/detail/CarouselTab;
    const/4 v1, 0x0

    .line 529
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 530
    invoke-virtual {v3}, Lcom/android/contacts/detail/CarouselTab;->showSelectedState()V

    .line 531
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/contacts/widget/FrameLayoutWithOverlay;->setOverlayClickable(Z)V

    .line 533
    :cond_1
    if-eqz v0, :cond_2

    .line 534
    invoke-virtual {v0}, Lcom/android/contacts/detail/CarouselTab;->showDeselectedState()V

    .line 535
    invoke-virtual {v0, v6}, Lcom/android/contacts/widget/FrameLayoutWithOverlay;->setOverlayClickable(Z)V

    .line 537
    :cond_2
    if-eqz v1, :cond_3

    .line 538
    invoke-virtual {v0}, Lcom/android/contacts/detail/CarouselTab;->showDeselectedState()V

    .line 539
    invoke-virtual {v0, v6}, Lcom/android/contacts/widget/FrameLayoutWithOverlay;->setOverlayClickable(Z)V

    .line 542
    :cond_3
    iput p1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mCurrentTab:I

    .line 543
    return-void

    .line 502
    .end local v0           #deselected:Lcom/android/contacts/detail/CarouselTab;
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mUpdatesTab:Lcom/android/contacts/detail/CarouselTab;

    .line 504
    .restart local v0       #deselected:Lcom/android/contacts/detail/CarouselTab;
    goto :goto_0

    .line 506
    .end local v0           #deselected:Lcom/android/contacts/detail/CarouselTab;
    .end local v3           #selected:Lcom/android/contacts/detail/CarouselTab;
    :pswitch_1
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mUpdatesTab:Lcom/android/contacts/detail/CarouselTab;

    .line 508
    .restart local v3       #selected:Lcom/android/contacts/detail/CarouselTab;
    if-eqz v2, :cond_5

    .line 509
    const/4 v0, 0x0

    .line 510
    .restart local v0       #deselected:Lcom/android/contacts/detail/CarouselTab;
    const/4 v1, 0x0

    goto :goto_0

    .line 512
    .end local v0           #deselected:Lcom/android/contacts/detail/CarouselTab;
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAboutTab:Lcom/android/contacts/detail/CarouselTab;

    .line 514
    .restart local v0       #deselected:Lcom/android/contacts/detail/CarouselTab;
    goto :goto_0

    .line 517
    .end local v0           #deselected:Lcom/android/contacts/detail/CarouselTab;
    .end local v3           #selected:Lcom/android/contacts/detail/CarouselTab;
    :pswitch_2
    const/4 v3, 0x0

    .line 518
    .restart local v3       #selected:Lcom/android/contacts/detail/CarouselTab;
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mUpdatesTab:Lcom/android/contacts/detail/CarouselTab;

    .line 520
    .restart local v0       #deselected:Lcom/android/contacts/detail/CarouselTab;
    if-eqz v2, :cond_0

    .line 521
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAboutTab:Lcom/android/contacts/detail/CarouselTab;

    goto :goto_0

    .line 494
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setListener(Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 574
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;

    .line 575
    return-void
.end method

.method public storeYCoordinate(IF)V
    .locals 1
    .parameter "tabIndex"
    .parameter "y"

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mYCoordinateArray:[F

    aput p2, v0, p1

    .line 458
    return-void
.end method
