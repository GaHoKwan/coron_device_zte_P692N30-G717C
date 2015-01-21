.class public Lcom/zte/heartyservice/common/datatype/ZTETextPicker;
.super Landroid/widget/LinearLayout;
.source "ZTETextPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/common/datatype/ZTETextPicker$CustomEditText;,
        Lcom/zte/heartyservice/common/datatype/ZTETextPicker$ChangeCurrentByOneFromLongPressCommand;,
        Lcom/zte/heartyservice/common/datatype/ZTETextPicker$SetSelectionCommand;,
        Lcom/zte/heartyservice/common/datatype/ZTETextPicker$OnValueChangeListener;
    }
.end annotation


# static fields
.field private static final BUTTON_ALPHA_OPAQUE:I = 0x1

.field private static final BUTTON_ALPHA_TRANSPARENT:I = 0x0

.field private static final DEFAULT_LONG_PRESS_UPDATE_INTERVAL:J = 0x12cL

.field private static final PROPERTY_BUTTON_ALPHA:Ljava/lang/String; = "alpha"

.field private static final PROPERTY_SELECTOR_PAINT_ALPHA:Ljava/lang/String; = "selectorPaintAlpha"

.field private static final SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x320

.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x8

.field private static final SELECTOR_MIDDLE_ITEM_INDEX:I = 0x2

.field private static final SELECTOR_WHEEL_BRIGHT_ALPHA:I = 0xff

.field private static final SELECTOR_WHEEL_DIM_ALPHA:I = 0x3c

.field private static final SELECTOR_WHEEL_STATE_LARGE:I = 0x2

.field private static final SELECTOR_WHEEL_STATE_NONE:I = 0x0

.field private static final SELECTOR_WHEEL_STATE_SMALL:I = 0x1

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final TOP_AND_BOTTOM_FADING_EDGE_STRENGTH:F = 0.9f

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDER_HEIGHT:I = 0x2


# instance fields
.field private displayValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mComputeMaxWidth:Z

.field private mCurrentScrollOffset:I

.field private final mDecrementButton:Landroid/widget/ImageButton;

.field private final mDimSelectorWheelAnimator:Landroid/animation/Animator;

