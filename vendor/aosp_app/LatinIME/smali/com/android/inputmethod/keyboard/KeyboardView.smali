.class public Lcom/android/inputmethod/keyboard/KeyboardView;
.super Landroid/view/View;
.source "KeyboardView.java"

# interfaces
.implements Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;
    }
.end annotation


# static fields
.field private static final KEY_LABEL_REFERENCE_CHAR:[C = null

.field private static final KEY_NUMERIC_HINT_LABEL_REFERENCE_CHAR:[C = null

.field private static final KEY_PREVIEW_BACKGROUND_DEFAULT_STATE:[I = null

.field private static final KEY_PREVIEW_BACKGROUND_STATE_TABLE:[[[I = null

.field private static final LABEL_ICON_MARGIN:F = 0.05f

.field private static final MAX_LABEL_RATIO:F = 0.9f

.field private static final POPUP_HINT_CHAR:Ljava/lang/String; = "\u2026"

.field private static final PREVIEW_ALPHA:I = 0xf0

.field private static final STATE_HAS_MOREKEYS:I = 0x1

.field private static final STATE_LEFT:I = 0x1

.field private static final STATE_MIDDLE:I = 0x0

.field private static final STATE_NORMAL:I = 0x0

.field private static final STATE_RIGHT:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static final sTextHeightCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTextWidthCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBackgroundDimAlpha:I

.field private final mClipRegion:Landroid/graphics/Region;

.field private final mCoordinates:[I

.field private mDelayAfterPreview:I

.field private final mDrawingHandler:Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;

.field private final mFontMetrics:Landroid/graphics/Paint$FontMetrics;

.field private mInvalidateAllKeys:Z

.field private final mInvalidatedKeys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/inputmethod/keyboard/Key;",
            ">;"
        }
    .end annotation
.end field

.field protected final mKeyBackground:Landroid/graphics/drawable/Drawable;

.field protected final mKeyBackgroundPadding:Landroid/graphics/Rect;

.field protected final mKeyDrawParams:Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;

.field private final mKeyHintLetterPadding:F

.field private final mKeyLabelHorizontalPadding:I

.field private final mKeyPopupHintLetterPadding:F

.field protected final mKeyPreviewDrawParams:Lcom/android/inputmethod/keyboard/internal/KeyPreviewDrawParams;

.field private final mKeyPreviewLayoutId:I

.field private final mKeyPreviewTexts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyShiftedLetterHintPadding:F

.field private final mKeyTextShadowRadius:F

.field protected final mKeyVisualAttributes:Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;

.field private mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

.field protected final mMoreKeysLayout:I

.field private mNeedsToDimEntireKeyboard:Z

.field private mOffscreenBuffer:Landroid/graphics/Bitmap;

.field private final mOffscreenCanvas:Landroid/graphics/Canvas;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPreviewHeight:I

.field private final mPreviewLingerTimeout:I

.field private final mPreviewOffset:I

.field private final mPreviewPlacerView:Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;

.field private mShowKeyPreviewPopup:Z

.field private final mTextBounds:Landroid/graphics/Rect;

.field protected final mVerticalCorrection:F

.field private final mWorkingRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 108
    const-class v0, Lcom/android/inputmethod/keyboard/KeyboardView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/keyboard/KeyboardView;->TAG:Ljava/lang/String;

    .line 153
    const/4 v0, 0x3

    new-array v0, v0, [[[I

    new-array v1, v6, [[I

    sget-object v2, Lcom/android/inputmethod/keyboard/KeyboardView;->EMPTY_STATE_SET:[I

    aput-object v2, v1, v4

    new-array v2, v5, [I

    const v3, 0x7f010014

    aput v3, v2, v4

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [[I

    new-array v2, v5, [I

    const v3, 0x7f010012

    aput v3, v2, v4

    aput-object v2, v1, v4

    new-array v2, v6, [I

    fill-array-data v2, :array_0

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [[I

    new-array v2, v5, [I

    const v3, 0x7f010013

    aput v3, v2, v4

    aput-object v2, v1, v4

    new-array v2, v6, [I

    fill-array-data v2, :array_1

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/inputmethod/keyboard/KeyboardView;->KEY_PREVIEW_BACKGROUND_STATE_TABLE:[[[I

    .line 172
    sget-object v0, Lcom/android/inputmethod/keyboard/KeyboardView;->KEY_PREVIEW_BACKGROUND_STATE_TABLE:[[[I

    aget-object v0, v0, v4

    aget-object v0, v0, v4

    sput-object v0, Lcom/android/inputmethod/keyboard/KeyboardView;->KEY_PREVIEW_BACKGROUND_DEFAULT_STATE:[I

    .line 193
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newSparseArray()Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/keyboard/KeyboardView;->sTextHeightCache:Landroid/util/SparseArray;

    .line 195
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newSparseArray()Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/keyboard/KeyboardView;->sTextWidthCache:Landroid/util/SparseArray;

    .line 196
    new-array v0, v5, [C

    const/16 v1, 0x4d

    aput-char v1, v0, v4

    sput-object v0, Lcom/android/inputmethod/keyboard/KeyboardView;->KEY_LABEL_REFERENCE_CHAR:[C

    .line 197
    new-array v0, v5, [C

    const/16 v1, 0x38

    aput-char v1, v0, v4

    sput-object v0, Lcom/android/inputmethod/keyboard/KeyboardView;->KEY_NUMERIC_HINT_LABEL_REFERENCE_CHAR:[C

    return-void

    .line 153
    :array_0
    .array-data 0x4
        0x12t 0x0t 0x1t 0x7ft
        0x14t 0x0t 0x1t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0x13t 0x0t 0x1t 0x7ft
        0x14t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 241
    const v0, 0x7f010001

    invoke-direct {p0, p1, p2, v0}, Lcom/android/inputmethod/keyboard/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 242
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const v8, 0x7f0f0004

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 245
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 120
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyBackgroundPadding:Landroid/graphics/Rect;

    .line 136
    new-instance v2, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;

    invoke-direct {v2}, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;-><init>()V

    iput-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyDrawParams:Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;

    .line 140
    new-array v2, v7, [I

    iput-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mCoordinates:[I

    .line 148
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newSparseArray()Landroid/util/SparseArray;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyPreviewTexts:Landroid/util/SparseArray;

    .line 149
    new-instance v2, Lcom/android/inputmethod/keyboard/internal/KeyPreviewDrawParams;

    invoke-direct {v2}, Lcom/android/inputmethod/keyboard/internal/KeyPreviewDrawParams;-><init>()V

    iput-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyPreviewDrawParams:Lcom/android/inputmethod/keyboard/internal/KeyPreviewDrawParams;

    .line 150
    iput-boolean v6, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mShowKeyPreviewPopup:Z

    .line 181
    invoke-static {}, Lcom/android/inputmethod/latin/CollectionUtils;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mInvalidatedKeys:Ljava/util/HashSet;

    .line 183
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mWorkingRect:Landroid/graphics/Rect;

    .line 186
    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    iput-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mClipRegion:Landroid/graphics/Region;

    .line 189
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    iput-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mOffscreenCanvas:Landroid/graphics/Canvas;

    .line 190
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPaint:Landroid/graphics/Paint;

    .line 191
    new-instance v2, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v2}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    iput-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 199
    new-instance v2, Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;

    invoke-direct {v2, p0}, Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;-><init>(Lcom/android/inputmethod/keyboard/KeyboardView;)V

    iput-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDrawingHandler:Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;

    .line 752
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mTextBounds:Landroid/graphics/Rect;

    .line 247
    sget-object v2, Lcom/android/inputmethod/latin/R$styleable;->KeyboardView:[I

    invoke-virtual {p1, p2, v2, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 249
    .local v1, keyboardViewAttr:Landroid/content/res/TypedArray;
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 250
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 251
    const/16 v2, 0xa

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewOffset:I

    .line 253
    const/16 v2, 0xb

    const/16 v3, 0x50

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewHeight:I

    .line 255
    const/16 v2, 0xc

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewLingerTimeout:I

    .line 257
    iget v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewLingerTimeout:I

    iput v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDelayAfterPreview:I

    .line 258
    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyLabelHorizontalPadding:I

    .line 260
    invoke-virtual {v1, v7, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyHintLetterPadding:F

    .line 262
    const/4 v2, 0x3

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyPopupHintLetterPadding:F

    .line 264
    const/4 v2, 0x4

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyShiftedLetterHintPadding:F

    .line 266
    const/4 v2, 0x5

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyTextShadowRadius:F

    .line 268
    const/4 v2, 0x6

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyPreviewLayoutId:I

    .line 270
    iget v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyPreviewLayoutId:I

    if-nez v2, :cond_0

    .line 271
    iput-boolean v4, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mShowKeyPreviewPopup:Z

    .line 273
    :cond_0
    const/16 v2, 0xd

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mVerticalCorrection:F

    .line 275
    const/16 v2, 0xe

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mMoreKeysLayout:I

    .line 277
    const/16 v2, 0xf

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mBackgroundDimAlpha:I

    .line 279
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 281
    sget-object v2, Lcom/android/inputmethod/latin/R$styleable;->Keyboard_Key:[I

    invoke-virtual {p1, p2, v2, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 283
    .local v0, keyAttr:Landroid/content/res/TypedArray;
    invoke-static {v0}, Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;->newInstance(Landroid/content/res/TypedArray;)Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyVisualAttributes:Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;

    .line 284
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 286
    new-instance v2, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;

    invoke-direct {v2, p1, p2}, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewPlacerView:Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;

    .line 287
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 288
    return-void
.end method

.method static synthetic access$000(Lcom/android/inputmethod/keyboard/KeyboardView;)Landroid/util/SparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyPreviewTexts:Landroid/util/SparseArray;

    return-object v0
.end method

.method private addKeyPreview(Landroid/widget/TextView;)V
    .locals 3
    .parameter "keyPreview"

    .prologue
    const/4 v2, 0x0

    .line 862
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->locatePreviewPlacerView()V

    .line 863
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewPlacerView:Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewPlacerView:Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;

    invoke-static {v1, v2, v2}, Lcom/android/inputmethod/keyboard/ViewLayoutUtils;->newLayoutParam(Landroid/view/ViewGroup;II)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 865
    return-void
.end method

.method private static blendAlpha(Landroid/graphics/Paint;I)V
    .locals 5
    .parameter "paint"
    .parameter "alpha"

    .prologue
    .line 291
    invoke-virtual {p0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 292
    .local v0, color:I
    invoke-virtual {p0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    mul-int/2addr v1, p1

    div-int/lit16 v1, v1, 0xff

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 294
    return-void
.end method

.method private dismissAllKeyPreviews()V
    .locals 4

    .prologue
    .line 846
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyPreviewTexts:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 847
    .local v1, pointerCount:I
    const/4 v0, 0x0

    .local v0, id:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 848
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyPreviewTexts:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 849
    .local v2, previewText:Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 850
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 847
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 853
    .end local v2           #previewText:Landroid/widget/TextView;
    :cond_1
    invoke-static {}, Lcom/android/inputmethod/keyboard/PointerTracker;->setReleasedKeyGraphicsToAllKeys()V

    .line 854
    return-void
.end method

.method private static drawHorizontalLine(Landroid/graphics/Canvas;FFILandroid/graphics/Paint;)V
    .locals 6
    .parameter "canvas"
    .parameter "y"
    .parameter "w"
    .parameter "color"
    .parameter "paint"

    .prologue
    .line 794
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 795
    const/high16 v0, 0x3f80

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 796
    invoke-virtual {p4, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 797
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 798
    return-void
.end method

.method protected static drawIcon(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 3
    .parameter "canvas"
    .parameter "icon"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x0

    .line 786
    int-to-float v0, p2

    int-to-float v1, p3

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 787
    invoke-virtual {p1, v2, v2, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 788
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 789
    neg-int v0, p2

    int-to-float v0, v0

    neg-int v1, p3

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 790
    return-void
.end method

.method private static drawRectangle(Landroid/graphics/Canvas;FFFFILandroid/graphics/Paint;)V
    .locals 6
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"
    .parameter "color"
    .parameter "paint"

    .prologue
    const/4 v1, 0x0

    .line 810
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p6, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 811
    const/high16 v0, 0x3f80

    invoke-virtual {p6, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 812
    invoke-virtual {p6, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 813
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    move-object v0, p0

    move v2, v1

    move v3, p3

    move v4, p4

    move-object v5, p6

    .line 814
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 815
    neg-float v0, p1

    neg-float v1, p2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 816
    return-void
.end method

.method private static drawVerticalLine(Landroid/graphics/Canvas;FFILandroid/graphics/Paint;)V
    .locals 6
    .parameter "canvas"
    .parameter "x"
    .parameter "h"
    .parameter "color"
    .parameter "paint"

    .prologue
    .line 802
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 803
    const/high16 v0, 0x3f80

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 804
    invoke-virtual {p4, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 805
    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p1

    move v4, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 806
    return-void
.end method

.method private freeOffscreenBuffer()V
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mOffscreenBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mOffscreenBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 398
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mOffscreenBuffer:Landroid/graphics/Bitmap;

    .line 400
    :cond_0
    return-void
.end method

.method private static getCharGeometryCacheKey(CLandroid/graphics/Paint;)I
    .locals 4
    .parameter "referenceChar"
    .parameter "paint"

    .prologue
    .line 737
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    float-to-int v2, v3

    .line 738
    .local v2, labelSize:I
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    .line 739
    .local v1, face:Landroid/graphics/Typeface;
    shl-int/lit8 v0, p0, 0xf

    .line 740
    .local v0, codePointOffset:I
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    if-ne v1, v3, :cond_0

    .line 741
    add-int v3, v0, v2

    .line 747
    :goto_0
    return v3

    .line 742
    :cond_0
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    if-ne v1, v3, :cond_1

    .line 743
    add-int v3, v0, v2

    add-int/lit16 v3, v3, 0x1000

    goto :goto_0

    .line 744
    :cond_1
    sget-object v3, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    if-ne v1, v3, :cond_2

    .line 745
    add-int v3, v0, v2

    add-int/lit16 v3, v3, 0x2000

    goto :goto_0

    .line 747
    :cond_2
    add-int v3, v0, v2

    goto :goto_0
.end method

.method private getCharHeight([CLandroid/graphics/Paint;)F
    .locals 6
    .parameter "referenceChar"
    .parameter "paint"

    .prologue
    const/4 v5, 0x0

    .line 755
    aget-char v3, p1, v5

    invoke-static {v3, p2}, Lcom/android/inputmethod/keyboard/KeyboardView;->getCharGeometryCacheKey(CLandroid/graphics/Paint;)I

    move-result v2

    .line 756
    .local v2, key:I
    sget-object v3, Lcom/android/inputmethod/keyboard/KeyboardView;->sTextHeightCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 757
    .local v0, cachedValue:Ljava/lang/Float;
    if-eqz v0, :cond_0

    .line 758
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 763
    :goto_0
    return v1

    .line 760
    :cond_0
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, p1, v5, v3, v4}, Landroid/graphics/Paint;->getTextBounds([CIILandroid/graphics/Rect;)V

    .line 761
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v1, v3

    .line 762
    .local v1, height:F
    sget-object v3, Lcom/android/inputmethod/keyboard/KeyboardView;->sTextHeightCache:Landroid/util/SparseArray;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private getCharWidth([CLandroid/graphics/Paint;)F
    .locals 6
    .parameter "referenceChar"
    .parameter "paint"

    .prologue
    const/4 v5, 0x0

    .line 767
    aget-char v3, p1, v5

    invoke-static {v3, p2}, Lcom/android/inputmethod/keyboard/KeyboardView;->getCharGeometryCacheKey(CLandroid/graphics/Paint;)I

    move-result v1

    .line 768
    .local v1, key:I
    sget-object v3, Lcom/android/inputmethod/keyboard/KeyboardView;->sTextWidthCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 769
    .local v0, cachedValue:Ljava/lang/Float;
    if-eqz v0, :cond_0

    .line 770
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 775
    :goto_0
    return v2

    .line 772
    :cond_0
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, p1, v5, v3, v4}, Landroid/graphics/Paint;->getTextBounds([CIILandroid/graphics/Rect;)V

    .line 773
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v2, v3

    .line 774
    .local v2, width:F
    sget-object v3, Lcom/android/inputmethod/keyboard/KeyboardView;->sTextWidthCache:Landroid/util/SparseArray;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private getKeyPreviewText(I)Landroid/widget/TextView;
    .locals 6
    .parameter "pointerId"

    .prologue
    .line 831
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyPreviewTexts:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 832
    .local v1, previewText:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 842
    .end local v1           #previewText:Landroid/widget/TextView;
    .local v2, previewText:Landroid/widget/TextView;
    :goto_0
    return-object v2

    .line 835
    .end local v2           #previewText:Landroid/widget/TextView;
    .restart local v1       #previewText:Landroid/widget/TextView;
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 836
    .local v0, context:Landroid/content/Context;
    iget v3, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyPreviewLayoutId:I

    if-eqz v3, :cond_1

    .line 837
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iget v4, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyPreviewLayoutId:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .end local v1           #previewText:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 841
    .restart local v1       #previewText:Landroid/widget/TextView;
    :goto_1
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyPreviewTexts:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v2, v1

    .line 842
    .end local v1           #previewText:Landroid/widget/TextView;
    .restart local v2       #previewText:Landroid/widget/TextView;
    goto :goto_0

    .line 839
    .end local v2           #previewText:Landroid/widget/TextView;
    .restart local v1       #previewText:Landroid/widget/TextView;
    :cond_1
    new-instance v1, Landroid/widget/TextView;

    .end local v1           #previewText:Landroid/widget/TextView;
    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .restart local v1       #previewText:Landroid/widget/TextView;
    goto :goto_1
.end method

.method private isSpecialChar(Ljava/lang/String;)Z
    .locals 3
    .parameter "label"

    .prologue
    const/4 v1, 0x0

    .line 524
    const/4 v0, 0x0

    .line 525
    .local v0, c:C
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 526
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 528
    :cond_0
    sparse-switch v0, :sswitch_data_0

    .line 543
    :goto_0
    return v1

    .line 541
    :sswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 528
    :sswitch_data_0
    .sparse-switch
        0x981 -> :sswitch_0
        0x982 -> :sswitch_0
        0x9be -> :sswitch_0
        0x9bf -> :sswitch_0
        0x9c0 -> :sswitch_0
        0x9c1 -> :sswitch_0
        0x9c2 -> :sswitch_0
        0x9c3 -> :sswitch_0
        0x9c7 -> :sswitch_0
        0x9c8 -> :sswitch_0
        0x9cb -> :sswitch_0
        0x9cc -> :sswitch_0
    .end sparse-switch
.end method

.method private locatePreviewPlacerView()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 868
    iget-object v6, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewPlacerView:Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 897
    :cond_0
    :goto_0
    return-void

    .line 871
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 872
    .local v4, width:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 873
    .local v1, height:I
    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    .line 877
    const/4 v6, 0x2

    new-array v3, v6, [I

    .line 878
    .local v3, viewOrigin:[I
    invoke-virtual {p0, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 879
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 880
    .local v0, dm:Landroid/util/DisplayMetrics;
    aget v6, v3, v8

    iget v7, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v7, v7, 0x4

    if-lt v6, v7, :cond_0

    .line 884
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 885
    .local v2, rootView:Landroid/view/View;
    if-nez v2, :cond_2

    .line 886
    sget-object v6, Lcom/android/inputmethod/keyboard/KeyboardView;->TAG:Ljava/lang/String;

    const-string v7, "Cannot find root view"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 889
    :cond_2
    const v6, 0x1020002

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 891
    .local v5, windowContentView:Landroid/view/ViewGroup;
    if-nez v5, :cond_3

    .line 892
    sget-object v6, Lcom/android/inputmethod/keyboard/KeyboardView;->TAG:Ljava/lang/String;

    const-string v7, "Cannot find android.R.id.content view to add PreviewPlacerView"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 894
    :cond_3
    iget-object v6, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewPlacerView:Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 895
    iget-object v6, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewPlacerView:Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;

    const/4 v7, 0x0

    aget v7, v3, v7

    aget v8, v3, v8

    invoke-virtual {v6, v7, v8, v4, v1}, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->setKeyboardViewGeometry(IIII)V

    goto :goto_0
.end method

.method private maybeAllocateOffscreenBuffer()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 381
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 382
    .local v1, width:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 383
    .local v0, height:I
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 392
    :cond_0
    :goto_0
    return v2

    .line 386
    :cond_1
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mOffscreenBuffer:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mOffscreenBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v3, v1, :cond_2

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mOffscreenBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq v3, v0, :cond_0

    .line 390
    :cond_2
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->freeOffscreenBuffer()V

    .line 391
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mOffscreenBuffer:Landroid/graphics/Bitmap;

    .line 392
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private onDrawKey(Lcom/android/inputmethod/keyboard/Key;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 7
    .parameter "key"
    .parameter "canvas"
    .parameter "paint"

    .prologue
    .line 479
    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/Key;->getDrawX()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    add-int v1, v5, v6

    .line 480
    .local v1, keyDrawX:I
    iget v5, p1, Lcom/android/inputmethod/keyboard/Key;->mY:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    add-int v2, v5, v6

    .line 481
    .local v2, keyDrawY:I
    int-to-float v5, v1

    int-to-float v6, v2

    invoke-virtual {p2, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 483
    iget-object v5, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    iget v5, v5, Lcom/android/inputmethod/keyboard/Keyboard;->mMostCommonKeyHeight:I

    iget-object v6, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    iget v6, v6, Lcom/android/inputmethod/keyboard/Keyboard;->mVerticalGap:I

    sub-int v3, v5, v6

    .line 484
    .local v3, keyHeight:I
    iget-object v0, p1, Lcom/android/inputmethod/keyboard/Key;->mKeyVisualAttributes:Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;

    .line 485
    .local v0, attr:Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;
    iget-object v5, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyDrawParams:Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;

    invoke-virtual {v5, v3, v0}, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mayCloneAndUpdateParams(ILcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;)Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;

    move-result-object v4

    .line 486
    .local v4, params:Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;
    const/16 v5, 0xff

    iput v5, v4, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mAnimAlpha:I

    .line 488
    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/Key;->isSpacer()Z

    move-result v5

    if-nez v5, :cond_0

    .line 489
    invoke-virtual {p0, p1, p2}, Lcom/android/inputmethod/keyboard/KeyboardView;->onDrawKeyBackground(Lcom/android/inputmethod/keyboard/Key;Landroid/graphics/Canvas;)V

    .line 491
    :cond_0
    invoke-virtual {p0, p1, p2, p3, v4}, Lcom/android/inputmethod/keyboard/KeyboardView;->onDrawKeyTopVisuals(Lcom/android/inputmethod/keyboard/Key;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;)V

    .line 493
    neg-int v5, v1

    int-to-float v5, v5

    neg-int v6, v2

    int-to-float v6, v6

    invoke-virtual {p2, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 494
    return-void
.end method

.method private onDrawKeyboard(Landroid/graphics/Canvas;)V
    .locals 19
    .parameter "canvas"

    .prologue
    .line 403
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    if-nez v2, :cond_0

    .line 468
    :goto_0
    return-void

    .line 405
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v16

    .line 406
    .local v16, width:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 407
    .local v11, height:I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPaint:Landroid/graphics/Paint;

    .line 410
    .local v7, paint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mInvalidateAllKeys:Z

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mInvalidatedKeys:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_1
    const/4 v10, 0x1

    .line 411
    .local v10, drawAllKeys:Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v13

    .line 413
    .local v13, isHardwareAccelerated:Z
    if-nez v10, :cond_2

    if-eqz v13, :cond_7

    .line 414
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mClipRegion:Landroid/graphics/Region;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v3, v4, v0, v11}, Landroid/graphics/Region;->set(IIII)Z

    .line 426
    :cond_3
    if-nez v13, :cond_4

    .line 427
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mClipRegion:Landroid/graphics/Region;

    sget-object v3, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->clipRegion(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 429
    const/high16 v2, -0x100

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 430
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 431
    .local v9, background:Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_4

    .line 432
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 437
    .end local v9           #background:Landroid/graphics/drawable/Drawable;
    :cond_4
    if-nez v10, :cond_5

    if-eqz v13, :cond_9

    .line 439
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    iget-object v8, v2, Lcom/android/inputmethod/keyboard/Keyboard;->mKeys:[Lcom/android/inputmethod/keyboard/Key;

    .local v8, arr$:[Lcom/android/inputmethod/keyboard/Key;
    array-length v15, v8

    .local v15, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_2
    if-ge v12, v15, :cond_b

    aget-object v14, v8, v12

    .line 440
    .local v14, key:Lcom/android/inputmethod/keyboard/Key;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v14, v1, v7}, Lcom/android/inputmethod/keyboard/KeyboardView;->onDrawKey(Lcom/android/inputmethod/keyboard/Key;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 439
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 410
    .end local v8           #arr$:[Lcom/android/inputmethod/keyboard/Key;
    .end local v10           #drawAllKeys:Z
    .end local v12           #i$:I
    .end local v13           #isHardwareAccelerated:Z
    .end local v14           #key:Lcom/android/inputmethod/keyboard/Key;
    .end local v15           #len$:I
    :cond_6
    const/4 v10, 0x0

    goto :goto_1

    .line 416
    .restart local v10       #drawAllKeys:Z
    .restart local v13       #isHardwareAccelerated:Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mClipRegion:Landroid/graphics/Region;

    invoke-virtual {v2}, Landroid/graphics/Region;->setEmpty()V

    .line 417
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mInvalidatedKeys:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_8
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/inputmethod/keyboard/Key;

    .line 418
    .restart local v14       #key:Lcom/android/inputmethod/keyboard/Key;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    invoke-virtual {v2, v14}, Lcom/android/inputmethod/keyboard/Keyboard;->hasKey(Lcom/android/inputmethod/keyboard/Key;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 419
    iget v2, v14, Lcom/android/inputmethod/keyboard/Key;->mX:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    add-int v17, v2, v3

    .line 420
    .local v17, x:I
    iget v2, v14, Lcom/android/inputmethod/keyboard/Key;->mY:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int v18, v2, v3

    .line 421
    .local v18, y:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mWorkingRect:Landroid/graphics/Rect;

    iget v3, v14, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    add-int v3, v3, v17

    iget v4, v14, Lcom/android/inputmethod/keyboard/Key;->mHeight:I

    add-int v4, v4, v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 422
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mClipRegion:Landroid/graphics/Region;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mWorkingRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    goto :goto_3

    .line 444
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v14           #key:Lcom/android/inputmethod/keyboard/Key;
    .end local v17           #x:I
    .end local v18           #y:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mInvalidatedKeys:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12       #i$:Ljava/util/Iterator;
    :cond_a
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/inputmethod/keyboard/Key;

    .line 445
    .restart local v14       #key:Lcom/android/inputmethod/keyboard/Key;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    invoke-virtual {v2, v14}, Lcom/android/inputmethod/keyboard/Keyboard;->hasKey(Lcom/android/inputmethod/keyboard/Key;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 446
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v14, v1, v7}, Lcom/android/inputmethod/keyboard/KeyboardView;->onDrawKey(Lcom/android/inputmethod/keyboard/Key;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_4

    .line 452
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v14           #key:Lcom/android/inputmethod/keyboard/Key;
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mNeedsToDimEntireKeyboard:Z

    if-eqz v2, :cond_c

    .line 453
    const/high16 v2, -0x100

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 454
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mBackgroundDimAlpha:I

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 456
    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v16

    int-to-float v5, v0

    int-to-float v6, v11

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 466
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mInvalidatedKeys:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 467
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mInvalidateAllKeys:Z

    goto/16 :goto_0
.end method


# virtual methods
.method public cancelAllMessages()V
    .locals 1

    .prologue
    .line 827
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDrawingHandler:Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;->cancelAllMessages()V

    .line 828
    return-void
.end method

.method public closing()V
    .locals 1

    .prologue
    .line 1038
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->dismissAllKeyPreviews()V

    .line 1039
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->cancelAllMessages()V

    .line 1041
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mInvalidateAllKeys:Z

    .line 1042
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 1043
    return-void
.end method

.method public dimEntireKeyboard(Z)V
    .locals 2
    .parameter "dimmed"

    .prologue
    .line 471
    iget-boolean v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mNeedsToDimEntireKeyboard:Z

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 472
    .local v0, needsRedrawing:Z
    :goto_0
    iput-boolean p1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mNeedsToDimEntireKeyboard:Z

    .line 473
    if-eqz v0, :cond_0

    .line 474
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->invalidateAllKeys()V

    .line 476
    :cond_0
    return-void

    .line 471
    .end local v0           #needsRedrawing:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dismissGestureFloatingPreviewText()V
    .locals 1

    .prologue
    .line 905
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->locatePreviewPlacerView()V

    .line 906
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewPlacerView:Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->dismissGestureFloatingPreviewText()V

    .line 907
    return-void
.end method

.method public dismissKeyPreview(Lcom/android/inputmethod/keyboard/PointerTracker;)V
    .locals 3
    .parameter "tracker"

    .prologue
    .line 858
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDrawingHandler:Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;

    iget v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDelayAfterPreview:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;->dismissKeyPreview(JLcom/android/inputmethod/keyboard/PointerTracker;)V

    .line 859
    return-void
.end method

.method public dismissMoreKeysPanel()Z
    .locals 1

    .prologue
    .line 1047
    const/4 v0, 0x0

    return v0
.end method

.method protected drawKeyPopupHint(Lcom/android/inputmethod/keyboard/Key;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;)V
    .locals 9
    .parameter "key"
    .parameter "canvas"
    .parameter "paint"
    .parameter "params"

    .prologue
    const v8, -0x3f7f8000

    .line 717
    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/Key;->getDrawWidth()I

    move-result v3

    .line 718
    .local v3, keyWidth:I
    iget v2, p1, Lcom/android/inputmethod/keyboard/Key;->mHeight:I

    .line 720
    .local v2, keyHeight:I
    iget-object v5, p4, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p3, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 721
    iget v5, p4, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mHintLetterSize:I

    int-to-float v5, v5

    invoke-virtual {p3, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 722
    iget v5, p4, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mHintLabelColor:I

    invoke-virtual {p3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 723
    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p3, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 724
    int-to-float v5, v3

    iget v6, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyHintLetterPadding:F

    sub-float/2addr v5, v6

    sget-object v6, Lcom/android/inputmethod/keyboard/KeyboardView;->KEY_LABEL_REFERENCE_CHAR:[C

    invoke-direct {p0, v6, p3}, Lcom/android/inputmethod/keyboard/KeyboardView;->getCharWidth([CLandroid/graphics/Paint;)F

    move-result v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    sub-float v0, v5, v6

    .line 726
    .local v0, hintX:F
    int-to-float v5, v2

    iget v6, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyPopupHintLetterPadding:F

    sub-float v1, v5, v6

    .line 727
    .local v1, hintY:F
    const-string v5, "\u2026"

    invoke-virtual {p2, v5, v0, v1, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 729
    sget-boolean v5, Lcom/android/inputmethod/latin/LatinImeLogger;->sVISUALDEBUG:Z

    if-eqz v5, :cond_0

    .line 730
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 731
    .local v4, line:Landroid/graphics/Paint;
    float-to-int v5, v1

    int-to-float v5, v5

    int-to-float v6, v3

    invoke-static {p2, v5, v6, v8, v4}, Lcom/android/inputmethod/keyboard/KeyboardView;->drawHorizontalLine(Landroid/graphics/Canvas;FFILandroid/graphics/Paint;)V

    .line 732
    float-to-int v5, v0

    int-to-float v5, v5

    int-to-float v6, v2

    invoke-static {p2, v5, v6, v8, v4}, Lcom/android/inputmethod/keyboard/KeyboardView;->drawVerticalLine(Landroid/graphics/Canvas;FFILandroid/graphics/Paint;)V

    .line 734
    .end local v4           #line:Landroid/graphics/Paint;
    :cond_0
    return-void
.end method

.method public getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    return-object v0
.end method

.method public getLabelWidth(Ljava/lang/String;Landroid/graphics/Paint;)F
    .locals 3
    .parameter "label"
    .parameter "paint"

    .prologue
    .line 780
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, p1, v0, v1, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 781
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public invalidateAllKeys()V
    .locals 1

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mInvalidatedKeys:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1016
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mInvalidateAllKeys:Z

    .line 1017
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1018
    return-void
.end method

.method public invalidateKey(Lcom/android/inputmethod/keyboard/Key;)V
    .locals 4
    .parameter "key"

    .prologue
    .line 1029
    iget-boolean v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mInvalidateAllKeys:Z

    if-eqz v2, :cond_1

    .line 1035
    :cond_0
    :goto_0
    return-void

    .line 1030
    :cond_1
    if-eqz p1, :cond_0

    .line 1031
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mInvalidatedKeys:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1032
    iget v2, p1, Lcom/android/inputmethod/keyboard/Key;->mX:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    add-int v0, v2, v3

    .line 1033
    .local v0, x:I
    iget v2, p1, Lcom/android/inputmethod/keyboard/Key;->mY:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int v1, v2, v3

    .line 1034
    .local v1, y:I
    iget v2, p1, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    add-int/2addr v2, v0

    iget v3, p1, Lcom/android/inputmethod/keyboard/Key;->mHeight:I

    add-int/2addr v3, v1

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0
.end method

.method public isKeyPreviewPopupEnabled()Z
    .locals 1

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mShowKeyPreviewPopup:Z

    return v0
.end method

.method public newDefaultLabelPaint()Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 819
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 820
    .local v0, paint:Landroid/graphics/Paint;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 821
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyDrawParams:Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;

    iget-object v1, v1, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 822
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyDrawParams:Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;

    iget v1, v1, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mLabelSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 823
    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1057
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1058
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->closing()V

    .line 1059
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewPlacerView:Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1060
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->freeOffscreenBuffer()V

    .line 1061
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 362
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 363
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 364
    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/KeyboardView;->onDrawKeyboard(Landroid/graphics/Canvas;)V

    .line 378
    :goto_0
    return-void

    .line 368
    :cond_0
    iget-boolean v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mInvalidateAllKeys:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mInvalidatedKeys:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    :cond_1
    move v0, v1

    .line 369
    .local v0, bufferNeedsUpdates:Z
    :goto_1
    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mOffscreenBuffer:Landroid/graphics/Bitmap;

    if-nez v2, :cond_4

    .line 370
    :cond_2
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->maybeAllocateOffscreenBuffer()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 371
    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mInvalidateAllKeys:Z

    .line 373
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mOffscreenCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mOffscreenBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 375
    :cond_3
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mOffscreenCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/KeyboardView;->onDrawKeyboard(Landroid/graphics/Canvas;)V

    .line 377
    :cond_4
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mOffscreenBuffer:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 368
    .end local v0           #bufferNeedsUpdates:Z
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onDrawKeyBackground(Lcom/android/inputmethod/keyboard/Key;Landroid/graphics/Canvas;)V
    .locals 16
    .parameter "key"
    .parameter "canvas"

    .prologue
    .line 498
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyBackgroundPadding:Landroid/graphics/Rect;

    .line 499
    .local v15, padding:Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/keyboard/Key;->getDrawWidth()I

    move-result v1

    iget v2, v15, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v15, Landroid/graphics/Rect;->right:I

    add-int v10, v1, v2

    .line 500
    .local v10, bgWidth:I
    move-object/from16 v0, p1

    iget v1, v0, Lcom/android/inputmethod/keyboard/Key;->mHeight:I

    iget v2, v15, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, v15, Landroid/graphics/Rect;->bottom:I

    add-int v9, v1, v2

    .line 501
    .local v9, bgHeight:I
    iget v1, v15, Landroid/graphics/Rect;->left:I

    neg-int v11, v1

    .line 502
    .local v11, bgX:I
    iget v1, v15, Landroid/graphics/Rect;->top:I

    neg-int v12, v1

    .line 503
    .local v12, bgY:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/keyboard/Key;->getCurrentDrawableState()[I

    move-result-object v14

    .line 504
    .local v14, drawableState:[I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 505
    .local v8, background:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8, v14}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 506
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    .line 507
    .local v13, bounds:Landroid/graphics/Rect;
    iget v1, v13, Landroid/graphics/Rect;->right:I

    if-ne v10, v1, :cond_0

    iget v1, v13, Landroid/graphics/Rect;->bottom:I

    if-eq v9, v1, :cond_1

    .line 508
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2, v10, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 510
    :cond_1
    int-to-float v1, v11

    int-to-float v2, v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 511
    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 512
    sget-boolean v1, Lcom/android/inputmethod/latin/LatinImeLogger;->sVISUALDEBUG:Z

    if-eqz v1, :cond_2

    .line 513
    const/4 v2, 0x0

    const/4 v3, 0x0

    int-to-float v4, v10

    int-to-float v5, v9

    const/high16 v6, -0x7f40

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v1, p2

    invoke-static/range {v1 .. v7}, Lcom/android/inputmethod/keyboard/KeyboardView;->drawRectangle(Landroid/graphics/Canvas;FFFFILandroid/graphics/Paint;)V

    .line 515
    :cond_2
    neg-int v1, v11

    int-to-float v1, v1

    neg-int v2, v12

    int-to-float v2, v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 516
    return-void
.end method

.method protected onDrawKeyTopVisuals(Lcom/android/inputmethod/keyboard/Key;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;)V
    .locals 37
    .parameter "key"
    .parameter "canvas"
    .parameter "paint"
    .parameter "params"

    .prologue
    .line 549
    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/keyboard/Key;->getDrawWidth()I

    move-result v31

    .line 550
    .local v31, keyWidth:I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/inputmethod/keyboard/Key;->mHeight:I

    move/from16 v30, v0

    .line 551
    .local v30, keyHeight:I
    move/from16 v0, v31

    int-to-float v2, v0

    const/high16 v4, 0x3f00

    mul-float v28, v2, v4

    .line 552
    .local v28, centerX:F
    move/from16 v0, v30

    int-to-float v2, v0

    const/high16 v4, 0x3f00

    mul-float v29, v2, v4

    .line 554
    .local v29, centerY:F
    sget-boolean v2, Lcom/android/inputmethod/latin/LatinImeLogger;->sVISUALDEBUG:Z

    if-eqz v2, :cond_0

    .line 555
    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v31

    int-to-float v5, v0

    move/from16 v0, v30

    int-to-float v6, v0

    const v7, -0x7fffff40

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v2, p2

    invoke-static/range {v2 .. v8}, Lcom/android/inputmethod/keyboard/KeyboardView;->drawRectangle(Landroid/graphics/Canvas;FFFFILandroid/graphics/Paint;)V

    .line 559
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    iget-object v2, v2, Lcom/android/inputmethod/keyboard/Keyboard;->mIconsSet:Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;

    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mAnimAlpha:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Lcom/android/inputmethod/keyboard/Key;->getIcon(Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 560
    .local v9, icon:Landroid/graphics/drawable/Drawable;
    move/from16 v6, v28

    .line 561
    .local v6, positionX:F
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/Key;->mLabel:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 562
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/inputmethod/keyboard/Key;->mLabel:Ljava/lang/String;

    .line 563
    .local v3, label:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/Key;->selectTypeface(Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;)Landroid/graphics/Typeface;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 566
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/Key;->selectTextSize(Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;)I

    move-result v36

    .line 568
    .local v36, tempSize:I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/Key;->mLabel:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/inputmethod/keyboard/KeyboardView;->isSpecialChar(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 569
    move/from16 v34, v36

    .line 575
    .local v34, labelSize:I
    :goto_0
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/Key;->selectTextSize(Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 576
    sget-object v2, Lcom/android/inputmethod/keyboard/KeyboardView;->KEY_LABEL_REFERENCE_CHAR:[C

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v2, v1}, Lcom/android/inputmethod/keyboard/KeyboardView;->getCharHeight([CLandroid/graphics/Paint;)F

    move-result v32

    .line 577
    .local v32, labelCharHeight:F
    sget-object v2, Lcom/android/inputmethod/keyboard/KeyboardView;->KEY_LABEL_REFERENCE_CHAR:[C

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v2, v1}, Lcom/android/inputmethod/keyboard/KeyboardView;->getCharWidth([CLandroid/graphics/Paint;)F

    move-result v33

    .line 580
    .local v33, labelCharWidth:F
    const/high16 v2, 0x4000

    div-float v2, v32, v2

    add-float v7, v29, v2

    .line 583
    .local v7, baseline:F
    const/16 v35, 0x0

    .line 584
    .local v35, labelWidth:F
    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/keyboard/Key;->isAlignLeft()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 585
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyLabelHorizontalPadding:I

    int-to-float v6, v2

    .line 586
    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 608
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/keyboard/Key;->needsXScale()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 609
    const/high16 v2, 0x3f80

    move/from16 v0, v31

    int-to-float v4, v0

    const v5, 0x3f666666

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v1}, Lcom/android/inputmethod/keyboard/KeyboardView;->getLabelWidth(Ljava/lang/String;Landroid/graphics/Paint;)F

    move-result v5

    div-float/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 613
    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/Key;->selectTextColor(Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 614
    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/keyboard/Key;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 616
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyTextShadowRadius:F

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p4

    iget v8, v0, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mTextShadowColor:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v4, v5, v8}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 621
    :goto_2
    move-object/from16 v0, p4

    iget v2, v0, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mAnimAlpha:I

    move-object/from16 v0, p3

    invoke-static {v0, v2}, Lcom/android/inputmethod/keyboard/KeyboardView;->blendAlpha(Landroid/graphics/Paint;I)V

    .line 622
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v2, p2

    move-object/from16 v8, p3

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 624
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v4, v5, v8}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 625
    const/high16 v2, 0x3f80

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 627
    if-eqz v9, :cond_2

    .line 628
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    .line 629
    .local v12, iconWidth:I
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    .line 630
    .local v13, iconHeight:I
    sub-int v2, v30, v13

    div-int/lit8 v11, v2, 0x2

    .line 631
    .local v11, iconY:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/keyboard/Key;->hasLabelWithIconLeft()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 632
    const/high16 v2, 0x4000

    div-float v2, v35, v2

    sub-float v2, v28, v2

    float-to-int v10, v2

    .local v10, iconX:I
    move-object/from16 v8, p2

    .line 633
    invoke-static/range {v8 .. v13}, Lcom/android/inputmethod/keyboard/KeyboardView;->drawIcon(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 640
    .end local v10           #iconX:I
    .end local v11           #iconY:I
    .end local v12           #iconWidth:I
    .end local v13           #iconHeight:I
    :cond_2
    :goto_3
    sget-boolean v2, Lcom/android/inputmethod/latin/LatinImeLogger;->sVISUALDEBUG:Z

    if-eqz v2, :cond_3

    .line 641
    new-instance v26, Landroid/graphics/Paint;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/Paint;-><init>()V

    .line 642
    .local v26, line:Landroid/graphics/Paint;
    move/from16 v0, v31

    int-to-float v2, v0

    const v4, -0x3fff8000

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-static {v0, v7, v2, v4, v1}, Lcom/android/inputmethod/keyboard/KeyboardView;->drawHorizontalLine(Landroid/graphics/Canvas;FFILandroid/graphics/Paint;)V

    .line 643
    move/from16 v0, v30

    int-to-float v2, v0

    const v4, -0x3f7fff80

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-static {v0, v6, v2, v4, v1}, Lcom/android/inputmethod/keyboard/KeyboardView;->drawVerticalLine(Landroid/graphics/Canvas;FFILandroid/graphics/Paint;)V

    .line 648
    .end local v3           #label:Ljava/lang/String;
    .end local v7           #baseline:F
    .end local v26           #line:Landroid/graphics/Paint;
    .end local v32           #labelCharHeight:F
    .end local v33           #labelCharWidth:F
    .end local v34           #labelSize:I
    .end local v35           #labelWidth:F
    .end local v36           #tempSize:I
    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/Key;->mHintLabel:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 649
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/inputmethod/keyboard/Key;->mHintLabel:Ljava/lang/String;

    .line 650
    .local v15, hintLabel:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/Key;->selectHintTextSize(Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 651
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/Key;->selectHintTextColor(Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 652
    move-object/from16 v0, p4

    iget v2, v0, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mAnimAlpha:I

    move-object/from16 v0, p3

    invoke-static {v0, v2}, Lcom/android/inputmethod/keyboard/KeyboardView;->blendAlpha(Landroid/graphics/Paint;I)V

    .line 654
    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/keyboard/Key;->hasHintLabel()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 658
    sget-object v2, Lcom/android/inputmethod/keyboard/KeyboardView;->KEY_LABEL_REFERENCE_CHAR:[C

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v2, v1}, Lcom/android/inputmethod/keyboard/KeyboardView;->getCharWidth([CLandroid/graphics/Paint;)F

    move-result v2

    const/high16 v4, 0x4000

    mul-float/2addr v2, v4

    add-float v18, v6, v2

    .line 659
    .local v18, hintX:F
    sget-object v2, Lcom/android/inputmethod/keyboard/KeyboardView;->KEY_LABEL_REFERENCE_CHAR:[C

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v2, v1}, Lcom/android/inputmethod/keyboard/KeyboardView;->getCharHeight([CLandroid/graphics/Paint;)F

    move-result v2

    const/high16 v4, 0x4000

    div-float/2addr v2, v4

    add-float v19, v29, v2

    .line 660
    .local v19, hintY:F
    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 675
    :goto_4
    const/16 v16, 0x0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v17

    move-object/from16 v14, p2

    move-object/from16 v20, p3

    invoke-virtual/range {v14 .. v20}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 677
    sget-boolean v2, Lcom/android/inputmethod/latin/LatinImeLogger;->sVISUALDEBUG:Z

    if-eqz v2, :cond_4

    .line 678
    new-instance v26, Landroid/graphics/Paint;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/Paint;-><init>()V

    .line 679
    .restart local v26       #line:Landroid/graphics/Paint;
    move/from16 v0, v19

    float-to-int v2, v0

    int-to-float v2, v2

    move/from16 v0, v31

    int-to-float v4, v0

    const v5, -0x3f7f8000

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-static {v0, v2, v4, v5, v1}, Lcom/android/inputmethod/keyboard/KeyboardView;->drawHorizontalLine(Landroid/graphics/Canvas;FFILandroid/graphics/Paint;)V

    .line 680
    move/from16 v0, v18

    float-to-int v2, v0

    int-to-float v2, v2

    move/from16 v0, v30

    int-to-float v4, v0

    const v5, -0x3f7f8000

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-static {v0, v2, v4, v5, v1}, Lcom/android/inputmethod/keyboard/KeyboardView;->drawVerticalLine(Landroid/graphics/Canvas;FFILandroid/graphics/Paint;)V

    .line 685
    .end local v15           #hintLabel:Ljava/lang/String;
    .end local v18           #hintX:F
    .end local v19           #hintY:F
    .end local v26           #line:Landroid/graphics/Paint;
    :cond_4
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/Key;->mLabel:Ljava/lang/String;

    if-nez v2, :cond_5

    if-eqz v9, :cond_5

    .line 686
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    move/from16 v0, v31

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 687
    .restart local v12       #iconWidth:I
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    .line 689
    .restart local v13       #iconHeight:I
    sub-int v2, v30, v13

    div-int/lit8 v11, v2, 0x2

    .line 690
    .restart local v11       #iconY:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/keyboard/Key;->isAlignLeft()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 691
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyLabelHorizontalPadding:I

    .line 692
    .restart local v10       #iconX:I
    move/from16 v27, v10

    .local v27, alignX:I
    :goto_5
    move-object/from16 v8, p2

    .line 700
    invoke-static/range {v8 .. v13}, Lcom/android/inputmethod/keyboard/KeyboardView;->drawIcon(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 702
    sget-boolean v2, Lcom/android/inputmethod/latin/LatinImeLogger;->sVISUALDEBUG:Z

    if-eqz v2, :cond_5

    .line 703
    new-instance v26, Landroid/graphics/Paint;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/Paint;-><init>()V

    .line 704
    .restart local v26       #line:Landroid/graphics/Paint;
    move/from16 v0, v27

    int-to-float v2, v0

    move/from16 v0, v30

    int-to-float v4, v0

    const v5, -0x3f7fff80

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-static {v0, v2, v4, v5, v1}, Lcom/android/inputmethod/keyboard/KeyboardView;->drawVerticalLine(Landroid/graphics/Canvas;FFILandroid/graphics/Paint;)V

    .line 705
    int-to-float v0, v10

    move/from16 v21, v0

    int-to-float v0, v11

    move/from16 v22, v0

    int-to-float v0, v12

    move/from16 v23, v0

    int-to-float v0, v13

    move/from16 v24, v0

    const/high16 v25, -0x7f40

    move-object/from16 v20, p2

    invoke-static/range {v20 .. v26}, Lcom/android/inputmethod/keyboard/KeyboardView;->drawRectangle(Landroid/graphics/Canvas;FFFFILandroid/graphics/Paint;)V

    .line 709
    .end local v10           #iconX:I
    .end local v11           #iconY:I
    .end local v12           #iconWidth:I
    .end local v13           #iconHeight:I
    .end local v26           #line:Landroid/graphics/Paint;
    .end local v27           #alignX:I
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/keyboard/Key;->hasPopupHint()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/Key;->mMoreKeys:[Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;

    if-eqz v2, :cond_6

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/Key;->mMoreKeys:[Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;

    array-length v2, v2

    if-lez v2, :cond_6

    .line 710
    invoke-virtual/range {p0 .. p4}, Lcom/android/inputmethod/keyboard/KeyboardView;->drawKeyPopupHint(Lcom/android/inputmethod/keyboard/Key;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;)V

    .line 712
    :cond_6
    return-void

    .line 571
    .restart local v3       #label:Ljava/lang/String;
    .restart local v36       #tempSize:I
    :cond_7
    move/from16 v0, v36

    int-to-double v4, v0

    const-wide v16, 0x3fe4cccccccccccdL

    mul-double v4, v4, v16

    double-to-int v0, v4

    move/from16 v34, v0

    .restart local v34       #labelSize:I
    goto/16 :goto_0

    .line 587
    .restart local v7       #baseline:F
    .restart local v32       #labelCharHeight:F
    .restart local v33       #labelCharWidth:F
    .restart local v35       #labelWidth:F
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/keyboard/Key;->isAlignRight()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 588
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyLabelHorizontalPadding:I

    sub-int v2, v31, v2

    int-to-float v6, v2

    .line 589
    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/16 :goto_1

    .line 590
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/keyboard/Key;->isAlignLeftOfCenter()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 592
    const/high16 v2, 0x40e0

    mul-float v2, v2, v33

    const/high16 v4, 0x4080

    div-float/2addr v2, v4

    sub-float v6, v28, v2

    .line 593
    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/16 :goto_1

    .line 594
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/keyboard/Key;->hasLabelWithIconLeft()Z

    move-result v2

    if-eqz v2, :cond_b

    if-eqz v9, :cond_b

    .line 595
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v1}, Lcom/android/inputmethod/keyboard/KeyboardView;->getLabelWidth(Ljava/lang/String;Landroid/graphics/Paint;)F

    move-result v2

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    const v4, 0x3d4ccccd

    move/from16 v0, v31

    int-to-float v5, v0

    mul-float/2addr v4, v5

    add-float v35, v2, v4

    .line 597
    const/high16 v2, 0x4000

    div-float v2, v35, v2

    add-float v6, v28, v2

    .line 598
    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/16 :goto_1

    .line 599
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/keyboard/Key;->hasLabelWithIconRight()Z

    move-result v2

    if-eqz v2, :cond_c

    if-eqz v9, :cond_c

    .line 600
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v1}, Lcom/android/inputmethod/keyboard/KeyboardView;->getLabelWidth(Ljava/lang/String;Landroid/graphics/Paint;)F

    move-result v2

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    const v4, 0x3d4ccccd

    move/from16 v0, v31

    int-to-float v5, v0

    mul-float/2addr v4, v5

    add-float v35, v2, v4

    .line 602
    const/high16 v2, 0x4000

    div-float v2, v35, v2

    sub-float v6, v28, v2

    .line 603
    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/16 :goto_1

    .line 605
    :cond_c
    move/from16 v6, v28

    .line 606
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/16 :goto_1

    .line 619
    :cond_d
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_2

    .line 634
    .restart local v11       #iconY:I
    .restart local v12       #iconWidth:I
    .restart local v13       #iconHeight:I
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/keyboard/Key;->hasLabelWithIconRight()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 635
    const/high16 v2, 0x4000

    div-float v2, v35, v2

    add-float v2, v2, v28

    int-to-float v4, v12

    sub-float/2addr v2, v4

    float-to-int v10, v2

    .restart local v10       #iconX:I
    move-object/from16 v8, p2

    .line 636
    invoke-static/range {v8 .. v13}, Lcom/android/inputmethod/keyboard/KeyboardView;->drawIcon(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    goto/16 :goto_3

    .line 661
    .end local v3           #label:Ljava/lang/String;
    .end local v7           #baseline:F
    .end local v10           #iconX:I
    .end local v11           #iconY:I
    .end local v12           #iconWidth:I
    .end local v13           #iconHeight:I
    .end local v32           #labelCharHeight:F
    .end local v33           #labelCharWidth:F
    .end local v34           #labelSize:I
    .end local v35           #labelWidth:F
    .end local v36           #tempSize:I
    .restart local v15       #hintLabel:Ljava/lang/String;
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/keyboard/Key;->hasShiftedLetterHint()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 663
    move/from16 v0, v31

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyShiftedLetterHintPadding:F

    sub-float/2addr v2, v4

    sget-object v4, Lcom/android/inputmethod/keyboard/KeyboardView;->KEY_LABEL_REFERENCE_CHAR:[C

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v4, v1}, Lcom/android/inputmethod/keyboard/KeyboardView;->getCharWidth([CLandroid/graphics/Paint;)F

    move-result v4

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    sub-float v18, v2, v4

    .line 665
    .restart local v18       #hintX:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 666
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    neg-float v0, v2

    move/from16 v19, v0

    .line 667
    .restart local v19       #hintY:F
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/16 :goto_4

    .line 670
    .end local v18           #hintX:F
    .end local v19           #hintY:F
    :cond_10
    move/from16 v0, v31

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyHintLetterPadding:F

    sub-float/2addr v2, v4

    sget-object v4, Lcom/android/inputmethod/keyboard/KeyboardView;->KEY_NUMERIC_HINT_LABEL_REFERENCE_CHAR:[C

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v4, v1}, Lcom/android/inputmethod/keyboard/KeyboardView;->getCharWidth([CLandroid/graphics/Paint;)F

    move-result v4

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    sub-float v18, v2, v4

    .line 672
    .restart local v18       #hintX:F
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    neg-float v0, v2

    move/from16 v19, v0

    .line 673
    .restart local v19       #hintY:F
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/16 :goto_4

    .line 693
    .end local v15           #hintLabel:Ljava/lang/String;
    .end local v18           #hintX:F
    .end local v19           #hintY:F
    .restart local v11       #iconY:I
    .restart local v12       #iconWidth:I
    .restart local v13       #iconHeight:I
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/keyboard/Key;->isAlignRight()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 694
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyLabelHorizontalPadding:I

    sub-int v2, v31, v2

    sub-int v10, v2, v12

    .line 695
    .restart local v10       #iconX:I
    add-int v27, v10, v12

    .restart local v27       #alignX:I
    goto/16 :goto_5

    .line 697
    .end local v10           #iconX:I
    .end local v27           #alignX:I
    :cond_12
    sub-int v2, v31, v12

    div-int/lit8 v10, v2, 0x2

    .line 698
    .restart local v10       #iconX:I
    div-int/lit8 v2, v12, 0x2

    add-int v27, v10, v2

    .restart local v27       #alignX:I
    goto/16 :goto_5
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 351
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    if-eqz v1, :cond_0

    .line 353
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    iget v1, v1, Lcom/android/inputmethod/keyboard/Keyboard;->mOccupiedHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int v0, v1, v2

    .line 354
    .local v0, height:I
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 358
    .end local v0           #height:I
    :goto_0
    return-void

    .line 356
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    goto :goto_0
.end method

.method public purgeKeyboardAndClosing()V
    .locals 1

    .prologue
    .line 1051
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    .line 1052
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->closing()V

    .line 1053
    return-void
.end method

.method public setGesturePreviewMode(ZZ)V
    .locals 1
    .parameter "drawsGesturePreviewTrail"
    .parameter "drawsGestureFloatingPreviewText"

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewPlacerView:Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;

    invoke-virtual {v0, p1, p2}, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->setGesturePreviewMode(ZZ)V

    .line 347
    return-void
.end method

.method public setKeyPreviewPopupEnabled(ZI)V
    .locals 0
    .parameter "previewEnabled"
    .parameter "delay"

    .prologue
    .line 330
    iput-boolean p1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mShowKeyPreviewPopup:Z

    .line 331
    iput p2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDelayAfterPreview:I

    .line 332
    return-void
.end method

.method public setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V
    .locals 3
    .parameter "keyboard"

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    .line 305
    invoke-static {p1}, Lcom/android/inputmethod/latin/LatinImeLogger;->onSetKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V

    .line 306
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 307
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->invalidateAllKeys()V

    .line 308
    iget v1, p1, Lcom/android/inputmethod/keyboard/Keyboard;->mMostCommonKeyHeight:I

    iget v2, p1, Lcom/android/inputmethod/keyboard/Keyboard;->mVerticalGap:I

    sub-int v0, v1, v2

    .line 309
    .local v0, keyHeight:I
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyDrawParams:Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyVisualAttributes:Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;

    invoke-virtual {v1, v0, v2}, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->updateParams(ILcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;)V

    .line 310
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyDrawParams:Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;

    iget-object v2, p1, Lcom/android/inputmethod/keyboard/Keyboard;->mKeyVisualAttributes:Lcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;

    invoke-virtual {v1, v0, v2}, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->updateParams(ILcom/android/inputmethod/keyboard/internal/KeyVisualAttributes;)V

    .line 311
    return-void
.end method

.method public showGestureFloatingPreviewText(Ljava/lang/String;)V
    .locals 1
    .parameter "gestureFloatingPreviewText"

    .prologue
    .line 900
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->locatePreviewPlacerView()V

    .line 901
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewPlacerView:Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->setGestureFloatingPreviewText(Ljava/lang/String;)V

    .line 902
    return-void
.end method

.method public showGesturePreviewTrail(Lcom/android/inputmethod/keyboard/PointerTracker;Z)V
    .locals 1
    .parameter "tracker"
    .parameter "isOldestTracker"

    .prologue
    .line 912
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->locatePreviewPlacerView()V

    .line 913
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewPlacerView:Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;

    invoke-virtual {v0, p1, p2}, Lcom/android/inputmethod/keyboard/internal/PreviewPlacerView;->invalidatePointer(Lcom/android/inputmethod/keyboard/PointerTracker;Z)V

    .line 914
    return-void
.end method

.method public showKeyPreview(Lcom/android/inputmethod/keyboard/PointerTracker;)V
    .locals 21
    .parameter "tracker"

    .prologue
    .line 918
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyPreviewDrawParams:Lcom/android/inputmethod/keyboard/internal/KeyPreviewDrawParams;

    .line 919
    .local v11, previewParams:Lcom/android/inputmethod/keyboard/internal/KeyPreviewDrawParams;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mShowKeyPreviewPopup:Z

    move/from16 v17, v0

    if-nez v17, :cond_1

    .line 920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/inputmethod/keyboard/Keyboard;->mVerticalGap:I

    move/from16 v17, v0

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v11, Lcom/android/inputmethod/keyboard/internal/KeyPreviewDrawParams;->mPreviewVisibleOffset:I

    .line 1006
    :cond_0
    :goto_0
    return-void

    .line 924
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/inputmethod/keyboard/PointerTracker;->mPointerId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/inputmethod/keyboard/KeyboardView;->getKeyPreviewText(I)Landroid/widget/TextView;

    move-result-object v12

    .line 927
    .local v12, previewText:Landroid/widget/TextView;
    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v17

    if-nez v17, :cond_2

    .line 928
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/inputmethod/keyboard/KeyboardView;->addKeyPreview(Landroid/widget/TextView;)V

    .line 931
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDrawingHandler:Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;->cancelDismissKeyPreview(Lcom/android/inputmethod/keyboard/PointerTracker;)V

    .line 932
    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKey()Lcom/android/inputmethod/keyboard/Key;

    move-result-object v7

    .line 936
    .local v7, key:Lcom/android/inputmethod/keyboard/Key;
    if-eqz v7, :cond_0

    .line 940
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyDrawParams:Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;

    .line 941
    .local v5, drawParams:Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;
    iget v0, v5, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mPreviewTextColor:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 942
    invoke-virtual {v12}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 943
    .local v4, background:Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_3

    .line 944
    sget-object v17, Lcom/android/inputmethod/keyboard/KeyboardView;->KEY_PREVIEW_BACKGROUND_DEFAULT_STATE:[I

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 945
    const/16 v17, 0xf0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 947
    :cond_3
    invoke-virtual {v7}, Lcom/android/inputmethod/keyboard/Key;->isShiftedLetterActivated()Z

    move-result v17

    if-eqz v17, :cond_5

    iget-object v9, v7, Lcom/android/inputmethod/keyboard/Key;->mHintLabel:Ljava/lang/String;

    .line 949
    .local v9, label:Ljava/lang/String;
    :goto_1
    if-eqz v9, :cond_7

    .line 951
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 952
    invoke-static {v9}, Lcom/android/inputmethod/latin/StringUtils;->codePointCount(Ljava/lang/String;)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_6

    .line 953
    const/16 v17, 0x0

    iget v0, v5, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mLetterSize:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 954
    sget-object v17, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 959
    :goto_2
    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 966
    :goto_3
    const/16 v17, -0x2

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/view/View;->measure(II)V

    .line 968
    invoke-virtual {v7}, Lcom/android/inputmethod/keyboard/Key;->getDrawWidth()I

    move-result v8

    .line 969
    .local v8, keyDrawWidth:I
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 970
    .local v13, previewWidth:I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewHeight:I

    .line 973
    .local v10, previewHeight:I
    invoke-virtual {v12}, Landroid/view/View;->getPaddingLeft()I

    move-result v17

    sub-int v17, v13, v17

    invoke-virtual {v12}, Landroid/view/View;->getPaddingRight()I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v11, Lcom/android/inputmethod/keyboard/internal/KeyPreviewDrawParams;->mPreviewVisibleWidth:I

    .line 975
    invoke-virtual {v12}, Landroid/view/View;->getPaddingTop()I

    move-result v17

    sub-int v17, v10, v17

    invoke-virtual {v12}, Landroid/view/View;->getPaddingBottom()I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v11, Lcom/android/inputmethod/keyboard/internal/KeyPreviewDrawParams;->mPreviewVisibleHeight:I

    .line 979
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewOffset:I

    move/from16 v17, v0

    invoke-virtual {v12}, Landroid/view/View;->getPaddingBottom()I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v11, Lcom/android/inputmethod/keyboard/internal/KeyPreviewDrawParams;->mPreviewVisibleOffset:I

    .line 980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mCoordinates:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 985
    invoke-virtual {v7}, Lcom/android/inputmethod/keyboard/Key;->getDrawX()I

    move-result v17

    sub-int v18, v13, v8

    div-int/lit8 v18, v18, 0x2

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mCoordinates:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    add-int v14, v17, v18

    .line 986
    .local v14, previewX:I
    if-gez v14, :cond_8

    .line 987
    const/4 v14, 0x0

    .line 988
    const/16 v16, 0x1

    .line 997
    .local v16, statePosition:I
    :goto_4
    iget v0, v7, Lcom/android/inputmethod/keyboard/Key;->mY:I

    move/from16 v17, v0

    sub-int v17, v17, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewOffset:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mCoordinates:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    add-int v15, v17, v18

    .line 999
    .local v15, previewY:I
    if-eqz v4, :cond_4

    .line 1000
    iget-object v0, v7, Lcom/android/inputmethod/keyboard/Key;->mMoreKeys:[Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    const/4 v6, 0x1

    .line 1001
    .local v6, hasMoreKeys:I
    :goto_5
    sget-object v17, Lcom/android/inputmethod/keyboard/KeyboardView;->KEY_PREVIEW_BACKGROUND_STATE_TABLE:[[[I

    aget-object v17, v17, v16

    aget-object v17, v17, v6

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1003
    .end local v6           #hasMoreKeys:I
    :cond_4
    invoke-static {v12, v14, v15, v13, v10}, Lcom/android/inputmethod/keyboard/ViewLayoutUtils;->placeViewAt(Landroid/view/View;IIII)V

    .line 1005
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 947
    .end local v8           #keyDrawWidth:I
    .end local v9           #label:Ljava/lang/String;
    .end local v10           #previewHeight:I
    .end local v13           #previewWidth:I
    .end local v14           #previewX:I
    .end local v15           #previewY:I
    .end local v16           #statePosition:I
    :cond_5
    iget-object v9, v7, Lcom/android/inputmethod/keyboard/Key;->mLabel:Ljava/lang/String;

    goto/16 :goto_1

    .line 956
    .restart local v9       #label:Ljava/lang/String;
    :cond_6
    const/16 v17, 0x0

    iget v0, v5, Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;->mPreviewTextSize:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 957
    invoke-virtual {v7, v5}, Lcom/android/inputmethod/keyboard/Key;->selectTypeface(Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;)Landroid/graphics/Typeface;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_2

    .line 961
    :cond_7
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/Keyboard;->mIconsSet:Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/android/inputmethod/keyboard/Key;->getPreviewIcon(Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 963
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 989
    .restart local v8       #keyDrawWidth:I
    .restart local v10       #previewHeight:I
    .restart local v13       #previewWidth:I
    .restart local v14       #previewX:I
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v17

    sub-int v17, v17, v13

    move/from16 v0, v17

    if-le v14, v0, :cond_9

    .line 990
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v17

    sub-int v14, v17, v13

    .line 991
    const/16 v16, 0x2

    .restart local v16       #statePosition:I
    goto/16 :goto_4

    .line 993
    .end local v16           #statePosition:I
    :cond_9
    const/16 v16, 0x0

    .restart local v16       #statePosition:I
    goto/16 :goto_4

    .line 1000
    .restart local v15       #previewY:I
    :cond_a
    const/4 v6, 0x0

    goto :goto_5
.end method