.field private mDisplayedValues:[Ljava/lang/String;

.field private final mFlingable:Z

.field private final mIncrementButton:Landroid/widget/ImageButton;

.field private mInitialScrollOffset:I

.field private final mInputText:Landroid/widget/EditText;

.field private mLongPressUpdateInterval:J

.field private final mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private final mMinHeight:I

.field private mMinValue:I

.field private final mMinWidth:I

.field private mOnValueChangeListener:Lcom/zte/heartyservice/common/datatype/ZTETextPicker$OnValueChangeListener;

.field private mScrollWheelAndFadingEdgesInitialized:Z

.field private final mSelectionDivider:Landroid/graphics/drawable/Drawable;

.field private final mSelectionDividerHeight:I

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private final mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mSelectorWheelState:I

.field private final mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

.field private final mShowInputControlsAnimimationDuration:J

.field private final mTextSize:I

.field private mValue:I

.field private mWrapSelectorWheel:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 306
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 307
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 318
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 319
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 332
    invoke-direct/range {p0 .. p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 123
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->displayValues:Ljava/util/List;

    .line 203
    const-wide/16 v12, 0x12c

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mLongPressUpdateInterval:J

    .line 208
    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 213
    const/4 v12, 0x5

    new-array v12, v12, [I

    fill-array-data v12, :array_0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mSelectorIndices:[I

    .line 229
    const/high16 v12, -0x8000

    move-object/from16 v0, p0

    iput v12, v0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mInitialScrollOffset:I

    .line 335
    sget-object v12, Lcom/zte/heartyservice/R$styleable;->TextPicker:[I

    const/4 v13, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v12, v2, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 336
    .local v3, attributesArray:Landroid/content/res/TypedArray;
    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mFlingable:Z

    .line 337
    const/4 v12, 0x2

    invoke-virtual {v3, v12}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    .line 338
    const/4 v12, 0x1

    const/high16 v13, 0x4000

    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    invoke-static {v12, v13, v14}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v12

    float-to-int v6, v12

    .line 340
    .local v6, defSelectionDividerHeight:I
    const/4 v12, 0x3

    invoke-virtual {v3, v12, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mSelectionDividerHeight:I

    .line 342
    const/4 v12, 0x4

    const/4 v13, -0x1

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMinHeight:I

    .line 343
    const/4 v12, 0x5

    const/4 v13, -0x1

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMaxHeight:I

    .line 344
    move-object/from16 v0, p0

    iget v12, v0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMinHeight:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMaxHeight:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMinHeight:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMaxHeight:I

    if-le v12, v13, :cond_0

    .line 345
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "minHeight > maxHeight"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 347
    :cond_0
    const/4 v12, 0x6

    const/4 v13, -0x1

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMinWidth:I

    .line 348
    const/4 v12, 0x7

    const/4 v13, -0x1

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMaxWidth:I

    .line 349
    move-object/from16 v0, p0

    iget v12, v0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMinWidth:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_1

    move-object/from16 v0, p0

    iget v12, v0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMaxWidth:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_1

    move-object/from16 v0, p0

    iget v12, v0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMinWidth:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMaxWidth:I

    if-le v12, v13, :cond_1

    .line 350
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "minWidth > maxWidth"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 352
    :cond_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMaxWidth:I

    const v13, 0x7fffffff

    if-ne v12, v13, :cond_3

    const/4 v12, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mComputeMaxWidth:Z

    .line 353
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 355
    const-wide/16 v12, 0x1f4

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mShowInputControlsAnimimationDuration:J

    .line 362
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->setWillNotDraw(Z)V

    .line 363
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->setSelectorWheelState(I)V

    .line 365
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "layout_inflater"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 366
    .local v7, inflater:Landroid/view/LayoutInflater;
    const v12, 0x7f030120

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v7, v12, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 368
    new-instance v8, Lcom/zte/heartyservice/common/datatype/ZTETextPicker$1;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker$1;-><init>(Lcom/zte/heartyservice/common/datatype/ZTETextPicker;)V

    .line 384
    .local v8, onClickListener:Landroid/view/View$OnClickListener;
    const v12, 0x7f0e03b5

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mIncrementButton:Landroid/widget/ImageButton;

    .line 385
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v12, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    const v12, 0x7f0e03b7

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mDecrementButton:Landroid/widget/ImageButton;

    .line 389
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v12, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    const v12, 0x7f0e03b6

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mInputText:Landroid/widget/EditText;

    .line 393
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getTextSize()F

    move-result v12

    float-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mTextSize:I

    .line 394
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mInputText:Landroid/widget/EditText;

    const/4 v13, 0x1

    const/high16 v14, 0x4170

    invoke-virtual {v12, v13, v14}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 395
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08003f

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setTextColor(I)V

    .line 397
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 398
    .local v9, paint:Landroid/graphics/Paint;
    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 399
    sget-object v12, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v9, v12}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 400
    move-object/from16 v0, p0

    iget v12, v0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mTextSize:I

    int-to-float v12, v12

    invoke-virtual {v9, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 401
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 402
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 403
    .local v5, colors:Landroid/content/res/ColorStateList;
    sget-object v12, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->ENABLED_STATE_SET:[I

    const/4 v13, -0x1

    invoke-virtual {v5, v12, v13}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    .line 404
    .local v4, color:I
    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 405
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 408
    const-string v12, "selectorPaintAlpha"

    const/4 v13, 0x2

    new-array v13, v13, [I

    fill-array-data v13, :array_1

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mDimSelectorWheelAnimator:Landroid/animation/Animator;

    .line 410
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mIncrementButton:Landroid/widget/ImageButton;

    const-string v13, "alpha"

    const/4 v14, 0x2

    new-array v14, v14, [F

    fill-array-data v14, :array_2

    invoke-static {v12, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 412
    .local v11, showIncrementButton:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mDecrementButton:Landroid/widget/ImageButton;

    const-string v13, "alpha"

    const/4 v14, 0x2

    new-array v14, v14, [F

    fill-array-data v14, :array_3

    invoke-static {v12, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 414
    .local v10, showDecrementButton:Landroid/animation/ObjectAnimator;
    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    .line 415
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    const/4 v13, 0x3

    new-array v13, v13, [Landroid/animation/Animator;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mDimSelectorWheelAnimator:Landroid/animation/Animator;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    aput-object v11, v13, v14

    const/4 v14, 0x2

    aput-object v10, v13, v14

    invoke-virtual {v12, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 416
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    new-instance v13, Lcom/zte/heartyservice/common/datatype/ZTETextPicker$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker$2;-><init>(Lcom/zte/heartyservice/common/datatype/ZTETextPicker;)V

    invoke-virtual {v12, v13}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 436
    invoke-direct/range {p0 .. p0}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->updateInputTextView()V

    .line 437
    invoke-direct/range {p0 .. p0}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->updateIncrementAndDecrementButtonsVisibilityState()V

    .line 439
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mFlingable:Z

    if-eqz v12, :cond_2

    .line 440
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->isInEditMode()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 441
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->setSelectorWheelState(I)V

    .line 451
    :cond_2
    :goto_1
    return-void

    .line 352
    .end local v4           #color:I
    .end local v5           #colors:Landroid/content/res/ColorStateList;
    .end local v7           #inflater:Landroid/view/LayoutInflater;
    .end local v8           #onClickListener:Landroid/view/View$OnClickListener;
    .end local v9           #paint:Landroid/graphics/Paint;
    .end local v10           #showDecrementButton:Landroid/animation/ObjectAnimator;
    .end local v11           #showIncrementButton:Landroid/animation/ObjectAnimator;
    :cond_3
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 447
    .restart local v4       #color:I
    .restart local v5       #colors:Landroid/content/res/ColorStateList;
    .restart local v7       #inflater:Landroid/view/LayoutInflater;
    .restart local v8       #onClickListener:Landroid/view/View$OnClickListener;
    .restart local v9       #paint:Landroid/graphics/Paint;
    .restart local v10       #showDecrementButton:Landroid/animation/ObjectAnimator;
    .restart local v11       #showIncrementButton:Landroid/animation/ObjectAnimator;
    :cond_4
    const/4 v12, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->setSelectorWheelState(I)V

    .line 448
    invoke-direct/range {p0 .. p0}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->hideInputControls()V

    goto :goto_1

    .line 213
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
    .end array-data

    .line 408
    :array_1
    .array-data 0x4
        0xfft 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
    .end array-data

    .line 410
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 412
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/common/datatype/ZTETextPicker;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mInputText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/common/datatype/ZTETextPicker;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->changeCurrentByOne(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/common/datatype/ZTETextPicker;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->setSelectorWheelState(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/common/datatype/ZTETextPicker;)Landroid/animation/AnimatorSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/common/datatype/ZTETextPicker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method private changeCurrent(I)V
    .locals 2
    .parameter "current"

    .prologue
    .line 944
    iget v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mValue:I

    if-ne v1, p1, :cond_0

    .line 954
    :goto_0
    return-void

    .line 948
    :cond_0
    iget-boolean v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_1

    .line 949
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->getWrappedSelectorIndex(I)I

    move-result p1

    .line 951
    :cond_1
    iget v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mValue:I

    .line 952
    .local v0, previous:I
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->setValue(I)V

    .line 953
    invoke-direct {p0, v0, p1}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->notifyChange(II)V

    goto :goto_0
.end method

.method private changeCurrentByOne(Z)V
    .locals 1
    .parameter "increment"

    .prologue
    .line 964
    if-eqz p1, :cond_0

    .line 965
    iget v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mValue:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->changeCurrent(I)V

    .line 969
    :goto_0
    return-void

    .line 967
    :cond_0
    iget v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mValue:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->changeCurrent(I)V

    goto :goto_0
.end method

.method private decrementSelectorIndices([I)V
    .locals 3
    .parameter "selectorIndices"

    .prologue
    .line 1092
    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-lez v0, :cond_0

    .line 1093
    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1092
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1095
    :cond_0
    const/4 v2, 0x1

    aget v2, p1, v2

    add-int/lit8 v1, v2, -0x1

    .line 1096
    .local v1, nextScrollSelectorIndex:I
    iget-boolean v2, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMinValue:I

    if-ge v1, v2, :cond_1

    .line 1097
    iget v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMaxValue:I

    .line 1099
    :cond_1
    const/4 v2, 0x0

    aput v1, p1, v2

    .line 1100
    invoke-direct {p0, v1}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1101
    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 4
    .parameter "selectorIndex"

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 1109
    .local v0, cache:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1110
    .local v2, scrollSelectorValue:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1122
    :goto_0
    return-void

    .line 1113
    :cond_0
    iget v3, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMinValue:I

    if-lt p1, v3, :cond_1

    iget v3, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMaxValue:I

    if-le p1, v3, :cond_2

    .line 1114
    :cond_1
    const-string v2, ""

    .line 1121
    :goto_1
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1115
    :cond_2
    iget-object v3, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->displayValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1116
    iget v3, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMinValue:I

    sub-int v1, p1, v3

    .line 1117
    .local v1, displayedValueIndex:I
    iget-object v3, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->displayValues:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #scrollSelectorValue:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 1118
    .restart local v2       #scrollSelectorValue:Ljava/lang/String;
    goto :goto_1

    .line 1119
    .end local v1           #displayedValueIndex:I
    :cond_3
    const-string v2, ""

    goto :goto_1
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 4
    .parameter "selectorIndex"

    .prologue
    .line 1065
    iget v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMaxValue:I

    if-le p1, v0, :cond_1

    .line 1066
    iget v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMinValue:I

    iget v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMaxValue:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMaxValue:I

    iget v3, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 p1, v0, -0x1

    .line 1070
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 1067
    .restart local p1
    :cond_1
    iget v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMinValue:I

    if-ge p1, v0, :cond_0

    .line 1068
    iget v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMaxValue:I

    iget v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMinValue:I

    sub-int/2addr v1, p1

    iget v2, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMaxValue:I

    iget v3, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/lit8 p1, v0, 0x1

    goto :goto_0
.end method

.method private hideInputControls()V
    .locals 2

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1029
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1030
    return-void
.end method

.method private incrementSelectorIndices([I)V
    .locals 3
    .parameter "selectorIndices"

    .prologue
    .line 1077
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 1078
    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1077
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1080
    :cond_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    aget v2, p1, v2

    add-int/lit8 v1, v2, 0x1

    .line 1081
    .local v1, nextScrollSelectorIndex:I
    iget-boolean v2, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMaxValue:I

    if-le v1, v2, :cond_1

    .line 1082
    iget v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMinValue:I

    .line 1084
    :cond_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aput v1, p1, v2

    .line 1085
    invoke-direct {p0, v1}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1086
    return-void
.end method

.method private initializeFadingEdges()V
    .locals 2

    .prologue
    .line 1018
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->setVerticalFadingEdgeEnabled(Z)V

    .line 1019
    iget v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mBottom:I

    iget v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->setFadingEdgeLength(I)V

    .line 1020
    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 7

    .prologue
    .line 1001
    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->initializeSelectorWheelIndices()V

    .line 1002
    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mSelectorIndices:[I

    .line 1003
    .local v1, selectorIndices:[I
    array-length v5, v1

    iget v6, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mTextSize:I

    mul-int v4, v5, v6

    .line 1004
    .local v4, totalTextHeight:I
    iget v5, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mBottom:I

    iget v6, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mTop:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    int-to-float v3, v5

    .line 1005
    .local v3, totalTextGapHeight:F
    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    int-to-float v2, v5

    .line 1006
    .local v2, textGapCount:F
    div-float v5, v3, v2

    const/high16 v6, 0x3f00

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mSelectorTextGapHeight:I

    .line 1007
    iget v5, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mTextSize:I

    iget v6, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mSelectorTextGapHeight:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mSelectorElementHeight:I

    .line 1010
    iget-object v5, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getBaseline()I

    move-result v5

    iget-object v6, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getTop()I

    move-result v6

    add-int v0, v5, v6

    .line 1012
    .local v0, editTextTextPosition:I
    iget v5, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mSelectorElementHeight:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v0, v5

    iput v5, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mInitialScrollOffset:I

    .line 1013
    iget v5, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mInitialScrollOffset:I

    iput v5, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mCurrentScrollOffset:I

    .line 1014
    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->updateInputTextView()V

    .line 1015
    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 4

    .prologue
    .line 924
    iget-object v3, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 925
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->getValue()I

    move-result v0

    .line 926
    .local v0, current:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mSelectorIndices:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 927
    add-int/lit8 v3, v1, -0x2

    add-int v2, v0, v3

    .line 928
    .local v2, selectorIndex:I
    iget-boolean v3, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mWrapSelectorWheel:Z

    if-eqz v3, :cond_0

    .line 929
    invoke-direct {p0, v2}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->getWrappedSelectorIndex(I)I

    move-result v2

    .line 931
    :cond_0
    iget-object v3, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mSelectorIndices:[I

    aput v2, v3, v1

    .line 932
    iget-object v3, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mSelectorIndices:[I

    aget v3, v3, v1

    invoke-direct {p0, v3}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->ensureCachedScrollSelectorValue(I)V

    .line 926
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 934
    .end local v2           #selectorIndex:I
    :cond_1
    return-void
.end method

.method private makeMeasureSpec(II)I
    .locals 5
    .parameter "measureSpec"
    .parameter "maxSize"

    .prologue
    const/high16 v3, 0x4000

    .line 882
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 893
    .end local p1
    :goto_0
    :sswitch_0
    return p1

    .line 885
    .restart local p1
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 886
    .local v1, size:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 887
    .local v0, mode:I
    sparse-switch v0, :sswitch_data_0

    .line 895
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown measure mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 891
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 893
    :sswitch_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 887
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private notifyChange(II)V
    .locals 2
    .parameter "previous"
    .parameter "current"

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mOnValueChangeListener:Lcom/zte/heartyservice/common/datatype/ZTETextPicker$OnValueChangeListener;

    if-eqz v0, :cond_0

    .line 1151
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mOnValueChangeListener:Lcom/zte/heartyservice/common/datatype/ZTETextPicker$OnValueChangeListener;

    iget v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mValue:I

    invoke-interface {v0, p0, p1, v1}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker$OnValueChangeListener;->onValueChange(Lcom/zte/heartyservice/common/datatype/ZTETextPicker;II)V

    .line 1153
    :cond_0
    return-void
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 2
    .parameter "minSize"
    .parameter "measuredSize"
    .parameter "measureSpec"

    .prologue
    .line 912
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 913
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 914
    .local v0, desiredWidth:I
    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->resolveSizeAndState(III)I

    move-result p2

    .line 916
    .end local v0           #desiredWidth:I
    .end local p2
    :cond_0
    return p2
.end method

.method private setSelectorPaintAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 977
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 978
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->invalidate()V

    .line 979
    return-void
.end method

.method private setSelectorWheelState(I)V
    .locals 4
    .parameter "selectorWheelState"

    .prologue
    const/4 v3, 0x2

    .line 985
    iput p1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mSelectorWheelState:I

    .line 986
    if-ne p1, v3, :cond_0

    .line 987
    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 990
    :cond_0
    iget-boolean v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mFlingable:Z

    if-eqz v1, :cond_1

    if-ne p1, v3, :cond_1

    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 992
    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->interrupt()V

    .line 993
    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mContext:Landroid/content/Context;

    const v2, 0x7f0a000b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 994
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 995
    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->sendAccessibilityEvent(I)V

    .line 996
    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 998
    .end local v0           #text:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private showInputControls(J)V
    .locals 2
    .parameter "animationDuration"

    .prologue
    .line 1039
    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->updateIncrementAndDecrementButtonsVisibilityState()V

    .line 1040
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1041
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1042
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1043
    return-void
.end method

.method private tryComputeMaxWidth()V
    .locals 10

    .prologue
    .line 603
    iget-boolean v8, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mComputeMaxWidth:Z

    if-nez v8, :cond_1

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 606
    :cond_1
    const/4 v4, 0x0

    .line 607
    .local v4, maxTextWidth:I
    iget-object v8, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v8, :cond_6

    .line 608
    const/4 v3, 0x0

    .line 609
    .local v3, maxDigitWidth:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    const/16 v8, 0x9

    if-gt v2, v8, :cond_3

    .line 610
    iget-object v8, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 611
    .local v1, digitWidth:F
    cmpl-float v8, v1, v3

    if-lez v8, :cond_2

    .line 612
    move v3, v1

    .line 609
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 615
    .end local v1           #digitWidth:F
    :cond_3
    const/4 v5, 0x0

    .line 616
    .local v5, numberOfDigits:I
    iget v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMaxValue:I

    .line 617
    .local v0, current:I
    :goto_2
    if-lez v0, :cond_4

    .line 618
    add-int/lit8 v5, v5, 0x1

    .line 619
    div-int/lit8 v0, v0, 0xa

    goto :goto_2

    .line 621
    :cond_4
    int-to-float v8, v5

    mul-float/2addr v8, v3

    float-to-int v4, v8

    .line 631
    .end local v0           #current:I
    .end local v3           #maxDigitWidth:F
    .end local v5           #numberOfDigits:I
    :cond_5
    iget-object v8, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v8

    iget-object v9, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v4, v8

    .line 632
    iget v8, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMaxWidth:I

    if-eq v8, v4, :cond_0

    .line 633
    iget v8, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMinWidth:I

    if-le v4, v8, :cond_8

    .line 634
    iput v4, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMaxWidth:I

    .line 638
    :goto_3
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->invalidate()V

    goto :goto_0

    .line 623
    .end local v2           #i:I
    :cond_6
    iget-object v8, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v7, v8

    .line 624
    .local v7, valueCount:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    if-ge v2, v7, :cond_5

    .line 625
    iget-object v8, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v9, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 626
    .local v6, textWidth:F
    int-to-float v8, v4

    cmpl-float v8, v6, v8

    if-lez v8, :cond_7

    .line 627
    float-to-int v4, v6

    .line 624
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 636
    .end local v6           #textWidth:F
    .end local v7           #valueCount:I
    :cond_8
    iget v8, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMinWidth:I

    iput v8, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMaxWidth:I

    goto :goto_3
.end method

.method private updateIncrementAndDecrementButtonsVisibilityState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1049
    iget-boolean v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mWrapSelectorWheel:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mValue:I

    iget v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMaxValue:I

    if-ge v0, v1, :cond_1

    .line 1050
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1054
    :cond_1
    iget-boolean v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mWrapSelectorWheel:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mValue:I

    iget v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMinValue:I

    if-le v0, v1, :cond_3

    .line 1055
    :cond_2
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1059
    :cond_3
    return-void
.end method

.method private updateInputTextView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1132
    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->displayValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1133
    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mInputText:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1137
    :goto_0
    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mInputText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1139
    iget-boolean v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mFlingable:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1140
    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mContext:Landroid/content/Context;

    const v2, 0x7f0a000c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1141
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1143
    .end local v0           #text:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1144
    return-void

    .line 1135
    :cond_1
    iget-object v2, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mInputText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->displayValues:Ljava/util/List;

    iget v3, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mValue:I

    iget v4, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMinValue:I

    sub-int/2addr v3, v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 826
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 838
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 842
    iget-object v5, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-nez v5, :cond_0

    iget v5, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mSelectorWheelState:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    .line 843
    :cond_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->getDrawingTime()J

    move-result-wide v2

    .line 844
    .local v2, drawTime:J
    const/4 v4, 0x0

    .local v4, i:I
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->getChildCount()I

    move-result v1

    .local v1, count:I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 845
    invoke-virtual {p0, v4}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 846
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v5

    if-nez v5, :cond_1

    .line 844
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 849
    :cond_1
    invoke-virtual {p0, v4}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, p1, v5, v2, v3}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_1

    .line 852
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #drawTime:J
    .end local v4           #i:I
    :cond_2
    return-void
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 809
    const v0, 0x3f666666

    return v0
.end method

.method public getDisplayValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->displayValues:Ljava/util/List;

    return-object v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 744
    iget v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMaxValue:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .prologue
    .line 711
    iget v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMinValue:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 702
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->displayValues:Ljava/util/List;

    iget v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mValue:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 804
    const v0, 0x3f666666

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 693
    iget v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mValue:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    .prologue
    .line 651
    iget-boolean v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method public initDisplayValues(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1194
    .local p1, displayValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->displayValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1195
    iput-object p1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->displayValues:Ljava/util/List;

    .line 1196
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->setMinValue(I)V

    .line 1197
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->setMaxValue(I)V

    .line 1198
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 814
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 817
    iget-boolean v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mFlingable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 819
    iget-wide v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mShowInputControlsAnimimationDuration:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->showInputControls(J)V

    .line 821
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    .line 856
    iget v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mSelectorWheelState:I

    if-nez v1, :cond_0

    .line 870
    :goto_0
    return-void

    .line 859
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 860
    .local v0, restoreCount:I
    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 862
    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getBottom()I

    move-result v2

    iget v3, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mRight:I

    iget-object v4, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getBottom()I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 863
    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 866
    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getBottom()I

    move-result v2

    iget v3, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mRight:I

    iget-object v4, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getBottom()I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 867
    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 869
    :cond_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 22
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 455
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->getMeasuredWidth()I

    move-result v18

    .line 458
    .local v18, msrdWdth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v12

    .line 459
    .local v12, inctBtnMsrdWdth:I
    sub-int v19, v18, v12

    div-int/lit8 v9, v19, 0x2

    .line 460
    .local v9, incrBtnLeft:I
    const/4 v11, 0x0

    .line 461
    .local v11, incrBtnTop:I
    add-int v10, v9, v12

    .line 462
    .local v10, incrBtnRight:I
    const/16 v8, 0x28

    .line 465
    .local v8, incrBtnBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x28

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v9, v1, v10, v2}, Landroid/widget/ImageButton;->layout(IIII)V

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v15

    .line 468
    .local v15, inptTxtMsrdWdth:I
    sub-int v19, v18, v15

    div-int/lit8 v14, v19, 0x2

    .line 469
    .local v14, inptTxtLeft:I
    const/16 v17, 0x2b

    .line 472
    .local v17, inptTxtTop:I
    add-int v16, v14, v15

    .line 473
    .local v16, inptTxtRight:I
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f09000f

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v19

    add-int/lit8 v13, v19, 0x2b

    .line 476
    .local v13, inptTxtBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const/16 v20, 0x2b

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v16

    invoke-virtual {v0, v14, v1, v2, v13}, Landroid/widget/EditText;->layout(IIII)V

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v5

    .line 479
    .local v5, decrBtnMsrdWdth:I
    sub-int v19, v18, v5

    div-int/lit8 v4, v19, 0x2

    .line 480
    .local v4, decrBtnLeft:I
    add-int/lit8 v7, v13, 0x3

    .line 482
    .local v7, decrBtnTop:I
    add-int v6, v4, v5

    .line 483
    .local v6, decrBtnRight:I
    add-int/lit8 v3, v7, 0x28

    .line 484
    .local v3, decrBtnBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v7, v6, v3}, Landroid/widget/ImageButton;->layout(IIII)V

    .line 485
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mScrollWheelAndFadingEdgesInitialized:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 486
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mScrollWheelAndFadingEdgesInitialized:Z

    .line 488
    invoke-direct/range {p0 .. p0}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->initializeSelectorWheel()V

    .line 489
    invoke-direct/range {p0 .. p0}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->initializeFadingEdges()V

    .line 491
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 496
    iget v4, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMaxWidth:I

    invoke-direct {p0, p1, v4}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->makeMeasureSpec(II)I

    move-result v2

    .line 497
    .local v2, newWidthMeasureSpec:I
    iget v4, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMaxHeight:I

    invoke-direct {p0, p2, v4}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->makeMeasureSpec(II)I

    move-result v1

    .line 498
    .local v1, newHeightMeasureSpec:I
    invoke-super {p0, v2, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 501
    iget v4, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMinWidth:I

    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->getMeasuredWidth()I

    move-result v5

    invoke-direct {p0, v4, v5, p1}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v3

    .line 502
    .local v3, widthSize:I
    iget v4, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMinHeight:I

    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->getMeasuredHeight()I

    move-result v5

    invoke-direct {p0, v4, v5, p2}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v0

    .line 503
    .local v0, heightSize:I
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090010

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->setMeasuredDimension(II)V

    .line 504
    return-void
.end method

.method public scrollBy(II)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x2

    .line 516
    iget v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mSelectorWheelState:I

    if-nez v1, :cond_1

    .line 545
    :cond_0
    :goto_0
    return-void

    .line 519
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mSelectorIndices:[I

    .line 520
    .local v0, selectorIndices:[I
    iget-boolean v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_2

    if-lez p2, :cond_2

    aget v1, v0, v3

    iget v2, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMinValue:I

    if-gt v1, v2, :cond_2

    .line 521
    iget v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mCurrentScrollOffset:I

    goto :goto_0

    .line 524
    :cond_2
    iget-boolean v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_3

    if-gez p2, :cond_3

    aget v1, v0, v3

    iget v2, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMaxValue:I

    if-lt v1, v2, :cond_3

    .line 525
    iget v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mCurrentScrollOffset:I

    goto :goto_0

    .line 528
    :cond_3
    iget v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mCurrentScrollOffset:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mCurrentScrollOffset:I

    .line 529
    :cond_4
    :goto_1
    iget v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mSelectorTextGapHeight:I

    if-le v1, v2, :cond_5

    .line 530
    iget v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mSelectorElementHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mCurrentScrollOffset:I

    .line 531
    invoke-direct {p0, v0}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->decrementSelectorIndices([I)V

    .line 532
    aget v1, v0, v3

    invoke-direct {p0, v1}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->changeCurrent(I)V

    .line 533
    iget-boolean v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_4

    aget v1, v0, v3

    iget v2, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMinValue:I

    if-gt v1, v2, :cond_4

    .line 534
    iget v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mCurrentScrollOffset:I

    goto :goto_1

    .line 537
    :cond_5
    :goto_2
    iget v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mSelectorTextGapHeight:I

    neg-int v2, v2

    if-ge v1, v2, :cond_0

    .line 538
    iget v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mSelectorElementHeight:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mCurrentScrollOffset:I

    .line 539
    invoke-direct {p0, v0}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->incrementSelectorIndices([I)V

    .line 540
    aget v1, v0, v3

    invoke-direct {p0, v1}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->changeCurrent(I)V

    .line 541
    iget-boolean v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_5

    aget v1, v0, v3

    iget v2, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMaxValue:I

    if-lt v1, v2, :cond_5

    .line 542
    iget v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mCurrentScrollOffset:I

    goto :goto_2
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 2
    .parameter "displayedValues"

    .prologue
    .line 787
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    .line 800
    :goto_0
    return-void

    .line 790
    :cond_0
    iput-object p1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 791
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 793
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mInputText:Landroid/widget/EditText;

    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 797
    :goto_1
    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->updateInputTextView()V

    .line 798
    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->initializeSelectorWheelIndices()V

    .line 799
    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->tryComputeMaxWidth()V

    goto :goto_0

    .line 795
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 508
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 509
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 510
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 511
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 512
    return-void
.end method

.method public setMaxValue(I)V
    .locals 3
    .parameter "maxValue"

    .prologue
    .line 754
    iget v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMaxValue:I

    if-ne v1, p1, :cond_0

    .line 769
    :goto_0
    return-void

    .line 757
    :cond_0
    if-gez p1, :cond_1

    .line 758
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 760
    :cond_1
    iput p1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMaxValue:I

    .line 761
    iget v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMaxValue:I

    iget v2, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mValue:I

    if-ge v1, v2, :cond_2

    .line 762
    iget v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMaxValue:I

    iput v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mValue:I

    .line 764
    :cond_2
    iget v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMaxValue:I

    iget v2, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 765
    .local v0, wrapSelectorWheel:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->setWrapSelectorWheel(Z)V

    .line 766
    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->initializeSelectorWheelIndices()V

    .line 767
    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->updateInputTextView()V

    .line 768
    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->tryComputeMaxWidth()V

    goto :goto_0

    .line 764
    .end local v0           #wrapSelectorWheel:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setMinValue(I)V
    .locals 3
    .parameter "minValue"

    .prologue
    .line 721
    iget v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMinValue:I

    if-ne v1, p1, :cond_0

    .line 736
    :goto_0
    return-void

    .line 724
    :cond_0
    if-gez p1, :cond_1

    .line 725
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "minValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 727
    :cond_1
    iput p1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMinValue:I

    .line 728
    iget v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMinValue:I

    iget v2, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mValue:I

    if-le v1, v2, :cond_2

    .line 729
    iget v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMinValue:I

    iput v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mValue:I

    .line 731
    :cond_2
    iget v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMaxValue:I

    iget v2, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 732
    .local v0, wrapSelectorWheel:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->setWrapSelectorWheel(Z)V

    .line 733
    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->initializeSelectorWheelIndices()V

    .line 734
    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->updateInputTextView()V

    .line 735
    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->tryComputeMaxWidth()V

    goto :goto_0

    .line 731
    .end local v0           #wrapSelectorWheel:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 0
    .parameter "intervalMillis"

    .prologue
    .line 684
    iput-wide p1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mLongPressUpdateInterval:J

    .line 685
    return-void
.end method

.method public setOnValueChangedListener(Lcom/zte/heartyservice/common/datatype/ZTETextPicker$OnValueChangeListener;)V
    .locals 0
    .parameter "onValueChangedListener"

    .prologue
    .line 554
    iput-object p1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mOnValueChangeListener:Lcom/zte/heartyservice/common/datatype/ZTETextPicker$OnValueChangeListener;

    .line 555
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 583
    iget v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mValue:I

    if-ne v0, p1, :cond_0

    .line 597
    :goto_0
    return-void

    .line 586
    :cond_0
    iget v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMinValue:I

    if-ge p1, v0, :cond_1

    .line 587
    iget-boolean v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_3

    iget p1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMaxValue:I

    .line 589
    :cond_1
    :goto_1
    iget v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMaxValue:I

    if-le p1, v0, :cond_2

    .line 590
    iget-boolean v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_4

    iget p1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMinValue:I

    .line 592
    :cond_2
    :goto_2
    iput p1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mValue:I

    .line 593
    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->initializeSelectorWheelIndices()V

    .line 594
    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->updateInputTextView()V

    .line 595
    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->updateIncrementAndDecrementButtonsVisibilityState()V

    .line 596
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->invalidate()V

    goto :goto_0

    .line 587
    :cond_3
    iget p1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMinValue:I

    goto :goto_1

    .line 590
    :cond_4
    iget p1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMaxValue:I

    goto :goto_2
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 2
    .parameter "wrapSelectorWheel"

    .prologue
    .line 665
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMaxValue:I

    iget v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mSelectorIndices:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 666
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Range less than selector items count."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 668
    :cond_0
    iget-boolean v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mWrapSelectorWheel:Z

    if-eq p1, v0, :cond_1

    .line 669
    iput-boolean p1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mWrapSelectorWheel:Z

    .line 670
    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->updateIncrementAndDecrementButtonsVisibilityState()V

    .line 672
    :cond_1
    return-void
.end method
