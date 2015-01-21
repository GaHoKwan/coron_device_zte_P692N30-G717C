.class public Lcom/android/ex/chips/MTKRecipientEditTextView;
.super Landroid/widget/MultiAutoCompleteTextView;
.source "MTKRecipientEditTextView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/view/ActionMode$Callback;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/ex/chips/RecipientAlternatesAdapter$OnCheckedItemChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask;,
        Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientChipProcessor;,
        Lcom/android/ex/chips/MTKRecipientEditTextView$UpdatePressedChipType;,
        Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;,
        Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientChipShadow;,
        Lcom/android/ex/chips/MTKRecipientEditTextView$MoreImageSpan;,
        Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;,
        Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;,
        Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;,
        Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientSavedState;,
        Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;
    }
.end annotation


# static fields
.field private static final CHIP_INTERVAL:I = 0x5

.field static final CHIP_LIMIT:I = 0x2

.field private static final COMMIT_CHAR_CHINESE_COMMA:C = '\uff0c'

.field private static final COMMIT_CHAR_CHINESE_SEMICOLON:C = '\uff1b'

.field private static final COMMIT_CHAR_COMMA:C = ','

.field private static final COMMIT_CHAR_SEMICOLON:C = ';'

.field private static final COMMIT_CHAR_SPACE:C = ' '

.field private static DEBUG_LOG:Z = false

.field private static final DEBUG_MTKRECIPIENTEDITTEXTVIEW_THREADING:Ljava/lang/String; = "debug.MTKRecip.threading"

.field private static DEBUG_THREADING_LOG:Z = false

.field private static DISMISS:I = 0x0

.field private static final DISMISS_DELAY:J = 0x12cL

.field private static final MAX_CHIPS_PARSED:I = 0x64

.field private static final MTKTAG:Ljava/lang/String; = "MTKRecip"

.field private static final NAME_WRAPPER_CHAR:C = '\"'

.field private static final TAG:Ljava/lang/String; = "RecipientEditTextView"

.field private static sExcessTopPadding:I

.field private static sSelectedTextColor:I


# instance fields
.field private bPasted:Z

.field private bTouchedAfterPasted:Z

.field private mActionBarHeight:I

.field private final mAddTextWatcher:Ljava/lang/Runnable;

.field private mAddressPopup:Landroid/widget/ListPopupWindow;

.field private mAlternatesLayout:I

.field private mAlternatesListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mAlternatesPopup:Landroid/widget/ListPopupWindow;

.field private mCheckedItem:I

.field private mChipBackground:Landroid/graphics/drawable/Drawable;

.field private mChipBackgroundPressed:Landroid/graphics/drawable/Drawable;

.field private mChipDelete:Landroid/graphics/drawable/Drawable;

.field private mChipFontSize:F

.field private mChipHeight:F

.field private mChipPadding:I

.field private mChipProcessingMode:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

.field private mCopyAddress:Ljava/lang/String;

.field private mCopyDialog:Landroid/app/Dialog;

.field private mCurrentWidth:I

.field private mDefaultContactPhoto:Landroid/graphics/Bitmap;

.field private mDefaultTextSize:F

.field private mDefaultVerticalOffset:I

.field private mDelayedShrink:Ljava/lang/Runnable;

.field private mDisableBringPointIntoView:Z

.field private mDragEnabled:Z

.field private mDuringAccelerateRemoveChip:Z

.field private mDuringAppendStrings:Z

.field private mDuringReplaceDupChips:Z

.field private mEnableScrollAddText:Z

.field private mForceEnableBringPointIntoView:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mHandlePendingChips:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mHandlingAlternatesDropDown:Z

.field private mHasEllipsizedFirstChip:Z

.field private mIndividualReplacements:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;

.field private mInvalidChipBackground:Landroid/graphics/drawable/Drawable;

.field private mJustExpanded:Z

.field private mLimitedWidthForSpan:I

.field private mLineOfSelectedChip:I

.field private mLineSpacingExtra:F

.field private mMaxLines:I

.field private mMoreChip:Landroid/text/style/ImageSpan;

.field private mMoreItem:Landroid/widget/TextView;

.field private mMoveCursorToVisible:Z

.field private mNoChips:Z

.field private mPedingReplaceChips:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/ex/chips/RecipientChip;",
            ">;"
        }
    .end annotation
.end field

.field private mPedingReplaceEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/ex/chips/RecipientEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingChips:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingChipsCount:I

.field private mPendingStrings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRETVDiscardNextActionUp:Z

.field private mRemovedSpans:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/ex/chips/RecipientChip;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSelectedChip:Lcom/android/ex/chips/RecipientChip;

.field private mShouldShrink:Z

.field private mStringToBeRestore:Ljava/lang/String;

.field private mTemporaryRecipients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/ex/chips/RecipientChip;",
            ">;"
        }
    .end annotation
.end field

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

.field private mTriedGettingScrollView:Z

.field private mValidator:Landroid/widget/AutoCompleteTextView$Validator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 155
    sput-boolean v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->DEBUG_THREADING_LOG:Z

    .line 157
    sput-boolean v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->DEBUG_LOG:Z

    .line 161
    const-string v0, "dismiss"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->DISMISS:I

    .line 174
    sput v1, Lcom/android/ex/chips/MTKRecipientEditTextView;->sSelectedTextColor:I

    .line 292
    sput v1, Lcom/android/ex/chips/MTKRecipientEditTextView;->sExcessTopPadding:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 296
    invoke-direct {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 177
    iput-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipBackground:Landroid/graphics/drawable/Drawable;

    .line 179
    iput-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipDelete:Landroid/graphics/drawable/Drawable;

    .line 207
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingChips:Ljava/util/ArrayList;

    .line 211
    iput v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingChipsCount:I

    .line 213
    iput-boolean v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mNoChips:Z

    .line 219
    sget-object v1, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;->NONE:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    iput-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipProcessingMode:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    .line 229
    iput-boolean v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mShouldShrink:Z

    .line 254
    iput-boolean v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDragEnabled:Z

    .line 256
    new-instance v1, Lcom/android/ex/chips/MTKRecipientEditTextView$1;

    invoke-direct {v1, p0}, Lcom/android/ex/chips/MTKRecipientEditTextView$1;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    iput-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAddTextWatcher:Ljava/lang/Runnable;

    .line 268
    new-instance v1, Lcom/android/ex/chips/MTKRecipientEditTextView$2;

    invoke-direct {v1, p0}, Lcom/android/ex/chips/MTKRecipientEditTextView$2;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    iput-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHandlePendingChips:Ljava/lang/Runnable;

    .line 277
    new-instance v1, Lcom/android/ex/chips/MTKRecipientEditTextView$3;

    invoke-direct {v1, p0}, Lcom/android/ex/chips/MTKRecipientEditTextView$3;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    iput-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDelayedShrink:Ljava/lang/Runnable;

    .line 289
    iput-boolean v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHandlingAlternatesDropDown:Z

    .line 3770
    iput-boolean v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mEnableScrollAddText:Z

    .line 3791
    iput-boolean v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRETVDiscardNextActionUp:Z

    .line 3794
    iput-boolean v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->bPasted:Z

    .line 3795
    iput-boolean v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->bTouchedAfterPasted:Z

    .line 3799
    iput v7, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mLimitedWidthForSpan:I

    .line 3801
    iput-boolean v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHasEllipsizedFirstChip:Z

    .line 3920
    iput-boolean v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoveCursorToVisible:Z

    .line 3921
    iput-boolean v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDisableBringPointIntoView:Z

    .line 3922
    iput-boolean v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mForceEnableBringPointIntoView:Z

    .line 3923
    iput v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mLineOfSelectedChip:I

    .line 3986
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingStrings:Ljava/util/ArrayList;

    .line 3987
    iput-boolean v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDuringAppendStrings:Z

    .line 4134
    iput-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 4135
    iput v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mCurrentWidth:I

    .line 4548
    iput v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDefaultTextSize:F

    .line 4551
    iput-boolean v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mJustExpanded:Z

    .line 4574
    iput-boolean v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDuringAccelerateRemoveChip:Z

    .line 4669
    iput v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDefaultVerticalOffset:I

    .line 4672
    iput-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mStringToBeRestore:Ljava/lang/String;

    .line 4677
    iput-boolean v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDuringReplaceDupChips:Z

    .line 297
    const-string v1, "RecipientEditTextView"

    const-string v2, "[MTKRecipientEditTextView] Constructor"

    invoke-direct {p0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-direct {p0, p1, p2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setChipDimensions(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 299
    sget v1, Lcom/android/ex/chips/MTKRecipientEditTextView;->sSelectedTextColor:I

    if-ne v1, v7, :cond_0

    .line 300
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/ex/chips/MTKRecipientEditTextView;->sSelectedTextColor:I

    .line 302
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    iput v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDefaultTextSize:F

    .line 303
    new-instance v1, Landroid/widget/ListPopupWindow;

    invoke-direct {v1, p1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    .line 304
    new-instance v1, Landroid/widget/ListPopupWindow;

    invoke-direct {v1, p1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAddressPopup:Landroid/widget/ListPopupWindow;

    .line 306
    sget-object v1, Lcom/android/internal/R$styleable;->AutoCompleteTextView:[I

    const v2, 0x101006b

    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 309
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDefaultVerticalOffset:I

    .line 311
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mCopyDialog:Landroid/app/Dialog;

    .line 312
    new-instance v1, Lcom/android/ex/chips/MTKRecipientEditTextView$4;

    invoke-direct {v1, p0}, Lcom/android/ex/chips/MTKRecipientEditTextView$4;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    iput-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAlternatesListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 331
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    const/high16 v2, 0x8

    or-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 332
    invoke-virtual {p0, p0}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 333
    invoke-virtual {p0, p0}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 334
    new-instance v1, Lcom/android/ex/chips/MTKRecipientEditTextView$5;

    invoke-direct {v1, p0}, Lcom/android/ex/chips/MTKRecipientEditTextView$5;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    iput-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHandler:Landroid/os/Handler;

    .line 344
    new-instance v1, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;

    invoke-direct {v1, p0, v4}, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/MTKRecipientEditTextView$1;)V

    iput-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 345
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 346
    new-instance v1, Landroid/view/GestureDetector;

    invoke-direct {v1, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 347
    invoke-virtual {p0, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 348
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    iput v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMaxLines:I

    .line 350
    const-string v1, "debug.MTKRecip.threading"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/ex/chips/MTKRecipientEditTextView;->DEBUG_THREADING_LOG:Z

    .line 353
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPedingReplaceChips:Ljava/util/ArrayList;

    .line 354
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPedingReplaceEntries:Ljava/util/ArrayList;

    .line 356
    invoke-direct {p0, v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setForceEnableBringPointIntoView(Z)V

    .line 357
    return-void
.end method

.method static synthetic access$000(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/text/TextWatcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/ex/chips/MTKRecipientEditTextView;Landroid/text/TextWatcher;)Landroid/text/TextWatcher;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/RecipientChip;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->unselectChip(Lcom/android/ex/chips/RecipientChip;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/text/style/ImageSpan;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/ex/chips/MTKRecipientEditTextView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->chipsPending()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/ex/chips/MTKRecipientEditTextView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->clearSelectedChip()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/ex/chips/MTKRecipientEditTextView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDuringAccelerateRemoveChip:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/ex/chips/MTKRecipientEditTextView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->commitByCharacter()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/ex/chips/MTKRecipientEditTextView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->shrink()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/widget/MultiAutoCompleteTextView$Tokenizer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/ex/chips/MTKRecipientEditTextView;)Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipProcessingMode:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/ex/chips/MTKRecipientEditTextView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setDisableBringPointIntoView(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/RecipientChip;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipStart(Lcom/android/ex/chips/RecipientChip;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/RecipientChip;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipEnd(Lcom/android/ex/chips/RecipientChip;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/widget/ListPopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAddressPopup:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printThreadingDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/ex/chips/MTKRecipientEditTextView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDisableBringPointIntoView:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/ex/chips/MTKRecipientEditTextView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mNoChips:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/RecipientEntry;IZZ)Lcom/android/ex/chips/RecipientChip;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/ex/chips/MTKRecipientEditTextView;->constructChipSpan(Lcom/android/ex/chips/RecipientEntry;IZZ)Lcom/android/ex/chips/RecipientChip;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/ex/chips/MTKRecipientEditTextView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHandlingAlternatesDropDown:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/ex/chips/MTKRecipientEditTextView;)Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mIndividualReplacements:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;)Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mIndividualReplacements:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/ex/chips/MTKRecipientEditTextView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHandlingAlternatesDropDown:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/ex/chips/MTKRecipientEditTextView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->tokenizeAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/RecipientEntry;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createValidatedEntry(Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/ex/chips/MTKRecipientEditTextView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/android/ex/chips/MTKRecipientEditTextView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->recoverLayout()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/ex/chips/MTKRecipientEditTextView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setForceEnableBringPointIntoView(Z)V

    return-void
.end method

.method static synthetic access$3700(Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    invoke-static {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->tempLogPrint(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/ex/chips/MTKRecipientEditTextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mCurrentWidth:I

    return v0
.end method

.method static synthetic access$3902(Lcom/android/ex/chips/MTKRecipientEditTextView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    iput p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mCurrentWidth:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/widget/ListPopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/ex/chips/MTKRecipientEditTextView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->rotateToPortrait()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/ex/chips/MTKRecipientEditTextView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->rotateToLandscape()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/ex/chips/MTKRecipientEditTextView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->unRegisterGlobalLayoutListener()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/ex/chips/MTKRecipientEditTextView;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->alreadyHasChip(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/RecipientChip;Lcom/android/ex/chips/RecipientEntry;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->handleReplaceDuplicateChip(Lcom/android/ex/chips/RecipientChip;Lcom/android/ex/chips/RecipientEntry;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/ex/chips/MTKRecipientEditTextView;)Lcom/android/ex/chips/RecipientChip;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/RecipientChip;)Lcom/android/ex/chips/RecipientChip;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 134
    sget v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->DISMISS:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/ex/chips/MTKRecipientEditTextView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->scrollBottomIntoView()V

    return-void
.end method

.method private alreadyHasChip(II)Z
    .locals 4
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v1, 0x1

    .line 1815
    iget-boolean v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mNoChips:Z

    if-eqz v2, :cond_1

    .line 1822
    :cond_0
    :goto_0
    return v1

    .line 1818
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v2

    const-class v3, Lcom/android/ex/chips/RecipientChip;

    invoke-interface {v2, p1, p2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/chips/RecipientChip;

    .line 1819
    .local v0, chips:[Lcom/android/ex/chips/RecipientChip;
    if-eqz v0, :cond_2

    array-length v2, v0

    if-nez v2, :cond_0

    .line 1820
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private appendPendingStrings()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 3993
    const-string v3, "RecipientEditTextView"

    const-string v5, "[appendPendingStrings] Start"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3994
    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingStrings:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingStrings:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3995
    .local v0, pendingStringsCount:I
    :goto_0
    if-gtz v0, :cond_1

    .line 3996
    const-string v3, "RecipientEditTextView"

    const-string v4, "[appendPendingStrings] End (null)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4008
    :goto_1
    return-void

    .end local v0           #pendingStringsCount:I
    :cond_0
    move v0, v4

    .line 3994
    goto :goto_0

    .line 3999
    .restart local v0       #pendingStringsCount:I
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDuringAppendStrings:Z

    .line 4000
    const-string v1, ""

    .line 4001
    .local v1, str:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, x:I
    :goto_2
    if-ge v2, v0, :cond_2

    .line 4002
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingStrings:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4001
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4004
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v1, v4, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->append(Ljava/lang/CharSequence;II)V

    .line 4005
    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingStrings:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 4006
    iput-boolean v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDuringAppendStrings:Z

    .line 4007
    const-string v3, "RecipientEditTextView"

    const-string v4, "[appendPendingStrings] End"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private calculateAvailableWidth(Z)F
    .locals 2
    .parameter "pressed"

    .prologue
    .line 1080
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipPadding:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method private calculateNumChipsCanShow()I
    .locals 14

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 3860
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/RecipientChip;

    move-result-object v10

    .line 3861
    .local v10, recipients:[Lcom/android/ex/chips/RecipientChip;
    if-eqz v10, :cond_0

    array-length v13, v10

    if-nez v13, :cond_2

    :cond_0
    move v7, v12

    .line 3915
    :cond_1
    :goto_0
    return v7

    .line 3866
    :cond_2
    invoke-direct {p0, v12}, Lcom/android/ex/chips/MTKRecipientEditTextView;->calculateAvailableWidth(Z)F

    move-result v13

    float-to-int v4, v13

    .line 3867
    .local v4, innerWidth:I
    array-length v7, v10

    .line 3868
    .local v7, numRecipients:I
    const/4 v9, 0x0

    .line 3871
    .local v9, overage:I
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipInterval()I

    move-result v1

    .line 3873
    .local v1, chipInterval:I
    const/4 v0, 0x1

    .line 3874
    .local v0, canShowAll:Z
    const/4 v8, 0x0

    .line 3876
    .local v8, occupiedSpace:I
    const/4 v3, 0x0

    .line 3877
    .local v3, index:I
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v7, :cond_3

    .line 3878
    aget-object v13, v10, v3

    invoke-direct {p0, v13}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipWidth(Lcom/android/ex/chips/RecipientChip;)I

    move-result v13

    add-int/2addr v13, v1

    add-int/2addr v8, v13

    .line 3881
    iget v13, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipPadding:I

    mul-int/lit8 v13, v13, 0x2

    add-int/2addr v13, v4

    if-le v8, v13, :cond_7

    .line 3882
    const/4 v0, 0x0

    .line 3887
    :cond_3
    if-nez v0, :cond_1

    .line 3891
    if-ne v3, v7, :cond_4

    if-nez v0, :cond_4

    .line 3892
    add-int/lit8 v3, v3, -0x1

    .line 3895
    :cond_4
    invoke-direct {p0, v7}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getMeasuredMoreSpanWidth(I)I

    move-result v6

    .line 3896
    .local v6, moreSpanWidth:I
    sub-int v2, v4, v6

    .line 3898
    .local v2, chipsSpace:I
    const/4 v5, 0x0

    .line 3899
    .local v5, j:I
    move v5, v3

    :goto_2
    if-ltz v5, :cond_5

    .line 3900
    aget-object v13, v10, v5

    invoke-direct {p0, v13}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipWidth(Lcom/android/ex/chips/RecipientChip;)I

    move-result v13

    add-int/2addr v13, v1

    sub-int/2addr v8, v13

    .line 3902
    if-ge v8, v2, :cond_8

    .line 3907
    :cond_5
    if-nez v5, :cond_9

    .line 3908
    aget-object v13, v10, v12

    invoke-direct {p0, v13}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipWidth(Lcom/android/ex/chips/RecipientChip;)I

    move-result v13

    if-le v13, v2, :cond_6

    .line 3910
    aget-object v12, v10, v12

    invoke-direct {p0, v12, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->replaceChipOnSameTextRange(Lcom/android/ex/chips/RecipientChip;I)V

    .line 3911
    iput-boolean v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHasEllipsizedFirstChip:Z

    :cond_6
    move v7, v11

    .line 3913
    goto :goto_0

    .line 3877
    .end local v2           #chipsSpace:I
    .end local v5           #j:I
    .end local v6           #moreSpanWidth:I
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3899
    .restart local v2       #chipsSpace:I
    .restart local v5       #j:I
    .restart local v6       #moreSpanWidth:I
    :cond_8
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_9
    move v7, v5

    .line 3915
    goto :goto_0
.end method

.method private calculateOffsetFromBottom(I)I
    .locals 3
    .parameter "line"

    .prologue
    .line 1069
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    add-int/lit8 v2, p1, 0x1

    sub-int v0, v1, v2

    .line 1070
    .local v0, actualLine:I
    iget v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipHeight:F

    float-to-int v1, v1

    mul-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    neg-int v1, v1

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getDropDownVerticalOffset()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method private checkChipWidths()V
    .locals 9

    .prologue
    .line 1198
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/RecipientChip;

    move-result-object v3

    .line 1199
    .local v3, chips:[Lcom/android/ex/chips/RecipientChip;
    if-eqz v3, :cond_1

    .line 1201
    move-object v0, v3

    .local v0, arr$:[Lcom/android/ex/chips/RecipientChip;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v0, v4

    .line 1202
    .local v2, chip:Lcom/android/ex/chips/RecipientChip;
    invoke-virtual {v2}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 1203
    .local v1, bounds:Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    if-lez v6, :cond_0

    iget v6, v1, Landroid/graphics/Rect;->right:I

    iget v7, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    iget v8, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v7, v8

    if-le v6, v7, :cond_0

    .line 1205
    invoke-virtual {v2}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v6

    invoke-virtual {p0, v2, v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->replaceChip(Lcom/android/ex/chips/RecipientChip;Lcom/android/ex/chips/RecipientEntry;)V

    .line 1201
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1209
    .end local v0           #arr$:[Lcom/android/ex/chips/RecipientChip;
    .end local v1           #bounds:Landroid/graphics/Rect;
    .end local v2           #chip:Lcom/android/ex/chips/RecipientChip;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_1
    return-void
.end method

.method private chipsPending()Z
    .locals 1

    .prologue
    .line 3025
    iget v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingChipsCount:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clearSelectedChip()V
    .locals 1

    .prologue
    .line 1933
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    if-eqz v0, :cond_0

    .line 1934
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    invoke-direct {p0, v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->unselectChip(Lcom/android/ex/chips/RecipientChip;)V

    .line 1936
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 1937
    return-void
.end method

.method private commitByCharacter()V
    .locals 7

    .prologue
    .line 1677
    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    if-nez v4, :cond_0

    .line 1691
    :goto_0
    return-void

    .line 1680
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1681
    .local v0, editable:Landroid/text/Editable;
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 1682
    .local v1, end:I
    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v4, v0, v1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 1684
    .local v3, start:I
    invoke-direct {p0, v3, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->shouldCreateChip(II)Z

    move-result v2

    .line 1685
    .local v2, shouldCreate:Z
    const-string v4, "RecipientEditTextView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[commitByCharacter] start: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", end: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", shouldCreateChip: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1687
    sub-int v4, v1, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    if-eqz v2, :cond_1

    .line 1688
    invoke-direct {p0, v3, v1, v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->commitChip(IILandroid/text/Editable;)Z

    .line 1690
    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method

.method private commitChip(IILandroid/text/Editable;)Z
    .locals 18
    .parameter "start"
    .parameter "end"
    .parameter "editable"

    .prologue
    .line 1694
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    .line 1695
    .local v3, adapter:Landroid/widget/ListAdapter;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v15

    if-lez v15, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/MultiAutoCompleteTextView;->enoughToFilter()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v15

    move/from16 v0, p2

    if-ne v0, v15, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v15

    if-nez v15, :cond_0

    .line 1697
    const-string v15, "RecipientEditTextView"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[commitChip] submit 1st item, start: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", end: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1699
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/ex/chips/MTKRecipientEditTextView;->submitItemAtPosition(I)V

    .line 1700
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 1701
    const/4 v15, 0x1

    .line 1772
    :goto_0
    return v15

    .line 1703
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    move-object/from16 v0, p3

    move/from16 v1, p1

    invoke-interface {v15, v0, v1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v14

    .line 1704
    .local v14, tokenEnd:I
    invoke-interface/range {p3 .. p3}, Landroid/text/Editable;->length()I

    move-result v15

    add-int/lit8 v16, v14, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_2

    .line 1705
    add-int/lit8 v15, v14, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    .line 1706
    .local v5, charAt:C
    const/16 v15, 0x2c

    if-eq v5, v15, :cond_1

    const/16 v15, 0x3b

    if-eq v5, v15, :cond_1

    const v15, 0xff0c

    if-eq v5, v15, :cond_1

    const v15, 0xff1b

    if-ne v5, v15, :cond_2

    .line 1707
    :cond_1
    add-int/lit8 v14, v14, 0x1

    .line 1710
    .end local v5           #charAt:C
    :cond_2
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 1711
    .local v13, text:Ljava/lang/String;
    const-string v15, "RecipientEditTextView"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[commitChip] trying to match item. text: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", start: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", end: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1713
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v15

    if-eqz v15, :cond_7

    if-eqz v3, :cond_7

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v15

    if-lez v15, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/MultiAutoCompleteTextView;->enoughToFilter()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v15

    move/from16 v0, p2

    if-ne v0, v15, :cond_7

    .line 1714
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v15

    invoke-interface {v15}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    .line 1716
    .local v4, adapterCount:I
    const/4 v11, 0x0

    .local v11, itemCnt:I
    :goto_1
    if-ge v11, v4, :cond_5

    .line 1717
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v15

    invoke-interface {v15, v11}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/ex/chips/RecipientEntry;

    .line 1718
    .local v10, entry:Lcom/android/ex/chips/RecipientEntry;
    invoke-virtual {v10}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 1719
    .local v9, displayName:Ljava/lang/String;
    invoke-virtual {v10}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v8

    .line 1720
    .local v8, destination:Ljava/lang/String;
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 1721
    :cond_3
    const-string v15, "RecipientEditTextView"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[commitChip] submit item: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1722
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/ex/chips/MTKRecipientEditTextView;->submitItemAtPosition(I)V

    .line 1723
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 1724
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1716
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1728
    .end local v8           #destination:Ljava/lang/String;
    .end local v9           #displayName:Ljava/lang/String;
    .end local v10           #entry:Lcom/android/ex/chips/RecipientEntry;
    :cond_5
    const/4 v11, 0x0

    :goto_2
    if-ge v11, v4, :cond_7

    .line 1729
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v15

    invoke-interface {v15, v11}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/ex/chips/RecipientEntry;

    .line 1730
    .restart local v10       #entry:Lcom/android/ex/chips/RecipientEntry;
    invoke-virtual {v10}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 1731
    .restart local v9       #displayName:Ljava/lang/String;
    invoke-virtual {v10}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v8

    .line 1732
    .restart local v8       #destination:Ljava/lang/String;
    invoke-virtual {v10}, Lcom/android/ex/chips/RecipientEntry;->getDestinationKind()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 1733
    invoke-static {v13}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1734
    .local v7, currentNumber:Ljava/lang/String;
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1735
    .local v12, queryNumber:Ljava/lang/String;
    invoke-static {v7, v12}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 1736
    const-string v15, "RecipientEditTextView"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[commitChip] match normalized destination. submit item: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1737
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/ex/chips/MTKRecipientEditTextView;->submitItemAtPosition(I)V

    .line 1738
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 1739
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1728
    .end local v7           #currentNumber:Ljava/lang/String;
    .end local v12           #queryNumber:Ljava/lang/String;
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1745
    .end local v4           #adapterCount:I
    .end local v8           #destination:Ljava/lang/String;
    .end local v9           #displayName:Ljava/lang/String;
    .end local v10           #entry:Lcom/android/ex/chips/RecipientEntry;
    .end local v11           #itemCnt:I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->clearComposingText()V

    .line 1746
    if-eqz v13, :cond_b

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_b

    const-string v15, " "

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_b

    .line 1747
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createTokenizedEntry(Ljava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v10

    .line 1748
    .restart local v10       #entry:Lcom/android/ex/chips/RecipientEntry;
    if-eqz v10, :cond_9

    .line 1750
    sget-object v15, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;->COMMIT:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setChipProcessingMode(Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;)V

    .line 1751
    const-string v15, ""

    move-object/from16 v0, p3

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v2, v15}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 1752
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v15}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createChip(Lcom/android/ex/chips/RecipientEntry;Z)Ljava/lang/CharSequence;

    move-result-object v6

    .line 1753
    .local v6, chipText:Ljava/lang/CharSequence;
    if-eqz v6, :cond_8

    const/4 v15, -0x1

    move/from16 v0, p1

    if-le v0, v15, :cond_8

    const/4 v15, -0x1

    move/from16 v0, p2

    if-le v0, v15, :cond_8

    .line 1754
    const-string v15, "MTKRecip"

    const-string v16, "[commitChip] replace"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printThreadingDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1755
    move-object/from16 v0, p3

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-interface {v0, v1, v2, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1757
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 1758
    sget-object v15, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;->NONE:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setChipProcessingMode(Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;)V

    .line 1764
    .end local v6           #chipText:Ljava/lang/CharSequence;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v15

    move/from16 v0, p2

    if-ne v0, v15, :cond_a

    .line 1765
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 1767
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->sanitizeBetween()V

    .line 1768
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1771
    .end local v10           #entry:Lcom/android/ex/chips/RecipientEntry;
    :cond_b
    const-string v15, "RecipientEditTextView"

    const-string v16, "[commitChip] do nothing"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1772
    const/4 v15, 0x0

    goto/16 :goto_0
.end method

.method private commitDefault()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 1652
    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    if-nez v6, :cond_1

    .line 1672
    :cond_0
    :goto_0
    return v5

    .line 1655
    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1656
    .local v0, editable:Landroid/text/Editable;
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 1657
    .local v1, end:I
    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v6, v0, v1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 1659
    .local v3, start:I
    invoke-direct {p0, v3, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->shouldCreateChip(II)Z

    move-result v2

    .line 1660
    .local v2, shouldCreate:Z
    const-string v6, "RecipientEditTextView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[commitDefault] start: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", end: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", shouldCreateChip: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1662
    if-eqz v2, :cond_0

    .line 1663
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 1666
    .local v4, whatEnd:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 1667
    invoke-direct {p0, v3, v4}, Lcom/android/ex/chips/MTKRecipientEditTextView;->handleEdit(II)V

    .line 1668
    const/4 v5, 0x1

    goto :goto_0

    .line 1670
    :cond_2
    invoke-direct {p0, v3, v1, v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->commitChip(IILandroid/text/Editable;)Z

    move-result v5

    goto :goto_0
.end method

.method private constructChipSpan(Lcom/android/ex/chips/RecipientEntry;IZZ)Lcom/android/ex/chips/RecipientChip;
    .locals 11
    .parameter "contact"
    .parameter "offset"
    .parameter "pressed"
    .parameter "leaveIconSpace"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 1032
    const-string v7, "RecipientEditTextView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[constructChipSpan] offset: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", pressed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    iget-object v7, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipBackground:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_0

    .line 1034
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "Unable to render any chips as setChipDimensions was not called."

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1037
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 1039
    .local v2, layout:Landroid/text/Layout;
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    .line 1040
    .local v3, paint:Landroid/text/TextPaint;
    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    .line 1041
    .local v1, defaultSize:F
    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 1044
    .local v0, defaultColor:I
    if-eqz p3, :cond_1

    .line 1045
    invoke-direct {p0, p1, v3, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createSelectedChip(Lcom/android/ex/chips/RecipientEntry;Landroid/text/TextPaint;Landroid/text/Layout;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1052
    .local v6, tmpBitmap:Landroid/graphics/Bitmap;
    :goto_0
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v5, v7, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1053
    .local v5, result:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v5, v10, v10, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1054
    new-instance v4, Lcom/android/ex/chips/RecipientChip;

    invoke-direct {v4, v5, p1, p2}, Lcom/android/ex/chips/RecipientChip;-><init>(Landroid/graphics/drawable/Drawable;Lcom/android/ex/chips/RecipientEntry;I)V

    .line 1056
    .local v4, recipientChip:Lcom/android/ex/chips/RecipientChip;
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1057
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1058
    return-object v4

    .line 1048
    .end local v4           #recipientChip:Lcom/android/ex/chips/RecipientChip;
    .end local v5           #result:Landroid/graphics/drawable/Drawable;
    .end local v6           #tmpBitmap:Landroid/graphics/Bitmap;
    :cond_1
    invoke-direct {p0, p1, v3, v2, p4}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createUnselectedChip(Lcom/android/ex/chips/RecipientEntry;Landroid/text/TextPaint;Landroid/text/Layout;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    .restart local v6       #tmpBitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private createAlternatesAdapter(Lcom/android/ex/chips/RecipientChip;)Landroid/widget/ListAdapter;
    .locals 10
    .parameter "chip"

    .prologue
    .line 2100
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2102
    new-instance v0, Lcom/android/ex/chips/RecipientAlternatesAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientChip;->getContactId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientChip;->getDataId()J

    move-result-wide v4

    iget v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAlternatesLayout:I

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    check-cast v7, Lcom/android/ex/chips/BaseRecipientAdapter;

    invoke-virtual {v7}, Lcom/android/ex/chips/BaseRecipientAdapter;->getQueryType()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    check-cast v8, Lcom/android/ex/chips/BaseRecipientAdapter;

    invoke-virtual {v8}, Lcom/android/ex/chips/BaseRecipientAdapter;->getShowPhoneAndEmail()Z

    move-result v9

    move-object v8, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/ex/chips/RecipientAlternatesAdapter;-><init>(Landroid/content/Context;JJIILcom/android/ex/chips/RecipientAlternatesAdapter$OnCheckedItemChangedListener;Z)V

    .line 2106
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/android/ex/chips/RecipientAlternatesAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientChip;->getContactId()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientChip;->getDataId()J

    move-result-wide v5

    iget v7, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAlternatesLayout:I

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    check-cast v8, Lcom/android/ex/chips/BaseRecipientAdapter;

    invoke-virtual {v8}, Lcom/android/ex/chips/BaseRecipientAdapter;->getQueryType()I

    move-result v8

    move-object v9, p0

    invoke-direct/range {v1 .. v9}, Lcom/android/ex/chips/RecipientAlternatesAdapter;-><init>(Landroid/content/Context;JJIILcom/android/ex/chips/RecipientAlternatesAdapter$OnCheckedItemChangedListener;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private createChip(Lcom/android/ex/chips/RecipientEntry;Z)Ljava/lang/CharSequence;
    .locals 11
    .parameter "entry"
    .parameter "pressed"

    .prologue
    const/4 v7, 0x0

    .line 2231
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createAddressText(Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/String;

    move-result-object v2

    .line 2232
    .local v2, displayText:Ljava/lang/String;
    const-string v8, "RecipientEditTextView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[createChip] displayText: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", pressed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2233
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v1, v7

    .line 2254
    :cond_0
    :goto_0
    return-object v1

    .line 2236
    :cond_1
    const/4 v1, 0x0

    .line 2238
    .local v1, chipText:Landroid/text/SpannableString;
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    .line 2239
    .local v4, end:I
    iget-object v8, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v8, v9, v4}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 2240
    .local v5, start:I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    .line 2241
    .local v6, textLength:I
    new-instance v1, Landroid/text/SpannableString;

    .end local v1           #chipText:Landroid/text/SpannableString;
    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2242
    .restart local v1       #chipText:Landroid/text/SpannableString;
    iget-boolean v8, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mNoChips:Z

    if-nez v8, :cond_0

    .line 2244
    const/4 v8, 0x0

    :try_start_0
    invoke-direct {p0, p1, v5, p2, v8}, Lcom/android/ex/chips/MTKRecipientEditTextView;->constructChipSpan(Lcom/android/ex/chips/RecipientEntry;IZZ)Lcom/android/ex/chips/RecipientChip;

    move-result-object v0

    .line 2246
    .local v0, chip:Lcom/android/ex/chips/RecipientChip;
    const/4 v8, 0x0

    const/16 v9, 0x21

    invoke-virtual {v1, v0, v8, v6, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2248
    invoke-virtual {v1}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/ex/chips/RecipientChip;->setOriginalText(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2249
    .end local v0           #chip:Lcom/android/ex/chips/RecipientChip;
    :catch_0
    move-exception v3

    .line 2250
    .local v3, e:Ljava/lang/NullPointerException;
    const-string v8, "RecipientEditTextView"

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v7

    .line 2251
    goto :goto_0
.end method

.method private createMoreSpan(I)Lcom/android/ex/chips/MTKRecipientEditTextView$MoreImageSpan;
    .locals 14
    .parameter "count"

    .prologue
    const/4 v2, 0x0

    .line 2430
    const-string v3, "RecipientEditTextView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[createMoreSpan] count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2431
    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2432
    .local v1, moreText:Ljava/lang/String;
    new-instance v6, Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-direct {v6, v3}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 2433
    .local v6, morePaint:Landroid/text/TextPaint;
    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2434
    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2435
    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int v13, v3, v4

    .line 2438
    .local v13, width:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v7

    .line 2439
    .local v7, TempTextSize:F
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    iget v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDefaultTextSize:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2441
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v10

    .line 2442
    .local v10, height:I
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v10, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 2443
    .local v9, drawable:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2444
    .local v0, canvas:Landroid/graphics/Canvas;
    move v8, v10

    .line 2445
    .local v8, adjustedHeight:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v11

    .line 2446
    .local v11, layout:Landroid/text/Layout;
    if-eqz v11, :cond_0

    .line 2447
    invoke-virtual {v11, v2}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v3

    sub-int/2addr v8, v3

    .line 2449
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    int-to-float v5, v8

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 2451
    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v12, v3, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 2452
    .local v12, result:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v12, v2, v2, v13, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2453
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2454
    new-instance v2, Lcom/android/ex/chips/MTKRecipientEditTextView$MoreImageSpan;

    invoke-direct {v2, p0, v12}, Lcom/android/ex/chips/MTKRecipientEditTextView$MoreImageSpan;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;Landroid/graphics/drawable/Drawable;)V

    return-object v2
.end method

.method private createReplacementChip(IILandroid/text/Editable;)V
    .locals 16
    .parameter "tokenStart"
    .parameter "tokenEnd"
    .parameter "editable"

    .prologue
    .line 1400
    const-string v13, "RecipientEditTextView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[createReplacementChip] tokenStart:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", tokenEnd:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1401
    invoke-direct/range {p0 .. p2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->alreadyHasChip(II)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1449
    :cond_0
    :goto_0
    return-void

    .line 1406
    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 1407
    .local v12, token:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x2c

    invoke-virtual {v13, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 1408
    .local v5, commitCharIndex:I
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ne v5, v13, :cond_2

    .line 1409
    const/4 v13, 0x0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 1411
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createTokenizedEntry(Ljava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v9

    .line 1412
    .local v9, entry:Lcom/android/ex/chips/RecipientEntry;
    if-eqz v9, :cond_0

    .line 1413
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createAddressText(Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/String;

    move-result-object v6

    .line 1415
    .local v6, destText:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v11, v13, -0x1

    .line 1416
    .local v11, textLength:I
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1417
    .local v4, chipText:Landroid/text/SpannableString;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v8

    .line 1418
    .local v8, end:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-interface {v13, v14, v8}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v10

    .line 1419
    .local v10, start:I
    :goto_1
    const/4 v3, 0x0

    .line 1421
    .local v3, chip:Lcom/android/ex/chips/RecipientChip;
    sget-object v13, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;->COMMIT:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setChipProcessingMode(Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;)V

    .line 1423
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mNoChips:Z

    if-nez v13, :cond_4

    .line 1425
    const/4 v14, 0x0

    invoke-virtual {v9}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    invoke-virtual {v9}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_7

    :cond_3
    const/4 v13, 0x1

    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10, v14, v13}, Lcom/android/ex/chips/MTKRecipientEditTextView;->constructChipSpan(Lcom/android/ex/chips/RecipientEntry;IZZ)Lcom/android/ex/chips/RecipientChip;

    move-result-object v3

    .line 1432
    const/4 v13, 0x0

    const/16 v14, 0x21

    invoke-virtual {v4, v3, v13, v11, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1437
    :cond_4
    :goto_3
    const-string v13, "MTKRecip"

    const-string v14, "[createReplacementChip] replace"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printThreadingDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1438
    move-object/from16 v0, p3

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-interface {v0, v1, v2, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1439
    sget-object v13, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;->NONE:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setChipProcessingMode(Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;)V

    .line 1441
    if-eqz v3, :cond_0

    .line 1442
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    if-nez v13, :cond_5

    .line 1443
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    .line 1445
    :cond_5
    invoke-virtual {v4}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/android/ex/chips/RecipientChip;->setOriginalText(Ljava/lang/String;)V

    .line 1446
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1418
    .end local v3           #chip:Lcom/android/ex/chips/RecipientChip;
    .end local v10           #start:I
    :cond_6
    const/4 v10, 0x0

    goto :goto_1

    .line 1425
    .restart local v3       #chip:Lcom/android/ex/chips/RecipientChip;
    .restart local v10       #start:I
    :cond_7
    const/4 v13, 0x0

    goto :goto_2

    .line 1434
    :catch_0
    move-exception v7

    .line 1435
    .local v7, e:Ljava/lang/NullPointerException;
    const-string v13, "RecipientEditTextView"

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private createSelectedChip(Lcom/android/ex/chips/RecipientEntry;Landroid/text/TextPaint;Landroid/text/Layout;)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "contact"
    .parameter "paint"
    .parameter "layout"

    .prologue
    .line 877
    iget v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipHeight:F

    float-to-int v9, v2

    .line 878
    .local v9, height:I
    move v8, v9

    .line 879
    .local v8, deleteWidth:I
    const/4 v2, 0x1

    new-array v12, v2, [F

    .line 880
    .local v12, widths:[F
    const-string v2, " "

    invoke-virtual {p2, v2, v12}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 881
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createChipDisplayText(Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->calculateAvailableWidth(Z)F

    move-result v3

    int-to-float v4, v8

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    aget v4, v12, v4

    sub-float/2addr v3, v4

    invoke-direct {p0, v2, p2, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->ellipsizeText(Ljava/lang/CharSequence;Landroid/text/TextPaint;F)Ljava/lang/CharSequence;

    move-result-object v1

    .line 883
    .local v1, ellipsizedText:Ljava/lang/CharSequence;
    const-string v2, "RecipientEditTextView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[createSelectedChip] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    mul-int/lit8 v2, v8, 0x2

    const/4 v3, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {p2, v1, v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipPadding:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v3, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 892
    .local v11, width:I
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v9, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 893
    .local v10, tmpBitmap:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 894
    .local v0, canvas:Landroid/graphics/Canvas;
    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipBackgroundPressed:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 895
    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipBackgroundPressed:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v11, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 896
    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipBackgroundPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 897
    sget v2, Lcom/android/ex/chips/MTKRecipientEditTextView;->sSelectedTextColor:I

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 899
    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipPadding:I

    int-to-float v4, v4

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5, p2, v9}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getTextYOffset(Ljava/lang/String;Landroid/text/TextPaint;I)F

    move-result v5

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 902
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 903
    .local v7, backgroundPadding:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipBackgroundPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 904
    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipDelete:Landroid/graphics/drawable/Drawable;

    sub-int v3, v11, v8

    iget v4, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iget v4, v7, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, 0x0

    iget v5, v7, Landroid/graphics/Rect;->right:I

    sub-int v5, v11, v5

    iget v6, v7, Landroid/graphics/Rect;->bottom:I

    sub-int v6, v9, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 908
    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipDelete:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 912
    .end local v7           #backgroundPadding:Landroid/graphics/Rect;
    :goto_0
    return-object v10

    .line 910
    :cond_0
    const-string v2, "RecipientEditTextView"

    const-string v3, "Unable to draw a background for the chips as it was never set"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createSingleAddressAdapter(Lcom/android/ex/chips/RecipientChip;)Landroid/widget/ListAdapter;
    .locals 4
    .parameter "currentChip"

    .prologue
    .line 2112
    new-instance v0, Lcom/android/ex/chips/SingleRecipientArrayAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAlternatesLayout:I

    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/ex/chips/SingleRecipientArrayAdapter;-><init>(Landroid/content/Context;ILcom/android/ex/chips/RecipientEntry;)V

    return-object v0
.end method

.method private createTokenizedEntry(Ljava/lang/String;)Lcom/android/ex/chips/RecipientEntry;
    .locals 9
    .parameter "token"

    .prologue
    const/4 v8, 0x0

    .line 1465
    const-string v5, "RecipientEditTextView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[createTokenizedEntry] token:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1467
    const/4 v5, 0x0

    .line 1527
    :goto_0
    return-object v5

    .line 1469
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1471
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1472
    const-string v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1473
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1474
    :cond_1
    invoke-static {p1}, Lcom/android/ex/chips/RecipientEntry;->constructFakeEntry(Ljava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v5

    goto :goto_0

    .line 1477
    :cond_2
    invoke-static {p1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v3

    .line 1478
    .local v3, tokens:[Landroid/text/util/Rfc822Token;
    const/4 v1, 0x0

    .line 1479
    .local v1, display:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isValid(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    if-eqz v3, :cond_7

    array-length v5, v3

    if-lez v5, :cond_7

    .line 1482
    aget-object v5, v3, v8

    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1483
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1484
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1485
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1486
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1488
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1489
    .local v0, charAt:C
    const/16 v5, 0x2c

    if-eq v0, v5, :cond_4

    const/16 v5, 0x3b

    if-eq v0, v5, :cond_4

    const v5, 0xff0c

    if-eq v0, v5, :cond_4

    const v5, 0xff1b

    if-ne v0, v5, :cond_5

    .line 1490
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1493
    .end local v0           #charAt:C
    :cond_5
    const-string v5, "RecipientEditTextView"

    const-string v6, "[createTokenizedEntry] RecipientEntry.constructGeneratedEntry()"

    invoke-direct {p0, v5, v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1494
    invoke-static {v1, p1}, Lcom/android/ex/chips/RecipientEntry;->constructGeneratedEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v5

    goto/16 :goto_0

    .line 1496
    :cond_6
    aget-object v5, v3, v8

    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 1497
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1498
    const-string v5, "RecipientEditTextView"

    const-string v6, "[createTokenizedEntry] RecipientEntry.constructFakeEntry()"

    invoke-direct {p0, v5, v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1499
    invoke-static {v1}, Lcom/android/ex/chips/RecipientEntry;->constructFakeEntry(Ljava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v5

    goto/16 :goto_0

    .line 1505
    :cond_7
    const/4 v4, 0x0

    .line 1506
    .local v4, validatedToken:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    invoke-interface {v5, p1}, Landroid/widget/AutoCompleteTextView$Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 1508
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    invoke-interface {v5, p1}, Landroid/widget/AutoCompleteTextView$Validator;->fixText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1509
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 1510
    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1513
    invoke-static {v4}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v2

    .line 1514
    .local v2, tokenized:[Landroid/text/util/Rfc822Token;
    array-length v5, v2

    if-lez v5, :cond_8

    .line 1515
    aget-object v5, v2, v8

    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 1526
    .end local v2           #tokenized:[Landroid/text/util/Rfc822Token;
    :cond_8
    :goto_1
    const-string v5, "RecipientEditTextView"

    const-string v6, "[createTokenizedEntry] RecipientEntry.constructFakeEntry()"

    invoke-direct {p0, v5, v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    .end local v4           #validatedToken:Ljava/lang/String;
    :goto_2
    invoke-static {v4}, Lcom/android/ex/chips/RecipientEntry;->constructFakeEntry(Ljava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v5

    goto/16 :goto_0

    .line 1521
    .restart local v4       #validatedToken:Ljava/lang/String;
    :cond_9
    const/4 v4, 0x0

    goto :goto_1

    :cond_a
    move-object v4, p1

    .line 1527
    goto :goto_2
.end method

.method private createUnselectedChip(Lcom/android/ex/chips/RecipientEntry;Landroid/text/TextPaint;Landroid/text/Layout;Z)Landroid/graphics/Bitmap;
    .locals 28
    .parameter "contact"
    .parameter "paint"
    .parameter "layout"
    .parameter "leaveBlankIconSpacer"

    .prologue
    .line 921
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipHeight:F

    float-to-int v0, v5

    move/from16 v18, v0

    .line 922
    .local v18, height:I
    move/from16 v19, v18

    .line 923
    .local v19, iconWidth:I
    const/4 v5, 0x1

    new-array v0, v5, [F

    move-object/from16 v26, v0

    .line 924
    .local v26, widths:[F
    const-string v5, " "

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v5, v1}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 926
    invoke-virtual/range {p0 .. p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createChipDisplayText(Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mLimitedWidthForSpan:I

    const/4 v7, -0x1

    if-ne v5, v7, :cond_4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->calculateAvailableWidth(Z)F

    move-result v5

    move/from16 v0, v19

    int-to-float v7, v0

    sub-float/2addr v5, v7

    const/4 v7, 0x0

    aget v7, v26, v7

    sub-float/2addr v5, v7

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v6, v1, v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->ellipsizeText(Ljava/lang/CharSequence;Landroid/text/TextPaint;F)Ljava/lang/CharSequence;

    move-result-object v4

    .line 928
    .local v4, ellipsizedText:Ljava/lang/CharSequence;
    const-string v5, "RecipientEditTextView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[createUnselectedChip] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    const/16 v17, 0x0

    .line 934
    .local v17, hasIcon:Z
    const/4 v5, 0x0

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v0, v5

    move/from16 v16, v0

    .line 935
    .local v16, ellipsizedTextWidth:I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipPadding:I

    mul-int/lit8 v5, v5, 0x2

    add-int v25, v16, v5

    .line 939
    .local v25, width:I
    const/16 v24, 0x0

    .line 940
    .local v24, tmpBitmap:Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipBackground(Lcom/android/ex/chips/RecipientEntry;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 941
    .local v10, background:Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_c

    .line 942
    const/4 v3, 0x0

    .line 943
    .local v3, canvas:Landroid/graphics/Canvas;
    const/16 v21, 0x0

    .line 944
    .local v21, photo:Landroid/graphics/Bitmap;
    const/16 v20, 0x0

    .line 947
    .local v20, matrix:Landroid/graphics/Matrix;
    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v12

    .line 948
    .local v12, contactId:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v5

    if-eqz v5, :cond_6

    const-wide/16 v5, -0x1

    cmp-long v5, v12, v5

    if-eqz v5, :cond_5

    const/4 v14, 0x1

    .line 953
    .local v14, drawPhotos:Z
    :goto_1
    if-eqz v14, :cond_9

    .line 954
    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/chips/RecipientEntry;->getPhotoBytes()[B

    move-result-object v22

    .line 957
    .local v22, photoBytes:[B
    if-nez v22, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/chips/RecipientEntry;->getPhotoThumbnailUri()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 959
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/ex/chips/BaseRecipientAdapter;

    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/chips/RecipientEntry;->getPhotoThumbnailUri()Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v6}, Lcom/android/ex/chips/BaseRecipientAdapter;->fetchPhoto(Lcom/android/ex/chips/RecipientEntry;Landroid/net/Uri;)V

    .line 961
    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/chips/RecipientEntry;->getPhotoBytes()[B

    move-result-object v22

    .line 964
    :cond_0
    if-eqz v22, :cond_8

    .line 965
    const/4 v5, 0x0

    move-object/from16 v0, v22

    array-length v6, v0

    move-object/from16 v0, v22

    invoke-static {v0, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 971
    :goto_2
    if-eqz v21, :cond_1

    .line 973
    const/16 v17, 0x1

    .line 974
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipPadding:I

    mul-int/lit8 v5, v5, 0x2

    add-int v5, v5, v16

    add-int v25, v5, v19

    .line 976
    new-instance v23, Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    move-object/from16 v0, v23

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 977
    .local v23, src:Landroid/graphics/RectF;
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 978
    .local v11, backgroundPadding:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v11}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 979
    new-instance v15, Landroid/graphics/RectF;

    sub-int v5, v25, v19

    iget v6, v11, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, v11, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x0

    int-to-float v6, v6

    iget v7, v11, Landroid/graphics/Rect;->right:I

    sub-int v7, v25, v7

    int-to-float v7, v7

    iget v8, v11, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v18, v8

    int-to-float v8, v8

    invoke-direct {v15, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 983
    .local v15, dst:Landroid/graphics/RectF;
    new-instance v20, Landroid/graphics/Matrix;

    .end local v20           #matrix:Landroid/graphics/Matrix;
    invoke-direct/range {v20 .. v20}, Landroid/graphics/Matrix;-><init>()V

    .line 984
    .restart local v20       #matrix:Landroid/graphics/Matrix;
    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v15, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 990
    .end local v11           #backgroundPadding:Landroid/graphics/Rect;
    .end local v15           #dst:Landroid/graphics/RectF;
    .end local v22           #photoBytes:[B
    .end local v23           #src:Landroid/graphics/RectF;
    :cond_1
    :goto_3
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v25

    move/from16 v1, v18

    invoke-static {v0, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v24

    .line 991
    new-instance v3, Landroid/graphics/Canvas;

    .end local v3           #canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, v24

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 993
    .restart local v3       #canvas:Landroid/graphics/Canvas;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v10, v5, v6, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 994
    invoke-virtual {v10, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 995
    if-eqz v21, :cond_2

    if-eqz v20, :cond_2

    .line 996
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-virtual {v3, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 999
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x106000c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1001
    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipPadding:I

    move/from16 v27, v0

    .line 1002
    .local v27, xPositionOfText:I
    :goto_4
    const/4 v5, 0x0

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    move/from16 v0, v27

    int-to-float v7, v0

    move-object v8, v4

    check-cast v8, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v18

    invoke-direct {v0, v8, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getTextYOffset(Ljava/lang/String;Landroid/text/TextPaint;I)F

    move-result v8

    move-object/from16 v9, p2

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 1008
    .end local v3           #canvas:Landroid/graphics/Canvas;
    .end local v12           #contactId:J
    .end local v14           #drawPhotos:Z
    .end local v20           #matrix:Landroid/graphics/Matrix;
    .end local v21           #photo:Landroid/graphics/Bitmap;
    .end local v27           #xPositionOfText:I
    :goto_5
    if-nez v24, :cond_3

    .line 1009
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v25

    move/from16 v1, v18

    invoke-static {v0, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v24

    .line 1012
    :cond_3
    return-object v24

    .line 926
    .end local v4           #ellipsizedText:Ljava/lang/CharSequence;
    .end local v10           #background:Landroid/graphics/drawable/Drawable;
    .end local v16           #ellipsizedTextWidth:I
    .end local v17           #hasIcon:Z
    .end local v24           #tmpBitmap:Landroid/graphics/Bitmap;
    .end local v25           #width:I
    :cond_4
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mLimitedWidthForSpan:I

    sub-int v5, v5, v19

    int-to-float v5, v5

    const/4 v7, 0x0

    aget v7, v26, v7

    sub-float/2addr v5, v7

    goto/16 :goto_0

    .line 948
    .restart local v3       #canvas:Landroid/graphics/Canvas;
    .restart local v4       #ellipsizedText:Ljava/lang/CharSequence;
    .restart local v10       #background:Landroid/graphics/drawable/Drawable;
    .restart local v12       #contactId:J
    .restart local v16       #ellipsizedTextWidth:I
    .restart local v17       #hasIcon:Z
    .restart local v20       #matrix:Landroid/graphics/Matrix;
    .restart local v21       #photo:Landroid/graphics/Bitmap;
    .restart local v24       #tmpBitmap:Landroid/graphics/Bitmap;
    .restart local v25       #width:I
    :cond_5
    const/4 v14, 0x0

    goto/16 :goto_1

    :cond_6
    const-wide/16 v5, -0x1

    cmp-long v5, v12, v5

    if-eqz v5, :cond_7

    const-wide/16 v5, -0x2

    cmp-long v5, v12, v5

    if-eqz v5, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    const/4 v14, 0x1

    goto/16 :goto_1

    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 968
    .restart local v14       #drawPhotos:Z
    .restart local v22       #photoBytes:[B
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDefaultContactPhoto:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    goto/16 :goto_2

    .line 986
    .end local v22           #photoBytes:[B
    :cond_9
    if-eqz p4, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 987
    :cond_a
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 1001
    :cond_b
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipPadding:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipPadding:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v25, v6

    sub-int v6, v6, v16

    div-int/lit8 v6, v6, 0x2

    add-int v27, v5, v6

    goto :goto_4

    .line 1005
    .end local v3           #canvas:Landroid/graphics/Canvas;
    .end local v12           #contactId:J
    .end local v14           #drawPhotos:Z
    .end local v20           #matrix:Landroid/graphics/Matrix;
    .end local v21           #photo:Landroid/graphics/Bitmap;
    :cond_c
    const-string v5, "RecipientEditTextView"

    const-string v6, "Unable to draw a background for the chips as it was never set"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private createValidatedEntry(Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/RecipientEntry;
    .locals 6
    .parameter "item"

    .prologue
    .line 2298
    if-nez p1, :cond_0

    .line 2299
    const/4 v1, 0x0

    .line 2317
    :goto_0
    return-object v1

    .line 2305
    :cond_0
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v0

    .line 2306
    .local v0, destination:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v2

    const-wide/16 v4, -0x2

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 2307
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/ex/chips/RecipientEntry;->constructGeneratedEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v1

    .local v1, entry:Lcom/android/ex/chips/RecipientEntry;
    goto :goto_0

    .line 2309
    .end local v1           #entry:Lcom/android/ex/chips/RecipientEntry;
    :cond_1
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/ex/chips/RecipientEntry;->isCreatedRecipient(J)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    invoke-interface {v2, v0}, Landroid/widget/AutoCompleteTextView$Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2313
    :cond_2
    invoke-static {v0}, Lcom/android/ex/chips/RecipientEntry;->constructFakeEntry(Ljava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v1

    .restart local v1       #entry:Lcom/android/ex/chips/RecipientEntry;
    goto :goto_0

    .line 2315
    .end local v1           #entry:Lcom/android/ex/chips/RecipientEntry;
    :cond_3
    move-object v1, p1

    .restart local v1       #entry:Lcom/android/ex/chips/RecipientEntry;
    goto :goto_0
.end method

.method private ellipsizeText(Ljava/lang/CharSequence;Landroid/text/TextPaint;F)Ljava/lang/CharSequence;
    .locals 3
    .parameter "text"
    .parameter "paint"
    .parameter "maxWidth"

    .prologue
    .line 865
    iget v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipFontSize:F

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 866
    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_0

    const-string v0, "RecipientEditTextView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 867
    const-string v0, "RecipientEditTextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max width is negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    :cond_0
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p1, p2, p3, v0}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private expand()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v7, 0x0

    .line 808
    const-string v6, "RecipientEditTextView"

    const-string v8, "[expand]"

    invoke-direct {p0, v6, v8}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    invoke-direct {p0, v11}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setForceEnableBringPointIntoView(Z)V

    .line 812
    iget-boolean v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mShouldShrink:Z

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v6

    if-nez v6, :cond_0

    .line 813
    const v6, 0x7fffffff

    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 816
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 817
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/RecipientChip;

    move-result-object v2

    .line 818
    .local v2, recipients:[Lcom/android/ex/chips/RecipientChip;
    if-eqz v2, :cond_1

    array-length v6, v2

    if-lez v6, :cond_1

    iget-boolean v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHasEllipsizedFirstChip:Z

    if-eqz v6, :cond_1

    .line 819
    aget-object v6, v2, v7

    const/4 v8, -0x1

    invoke-direct {p0, v6, v8}, Lcom/android/ex/chips/MTKRecipientEditTextView;->replaceChipOnSameTextRange(Lcom/android/ex/chips/RecipientChip;I)V

    .line 820
    iput-boolean v7, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHasEllipsizedFirstChip:Z

    .line 824
    .end local v2           #recipients:[Lcom/android/ex/chips/RecipientChip;
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->removeMoreChip()V

    .line 826
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPedingReplaceChips:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPedingReplaceEntries:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_3

    .line 827
    iput-boolean v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDuringReplaceDupChips:Z

    .line 828
    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPedingReplaceChips:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 831
    .local v3, replaceCnt:I
    const/4 v5, 0x0

    .local v5, x:I
    :goto_0
    if-ge v5, v3, :cond_2

    .line 832
    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPedingReplaceChips:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ex/chips/RecipientChip;

    .line 833
    .local v1, oldChip:Lcom/android/ex/chips/RecipientChip;
    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPedingReplaceEntries:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/RecipientEntry;

    .line 834
    .local v0, newEntry:Lcom/android/ex/chips/RecipientEntry;
    invoke-virtual {p0, v1, v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->replaceChip(Lcom/android/ex/chips/RecipientChip;Lcom/android/ex/chips/RecipientEntry;)V

    .line 835
    const-string v6, "RecipientEditTextView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[DuplicateContactReplacement] Expand and replace contact from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 837
    .end local v0           #newEntry:Lcom/android/ex/chips/RecipientEntry;
    .end local v1           #oldChip:Lcom/android/ex/chips/RecipientChip;
    :cond_2
    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPedingReplaceChips:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 838
    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPedingReplaceEntries:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 839
    iput-boolean v7, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDuringReplaceDupChips:Z

    .line 842
    .end local v3           #replaceCnt:I
    .end local v5           #x:I
    :cond_3
    invoke-virtual {p0, v11}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 843
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 844
    .local v4, text:Landroid/text/Editable;
    if-eqz v4, :cond_5

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v6

    if-lez v6, :cond_5

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v6

    :goto_1
    invoke-virtual {p0, v6}, Landroid/widget/EditText;->setSelection(I)V

    .line 847
    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 848
    new-instance v6, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    invoke-direct {v6, p0, v12}, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/MTKRecipientEditTextView$1;)V

    new-array v8, v7, [Ljava/lang/Void;

    invoke-virtual {v6, v8}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 849
    iput-object v12, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    .line 855
    :goto_2
    invoke-direct {p0, v7}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setDisableBringPointIntoView(Z)V

    .line 858
    iget-boolean v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mNoChips:Z

    if-eqz v6, :cond_4

    .line 859
    iput-boolean v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mJustExpanded:Z

    .line 862
    :cond_4
    return-void

    :cond_5
    move v6, v7

    .line 844
    goto :goto_1

    .line 852
    :cond_6
    invoke-direct {p0, v7}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setForceEnableBringPointIntoView(Z)V

    goto :goto_2
.end method

.method private filterInvalidCharacter(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "source"

    .prologue
    .line 3252
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3254
    .local v0, result:Ljava/lang/String;
    const-string v1, "\n"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3256
    const v1, 0xff0c

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 3258
    const v1, 0xff1b

    const/16 v2, 0x3b

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 3260
    const-string v1, "^( *,)+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3262
    const-string v1, "( *,)+"

    const-string v2, ","

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3263
    const-string v1, "(, *)+"

    const-string v2, ", "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3265
    const-string v1, "^( *;)+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3267
    const-string v1, "( *;)+"

    const-string v2, ";"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3268
    const-string v1, "(; *)+"

    const-string v2, "; "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3270
    const-string v1, "^\\s+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3271
    return-object v0
.end method

.method private findChip(I)Lcom/android/ex/chips/RecipientChip;
    .locals 9
    .parameter "offset"

    .prologue
    .line 2163
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    const-class v8, Lcom/android/ex/chips/RecipientChip;

    invoke-interface {v5, v6, v7, v8}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/ex/chips/RecipientChip;

    .line 2165
    .local v1, chips:[Lcom/android/ex/chips/RecipientChip;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, v1

    if-ge v3, v5, :cond_1

    .line 2166
    aget-object v0, v1, v3

    .line 2167
    .local v0, chip:Lcom/android/ex/chips/RecipientChip;
    invoke-direct {p0, v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipStart(Lcom/android/ex/chips/RecipientChip;)I

    move-result v4

    .line 2168
    .local v4, start:I
    invoke-direct {p0, v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipEnd(Lcom/android/ex/chips/RecipientChip;)I

    move-result v2

    .line 2169
    .local v2, end:I
    if-lt p1, v4, :cond_0

    if-gt p1, v2, :cond_0

    .line 2173
    .end local v0           #chip:Lcom/android/ex/chips/RecipientChip;
    .end local v2           #end:I
    .end local v4           #start:I
    :goto_1
    return-object v0

    .line 2165
    .restart local v0       #chip:Lcom/android/ex/chips/RecipientChip;
    .restart local v2       #end:I
    .restart local v4       #start:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2173
    .end local v0           #chip:Lcom/android/ex/chips/RecipientChip;
    .end local v2           #end:I
    .end local v4           #start:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private findText(Landroid/text/Editable;I)I
    .locals 2
    .parameter "text"
    .parameter "offset"

    .prologue
    .line 2156
    invoke-interface {p1, p2}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 2159
    .end local p2
    :goto_0
    return p2

    .restart local p2
    :cond_0
    const/4 p2, -0x1

    goto :goto_0
.end method

.method private focusNext()Z
    .locals 2

    .prologue
    .line 1635
    const/16 v1, 0x82

    invoke-virtual {p0, v1}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .line 1636
    .local v0, next:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1637
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1638
    const/4 v1, 0x1

    .line 1640
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getChipEnd(Lcom/android/ex/chips/RecipientChip;)I
    .locals 1
    .parameter "chip"

    .prologue
    .line 1873
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private getChipInterval()I
    .locals 1

    .prologue
    .line 3818
    const/4 v0, 0x5

    return v0
.end method

.method private getChipStart(Lcom/android/ex/chips/RecipientChip;)I
    .locals 1
    .parameter "chip"

    .prologue
    .line 1869
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private getChipWidth(Lcom/android/ex/chips/RecipientChip;)I
    .locals 1
    .parameter "chip"

    .prologue
    .line 3809
    invoke-virtual {p1}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method private getExcessTopPadding()I
    .locals 2

    .prologue
    .line 682
    sget v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->sExcessTopPadding:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 683
    iget v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipHeight:F

    float-to-int v0, v0

    sput v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->sExcessTopPadding:I

    .line 685
    :cond_0
    sget v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->sExcessTopPadding:I

    return v0
.end method

.method private getLineOfChip(Lcom/android/ex/chips/RecipientChip;)I
    .locals 2
    .parameter "chip"

    .prologue
    .line 3176
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipStart(Lcom/android/ex/chips/RecipientChip;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    goto :goto_0
.end method

.method private getMeasuredMoreSpanWidth(I)I
    .locals 6
    .parameter "count"

    .prologue
    .line 3827
    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3828
    .local v1, moreText:Ljava/lang/String;
    new-instance v0, Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 3829
    .local v0, morePaint:Landroid/text/TextPaint;
    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3830
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    return v2
.end method

.method private getOffsetFromBottom(I)I
    .locals 5
    .parameter "line"

    .prologue
    .line 4062
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_0

    .line 4063
    const/4 v0, 0x0

    .line 4068
    .local v0, bottom:I
    :goto_0
    return v0

    .line 4065
    .end local v0           #bottom:I
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    add-int v1, v2, v3

    .line 4066
    .local v1, offsetFromTop:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    sub-int v3, v1, v3

    sub-int/2addr v2, v3

    neg-int v0, v2

    .restart local v0       #bottom:I
    goto :goto_0
.end method

.method private getTextYOffset(Ljava/lang/String;Landroid/text/TextPaint;I)F
    .locals 4
    .parameter "text"
    .parameter "paint"
    .parameter "height"

    .prologue
    .line 1024
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1025
    .local v0, bounds:Landroid/graphics/Rect;
    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2, p1, v2, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1026
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    invoke-virtual {p2}, Landroid/graphics/Paint;->descent()F

    move-result v3

    float-to-int v3, v3

    sub-int v1, v2, v3

    .line 1027
    .local v1, textHeight:I
    sub-int v2, p3, v1

    div-int/lit8 v2, v2, 0x2

    sub-int v2, p3, v2

    int-to-float v2, v2

    return v2
.end method

.method private handleEdit(II)V
    .locals 9
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v8, -0x1

    .line 1826
    const-string v5, "RecipientEditTextView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[handleEdit] start: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", end: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1827
    if-eq p1, v8, :cond_0

    if-ne p2, v8, :cond_1

    .line 1829
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 1848
    :goto_0
    return-void

    .line 1834
    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1835
    .local v1, editable:Landroid/text/Editable;
    invoke-virtual {p0, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1836
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1837
    .local v4, text:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1838
    invoke-static {v4}, Lcom/android/ex/chips/RecipientEntry;->constructFakeEntry(Ljava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v2

    .line 1839
    .local v2, entry:Lcom/android/ex/chips/RecipientEntry;
    const-string v5, ""

    invoke-static {v1, p1, p2, v5}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 1840
    const/4 v5, 0x0

    invoke-direct {p0, v2, v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createChip(Lcom/android/ex/chips/RecipientEntry;Z)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1841
    .local v0, chipText:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 1842
    .local v3, selEnd:I
    if-eqz v0, :cond_2

    if-le p1, v8, :cond_2

    if-le v3, v8, :cond_2

    .line 1843
    const-string v5, "MTKRecip"

    const-string v6, "[handleEdit] replace"

    invoke-direct {p0, v5, v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printThreadingDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1844
    invoke-interface {v1, p1, v3, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1847
    .end local v0           #chipText:Ljava/lang/CharSequence;
    .end local v2           #entry:Lcom/android/ex/chips/RecipientEntry;
    .end local v3           #selEnd:I
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    goto :goto_0
.end method

.method private handlePasteAndReplace()V
    .locals 4

    .prologue
    .line 3289
    const-string v2, "RecipientEditTextView"

    const-string v3, "[handlePasteAndReplace]"

    invoke-direct {p0, v2, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 3290
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->handlePaste()Ljava/util/ArrayList;

    move-result-object v0

    .line 3291
    .local v0, created:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/ex/chips/RecipientChip;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 3293
    new-instance v1, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/MTKRecipientEditTextView$1;)V

    .line 3294
    .local v1, replace:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3296
    .end local v1           #replace:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;
    :cond_0
    return-void
.end method

.method private handlePasteClip(Landroid/content/ClipData;)V
    .locals 14
    .parameter "clip"

    .prologue
    const/16 v13, 0x20

    .line 3183
    const-string v10, "RecipientEditTextView"

    const-string v11, "[handlePasteClip]"

    invoke-direct {p0, v10, v11}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 3184
    iget-object v10, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v10}, Lcom/android/ex/chips/MTKRecipientEditTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3187
    const/4 v3, 0x0

    .line 3188
    .local v3, index:I
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getLastChip()Lcom/android/ex/chips/RecipientChip;

    move-result-object v4

    .line 3189
    .local v4, lastChip:Lcom/android/ex/chips/RecipientChip;
    if-eqz v4, :cond_0

    .line 3190
    invoke-direct {p0, v4}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipEnd(Lcom/android/ex/chips/RecipientChip;)I

    move-result v10

    add-int/lit8 v3, v10, 0x1

    .line 3192
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v6

    .line 3193
    .local v6, selEnd:I
    if-le v6, v3, :cond_1

    if-nez v6, :cond_4

    .line 3211
    :cond_1
    :goto_0
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v10

    const-string v11, "text/plain"

    invoke-virtual {v10, v11}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 3212
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v10

    if-ge v2, v10, :cond_8

    .line 3213
    invoke-virtual {p1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 3214
    .local v5, paste:Ljava/lang/CharSequence;
    if-eqz v5, :cond_3

    .line 3215
    const-string v10, "RecipientEditTextView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[handlePasteClip] paste text: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 3216
    invoke-direct {p0, v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->filterInvalidCharacter(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 3217
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    .line 3218
    .local v7, start:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 3219
    .local v1, end:I
    const-string v10, "RecipientEditTextView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[handlePasteClip] filtered text: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", start: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", end: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 3220
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 3223
    .local v0, editable:Landroid/text/Editable;
    if-ne v7, v1, :cond_2

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v10

    if-ge v1, v10, :cond_2

    invoke-interface {v0, v7}, Landroid/text/Editable;->charAt(I)C

    move-result v10

    if-ne v10, v13, :cond_2

    .line 3224
    add-int/lit8 v7, v7, 0x1

    .line 3225
    add-int/lit8 v1, v1, 0x1

    .line 3227
    :cond_2
    if-ltz v7, :cond_7

    if-ltz v1, :cond_7

    if-eq v7, v1, :cond_7

    .line 3229
    const-string v10, "MTKRecip"

    const-string v11, "[handlePasteClip] replace"

    invoke-direct {p0, v10, v11}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printThreadingDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 3230
    invoke-interface {v0, v7, v1, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 3231
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v10

    invoke-virtual {p0, v10}, Landroid/widget/EditText;->setSelection(I)V

    .line 3236
    :goto_2
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->handlePasteAndReplace()V

    .line 3212
    .end local v0           #editable:Landroid/text/Editable;
    .end local v1           #end:I
    .end local v7           #start:I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 3197
    .end local v2           #i:I
    .end local v5           #paste:Ljava/lang/CharSequence;
    :cond_4
    move v9, v6

    .line 3198
    .local v9, x:I
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3199
    .local v8, text:Ljava/lang/String;
    :goto_3
    if-le v9, v3, :cond_5

    add-int/lit8 v10, v9, -0x1

    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v13, :cond_5

    .line 3200
    add-int/lit8 v9, v9, -0x1

    goto :goto_3

    .line 3202
    :cond_5
    add-int/lit8 v10, v9, -0x1

    if-le v10, v3, :cond_6

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ge v9, v10, :cond_6

    add-int/lit8 v10, v6, -0x1

    if-gt v9, v10, :cond_6

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v13, :cond_6

    .line 3204
    add-int/lit8 v9, v9, 0x1

    .line 3206
    :cond_6
    const-string v10, "MTKRecip"

    const-string v11, "[handlePasteClip] delete"

    invoke-direct {p0, v10, v11}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printThreadingDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 3207
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10, v9, v6}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto/16 :goto_0

    .line 3234
    .end local v8           #text:Ljava/lang/String;
    .end local v9           #x:I
    .restart local v0       #editable:Landroid/text/Editable;
    .restart local v1       #end:I
    .restart local v2       #i:I
    .restart local v5       #paste:Ljava/lang/CharSequence;
    .restart local v7       #start:I
    :cond_7
    invoke-interface {v0, v1, v5}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_2

    .line 3241
    .end local v0           #editable:Landroid/text/Editable;
    .end local v1           #end:I
    .end local v2           #i:I
    .end local v5           #paste:Ljava/lang/CharSequence;
    .end local v7           #start:I
    :cond_8
    iget-object v10, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAddTextWatcher:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3242
    return-void
.end method

.method private handleReplaceDuplicateChip(Lcom/android/ex/chips/RecipientChip;Lcom/android/ex/chips/RecipientEntry;)V
    .locals 4
    .parameter "chip"
    .parameter "newEntry"

    .prologue
    .line 4707
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 4708
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->replaceChip(Lcom/android/ex/chips/RecipientChip;Lcom/android/ex/chips/RecipientEntry;)V

    .line 4709
    const-string v0, "RecipientEditTextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DuplicateContactReplacement] Replace contact from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 4715
    :goto_0
    return-void

    .line 4711
    :cond_1
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPedingReplaceChips:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4712
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPedingReplaceEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4713
    const-string v0, "RecipientEditTextView"

    const-string v1, "[DuplicateContactReplacement] Replace contact later."

    invoke-direct {p0, v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isEndChip()Z
    .locals 6

    .prologue
    .line 4075
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 4076
    .local v3, text:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 4077
    .local v1, end:I
    add-int/lit8 v2, v1, -0x1

    .line 4080
    .local v2, i:I
    :goto_0
    if-lez v2, :cond_0

    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .local v0, c:C
    const/16 v4, 0x2c

    if-eq v0, v4, :cond_0

    const/16 v4, 0x3b

    if-eq v0, v4, :cond_0

    .line 4081
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 4084
    .end local v0           #c:C
    :cond_0
    sub-int v4, v1, v2

    const/4 v5, 0x2

    if-gt v4, v5, :cond_1

    if-eqz v2, :cond_1

    .line 4085
    const/4 v4, 0x1

    .line 4087
    :goto_1
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private isInDelete(Lcom/android/ex/chips/RecipientChip;IFF)Z
    .locals 1
    .parameter "chip"
    .parameter "offset"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2805
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientChip;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipEnd(Lcom/android/ex/chips/RecipientChip;)I

    move-result v0

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPhoneNumber(Ljava/lang/String;)Z
    .locals 2
    .parameter "number"

    .prologue
    .line 1455
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1456
    const/4 v1, 0x0

    .line 1461
    :goto_0
    return v1

    .line 1460
    :cond_0
    sget-object v1, Landroid/util/Patterns;->PHONE_PATTERN_MTK:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1461
    .local v0, match:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_0
.end method

.method private isValid(Ljava/lang/String;)Z
    .locals 1
    .parameter "text"

    .prologue
    .line 1532
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    invoke-interface {v0, p1}, Landroid/widget/AutoCompleteTextView$Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method private postHandlePendingChips()V
    .locals 2

    .prologue
    .line 1191
    const-string v0, "RecipientEditTextView"

    const-string v1, "[postHandlePendingChips]"

    invoke-direct {p0, v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHandlePendingChips:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1193
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHandlePendingChips:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1194
    return-void
.end method

.method private printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "logTag"
    .parameter "logContent"

    .prologue
    .line 4726
    sget-boolean v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    .line 4727
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4729
    :cond_0
    return-void
.end method

.method private printThreadingDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "logTag"
    .parameter "logContent"

    .prologue
    .line 4719
    sget-boolean v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->DEBUG_THREADING_LOG:Z

    if-eqz v0, :cond_0

    .line 4720
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4722
    :cond_0
    return-void
.end method

.method private putOffsetInRange(I)I
    .locals 9
    .parameter "o"

    .prologue
    .line 2129
    move v3, p1

    .line 2130
    .local v3, offset:I
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    .line 2131
    .local v6, text:Landroid/text/Editable;
    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v2

    .line 2133
    .local v2, length:I
    move v5, v2

    .line 2134
    .local v5, realLength:I
    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 2135
    invoke-interface {v6, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-ne v7, v8, :cond_0

    .line 2136
    add-int/lit8 v5, v5, -0x1

    .line 2134
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2144
    :cond_0
    if-lt v3, v5, :cond_1

    move v4, v3

    .line 2152
    .end local v3           #offset:I
    .local v4, offset:I
    :goto_1
    return v4

    .line 2147
    .end local v4           #offset:I
    .restart local v3       #offset:I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2148
    .local v0, editable:Landroid/text/Editable;
    :goto_2
    if-ltz v3, :cond_2

    invoke-direct {p0, v0, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->findText(Landroid/text/Editable;I)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    invoke-direct {p0, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->findChip(I)Lcom/android/ex/chips/RecipientChip;

    move-result-object v7

    if-nez v7, :cond_2

    .line 2150
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_2
    move v4, v3

    .line 2152
    .end local v3           #offset:I
    .restart local v4       #offset:I
    goto :goto_1
.end method

.method private recoverLayout()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 4580
    const-string v0, "RecipientEditTextView"

    const-string v1, "[recoverLayout]"

    invoke-direct {p0, v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 4581
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 4582
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    move v2, v6

    .line 4583
    .local v2, hintWant:I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v1

    new-instance v3, Landroid/text/BoringLayout$Metrics;

    invoke-direct {v3}, Landroid/text/BoringLayout$Metrics;-><init>()V

    new-instance v4, Landroid/text/BoringLayout$Metrics;

    invoke-direct {v4}, Landroid/text/BoringLayout$Metrics;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v5

    sub-int v5, v0, v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 4586
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4587
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4588
    return-void

    .line 4582
    .end local v2           #hintWant:I
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v2

    goto :goto_0
.end method

.method private registerGlobalLayoutListener()V
    .locals 2

    .prologue
    .line 4162
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 4163
    .local v0, viewTreeObs:Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-nez v1, :cond_0

    .line 4164
    new-instance v1, Lcom/android/ex/chips/MTKRecipientEditTextView$9;

    invoke-direct {v1, p0}, Lcom/android/ex/chips/MTKRecipientEditTextView$9;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    iput-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 4201
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 4203
    :cond_0
    return-void
.end method

.method private replaceChipOnSameTextRange(Lcom/android/ex/chips/RecipientChip;I)V
    .locals 9
    .parameter "currentChip"
    .parameter "newChipWidth"

    .prologue
    const/4 v6, 0x0

    .line 3840
    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipStart(Lcom/android/ex/chips/RecipientChip;)I

    move-result v3

    .line 3841
    .local v3, start:I
    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipEnd(Lcom/android/ex/chips/RecipientChip;)I

    move-result v1

    .line 3842
    .local v1, end:I
    const-string v5, "RecipientEditTextView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[replaceChipOnSameTextRange] start: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", end: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientChip;->getValue()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v7}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 3843
    iput p2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mLimitedWidthForSpan:I

    .line 3844
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v2

    .line 3845
    .local v2, entry:Lcom/android/ex/chips/RecipientEntry;
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const/4 v5, 0x1

    :goto_0
    invoke-direct {p0, v7, v3, v6, v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->constructChipSpan(Lcom/android/ex/chips/RecipientEntry;IZZ)Lcom/android/ex/chips/RecipientChip;

    move-result-object v0

    .line 3848
    .local v0, ellipsizeRecipient:Lcom/android/ex/chips/RecipientChip;
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mLimitedWidthForSpan:I

    .line 3849
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v5

    invoke-interface {v5, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 3850
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 3851
    .local v4, text:Landroid/text/Editable;
    const-string v5, ""

    invoke-static {v4, v3, v1, v5}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 3852
    const-string v5, "MTKRecip"

    const-string v6, "[replaceChipOnSameTextRange] setSpan"

    invoke-direct {p0, v5, v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printThreadingDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 3853
    const/16 v5, 0x21

    invoke-interface {v4, v0, v3, v1, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 3854
    return-void

    .end local v0           #ellipsizeRecipient:Lcom/android/ex/chips/RecipientChip;
    .end local v4           #text:Landroid/text/Editable;
    :cond_1
    move v5, v6

    .line 3845
    goto :goto_0
.end method

.method private rotateToLandscape()V
    .locals 29

    .prologue
    .line 4304
    const-string v26, "RecipientEditTextView"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "[rotateToLandscape] current view width="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", height="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", line count="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4305
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/RecipientChip;

    move-result-object v23

    .line 4306
    .local v23, recipients:[Lcom/android/ex/chips/RecipientChip;
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v22, v0

    .line 4308
    .local v22, numRecipients:I
    if-eqz v23, :cond_0

    if-nez v22, :cond_1

    .line 4412
    :cond_0
    :goto_0
    return-void

    .line 4313
    :cond_1
    const/16 v26, 0x0

    aget-object v26, v23, v26

    const/16 v27, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->replaceChipOnSameTextRange(Lcom/android/ex/chips/RecipientChip;I)V

    .line 4314
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHasEllipsizedFirstChip:Z

    .line 4315
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/RecipientChip;

    move-result-object v23

    .line 4317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 4321
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->calculateAvailableWidth(Z)F

    move-result v26

    move/from16 v0, v26

    float-to-int v14, v0

    .line 4322
    .local v14, innerWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Rect;->width()I

    move-result v21

    .line 4323
    .local v21, moreSpanWidth:I
    invoke-direct/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipInterval()I

    move-result v7

    .line 4324
    .local v7, chipInterval:I
    move v4, v14

    .line 4325
    .local v4, availableSpace:I
    move/from16 v17, v4

    .line 4327
    .local v17, leftSpace:I
    const/16 v26, 0x1

    move/from16 v0, v22

    move/from16 v1, v26

    if-ne v0, v1, :cond_2

    .line 4328
    add-int v26, v21, v7

    sub-int v4, v4, v26

    .line 4329
    const/16 v26, 0x0

    aget-object v26, v23, v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipWidth(Lcom/android/ex/chips/RecipientChip;)I

    move-result v26

    sub-int v26, v4, v26

    if-gez v26, :cond_2

    .line 4330
    const/16 v26, 0x0

    aget-object v26, v23, v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v4}, Lcom/android/ex/chips/MTKRecipientEditTextView;->replaceChipOnSameTextRange(Lcom/android/ex/chips/RecipientChip;I)V

    .line 4331
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHasEllipsizedFirstChip:Z

    goto :goto_0

    .line 4336
    :cond_2
    const/4 v10, 0x0

    .line 4338
    .local v10, currIndex:I
    const/4 v10, 0x0

    :goto_1
    move/from16 v0, v22

    if-ge v10, v0, :cond_3

    .line 4339
    aget-object v26, v23, v10

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipWidth(Lcom/android/ex/chips/RecipientChip;)I

    move-result v26

    add-int v26, v26, v7

    sub-int v17, v17, v26

    .line 4340
    if-gtz v17, :cond_5

    .line 4346
    :cond_3
    const/4 v13, 0x0

    .line 4347
    .local v13, i:I
    const/4 v13, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v13, v0, :cond_4

    .line 4348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/ex/chips/RecipientChip;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipWidth(Lcom/android/ex/chips/RecipientChip;)I

    move-result v26

    add-int v26, v26, v7

    sub-int v17, v17, v26

    .line 4349
    if-gtz v17, :cond_6

    .line 4354
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-ne v13, v0, :cond_8

    .line 4355
    if-ltz v17, :cond_7

    .line 4357
    invoke-direct/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->expand()V

    goto/16 :goto_0

    .line 4338
    .end local v13           #i:I
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 4347
    .restart local v13       #i:I
    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 4360
    :cond_7
    add-int/lit8 v13, v13, -0x1

    .line 4365
    :cond_8
    sub-int v17, v17, v21

    .line 4366
    const/16 v16, 0x0

    .line 4367
    .local v16, j:I
    move/from16 v16, v13

    :goto_3
    if-ltz v16, :cond_9

    .line 4368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/ex/chips/RecipientChip;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipWidth(Lcom/android/ex/chips/RecipientChip;)I

    move-result v26

    add-int v26, v26, v7

    add-int v17, v17, v26

    .line 4369
    if-ltz v17, :cond_b

    .line 4375
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v24

    .line 4376
    .local v24, spannable:Landroid/text/Spannable;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    .line 4377
    .local v11, editable:Landroid/text/Editable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v20

    .line 4378
    .local v20, moreSpanStart:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v19

    .line 4379
    .local v19, moreSpanEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 4380
    add-int/lit8 v26, v22, -0x1

    aget-object v26, v23, v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    .line 4381
    .local v12, end:I
    const/4 v8, 0x0

    .line 4382
    .local v8, chipStart:I
    move v6, v12

    .line 4384
    .local v6, chipEnd:I
    const/4 v5, 0x0

    .line 4385
    .local v5, chip:Lcom/android/ex/chips/RecipientChip;
    const/4 v15, 0x0

    .local v15, iteration:I
    :goto_4
    move/from16 v0, v16

    if-ge v15, v0, :cond_c

    .line 4386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #chip:Lcom/android/ex/chips/RecipientChip;
    check-cast v5, Lcom/android/ex/chips/RecipientChip;

    .line 4388
    .restart local v5       #chip:Lcom/android/ex/chips/RecipientChip;
    invoke-virtual {v5}, Lcom/android/ex/chips/RecipientChip;->getOriginalText()Ljava/lang/CharSequence;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 4393
    .local v25, token:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    .line 4394
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v26

    add-int v6, v8, v26

    .line 4396
    const/16 v26, -0x1

    move/from16 v0, v26

    if-eq v8, v0, :cond_a

    .line 4397
    const-string v26, "MTKRecip"

    const-string v27, "[rotateToLandscape] setSpan"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printThreadingDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 4398
    const/16 v26, 0x21

    move/from16 v0, v26

    invoke-interface {v11, v5, v8, v6, v0}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 4401
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4385
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 4367
    .end local v5           #chip:Lcom/android/ex/chips/RecipientChip;
    .end local v6           #chipEnd:I
    .end local v8           #chipStart:I
    .end local v11           #editable:Landroid/text/Editable;
    .end local v12           #end:I
    .end local v15           #iteration:I
    .end local v19           #moreSpanEnd:I
    .end local v20           #moreSpanStart:I
    .end local v24           #spannable:Landroid/text/Spannable;
    .end local v25           #token:Ljava/lang/String;
    :cond_b
    add-int/lit8 v16, v16, -0x1

    goto/16 :goto_3

    .line 4405
    .restart local v5       #chip:Lcom/android/ex/chips/RecipientChip;
    .restart local v6       #chipEnd:I
    .restart local v8       #chipStart:I
    .restart local v11       #editable:Landroid/text/Editable;
    .restart local v12       #end:I
    .restart local v15       #iteration:I
    .restart local v19       #moreSpanEnd:I
    .restart local v20       #moreSpanStart:I
    .restart local v24       #spannable:Landroid/text/Spannable;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createMoreSpan(I)Lcom/android/ex/chips/MTKRecipientEditTextView$MoreImageSpan;

    move-result-object v18

    .line 4406
    .local v18, moreSpan:Lcom/android/ex/chips/MTKRecipientEditTextView$MoreImageSpan;
    new-instance v9, Landroid/text/SpannableString;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v26

    add-int/lit8 v27, v6, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v9, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 4407
    .local v9, chipText:Landroid/text/SpannableString;
    const/16 v26, 0x0

    invoke-virtual {v9}, Landroid/text/SpannableString;->length()I

    move-result v27

    const/16 v28, 0x21

    move-object/from16 v0, v18

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 4408
    const-string v26, "MTKRecip"

    const-string v27, "[rotateToLandscape] replace"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printThreadingDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 4409
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v26

    add-int/lit8 v27, v6, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v19

    invoke-interface {v0, v1, v2, v9}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 4410
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    .line 4411
    const-string v26, "RecipientEditTextView"

    const-string v27, "[rotateToLandscape] end"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private rotateToPortrait()V
    .locals 25

    .prologue
    .line 4220
    const-string v22, "RecipientEditTextView"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[rotateToPortrait] current view width="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", height="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", line count="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4221
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/RecipientChip;

    move-result-object v17

    .line 4222
    .local v17, recipients:[Lcom/android/ex/chips/RecipientChip;
    move-object/from16 v0, v17

    array-length v15, v0

    .line 4224
    .local v15, numRecipients:I
    if-eqz v17, :cond_0

    if-nez v15, :cond_1

    .line 4298
    :cond_0
    :goto_0
    return-void

    .line 4228
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    move-object/from16 v22, v0

    if-nez v22, :cond_2

    .line 4229
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createMoreChip()V

    goto :goto_0

    .line 4233
    :cond_2
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->calculateAvailableWidth(Z)F

    move-result v22

    move/from16 v0, v22

    float-to-int v8, v0

    .line 4234
    .local v8, innerWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->width()I

    move-result v14

    .line 4235
    .local v14, moreSpanWidth:I
    invoke-direct/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipInterval()I

    move-result v4

    .line 4236
    .local v4, chipInterval:I
    sub-int v22, v8, v14

    sub-int v3, v22, v4

    .line 4237
    .local v3, availableSpace:I
    move v11, v3

    .line 4239
    .local v11, leftSpace:I
    const/4 v6, 0x0

    .line 4241
    .local v6, currIndex:I
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v15, :cond_3

    .line 4242
    aget-object v22, v17, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipWidth(Lcom/android/ex/chips/RecipientChip;)I

    move-result v22

    add-int v22, v22, v4

    sub-int v11, v11, v22

    .line 4243
    if-gtz v11, :cond_5

    .line 4248
    :cond_3
    if-ne v6, v15, :cond_4

    .line 4249
    if-gez v11, :cond_0

    .line 4253
    add-int/lit8 v6, v6, -0x1

    .line 4257
    :cond_4
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v15, v0, :cond_6

    .line 4258
    if-nez v6, :cond_0

    if-gez v11, :cond_0

    .line 4260
    const/16 v22, 0x0

    aget-object v22, v17, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->replaceChipOnSameTextRange(Lcom/android/ex/chips/RecipientChip;I)V

    .line 4261
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHasEllipsizedFirstChip:Z

    goto :goto_0

    .line 4241
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 4265
    :cond_6
    if-nez v6, :cond_7

    .line 4266
    add-int/lit8 v6, v6, 0x1

    .line 4267
    if-gez v11, :cond_7

    .line 4269
    const/16 v22, 0x0

    aget-object v22, v17, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->replaceChipOnSameTextRange(Lcom/android/ex/chips/RecipientChip;I)V

    .line 4270
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHasEllipsizedFirstChip:Z

    .line 4275
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v20

    .line 4276
    .local v20, spannable:Landroid/text/Spannable;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v21

    .line 4277
    .local v21, text:Landroid/text/Editable;
    aget-object v22, v17, v6

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v16

    .line 4278
    .local v16, recipientSpanStart:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v13

    .line 4279
    .local v13, moreSpanEnd:I
    const/4 v9, 0x0

    .line 4280
    .local v9, j:I
    move v7, v6

    .local v7, i:I
    move v10, v9

    .end local v9           #j:I
    .local v10, j:I
    :goto_2
    if-ge v7, v15, :cond_a

    .line 4281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    add-int/lit8 v9, v10, 0x1

    .end local v10           #j:I
    .restart local v9       #j:I
    aget-object v23, v17, v7

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v10, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    aget-object v23, v17, v7

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_9

    .line 4283
    :cond_8
    aget-object v22, v17, v7

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v19

    .line 4284
    .local v19, spanStart:I
    aget-object v22, v17, v7

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v18

    .line 4285
    .local v18, spanEnd:I
    aget-object v22, v17, v7

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/android/ex/chips/RecipientChip;->setOriginalText(Ljava/lang/String;)V

    .line 4287
    .end local v18           #spanEnd:I
    .end local v19           #spanStart:I
    :cond_9
    aget-object v22, v17, v7

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 4280
    add-int/lit8 v7, v7, 0x1

    move v10, v9

    .end local v9           #j:I
    .restart local v10       #j:I
    goto :goto_2

    .line 4289
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 4290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createMoreSpan(I)Lcom/android/ex/chips/MTKRecipientEditTextView$MoreImageSpan;

    move-result-object v12

    .line 4291
    .local v12, moreSpan:Lcom/android/ex/chips/MTKRecipientEditTextView$MoreImageSpan;
    new-instance v5, Landroid/text/SpannableString;

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-interface {v0, v1, v13}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v5, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 4292
    .local v5, chipText:Landroid/text/SpannableString;
    const/16 v22, 0x0

    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v23

    const/16 v24, 0x21

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v5, v12, v0, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 4293
    const-string v22, "MTKRecip"

    const-string v23, "[rotateToPortrait] replace"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printThreadingDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 4294
    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-interface {v0, v1, v13, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 4295
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    .line 4297
    const-string v22, "RecipientEditTextView"

    const-string v23, "[rotateToPortrait] end"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private scrollBottomIntoView()V
    .locals 7

    .prologue
    .line 705
    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mShouldShrink:Z

    if-eqz v4, :cond_0

    .line 706
    const/4 v4, 0x2

    new-array v3, v4, [I

    .line 707
    .local v3, location:[I
    invoke-virtual {p0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 708
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 709
    .local v2, height:I
    const/4 v4, 0x1

    aget v4, v3, v4

    add-int v0, v4, v2

    .line 713
    .local v0, currentPos:I
    iget v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipHeight:F

    float-to-int v4, v4

    iget v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mActionBarHeight:I

    add-int/2addr v4, v5

    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getExcessTopPadding()I

    move-result v5

    add-int v1, v4, v5

    .line 714
    .local v1, desiredPos:I
    if-le v0, v1, :cond_0

    .line 715
    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mScrollView:Landroid/widget/ScrollView;

    const/4 v5, 0x0

    sub-int v6, v0, v1

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->scrollBy(II)V

    .line 718
    .end local v0           #currentPos:I
    .end local v1           #desiredPos:I
    .end local v2           #height:I
    .end local v3           #location:[I
    :cond_0
    return-void
.end method

.method private scrollLineIntoView(I)V
    .locals 3
    .parameter "line"

    .prologue
    .line 2065
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    .line 2067
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->calculateOffsetFromBottom(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 2069
    :cond_0
    return-void
.end method

.method private selectChip(Lcom/android/ex/chips/RecipientChip;)Lcom/android/ex/chips/RecipientChip;
    .locals 14
    .parameter "currentChip"

    .prologue
    const/16 v13, 0x21

    const/4 v3, 0x0

    const/4 v12, -0x1

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2654
    const-string v6, "RecipientEditTextView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[selectChip] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientChip;->getValue()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2655
    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->shouldShowEditableText(Lcom/android/ex/chips/RecipientChip;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2656
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientChip;->getValue()Ljava/lang/CharSequence;

    move-result-object v5

    .line 2657
    .local v5, text:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2658
    .local v1, editable:Landroid/text/Editable;
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->removeChip(Lcom/android/ex/chips/RecipientChip;)V

    .line 2659
    invoke-interface {v1, v5}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 2660
    invoke-virtual {p0, v11}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 2661
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/EditText;->setSelection(I)V

    .line 2662
    invoke-direct {p0, v10}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setDisableBringPointIntoView(Z)V

    .line 2718
    .end local v1           #editable:Landroid/text/Editable;
    .end local v5           #text:Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-object v3

    .line 2664
    :cond_1
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientChip;->getContactId()J

    move-result-wide v6

    const-wide/16 v8, -0x2

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    .line 2665
    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipStart(Lcom/android/ex/chips/RecipientChip;)I

    move-result v4

    .line 2666
    .local v4, start:I
    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipEnd(Lcom/android/ex/chips/RecipientChip;)I

    move-result v2

    .line 2667
    .local v2, end:I
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v6

    invoke-interface {v6, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2670
    :try_start_0
    iget-boolean v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mNoChips:Z

    if-nez v6, :cond_0

    .line 2673
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {p0, v6, v4, v7, v8}, Lcom/android/ex/chips/MTKRecipientEditTextView;->constructChipSpan(Lcom/android/ex/chips/RecipientEntry;IZZ)Lcom/android/ex/chips/RecipientChip;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2678
    .local v3, newChip:Lcom/android/ex/chips/RecipientChip;
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2679
    .restart local v1       #editable:Landroid/text/Editable;
    const-string v6, ""

    invoke-static {v1, v4, v2, v6}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 2680
    if-eq v4, v12, :cond_2

    if-ne v2, v12, :cond_4

    .line 2681
    :cond_2
    const-string v6, "RecipientEditTextView"

    const-string v7, "The chip being selected no longer exists but should."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2686
    :goto_1
    invoke-virtual {v3, v11}, Lcom/android/ex/chips/RecipientChip;->setSelected(Z)V

    .line 2687
    invoke-direct {p0, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->shouldShowEditableText(Lcom/android/ex/chips/RecipientChip;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2688
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    invoke-direct {p0, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipStart(Lcom/android/ex/chips/RecipientChip;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->scrollLineIntoView(I)V

    .line 2690
    :cond_3
    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAddressPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {p0, v3, v6, v7, v8}, Lcom/android/ex/chips/MTKRecipientEditTextView;->showAddress(Lcom/android/ex/chips/RecipientChip;Landroid/widget/ListPopupWindow;ILandroid/content/Context;)V

    .line 2691
    invoke-virtual {p0, v10}, Landroid/widget/TextView;->setCursorVisible(Z)V

    goto :goto_0

    .line 2674
    .end local v1           #editable:Landroid/text/Editable;
    .end local v3           #newChip:Lcom/android/ex/chips/RecipientChip;
    :catch_0
    move-exception v0

    .line 2675
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v6, "RecipientEditTextView"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2683
    .end local v0           #e:Ljava/lang/NullPointerException;
    .restart local v1       #editable:Landroid/text/Editable;
    .restart local v3       #newChip:Lcom/android/ex/chips/RecipientChip;
    :cond_4
    const-string v6, "MTKRecip"

    const-string v7, "[selectChip] setSpan"

    invoke-direct {p0, v6, v7}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printThreadingDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2684
    invoke-interface {v1, v3, v4, v2, v13}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 2694
    .end local v1           #editable:Landroid/text/Editable;
    .end local v2           #end:I
    .end local v3           #newChip:Lcom/android/ex/chips/RecipientChip;
    .end local v4           #start:I
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipStart(Lcom/android/ex/chips/RecipientChip;)I

    move-result v4

    .line 2695
    .restart local v4       #start:I
    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipEnd(Lcom/android/ex/chips/RecipientChip;)I

    move-result v2

    .line 2696
    .restart local v2       #end:I
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v6

    invoke-interface {v6, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2699
    :try_start_1
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {p0, v6, v4, v7, v8}, Lcom/android/ex/chips/MTKRecipientEditTextView;->constructChipSpan(Lcom/android/ex/chips/RecipientEntry;IZZ)Lcom/android/ex/chips/RecipientChip;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 2704
    .restart local v3       #newChip:Lcom/android/ex/chips/RecipientChip;
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2705
    .restart local v1       #editable:Landroid/text/Editable;
    const-string v6, ""

    invoke-static {v1, v4, v2, v6}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 2706
    if-eq v4, v12, :cond_6

    if-ne v2, v12, :cond_8

    .line 2707
    :cond_6
    const-string v6, "RecipientEditTextView"

    const-string v7, "The chip being selected no longer exists but should."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2712
    :goto_2
    invoke-virtual {v3, v11}, Lcom/android/ex/chips/RecipientChip;->setSelected(Z)V

    .line 2713
    invoke-direct {p0, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->shouldShowEditableText(Lcom/android/ex/chips/RecipientChip;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2714
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    invoke-direct {p0, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipStart(Lcom/android/ex/chips/RecipientChip;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->scrollLineIntoView(I)V

    .line 2716
    :cond_7
    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {p0, v3, v6, v7, v8}, Lcom/android/ex/chips/MTKRecipientEditTextView;->showAlternates(Lcom/android/ex/chips/RecipientChip;Landroid/widget/ListPopupWindow;ILandroid/content/Context;)V

    .line 2717
    invoke-virtual {p0, v10}, Landroid/widget/TextView;->setCursorVisible(Z)V

    goto/16 :goto_0

    .line 2700
    .end local v1           #editable:Landroid/text/Editable;
    .end local v3           #newChip:Lcom/android/ex/chips/RecipientChip;
    :catch_1
    move-exception v0

    .line 2701
    .restart local v0       #e:Ljava/lang/NullPointerException;
    const-string v6, "RecipientEditTextView"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2709
    .end local v0           #e:Ljava/lang/NullPointerException;
    .restart local v1       #editable:Landroid/text/Editable;
    .restart local v3       #newChip:Lcom/android/ex/chips/RecipientChip;
    :cond_8
    const-string v6, "MTKRecip"

    const-string v7, "[selectChip] setSpan"

    invoke-direct {p0, v6, v7}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printThreadingDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2710
    invoke-interface {v1, v3, v4, v2, v13}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2
.end method

.method private setChipDimensions(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v9, 0x1

    const/high16 v8, -0x4080

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 1085
    sget-object v3, Lcom/android/ex/chips/R$styleable;->RecipientEditTextView:[I

    invoke-virtual {p1, p2, v3, v7, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1087
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1088
    .local v1, r:Landroid/content/res/Resources;
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipBackground:Landroid/graphics/drawable/Drawable;

    .line 1089
    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    .line 1090
    sget v3, Lcom/android/ex/chips/R$drawable;->chip_background:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipBackground:Landroid/graphics/drawable/Drawable;

    .line 1092
    :cond_0
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipBackgroundPressed:Landroid/graphics/drawable/Drawable;

    .line 1094
    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipBackgroundPressed:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    .line 1095
    sget v3, Lcom/android/ex/chips/R$drawable;->chip_background_selected:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipBackgroundPressed:Landroid/graphics/drawable/Drawable;

    .line 1097
    :cond_1
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipDelete:Landroid/graphics/drawable/Drawable;

    .line 1098
    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipDelete:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_2

    .line 1099
    sget v3, Lcom/android/ex/chips/R$drawable;->chip_delete:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipDelete:Landroid/graphics/drawable/Drawable;

    .line 1101
    :cond_2
    const/4 v3, 0x5

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipPadding:I

    .line 1102
    iget v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipPadding:I

    if-ne v3, v6, :cond_3

    .line 1103
    sget v3, Lcom/android/ex/chips/R$dimen;->chip_padding:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipPadding:I

    .line 1105
    :cond_3
    const/4 v3, 0x4

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAlternatesLayout:I

    .line 1107
    iget v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAlternatesLayout:I

    if-ne v3, v6, :cond_4

    .line 1108
    sget v3, Lcom/android/ex/chips/R$layout;->chips_alternate_item:I

    iput v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAlternatesLayout:I

    .line 1111
    :cond_4
    sget v3, Lcom/android/ex/chips/R$drawable;->ic_contact_picture:I

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDefaultContactPhoto:Landroid/graphics/Bitmap;

    .line 1113
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/android/ex/chips/R$layout;->more_item:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    .line 1115
    const/4 v3, 0x6

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipHeight:F

    .line 1116
    iget v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipHeight:F

    cmpl-float v3, v3, v8

    if-nez v3, :cond_5

    .line 1117
    sget v3, Lcom/android/ex/chips/R$dimen;->chip_height:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipHeight:F

    .line 1119
    :cond_5
    const/4 v3, 0x7

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipFontSize:F

    .line 1120
    iget v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipFontSize:F

    cmpl-float v3, v3, v8

    if-nez v3, :cond_6

    .line 1121
    sget v3, Lcom/android/ex/chips/R$dimen;->chip_text_size:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipFontSize:F

    .line 1123
    :cond_6
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mInvalidChipBackground:Landroid/graphics/drawable/Drawable;

    .line 1125
    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mInvalidChipBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_7

    .line 1126
    sget v3, Lcom/android/ex/chips/R$drawable;->chip_background_invalid:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mInvalidChipBackground:Landroid/graphics/drawable/Drawable;

    .line 1128
    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/ex/chips/R$dimen;->line_spacing_extra:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mLineSpacingExtra:F

    .line 1130
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 1131
    .local v2, tv:Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x10102eb

    invoke-virtual {v3, v4, v2, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1132
    iget v3, v2, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v3

    iput v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mActionBarHeight:I

    .line 1136
    :cond_8
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1137
    return-void
.end method

.method private setChipProcessingMode(Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 4543
    const-string v0, "RecipientEditTextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setChipProcessingMode] from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipProcessingMode:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 4544
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipProcessingMode:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    .line 4545
    return-void
.end method

.method private setDisableBringPointIntoView(Z)V
    .locals 3
    .parameter "disableBringPointIntoView"

    .prologue
    .line 3944
    const-string v0, "RecipientEditTextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setDisableBringPointIntoView] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 3945
    iput-boolean p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDisableBringPointIntoView:Z

    .line 3946
    return-void
.end method

.method private setForceEnableBringPointIntoView(Z)V
    .locals 3
    .parameter "value"

    .prologue
    .line 3953
    const-string v0, "RecipientEditTextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setForceEnableBringPointIntoView] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 3954
    iput-boolean p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mForceEnableBringPointIntoView:Z

    .line 3955
    return-void
.end method

.method private shouldCreateChip(II)Z
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1811
    iget-boolean v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mNoChips:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->alreadyHasChip(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldShowEditableText(Lcom/android/ex/chips/RecipientChip;)Z
    .locals 4
    .parameter "currentChip"

    .prologue
    .line 2723
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientChip;->getContactId()J

    move-result-wide v0

    .line 2724
    .local v0, contactId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v2

    if-nez v2, :cond_1

    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private showAddress(Lcom/android/ex/chips/RecipientChip;Landroid/widget/ListPopupWindow;ILandroid/content/Context;)V
    .locals 7
    .parameter "currentChip"
    .parameter "popup"
    .parameter "width"
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    .line 2730
    const-string v3, "RecipientEditTextView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[showAddress] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientChip;->getValue()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2731
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipStart(Lcom/android/ex/chips/RecipientChip;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 2732
    .local v1, line:I
    invoke-direct {p0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getOffsetFromBottom(I)I

    move-result v0

    .line 2735
    .local v0, bottom:I
    invoke-virtual {p2, p3}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 2736
    invoke-virtual {p2, p0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 2737
    iget v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDefaultVerticalOffset:I

    add-int/2addr v3, v0

    invoke-virtual {p2, v3}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 2738
    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createSingleAddressAdapter(Lcom/android/ex/chips/RecipientChip;)Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2739
    new-instance v3, Lcom/android/ex/chips/MTKRecipientEditTextView$8;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/ex/chips/MTKRecipientEditTextView$8;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/RecipientChip;Landroid/widget/ListPopupWindow;)V

    invoke-virtual {p2, v3}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2746
    invoke-virtual {p2}, Landroid/widget/ListPopupWindow;->show()V

    .line 2747
    invoke-virtual {p2}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 2748
    .local v2, listView:Landroid/widget/ListView;
    invoke-virtual {v2, v6}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 2749
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 2750
    return-void
.end method

.method private showAlternates(Lcom/android/ex/chips/RecipientChip;Landroid/widget/ListPopupWindow;ILandroid/content/Context;)V
    .locals 7
    .parameter "currentChip"
    .parameter "alternatesPopup"
    .parameter "width"
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 2073
    invoke-direct {p0, v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setDisableBringPointIntoView(Z)V

    .line 2074
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipStart(Lcom/android/ex/chips/RecipientChip;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 2075
    .local v1, line:I
    invoke-direct {p0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getOffsetFromBottom(I)I

    move-result v0

    .line 2078
    .local v0, bottom:I
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHandlingAlternatesDropDown:Z

    .line 2079
    invoke-virtual {p2, p3}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 2080
    invoke-virtual {p2, p0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 2081
    iget v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDefaultVerticalOffset:I

    add-int/2addr v3, v0

    invoke-virtual {p2, v3}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 2082
    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createAlternatesAdapter(Lcom/android/ex/chips/RecipientChip;)Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2083
    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAlternatesListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p2, v3}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2085
    iput v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mCheckedItem:I

    .line 2086
    invoke-virtual {p2}, Landroid/widget/ListPopupWindow;->show()V

    .line 2087
    invoke-virtual {p2}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 2088
    .local v2, listView:Landroid/widget/ListView;
    invoke-virtual {v2, v6}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 2093
    iget v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mCheckedItem:I

    if-eq v3, v5, :cond_0

    .line 2094
    iget v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mCheckedItem:I

    invoke-virtual {v2, v3, v6}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 2095
    iput v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mCheckedItem:I

    .line 2097
    :cond_0
    return-void
.end method

.method private showCopyDialog(Ljava/lang/String;)V
    .locals 7
    .parameter "address"

    .prologue
    const/4 v6, 0x1

    .line 3695
    const-string v3, "RecipientEditTextView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[showCopyDialog] address: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 3696
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mCopyAddress:Ljava/lang/String;

    .line 3697
    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mCopyDialog:Landroid/app/Dialog;

    invoke-virtual {v3, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 3698
    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mCopyDialog:Landroid/app/Dialog;

    sget v4, Lcom/android/ex/chips/R$layout;->copy_chip_dialog_layout:I

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 3699
    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mCopyDialog:Landroid/app/Dialog;

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 3700
    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mCopyDialog:Landroid/app/Dialog;

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 3701
    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mCopyDialog:Landroid/app/Dialog;

    const v4, 0x1020019

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 3702
    .local v1, button:Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3704
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3705
    sget v0, Lcom/android/ex/chips/R$string;->copy_number:I

    .line 3709
    .local v0, btnTitleId:I
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3710
    .local v2, buttonTitle:Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3711
    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mCopyDialog:Landroid/app/Dialog;

    invoke-virtual {v3, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3712
    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mCopyDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 3713
    return-void

    .line 3707
    .end local v0           #btnTitleId:I
    .end local v2           #buttonTitle:Ljava/lang/String;
    :cond_0
    sget v0, Lcom/android/ex/chips/R$string;->copy_email:I

    .restart local v0       #btnTitleId:I
    goto :goto_0
.end method

.method private shrink()V
    .locals 14

    .prologue
    const-wide/16 v10, -0x1

    .line 727
    const-string v12, "RecipientEditTextView"

    const-string v13, "[shrink]"

    invoke-direct {p0, v12, v13}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    iget-object v12, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    if-nez v12, :cond_1

    .line 792
    :cond_0
    :goto_0
    return-void

    .line 732
    :cond_1
    iget-boolean v12, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mNoChips:Z

    if-eqz v12, :cond_2

    .line 733
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createMoreChip()V

    goto :goto_0

    .line 738
    :cond_2
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 739
    .local v3, editable:Landroid/text/Editable;
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v12

    if-eqz v12, :cond_0

    .line 742
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v12

    invoke-virtual {p0, v12}, Landroid/widget/EditText;->setSelection(I)V

    .line 745
    iget-object v12, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    if-eqz v12, :cond_5

    iget-object v12, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    invoke-virtual {v12}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v1

    .line 746
    .local v1, contactId:J
    :goto_1
    iget-object v12, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    if-eqz v12, :cond_6

    cmp-long v10, v1, v10

    if-eqz v10, :cond_6

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v10

    if-nez v10, :cond_3

    const-wide/16 v10, -0x2

    cmp-long v10, v1, v10

    if-nez v10, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 748
    :cond_4
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->clearSelectedChip()V

    .line 791
    :goto_2
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createMoreChip()V

    goto :goto_0

    .end local v1           #contactId:J
    :cond_5
    move-wide v1, v10

    .line 745
    goto :goto_1

    .line 750
    .restart local v1       #contactId:J
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v10

    if-gtz v10, :cond_7

    .line 756
    iget-object v10, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDelayedShrink:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 757
    iget-object v10, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDelayedShrink:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 762
    :cond_7
    iget v10, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingChipsCount:I

    if-lez v10, :cond_9

    .line 763
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->postHandlePendingChips()V

    .line 789
    :cond_8
    :goto_3
    iget-object v10, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAddTextWatcher:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 766
    :cond_9
    invoke-direct {p0, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->textIsAllBlank(Landroid/text/Editable;)Z

    move-result v8

    .line 768
    .local v8, textIsAllBlank:Z
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    .line 769
    .local v4, end:I
    iget-object v10, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v10, v3, v4}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v6

    .line 771
    .local v6, start:I
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v10

    const-class v11, Lcom/android/ex/chips/RecipientChip;

    invoke-interface {v10, v6, v4, v11}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/chips/RecipientChip;

    .line 772
    .local v0, chips:[Lcom/android/ex/chips/RecipientChip;
    if-eqz v0, :cond_a

    array-length v10, v0

    if-nez v10, :cond_8

    .line 773
    :cond_a
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    .line 774
    .local v7, text:Landroid/text/Editable;
    iget-object v10, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v10, v7, v6}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v9

    .line 776
    .local v9, whatEnd:I
    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v10

    if-ge v9, v10, :cond_b

    invoke-interface {v7, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v10

    const/16 v11, 0x2c

    if-ne v10, v11, :cond_b

    .line 777
    add-int/lit8 v9, v9, 0x1

    .line 781
    :cond_b
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    .line 782
    .local v5, selEnd:I
    if-eq v9, v5, :cond_c

    if-nez v8, :cond_c

    .line 783
    invoke-direct {p0, v6, v9}, Lcom/android/ex/chips/MTKRecipientEditTextView;->handleEdit(II)V

    goto :goto_3

    .line 785
    :cond_c
    invoke-direct {p0, v6, v4, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->commitChip(IILandroid/text/Editable;)Z

    goto :goto_3
.end method

.method private startDrag(Lcom/android/ex/chips/RecipientChip;)V
    .locals 5
    .parameter "currentChip"

    .prologue
    .line 3641
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v0

    .line 3642
    .local v0, address:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 3645
    .local v1, data:Landroid/content/ClipData;
    new-instance v2, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientChipShadow;

    invoke-direct {v2, p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientChipShadow;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/RecipientChip;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 3649
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->removeChip(Lcom/android/ex/chips/RecipientChip;)V

    .line 3650
    return-void
.end method

.method private submitItemAtPosition(I)V
    .locals 11
    .parameter "position"

    .prologue
    const/4 v10, 0x0

    .line 2267
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    invoke-interface {v7, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/ex/chips/RecipientEntry;

    invoke-direct {p0, v7}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createValidatedEntry(Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v4

    .line 2269
    .local v4, entry:Lcom/android/ex/chips/RecipientEntry;
    if-nez v4, :cond_1

    .line 2295
    :cond_0
    :goto_0
    return-void

    .line 2272
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->clearComposingText()V

    .line 2274
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 2275
    .local v3, end:I
    iget-object v7, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v7, v8, v3}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 2277
    .local v5, start:I
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 2278
    .local v2, editable:Landroid/text/Editable;
    const-string v7, ""

    invoke-static {v2, v5, v3, v7}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 2279
    invoke-direct {p0, v4, v10}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createChip(Lcom/android/ex/chips/RecipientEntry;Z)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2280
    .local v0, chip:Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    if-ltz v5, :cond_2

    if-ltz v3, :cond_2

    .line 2281
    const-string v7, "MTKRecip"

    const-string v8, "[submitItemAtPosition] replace"

    invoke-direct {p0, v7, v8}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printThreadingDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2282
    invoke-interface {v2, v5, v3, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 2284
    :cond_2
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->sanitizeBetween()V

    .line 2286
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2287
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v7

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    add-int/2addr v8, v5

    add-int/lit8 v8, v8, -0x1

    const-class v9, Lcom/android/ex/chips/RecipientChip;

    invoke-interface {v7, v5, v8, v9}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/ex/chips/RecipientChip;

    .line 2288
    .local v1, currChips:[Lcom/android/ex/chips/RecipientChip;
    if-eqz v1, :cond_0

    array-length v7, v1

    if-eqz v7, :cond_0

    .line 2291
    new-instance v6, Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/MTKRecipientEditTextView$1;)V

    .line 2292
    .local v6, task:Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aget-object v8, v1, v10

    aput-object v8, v7, v10

    invoke-virtual {v6, v7}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private tempLogPrint(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8
    .parameter "logTitle"
    .parameter "obj"

    .prologue
    .line 4564
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v5

    invoke-interface {v5, p2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 4565
    .local v4, spanStart:I
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v5

    invoke-interface {v5, p2}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 4566
    .local v0, spanEnd:I
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v5

    invoke-interface {v5, p2}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    .line 4567
    .local v1, spanFlag:I
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 4568
    .local v3, spanName:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 4569
    .local v2, spanID:I
    const-string v5, "RecipientEditTextView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Debug] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ---> spanStart="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", spanEnd="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", spanFlag="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", spanID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", spanName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4571
    return-void
.end method

.method private textIsAllBlank(Landroid/text/Editable;)Z
    .locals 4
    .parameter "e"

    .prologue
    const/4 v1, 0x0

    .line 796
    if-eqz p1, :cond_0

    .line 797
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 798
    invoke-interface {p1, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_1

    .line 804
    .end local v0           #i:I
    :cond_0
    :goto_1
    return v1

    .line 797
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 802
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private tokenizeAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "destination"

    .prologue
    .line 1547
    invoke-static {p1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v0

    .line 1548
    .local v0, tokens:[Landroid/text/util/Rfc822Token;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 1549
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 1551
    .end local p1
    :cond_0
    return-object p1
.end method

.method private tokenizeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "destination"

    .prologue
    .line 1539
    invoke-static {p1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v0

    .line 1540
    .local v0, tokens:[Landroid/text/util/Rfc822Token;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 1541
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object p1

    .line 1543
    .end local p1
    :cond_0
    return-object p1
.end method

.method private unRegisterGlobalLayoutListener()V
    .locals 2

    .prologue
    .line 4209
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v1, :cond_0

    .line 4210
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 4211
    .local v0, viewTreeObs:Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 4212
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 4214
    .end local v0           #viewTreeObs:Landroid/view/ViewTreeObserver;
    :cond_0
    return-void
.end method

.method private unselectChip(Lcom/android/ex/chips/RecipientChip;)V
    .locals 8
    .parameter "chip"

    .prologue
    const/4 v7, -0x1

    .line 2758
    const-string v4, "RecipientEditTextView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[unselectChip] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientChip;->getValue()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2759
    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipStart(Lcom/android/ex/chips/RecipientChip;)I

    move-result v3

    .line 2760
    .local v3, start:I
    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipEnd(Lcom/android/ex/chips/RecipientChip;)I

    move-result v2

    .line 2761
    .local v2, end:I
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2762
    .local v1, editable:Landroid/text/Editable;
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    .line 2763
    if-eq v3, v7, :cond_0

    if-ne v2, v7, :cond_4

    .line 2764
    :cond_0
    const-string v4, "RecipientEditTextView"

    const-string v5, "The chip doesn\'t exist or may be a chip a user was editing"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2765
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 2766
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->commitDefault()Z

    .line 2781
    :cond_1
    :goto_0
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 2782
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 2783
    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v4}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2784
    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v4}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 2787
    :cond_2
    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAddressPopup:Landroid/widget/ListPopupWindow;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAddressPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v4}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2788
    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAddressPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v4}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 2791
    :cond_3
    return-void

    .line 2768
    :cond_4
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2769
    const-string v4, ""

    invoke-static {v1, v3, v2, v4}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 2770
    invoke-interface {v1, p1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 2772
    :try_start_0
    iget-boolean v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mNoChips:Z

    if-nez v4, :cond_1

    .line 2773
    const-string v4, "MTKRecip"

    const-string v5, "[unSelectChip] setSpan"

    invoke-direct {p0, v4, v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printThreadingDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2774
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, v4, v3, v5, v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->constructChipSpan(Lcom/android/ex/chips/RecipientEntry;IZZ)Lcom/android/ex/chips/RecipientChip;

    move-result-object v4

    const/16 v5, 0x21

    invoke-interface {v1, v4, v3, v2, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2777
    :catch_0
    move-exception v0

    .line 2778
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v4, "RecipientEditTextView"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public append(Ljava/lang/CharSequence;II)V
    .locals 8
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    const/16 v7, 0x2c

    .line 554
    iget-boolean v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDuringAppendStrings:Z

    if-eqz v4, :cond_0

    .line 555
    const-string v4, "RecipientEditTextView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[append] (mDuringAppendStrings) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    invoke-super {p0, p1, p2, p3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;II)V

    .line 594
    :goto_0
    return-void

    .line 559
    :cond_0
    const-string v4, "RecipientEditTextView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[append] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    if-eqz v4, :cond_1

    .line 563
    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v4}, Lcom/android/ex/chips/MTKRecipientEditTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 566
    :cond_1
    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingStrings:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v4

    if-lez v4, :cond_3

    .line 569
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 570
    .local v0, displayString:Ljava/lang/String;
    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 574
    .local v3, separatorPos:I
    const/4 v4, -0x1

    if-le v3, v4, :cond_2

    .line 575
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 576
    .local v2, parseDisplayString:Ljava/lang/String;
    const/16 v4, 0x22

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 577
    .local v1, endQuotedTextPos:I
    if-le v1, v3, :cond_2

    .line 578
    invoke-virtual {v2, v7, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v3

    .line 582
    .end local v1           #endQuotedTextPos:I
    .end local v2           #parseDisplayString:Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v4

    if-lez v4, :cond_3

    .line 584
    iget v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingChipsCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingChipsCount:I

    .line 585
    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingChips:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    .end local v0           #displayString:Ljava/lang/String;
    .end local v3           #separatorPos:I
    :cond_3
    iget v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingChipsCount:I

    if-lez v4, :cond_4

    .line 591
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->postHandlePendingChips()V

    .line 593
    :cond_4
    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAddTextWatcher:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public appendList(Lcom/android/ex/chips/MTKRecipientList;)V
    .locals 14
    .parameter "recipientList"

    .prologue
    const/16 v13, 0x2c

    const/4 v12, 0x0

    .line 598
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/ex/chips/MTKRecipientList;->getRecipientCount()I

    move-result v9

    if-gtz v9, :cond_1

    .line 660
    :cond_0
    :goto_0
    return-void

    .line 602
    :cond_1
    invoke-virtual {p1}, Lcom/android/ex/chips/MTKRecipientList;->getRecipientCount()I

    move-result v4

    .line 603
    .local v4, recipientCnt:I
    const-string v9, "RecipientEditTextView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[appendList] Start, count: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const-string v6, ""

    .line 605
    .local v6, str:Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, x:I
    :goto_1
    if-ge v8, v4, :cond_2

    .line 606
    invoke-virtual {p1, v8}, Lcom/android/ex/chips/MTKRecipientList;->getRecipient(I)Lcom/android/ex/chips/MTKRecipient;

    move-result-object v3

    .line 607
    .local v3, recipient:Lcom/android/ex/chips/MTKRecipient;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lcom/android/ex/chips/MTKRecipient;->getFormatString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 605
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 611
    .end local v3           #recipient:Lcom/android/ex/chips/MTKRecipient;
    :cond_2
    iget-object v9, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    if-eqz v9, :cond_3

    .line 612
    iget-object v9, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v9}, Lcom/android/ex/chips/MTKRecipientEditTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 615
    :cond_3
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDuringAppendStrings:Z

    .line 616
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p0, v6, v12, v9}, Lcom/android/ex/chips/MTKRecipientEditTextView;->append(Ljava/lang/CharSequence;II)V

    .line 617
    iput-boolean v12, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDuringAppendStrings:Z

    .line 619
    const-string v9, "RecipientEditTextView"

    const/4 v10, 0x3

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 620
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v4, :cond_4

    .line 621
    invoke-virtual {p1, v8}, Lcom/android/ex/chips/MTKRecipientList;->getRecipient(I)Lcom/android/ex/chips/MTKRecipient;

    move-result-object v3

    .line 622
    .restart local v3       #recipient:Lcom/android/ex/chips/MTKRecipient;
    const-string v9, "RecipientEditTextView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[appendList] Recipient -> Name = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/ex/chips/MTKRecipient;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " & Dest = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/ex/chips/MTKRecipient;->getDestination()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 626
    .end local v3           #recipient:Lcom/android/ex/chips/MTKRecipient;
    :cond_4
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v4, :cond_7

    .line 628
    invoke-virtual {p1, v8}, Lcom/android/ex/chips/MTKRecipientList;->getRecipient(I)Lcom/android/ex/chips/MTKRecipient;

    move-result-object v3

    .line 629
    .restart local v3       #recipient:Lcom/android/ex/chips/MTKRecipient;
    invoke-virtual {v3}, Lcom/android/ex/chips/MTKRecipient;->getFormatString()Ljava/lang/String;

    move-result-object v7

    .line 630
    .local v7, text:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-static {v7}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v9

    if-lez v9, :cond_6

    .line 631
    const-string v9, "RecipientEditTextView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[appendList] perText= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 633
    .local v0, displayString:Ljava/lang/String;
    invoke-virtual {v0, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 637
    .local v5, separatorPos:I
    const/4 v9, -0x1

    if-le v5, v9, :cond_5

    .line 638
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 639
    .local v2, parseDisplayString:Ljava/lang/String;
    const/16 v9, 0x22

    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 640
    .local v1, endQuotedTextPos:I
    if-le v1, v5, :cond_5

    .line 641
    invoke-virtual {v2, v13, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v5

    .line 645
    .end local v1           #endQuotedTextPos:I
    .end local v2           #parseDisplayString:Ljava/lang/String;
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v9

    if-lez v9, :cond_6

    .line 647
    iget v9, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingChipsCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingChipsCount:I

    .line 648
    iget-object v9, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingChips:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    .end local v0           #displayString:Ljava/lang/String;
    .end local v5           #separatorPos:I
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 655
    .end local v3           #recipient:Lcom/android/ex/chips/MTKRecipient;
    .end local v7           #text:Ljava/lang/String;
    :cond_7
    iget v9, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingChipsCount:I

    if-lez v9, :cond_8

    .line 656
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->postHandlePendingChips()V

    .line 658
    :cond_8
    iget-object v9, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAddTextWatcher:Ljava/lang/Runnable;

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 659
    const-string v9, "RecipientEditTextView"

    const-string v10, "[appendList] End"

    invoke-direct {p0, v9, v10}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public bringPointIntoView(I)Z
    .locals 1
    .parameter "offset"

    .prologue
    .line 3963
    iget-boolean v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mForceEnableBringPointIntoView:Z

    if-eqz v0, :cond_0

    .line 3966
    invoke-super {p0, p1}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    move-result v0

    .line 3970
    :goto_0
    return v0

    .line 3967
    :cond_0
    iget-boolean v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDisableBringPointIntoView:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3968
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 3970
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    move-result v0

    goto :goto_0
.end method

.method compareEntries(Lcom/android/ex/chips/RecipientEntry;Lcom/android/ex/chips/RecipientEntry;)Z
    .locals 4
    .parameter "entry1"
    .parameter "entry2"

    .prologue
    .line 3003
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructPressedChip()V
    .locals 10

    .prologue
    .line 4419
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 4420
    .local v1, editable:Landroid/text/Editable;
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v8

    if-lez v8, :cond_3

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v8

    :goto_0
    invoke-virtual {p0, v8}, Landroid/widget/EditText;->setSelection(I)V

    .line 4421
    invoke-direct {p0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->textIsAllBlank(Landroid/text/Editable;)Z

    move-result v6

    .line 4423
    .local v6, textIsAllBlank:Z
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 4424
    .local v2, end:I
    iget-object v8, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v8, v1, v2}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 4425
    .local v4, start:I
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v8

    const-class v9, Lcom/android/ex/chips/RecipientChip;

    invoke-interface {v8, v4, v2, v9}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/chips/RecipientChip;

    .line 4426
    .local v0, chips:[Lcom/android/ex/chips/RecipientChip;
    if-eqz v0, :cond_0

    array-length v8, v0

    if-nez v8, :cond_2

    .line 4427
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    .line 4428
    .local v5, text:Landroid/text/Editable;
    iget-object v8, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v8, v5, v4}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v7

    .line 4429
    .local v7, whatEnd:I
    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v8

    if-ge v7, v8, :cond_1

    invoke-interface {v5, v7}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    const/16 v9, 0x2c

    if-ne v8, v9, :cond_1

    .line 4430
    add-int/lit8 v7, v7, 0x1

    .line 4432
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 4433
    .local v3, selEnd:I
    if-eq v7, v3, :cond_4

    if-nez v6, :cond_4

    .line 4434
    invoke-direct {p0, v4, v7}, Lcom/android/ex/chips/MTKRecipientEditTextView;->handleEdit(II)V

    .line 4439
    .end local v3           #selEnd:I
    .end local v5           #text:Landroid/text/Editable;
    .end local v7           #whatEnd:I
    :cond_2
    :goto_1
    return-void

    .line 4420
    .end local v0           #chips:[Lcom/android/ex/chips/RecipientChip;
    .end local v2           #end:I
    .end local v4           #start:I
    .end local v6           #textIsAllBlank:Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    .line 4436
    .restart local v0       #chips:[Lcom/android/ex/chips/RecipientChip;
    .restart local v2       #end:I
    .restart local v3       #selEnd:I
    .restart local v4       #start:I
    .restart local v5       #text:Landroid/text/Editable;
    .restart local v6       #textIsAllBlank:Z
    .restart local v7       #whatEnd:I
    :cond_4
    invoke-direct {p0, v4, v2, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->commitChip(IILandroid/text/Editable;)Z

    goto :goto_1
.end method

.method countTokens(Landroid/text/Editable;)I
    .locals 3
    .parameter "text"

    .prologue
    .line 2480
    const/4 v1, 0x0

    .line 2481
    .local v1, tokenCount:I
    const/4 v0, 0x0

    .line 2482
    .local v0, start:I
    :cond_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2483
    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v2, p1, v0}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->movePastTerminators(I)I

    move-result v0

    .line 2484
    add-int/lit8 v1, v1, 0x1

    .line 2485
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 2489
    :cond_1
    return v1
.end method

.method createAddressText(Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/String;
    .locals 7
    .parameter "entry"

    .prologue
    .line 2179
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 2180
    .local v1, display:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v0

    .line 2181
    .local v0, address:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2182
    :cond_0
    const/4 v1, 0x0

    .line 2185
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2186
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 2199
    .local v5, trimmedDisplayText:Ljava/lang/String;
    :goto_0
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 2200
    .local v2, index:I
    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    if-eqz v6, :cond_4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_4

    iget-object v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v6, v5}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    :goto_1
    return-object v6

    .line 2188
    .end local v2           #index:I
    .end local v5           #trimmedDisplayText:Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_3

    .line 2191
    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v4

    .line 2192
    .local v4, tokenized:[Landroid/text/util/Rfc822Token;
    if-eqz v4, :cond_3

    array-length v6, v4

    if-lez v6, :cond_3

    .line 2193
    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v6}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 2196
    .end local v4           #tokenized:[Landroid/text/util/Rfc822Token;
    :cond_3
    new-instance v3, Landroid/text/util/Rfc822Token;

    const/4 v6, 0x0

    invoke-direct {v3, v1, v0, v6}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2197
    .local v3, token:Landroid/text/util/Rfc822Token;
    invoke-virtual {v3}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #trimmedDisplayText:Ljava/lang/String;
    goto :goto_0

    .end local v3           #token:Landroid/text/util/Rfc822Token;
    .restart local v2       #index:I
    :cond_4
    move-object v6, v5

    .line 2200
    goto :goto_1
.end method

.method createChipDisplayText(Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/String;
    .locals 5
    .parameter "entry"

    .prologue
    .line 2208
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 2209
    .local v1, display:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v0

    .line 2210
    .local v0, address:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2211
    :cond_0
    const/4 v1, 0x0

    .line 2213
    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2216
    :cond_2
    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v2

    .line 2217
    .local v2, tokenized:[Landroid/text/util/Rfc822Token;
    if-eqz v2, :cond_3

    array-length v3, v2

    if-lez v3, :cond_3

    .line 2218
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 2221
    .end local v2           #tokenized:[Landroid/text/util/Rfc822Token;
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2226
    .end local v1           #display:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 2223
    .restart local v1       #display:Ljava/lang/String;
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    move-object v1, v0

    .line 2224
    goto :goto_0

    .line 2226
    :cond_5
    new-instance v3, Landroid/text/util/Rfc822Token;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v0, v4}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method createMoreChip()V
    .locals 23

    .prologue
    .line 2499
    const-string v19, "RecipientEditTextView"

    const-string v20, "[createMoreChip]"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2500
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mNoChips:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 2501
    const-string v19, "RecipientEditTextView"

    const-string v20, "[createMoreChip] mNoChips"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2502
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createMoreChipPlainText()V

    .line 2581
    :cond_0
    :goto_0
    return-void

    .line 2506
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mShouldShrink:Z

    move/from16 v19, v0

    if-nez v19, :cond_2

    .line 2507
    const-string v19, "RecipientEditTextView"

    const-string v20, "[createMoreChip] !mShouldShrink"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2511
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/text/Editable;->length()I

    move-result v21

    const-class v22, Lcom/android/ex/chips/MTKRecipientEditTextView$MoreImageSpan;

    invoke-interface/range {v19 .. v22}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Landroid/text/style/ImageSpan;

    .line 2512
    .local v14, tempMore:[Landroid/text/style/ImageSpan;
    array-length v0, v14

    move/from16 v19, v0

    if-lez v19, :cond_3

    .line 2513
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v19

    const/16 v20, 0x0

    aget-object v20, v14, v20

    invoke-interface/range {v19 .. v20}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2515
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/RecipientChip;

    move-result-object v9

    .line 2517
    .local v9, recipients:[Lcom/android/ex/chips/RecipientChip;
    if-eqz v9, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v19

    if-nez v19, :cond_4

    array-length v0, v9

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_5

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v19

    if-eqz v19, :cond_6

    array-length v0, v9

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_6

    .line 2518
    :cond_5
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    goto :goto_0

    .line 2521
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v12

    .line 2522
    .local v12, spannable:Landroid/text/Spannable;
    array-length v7, v9

    .line 2524
    .local v7, numRecipients:I
    const/4 v8, 0x0

    .line 2525
    .local v8, overage:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 2526
    invoke-direct/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->calculateNumChipsCanShow()I

    move-result v19

    sub-int v8, v7, v19

    .line 2527
    if-gtz v8, :cond_8

    .line 2528
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    goto/16 :goto_0

    .line 2532
    :cond_7
    add-int/lit8 v8, v7, -0x2

    .line 2535
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createMoreSpan(I)Lcom/android/ex/chips/MTKRecipientEditTextView$MoreImageSpan;

    move-result-object v6

    .line 2536
    .local v6, moreSpan:Lcom/android/ex/chips/MTKRecipientEditTextView$MoreImageSpan;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    .line 2537
    const/16 v17, 0x0

    .line 2538
    .local v17, totalReplaceStart:I
    const/16 v16, 0x0

    .line 2539
    .local v16, totalReplaceEnd:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    .line 2541
    .local v15, text:Landroid/text/Editable;
    const/16 v18, 0x0

    .line 2542
    .local v18, wp:Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;
    new-instance v18, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;

    .end local v18           #wp:Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    .line 2543
    .restart local v18       #wp:Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;
    invoke-virtual/range {v18 .. v18}, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;->initWatcherProcessor()V

    .line 2544
    invoke-virtual/range {v18 .. v18}, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;->removeSpanWatchers()V

    .line 2546
    sub-int v5, v7, v8

    .local v5, i:I
    :goto_1
    array-length v0, v9

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v5, v0, :cond_d

    .line 2547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    aget-object v20, v9, v5

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2548
    sub-int v19, v7, v8

    move/from16 v0, v19

    if-ne v5, v0, :cond_9

    .line 2549
    aget-object v19, v9, v5

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v17

    .line 2551
    :cond_9
    array-length v0, v9

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-ne v5, v0, :cond_a

    .line 2552
    aget-object v19, v9, v5

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v16

    .line 2554
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    aget-object v20, v9, v5

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_c

    .line 2555
    :cond_b
    aget-object v19, v9, v5

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    .line 2556
    .local v11, spanStart:I
    aget-object v19, v9, v5

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    .line 2557
    .local v10, spanEnd:I
    aget-object v19, v9, v5

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/ex/chips/RecipientChip;->setOriginalText(Ljava/lang/String;)V

    .line 2559
    .end local v10           #spanEnd:I
    .end local v11           #spanStart:I
    :cond_c
    aget-object v19, v9, v5

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2546
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2562
    :cond_d
    if-eqz v18, :cond_e

    .line 2563
    invoke-virtual/range {v18 .. v18}, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;->addSpanWatchers()V

    .line 2565
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->recoverLayout()V

    .line 2567
    invoke-interface {v15}, Landroid/text/Editable;->length()I

    move-result v19

    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_f

    .line 2568
    invoke-interface {v15}, Landroid/text/Editable;->length()I

    move-result v16

    .line 2570
    :cond_f
    move/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2571
    .local v4, end:I
    move/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 2572
    .local v13, start:I
    new-instance v3, Landroid/text/SpannableString;

    invoke-interface {v15, v13, v4}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v3, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2573
    .local v3, chipText:Landroid/text/SpannableString;
    const/16 v19, 0x0

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v20

    const/16 v21, 0x21

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v3, v6, v0, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2574
    const-string v19, "MTKRecip"

    const-string v20, "[createMoreChip] replace"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printThreadingDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2575
    invoke-interface {v15, v13, v4, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 2576
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    .line 2578
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v19

    if-nez v19, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMaxLines:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_0

    .line 2579
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto/16 :goto_0
.end method

.method createMoreChipPlainText()V
    .locals 10

    .prologue
    .line 2460
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    .line 2461
    .local v5, text:Landroid/text/Editable;
    const/4 v4, 0x0

    .line 2462
    .local v4, start:I
    move v1, v4

    .line 2463
    .local v1, end:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v7, 0x2

    if-ge v2, v7, :cond_0

    .line 2464
    iget-object v7, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v7, v5, v4}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/ex/chips/MTKRecipientEditTextView;->movePastTerminators(I)I

    move-result v1

    .line 2465
    move v4, v1

    .line 2463
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2468
    :cond_0
    const/4 v4, 0x0

    .line 2469
    invoke-virtual {p0, v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->countTokens(Landroid/text/Editable;)I

    move-result v6

    .line 2470
    .local v6, tokenCount:I
    add-int/lit8 v7, v6, -0x2

    invoke-direct {p0, v7}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createMoreSpan(I)Lcom/android/ex/chips/MTKRecipientEditTextView$MoreImageSpan;

    move-result-object v3

    .line 2471
    .local v3, moreSpan:Lcom/android/ex/chips/MTKRecipientEditTextView$MoreImageSpan;
    new-instance v0, Landroid/text/SpannableString;

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-interface {v5, v1, v7}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2472
    .local v0, chipText:Landroid/text/SpannableString;
    const/4 v7, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v8

    const/16 v9, 0x21

    invoke-virtual {v0, v3, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2473
    const-string v7, "MTKRecip"

    const-string v8, "[createMoreChipPlainText] replace"

    invoke-direct {p0, v7, v8}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printThreadingDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2474
    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-interface {v5, v1, v7, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 2475
    iput-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    .line 2476
    return-void
.end method

.method public enableDrag()V
    .locals 1

    .prologue
    .line 3634
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDragEnabled:Z

    .line 3635
    return-void
.end method

.method getChipBackground(Lcom/android/ex/chips/RecipientEntry;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "contact"

    .prologue
    .line 1020
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipBackground:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mInvalidChipBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method getContactIds()Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2322
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 2323
    .local v5, result:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/RecipientChip;

    move-result-object v2

    .line 2324
    .local v2, chips:[Lcom/android/ex/chips/RecipientChip;
    if-eqz v2, :cond_0

    .line 2325
    move-object v0, v2

    .local v0, arr$:[Lcom/android/ex/chips/RecipientChip;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 2326
    .local v1, chip:Lcom/android/ex/chips/RecipientChip;
    invoke-virtual {v1}, Lcom/android/ex/chips/RecipientChip;->getContactId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2325
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2329
    .end local v0           #arr$:[Lcom/android/ex/chips/RecipientChip;
    .end local v1           #chip:Lcom/android/ex/chips/RecipientChip;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_0
    return-object v5
.end method

.method getDataIds()Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2335
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 2336
    .local v5, result:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/RecipientChip;

    move-result-object v2

    .line 2337
    .local v2, chips:[Lcom/android/ex/chips/RecipientChip;
    if-eqz v2, :cond_0

    .line 2338
    move-object v0, v2

    .local v0, arr$:[Lcom/android/ex/chips/RecipientChip;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 2339
    .local v1, chip:Lcom/android/ex/chips/RecipientChip;
    invoke-virtual {v1}, Lcom/android/ex/chips/RecipientChip;->getDataId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2338
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2342
    .end local v0           #arr$:[Lcom/android/ex/chips/RecipientChip;
    .end local v1           #chip:Lcom/android/ex/chips/RecipientChip;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_0
    return-object v5
.end method

.method protected getEnableDiscardNextActionUp()Z
    .locals 1

    .prologue
    .line 3786
    iget-boolean v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRETVDiscardNextActionUp:Z

    return v0
.end method

.method getLastChip()Lcom/android/ex/chips/RecipientChip;
    .locals 3

    .prologue
    .line 394
    const/4 v1, 0x0

    .line 395
    .local v1, last:Lcom/android/ex/chips/RecipientChip;
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/RecipientChip;

    move-result-object v0

    .line 396
    .local v0, chips:[Lcom/android/ex/chips/RecipientChip;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 397
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v0, v2

    .line 399
    :cond_0
    return-object v1
.end method

.method getMoreChip()Landroid/text/style/ImageSpan;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2424
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    const-class v3, Lcom/android/ex/chips/MTKRecipientEditTextView$MoreImageSpan;

    invoke-interface {v1, v4, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/chips/MTKRecipientEditTextView$MoreImageSpan;

    .line 2426
    .local v0, moreSpans:[Lcom/android/ex/chips/MTKRecipientEditTextView$MoreImageSpan;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    aget-object v1, v0, v4

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getSortedRecipients()[Lcom/android/ex/chips/RecipientChip;
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 2347
    const-string v11, "MTKRec"

    const-string v12, "[getSortedRecipients] start"

    invoke-direct {p0, v11, v12}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printThreadingDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2349
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v11

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->length()I

    move-result v12

    const-class v13, Lcom/android/ex/chips/RecipientChip;

    invoke-interface {v11, v14, v12, v13}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    .line 2351
    .local v8, recipientsObj:[Ljava/lang/Object;
    const/4 v6, 0x0

    .line 2352
    .local v6, printLog:Z
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/Object;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 2353
    .local v1, currObj:Ljava/lang/Object;
    instance-of v11, v1, Lcom/android/ex/chips/RecipientChip;

    if-nez v11, :cond_0

    .line 2354
    const/4 v6, 0x1

    .line 2352
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2357
    .end local v1           #currObj:Ljava/lang/Object;
    :cond_1
    if-eqz v6, :cond_3

    .line 2358
    move-object v0, v8

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 2359
    .restart local v1       #currObj:Ljava/lang/Object;
    const-string v11, "getSortedRecipients"

    invoke-direct {p0, v11, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->tempLogPrint(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2358
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2361
    .end local v1           #currObj:Ljava/lang/Object;
    :cond_2
    const/4 v6, 0x0

    .line 2364
    :cond_3
    const/4 v9, 0x0

    .line 2366
    .local v9, recips:[Lcom/android/ex/chips/RecipientChip;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13}, Landroid/text/Editable;->length()I

    move-result v13

    const-class v14, Lcom/android/ex/chips/RecipientChip;

    invoke-interface {v11, v12, v13, v14}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    .end local v9           #recips:[Lcom/android/ex/chips/RecipientChip;
    check-cast v9, [Lcom/android/ex/chips/RecipientChip;
    :try_end_0
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2378
    .restart local v9       #recips:[Lcom/android/ex/chips/RecipientChip;
    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2380
    .local v7, recipientsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/ex/chips/RecipientChip;>;"
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v10

    .line 2381
    .local v10, spannable:Landroid/text/Spannable;
    new-instance v11, Lcom/android/ex/chips/MTKRecipientEditTextView$7;

    invoke-direct {v11, p0, v10}, Lcom/android/ex/chips/MTKRecipientEditTextView$7;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;Landroid/text/Spannable;)V

    invoke-static {v7, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2396
    const-string v11, "MTKRec"

    const-string v12, "[getSortedRecipients] end"

    invoke-direct {p0, v11, v12}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printThreadingDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2397
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Lcom/android/ex/chips/RecipientChip;

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/android/ex/chips/RecipientChip;

    return-object v11

    .line 2368
    .end local v7           #recipientsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/ex/chips/RecipientChip;>;"
    .end local v9           #recips:[Lcom/android/ex/chips/RecipientChip;
    .end local v10           #spannable:Landroid/text/Spannable;
    :catch_0
    move-exception v2

    .line 2370
    .local v2, e:Ljava/lang/ArrayStoreException;
    const-string v11, "RecipientEditTextView"

    const-string v12, "[getSortedRecipients] ArrayStoreException occurs."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2371
    const-string v11, "RecipientEditTextView"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2372
    new-instance v5, Landroid/util/LogPrinter;

    const/4 v11, 0x3

    const-string v12, "RecipientEditTextView"

    invoke-direct {v5, v11, v12}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    .line 2373
    .local v5, lp:Landroid/util/LogPrinter;
    const-string v11, "[getSortedRecipients] spans:"

    invoke-virtual {v5, v11}, Landroid/util/LogPrinter;->println(Ljava/lang/String;)V

    .line 2374
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    const-string v12, "  "

    invoke-static {v11, v5, v12}, Landroid/text/TextUtils;->dumpSpans(Ljava/lang/CharSequence;Landroid/util/Printer;Ljava/lang/String;)V

    .line 2375
    new-instance v11, Ljava/lang/ArrayStoreException;

    invoke-direct {v11}, Ljava/lang/ArrayStoreException;-><init>()V

    throw v11
.end method

.method getSpannable()Landroid/text/Spannable;
    .locals 1

    .prologue
    .line 1865
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method getViewWidth()I
    .locals 1

    .prologue
    .line 1357
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public handleAndGetText()Landroid/text/Editable;
    .locals 1

    .prologue
    .line 4559
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->appendPendingStrings()V

    .line 4560
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method handlePaste()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/ex/chips/RecipientChip;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3300
    const-string v12, "RecipientEditTextView"

    const-string v13, "[handlePaste]"

    invoke-direct {p0, v12, v13}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 3301
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3302
    .local v9, text:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v13

    invoke-interface {v12, v9, v13}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v6

    .line 3303
    .local v6, originalTokenStart:I
    invoke-virtual {v9, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 3304
    .local v4, lastAddress:Ljava/lang/String;
    move v11, v6

    .line 3305
    .local v11, tokenStart:I
    move v8, v11

    .line 3306
    .local v8, prevTokenStart:I
    const/4 v3, 0x0

    .line 3307
    .local v3, findChip:Lcom/android/ex/chips/RecipientChip;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3308
    .local v0, created:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/ex/chips/RecipientChip;>;"
    if-eqz v11, :cond_3

    .line 3310
    :cond_0
    if-eqz v11, :cond_1

    if-nez v3, :cond_1

    .line 3311
    move v8, v11

    .line 3312
    iget-object v12, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v12, v9, v11}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v11

    .line 3313
    invoke-direct {p0, v11}, Lcom/android/ex/chips/MTKRecipientEditTextView;->findChip(I)Lcom/android/ex/chips/RecipientChip;

    move-result-object v3

    .line 3315
    if-ne v8, v11, :cond_0

    .line 3320
    :cond_1
    if-eq v11, v6, :cond_3

    .line 3321
    if-eqz v3, :cond_2

    .line 3322
    move v11, v8

    .line 3327
    :cond_2
    move v7, v6

    .line 3328
    .local v7, parseEnd:I
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    sub-int v5, v12, v6

    .line 3330
    .local v5, offsetFromLastString:I
    :goto_0
    if-ge v11, v7, :cond_3

    .line 3331
    iget-object v12, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13, v11}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v12

    invoke-virtual {p0, v12}, Lcom/android/ex/chips/MTKRecipientEditTextView;->movePastTerminators(I)I

    move-result v10

    .line 3333
    .local v10, tokenEnd:I
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-direct {p0, v11, v10, v12}, Lcom/android/ex/chips/MTKRecipientEditTextView;->commitChip(IILandroid/text/Editable;)Z

    .line 3334
    invoke-direct {p0, v11}, Lcom/android/ex/chips/MTKRecipientEditTextView;->findChip(I)Lcom/android/ex/chips/RecipientChip;

    move-result-object v1

    .line 3335
    .local v1, createdChip:Lcom/android/ex/chips/RecipientChip;
    if-nez v1, :cond_5

    .line 3348
    .end local v1           #createdChip:Lcom/android/ex/chips/RecipientChip;
    .end local v5           #offsetFromLastString:I
    .end local v7           #parseEnd:I
    .end local v10           #tokenEnd:I
    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isCompletedToken(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 3349
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 3350
    .local v2, editable:Landroid/text/Editable;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v4, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v11

    .line 3351
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v12

    invoke-direct {p0, v11, v12, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->commitChip(IILandroid/text/Editable;)Z

    .line 3352
    invoke-direct {p0, v11}, Lcom/android/ex/chips/MTKRecipientEditTextView;->findChip(I)Lcom/android/ex/chips/RecipientChip;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3354
    .end local v2           #editable:Landroid/text/Editable;
    :cond_4
    return-object v0

    .line 3339
    .restart local v1       #createdChip:Lcom/android/ex/chips/RecipientChip;
    .restart local v5       #offsetFromLastString:I
    .restart local v7       #parseEnd:I
    .restart local v10       #tokenEnd:I
    :cond_5
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v12

    invoke-interface {v12, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    add-int/lit8 v11, v12, 0x1

    .line 3340
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3342
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->length()I

    move-result v12

    sub-int v7, v12, v5

    goto :goto_0
.end method

.method handlePendingChips()V
    .locals 20

    .prologue
    .line 1213
    const-string v13, "RecipientEditTextView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[handlePendingChips] Start, pending chips count: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingChipsCount:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    invoke-direct/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->appendPendingStrings()V

    .line 1217
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setForceEnableBringPointIntoView(Z)V

    .line 1219
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getViewWidth()I

    move-result v13

    if-gtz v13, :cond_1

    .line 1220
    const-string v13, "RecipientEditTextView"

    const-string v14, "[handlePendingChips] getViewWidth() <= 0, return"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    :cond_0
    :goto_0
    return-void

    .line 1226
    :cond_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingChipsCount:I

    if-lez v13, :cond_0

    .line 1230
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingChips:Ljava/util/ArrayList;

    monitor-enter v14

    .line 1231
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 1232
    .local v4, editable:Landroid/text/Editable;
    const/4 v7, 0x0

    .line 1234
    .local v7, prevTokenEnd:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingChipsCount:I

    const/16 v15, 0x64

    if-gt v13, v15, :cond_d

    .line 1236
    const/4 v11, 0x0

    .line 1237
    .local v11, wp:Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;
    new-instance v11, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;

    .end local v11           #wp:Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;
    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    .line 1238
    .restart local v11       #wp:Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;
    invoke-virtual {v11}, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;->initWatcherProcessor()V

    .line 1239
    invoke-virtual {v11}, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;->removeSpanWatchers()V

    .line 1241
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingChips:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v5, v13, :cond_a

    .line 1243
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingChips:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ne v5, v13, :cond_3

    .line 1244
    const-string v13, "RecipientEditTextView"

    const-string v15, "[handlePendingChips] handling last pending chip"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v15}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    if-eqz v11, :cond_2

    .line 1246
    invoke-virtual {v11}, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;->addSpanWatchers()V

    .line 1249
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13}, Landroid/text/Editable;->length()I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/EditText;->setSelection(I)V

    .line 1250
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestLayout()V

    .line 1254
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingChips:Ljava/util/ArrayList;

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1255
    .local v3, current:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v10

    .line 1256
    .local v10, tokenStart:I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v13

    add-int v9, v10, v13

    .line 1257
    .local v9, tokenEnd:I
    const-string v13, "RecipientEditTextView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[handlePendingChips] index: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", tokenStart:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", tokenEnd:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v15}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    if-ltz v10, :cond_5

    .line 1261
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x2

    if-ge v9, v13, :cond_4

    invoke-interface {v4, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v13

    const/16 v15, 0x2c

    if-ne v13, v15, :cond_4

    .line 1263
    add-int/lit8 v9, v9, 0x1

    .line 1265
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v9, v4}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createReplacementChip(IILandroid/text/Editable;)V

    .line 1268
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v13

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v15

    const-class v16, Lcom/android/ex/chips/RecipientChip;

    move-object/from16 v0, v16

    invoke-interface {v13, v10, v15, v0}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/ex/chips/RecipientChip;

    .line 1269
    .local v2, chips:[Lcom/android/ex/chips/RecipientChip;
    if-eqz v2, :cond_9

    array-length v13, v2

    if-lez v13, :cond_9

    .line 1270
    const/4 v8, 0x0

    .line 1271
    .local v8, prevTokenEndSet:Z
    const/4 v12, 0x0

    .local v12, x:I
    :goto_2
    array-length v13, v2

    if-ge v12, v13, :cond_6

    .line 1272
    aget-object v13, v2, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipStart(Lcom/android/ex/chips/RecipientChip;)I

    move-result v13

    if-ne v13, v10, :cond_8

    .line 1273
    aget-object v13, v2, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipEnd(Lcom/android/ex/chips/RecipientChip;)I

    move-result v7

    .line 1274
    const/4 v8, 0x1

    .line 1278
    :cond_6
    if-nez v8, :cond_7

    .line 1279
    const/4 v7, 0x0

    .line 1285
    .end local v8           #prevTokenEndSet:Z
    .end local v12           #x:I
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingChipsCount:I

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingChipsCount:I

    .line 1241
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 1271
    .restart local v8       #prevTokenEndSet:Z
    .restart local v12       #x:I
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1282
    .end local v8           #prevTokenEndSet:Z
    .end local v12           #x:I
    :cond_9
    const/4 v7, 0x0

    goto :goto_3

    .line 1288
    .end local v2           #chips:[Lcom/android/ex/chips/RecipientChip;
    .end local v3           #current:Ljava/lang/String;
    .end local v9           #tokenEnd:I
    .end local v10           #tokenStart:I
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->sanitizeBetween()V

    .line 1289
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->sanitizeEnd()V

    .line 1291
    invoke-direct/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->recoverLayout()V

    .line 1298
    .end local v5           #i:I
    .end local v11           #wp:Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mStringToBeRestore:Ljava/lang/String;

    if-eqz v13, :cond_b

    .line 1299
    const-string v13, "RecipientEditTextView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[handlePendingChips] Restore text ->"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mStringToBeRestore:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mStringToBeRestore:Ljava/lang/String;

    invoke-interface {v13, v15}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 1301
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mStringToBeRestore:Ljava/lang/String;

    .line 1305
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    if-eqz v13, :cond_11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/16 v15, 0x64

    if-gt v13, v15, :cond_11

    .line 1307
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->hasFocus()Z

    move-result v13

    if-nez v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v15, 0x2

    if-ge v13, v15, :cond_e

    .line 1308
    :cond_c
    new-instance v13, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v15}, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientReplacementTask;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/MTKRecipientEditTextView$1;)V

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Void;

    invoke-virtual {v13, v15}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1309
    const-string v13, "RecipientEditTextView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[handlePendingChips] execute RecipientReplacementTask, count: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v15}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1310
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    .line 1349
    :goto_5
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingChipsCount:I

    .line 1350
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingChips:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 1351
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1352
    const-string v13, "RecipientEditTextView"

    const-string v14, "[handlePendingChips] End"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1294
    :cond_d
    const/4 v13, 0x1

    :try_start_1
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mNoChips:Z

    goto/16 :goto_4

    .line 1351
    .end local v4           #editable:Landroid/text/Editable;
    .end local v7           #prevTokenEnd:I
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v13

    .line 1314
    .restart local v4       #editable:Landroid/text/Editable;
    .restart local v7       #prevTokenEnd:I
    :cond_e
    const/4 v6, 0x0

    .line 1315
    .local v6, numChipsCanShow:I
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v13

    if-eqz v13, :cond_f

    .line 1316
    invoke-direct/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->calculateNumChipsCanShow()I

    move-result v6

    .line 1321
    :goto_6
    const-string v13, "RecipientEditTextView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[handlePendingChips] execute IndividualReplacementTask, count: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", canShow: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v15}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    new-instance v13, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v15}, Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/MTKRecipientEditTextView$1;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mIndividualReplacements:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;

    .line 1324
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mIndividualReplacements:Lcom/android/ex/chips/MTKRecipientEditTextView$IndividualReplacementTask;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    new-instance v17, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v6}, Ljava/util/AbstractList;->subList(II)Ljava/util/List;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    aput-object v17, v15, v16

    invoke-virtual {v13, v15}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1326
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-le v13, v6, :cond_10

    .line 1327
    new-instance v13, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v15, v6, v0}, Ljava/util/AbstractList;->subList(II)Ljava/util/List;

    move-result-object v15

    invoke-direct {v13, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    .line 1333
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createMoreChip()V

    goto/16 :goto_5

    .line 1318
    :cond_f
    const/4 v6, 0x2

    goto/16 :goto_6

    .line 1331
    :cond_10
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    goto :goto_7

    .line 1336
    .end local v6           #numChipsCanShow:I
    :cond_11
    const-string v15, "RecipientEditTextView"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[handlePendingChips] fall back to show addresses. count: "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    if-nez v13, :cond_13

    const/4 v13, 0x0

    :goto_8
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v13}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    .line 1342
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->hasFocus()Z

    move-result v13

    if-nez v13, :cond_12

    .line 1343
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createMoreChip()V

    .line 1347
    :cond_12
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setForceEnableBringPointIntoView(Z)V

    goto/16 :goto_5

    .line 1336
    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v13

    goto :goto_8
.end method

.method isCompletedToken(Ljava/lang/CharSequence;)Z
    .locals 6
    .parameter "text"

    .prologue
    const/4 v4, 0x0

    .line 1918
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1929
    :cond_0
    :goto_0
    return v4

    .line 1922
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1923
    .local v1, end:I
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v5, p1, v1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 1924
    .local v2, start:I
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1925
    .local v3, token:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1926
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1927
    .local v0, atEnd:C
    const/16 v5, 0x2c

    if-eq v0, v5, :cond_2

    const/16 v5, 0x3b

    if-eq v0, v5, :cond_2

    const v5, 0xff0c

    if-eq v0, v5, :cond_2

    const v5, 0xff1b

    if-ne v0, v5, :cond_0

    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method protected isPhoneQuery()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3747
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/BaseRecipientAdapter;

    invoke-virtual {v0}, Lcom/android/ex/chips/BaseRecipientAdapter;->getQueryType()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollAddText()Z
    .locals 1

    .prologue
    .line 3766
    iget-boolean v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mEnableScrollAddText:Z

    return v0
.end method

.method protected isTouchPointInChip(FF)Z
    .locals 8
    .parameter "posX"
    .parameter "posY"

    .prologue
    .line 4114
    const/4 v1, 0x1

    .line 4115
    .local v1, isInChip:Z
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 4116
    .local v2, layout:Landroid/text/Layout;
    if-eqz v2, :cond_0

    .line 4118
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v5

    .line 4119
    .local v5, offsetForPosition:I
    invoke-virtual {v2, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 4120
    .local v3, line:I
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v6}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    .line 4121
    .local v4, maxX:F
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float v0, p1, v6

    .line 4122
    .local v0, currentX:F
    const/4 v6, 0x0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 4123
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 4124
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v0, v6

    .line 4125
    cmpl-float v6, v0, v4

    if-lez v6, :cond_0

    .line 4127
    const/4 v1, 0x0

    .line 4130
    .end local v0           #currentX:F
    .end local v3           #line:I
    .end local v4           #maxX:F
    .end local v5           #offsetForPosition:I
    :cond_0
    return v1
.end method

.method public moveCursorToVisibleOffset()Z
    .locals 1

    .prologue
    .line 3930
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoveCursorToVisible:Z

    if-nez v0, :cond_0

    .line 3931
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoveCursorToVisible:Z

    .line 3932
    const/4 v0, 0x0

    .line 3934
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/TextView;->moveCursorToVisibleOffset()Z

    move-result v0

    goto :goto_0
.end method

.method movePastTerminators(I)I
    .locals 4
    .parameter "tokenEnd"

    .prologue
    .line 3359
    invoke-virtual {p0}, Landroid/widget/TextView;->length()I

    move-result v2

    if-lt p1, v2, :cond_0

    move v1, p1

    .line 3371
    .end local p1
    .local v1, tokenEnd:I
    :goto_0
    return v1

    .line 3362
    .end local v1           #tokenEnd:I
    .restart local p1
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 3363
    .local v0, atEnd:C
    const/16 v2, 0x2c

    if-eq v0, v2, :cond_1

    const/16 v2, 0x3b

    if-ne v0, v2, :cond_2

    .line 3364
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 3368
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->length()I

    move-result v2

    if-ge p1, v2, :cond_3

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_3

    .line 3369
    add-int/lit8 p1, p1, 0x1

    :cond_3
    move v1, p1

    .line 3371
    .end local p1
    .restart local v1       #tokenEnd:I
    goto :goto_0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 2402
    const/4 v0, 0x0

    return v0
.end method

.method public onCheckedItemChanged(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 2118
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 2119
    .local v0, listView:Landroid/widget/ListView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 2120
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 2122
    :cond_0
    iput p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mCheckedItem:I

    .line 2123
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 3740
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 3742
    .local v0, clipboard:Landroid/content/ClipboardManager;
    const-string v1, ""

    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mCopyAddress:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 3743
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mCopyDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 3744
    return-void
.end method

.method public onClick(Lcom/android/ex/chips/RecipientChip;IFF)V
    .locals 3
    .parameter "chip"
    .parameter "offset"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 3014
    const-string v0, "RecipientEditTextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onClick] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientChip;->getValue()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 3015
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientChip;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3016
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isInDelete(Lcom/android/ex/chips/RecipientChip;IFF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3017
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->removeChip(Lcom/android/ex/chips/RecipientChip;)V

    .line 3022
    :cond_0
    :goto_0
    return-void

    .line 3019
    :cond_1
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->clearSelectedChip()V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 4144
    const-string v0, "RecipientEditTextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onConfigurationChanged] current view width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", line count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4146
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4147
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->registerGlobalLayoutListener()V

    .line 4150
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4151
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    invoke-direct {p0, v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->shouldShowEditableText(Lcom/android/ex/chips/RecipientChip;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4152
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->clearSelectedChip()V

    .line 4154
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 4156
    :cond_2
    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 2419
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 4
    .parameter "outAttrs"

    .prologue
    .line 378
    invoke-super {p0, p1}, Landroid/widget/TextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 379
    .local v0, connection:Landroid/view/inputmethod/InputConnection;
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v1, v2, 0xff

    .line 380
    .local v1, imeActions:I
    and-int/lit8 v2, v1, 0x6

    if-eqz v2, :cond_0

    .line 382
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    xor-int/2addr v2, v1

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 384
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v2, v2, 0x6

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 386
    :cond_0
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v3, 0x4000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 387
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v3, -0x40000001

    and-int/2addr v2, v3

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 389
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/ex/chips/R$string;->done:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    .line 390
    return-object v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 2407
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 3734
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mCopyAddress:Ljava/lang/String;

    .line 3735
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 3600
    const/4 v0, 0x0

    return v0
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 3657
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 3668
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3660
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 3662
    :pswitch_2
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 3665
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->handlePasteClip(Landroid/content/ClipData;)V

    goto :goto_0

    .line 3657
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "view"
    .parameter "action"
    .parameter "keyEvent"

    .prologue
    const/4 v0, 0x1

    .line 361
    const-string v1, "RecipientEditTextView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onEditorAction] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const/4 v1, 0x6

    if-ne p2, v1, :cond_3

    .line 363
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->commitDefault()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 373
    :cond_0
    :goto_0
    return v0

    .line 366
    :cond_1
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    if-eqz v1, :cond_2

    .line 367
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->clearSelectedChip()V

    goto :goto_0

    .line 369
    :cond_2
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->focusNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 373
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFilterComplete(I)V
    .locals 2
    .parameter "count"

    .prologue
    const/4 v1, 0x0

    .line 1908
    iget-boolean v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->bTouchedAfterPasted:Z

    if-nez v0, :cond_0

    .line 1909
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onFilterComplete(I)V

    .line 1911
    :cond_0
    iput-boolean v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->bPasted:Z

    .line 1912
    iput-boolean v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->bTouchedAfterPasted:Z

    .line 1913
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 3606
    const/4 v0, 0x0

    return v0
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3
    .parameter "hasFocus"
    .parameter "direction"
    .parameter "previous"

    .prologue
    .line 671
    const-string v0, "RecipientEditTextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onFocusChanged], hasFocus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 673
    if-nez p1, :cond_0

    .line 674
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->shrink()V

    .line 678
    :goto_0
    return-void

    .line 676
    :cond_0
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->expand()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 2263
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-direct {p0, p3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->submitItemAtPosition(I)V

    .line 2264
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1856
    const/16 v0, 0x42

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1857
    const/4 v0, 0x1

    .line 1860
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1581
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    if-eqz v0, :cond_0

    .line 1582
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->clearSelectedChip()V

    .line 1583
    const/4 v0, 0x1

    .line 1585
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 1598
    const-string v2, "RecipientEditTextView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onKeyUp] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1599
    sparse-switch p1, :sswitch_data_0

    .line 1631
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_1
    :goto_1
    return v1

    .line 1602
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getListSelection()I

    move-result v0

    .line 1603
    .local v0, selectedPopupItem:I
    if-ltz v0, :cond_2

    .line 1605
    invoke-direct {p0, v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->submitItemAtPosition(I)V

    goto :goto_0

    .line 1606
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1607
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->commitDefault()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1610
    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    if-eqz v2, :cond_3

    .line 1611
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->clearSelectedChip()V

    goto :goto_1

    .line 1613
    :cond_3
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->focusNext()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 1619
    .end local v0           #selectedPopupItem:I
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1620
    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    if-eqz v2, :cond_4

    .line 1621
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->clearSelectedChip()V

    .line 1625
    :goto_2
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->focusNext()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 1623
    :cond_4
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->commitDefault()Z

    goto :goto_2

    .line 1599
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x3d -> :sswitch_1
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    .line 3611
    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    if-eqz v4, :cond_1

    .line 3628
    :cond_0
    :goto_0
    return-void

    .line 3614
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 3615
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 3616
    .local v3, y:F
    invoke-virtual {p0, v2, v3}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/ex/chips/MTKRecipientEditTextView;->putOffsetInRange(I)I

    move-result v1

    .line 3618
    .local v1, offset:I
    invoke-virtual {p0, v2, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isTouchPointInChip(FF)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->findChip(I)Lcom/android/ex/chips/RecipientChip;

    move-result-object v0

    .line 3619
    .local v0, currentChip:Lcom/android/ex/chips/RecipientChip;
    :goto_1
    if-eqz v0, :cond_0

    .line 3620
    iget-boolean v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDragEnabled:Z

    if-eqz v4, :cond_3

    .line 3622
    invoke-direct {p0, v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->startDrag(Lcom/android/ex/chips/RecipientChip;)V

    goto :goto_0

    .line 3618
    .end local v0           #currentChip:Lcom/android/ex/chips/RecipientChip;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 3625
    .restart local v0       #currentChip:Lcom/android/ex/chips/RecipientChip;
    :cond_3
    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/ex/chips/MTKRecipientEditTextView;->showCopyDialog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPreDraw()Z
    .locals 2

    .prologue
    .line 3979
    invoke-super {p0}, Landroid/widget/TextView;->onPreDraw()Z

    move-result v0

    .line 3981
    .local v0, changed:Z
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setDisableBringPointIntoView(Z)V

    .line 3982
    return v0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 2411
    const/4 v0, 0x0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 15
    .parameter "state"

    .prologue
    .line 466
    const-string v12, "RecipientEditTextView"

    const-string v13, "[onRestoreInstanceState]"

    invoke-direct {p0, v12, v13}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v6, p1

    .line 469
    check-cast v6, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientSavedState;

    .line 470
    .local v6, ss:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientSavedState;
    iget-boolean v2, v6, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientSavedState;->frozenWithFocus:Z

    .line 472
    .local v2, hasFocus:Z
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 473
    const/4 v12, 0x0

    invoke-super {p0, v12}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 478
    :goto_0
    const-string v12, "RecipientEditTextView"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[onRestore] Text->"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const/4 v1, 0x1

    .line 482
    .local v1, doRestore:Z
    if-eqz v2, :cond_0

    .line 483
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getLastChip()Lcom/android/ex/chips/RecipientChip;

    move-result-object v3

    .line 484
    .local v3, lastChip:Lcom/android/ex/chips/RecipientChip;
    if-eqz v3, :cond_0

    .line 485
    const/4 v1, 0x0

    .line 490
    .end local v3           #lastChip:Lcom/android/ex/chips/RecipientChip;
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_6

    if-eqz v1, :cond_6

    .line 491
    const-string v12, "RecipientEditTextView"

    const-string v13, "[onRestore] Do restore process"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v12, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    if-eqz v12, :cond_1

    .line 493
    iget-object v12, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v12}, Lcom/android/ex/chips/MTKRecipientEditTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 496
    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 497
    .local v7, text:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    .line 498
    .local v8, textLen:I
    const-string v12, "MTKRecip"

    const-string v13, "[onRestoreInstanceState] delete"

    invoke-direct {p0, v12, v13}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printThreadingDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13, v8}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 500
    new-instance v5, Lcom/android/ex/chips/MTKRecipientList;

    invoke-direct {v5}, Lcom/android/ex/chips/MTKRecipientList;-><init>()V

    .line 501
    .local v5, recipientList:Lcom/android/ex/chips/MTKRecipientList;
    const/4 v11, 0x0

    .line 502
    .local v11, x:I
    const/4 v10, 0x0

    .line 503
    .local v10, tokenStart:I
    const/4 v9, 0x0

    .line 504
    .local v9, tokenEnd:I
    :goto_1
    iget-object v12, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v12, v7, v10}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v9, v12, :cond_4

    .line 505
    invoke-virtual {v7, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 506
    .local v0, destination:Ljava/lang/String;
    add-int/lit8 v10, v9, 0x2

    .line 507
    invoke-direct {p0, v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->tokenizeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .end local v0           #destination:Ljava/lang/String;
    :goto_2
    invoke-virtual {v5, v12, v0}, Lcom/android/ex/chips/MTKRecipientList;->addRecipient(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    add-int/lit8 v11, v11, 0x1

    .line 509
    goto :goto_1

    .line 475
    .end local v1           #doRestore:Z
    .end local v5           #recipientList:Lcom/android/ex/chips/MTKRecipientList;
    .end local v7           #text:Ljava/lang/String;
    .end local v8           #textLen:I
    .end local v9           #tokenEnd:I
    .end local v10           #tokenStart:I
    .end local v11           #x:I
    :cond_2
    invoke-virtual {v6}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v12

    invoke-super {p0, v12}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto/16 :goto_0

    .line 507
    .restart local v0       #destination:Ljava/lang/String;
    .restart local v1       #doRestore:Z
    .restart local v5       #recipientList:Lcom/android/ex/chips/MTKRecipientList;
    .restart local v7       #text:Ljava/lang/String;
    .restart local v8       #textLen:I
    .restart local v9       #tokenEnd:I
    .restart local v10       #tokenStart:I
    .restart local v11       #x:I
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->tokenizeAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 511
    .end local v0           #destination:Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->appendList(Lcom/android/ex/chips/MTKRecipientList;)V

    .line 513
    if-ge v10, v9, :cond_5

    .line 514
    invoke-virtual {v7, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 515
    .local v4, lastToken:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/android/ex/chips/MTKRecipientList;->getRecipientCount()I

    move-result v12

    if-eqz v12, :cond_7

    .line 516
    iput-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mStringToBeRestore:Ljava/lang/String;

    .line 522
    .end local v4           #lastToken:Ljava/lang/String;
    :cond_5
    :goto_3
    iget-object v12, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v13, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mAddTextWatcher:Ljava/lang/Runnable;

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 525
    .end local v5           #recipientList:Lcom/android/ex/chips/MTKRecipientList;
    .end local v7           #text:Ljava/lang/String;
    .end local v8           #textLen:I
    .end local v9           #tokenEnd:I
    .end local v10           #tokenStart:I
    .end local v11           #x:I
    :cond_6
    return-void

    .line 518
    .restart local v4       #lastToken:Ljava/lang/String;
    .restart local v5       #recipientList:Lcom/android/ex/chips/MTKRecipientList;
    .restart local v7       #text:Ljava/lang/String;
    .restart local v8       #textLen:I
    .restart local v9       #tokenEnd:I
    .restart local v10       #tokenStart:I
    .restart local v11       #x:I
    :cond_7
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12, v4}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_3
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 529
    const-string v2, "RecipientEditTextView"

    const-string v3, "[onSaveInstanceState]"

    invoke-direct {p0, v2, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->clearSelectedChip()V

    .line 533
    invoke-super {p0}, Landroid/widget/TextView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 534
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientSavedState;

    invoke-direct {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 535
    .local v0, ss:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientSavedState;
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 536
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientSavedState;->frozenWithFocus:Z

    .line 540
    :goto_0
    const-string v2, "RecipientEditTextView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onSave] Text ->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    return-object v0

    .line 538
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientSavedState;->frozenWithFocus:Z

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 3718
    const/4 v0, 0x0

    return v0
.end method

.method public onSelectionChanged(II)V
    .locals 5
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v3, 0x0

    .line 406
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getLastChip()Lcom/android/ex/chips/RecipientChip;

    move-result-object v0

    .line 407
    .local v0, last:Lcom/android/ex/chips/RecipientChip;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 409
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 412
    :cond_0
    iget-boolean v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mNoChips:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mJustExpanded:Z

    if-eqz v2, :cond_1

    .line 413
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 414
    .local v1, text:Landroid/text/Editable;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_2

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v2

    :goto_0
    invoke-virtual {p0, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 415
    iput-boolean v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mJustExpanded:Z

    .line 418
    .end local v1           #text:Landroid/text/Editable;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onSelectionChanged(II)V

    .line 419
    return-void

    .restart local v1       #text:Landroid/text/Editable;
    :cond_2
    move v2, v3

    .line 414
    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 3724
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 3729
    const/4 v0, 0x0

    return v0
.end method

.method public onSizeChanged(IIII)V
    .locals 4
    .parameter "width"
    .parameter "height"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1168
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 1169
    const-string v1, "RecipientEditTextView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onSizeChanged] w: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", h: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldw: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldh: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1171
    iget v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingChipsCount:I

    if-lez v1, :cond_1

    .line 1172
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->postHandlePendingChips()V

    .line 1178
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mScrollView:Landroid/widget/ScrollView;

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTriedGettingScrollView:Z

    if-nez v1, :cond_4

    .line 1179
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1180
    .local v0, parent:Landroid/view/ViewParent;
    :goto_1
    if-eqz v0, :cond_2

    instance-of v1, v0, Landroid/widget/ScrollView;

    if-nez v1, :cond_2

    .line 1181
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1

    .line 1174
    .end local v0           #parent:Landroid/view/ViewParent;
    :cond_1
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->checkChipWidths()V

    goto :goto_0

    .line 1183
    .restart local v0       #parent:Landroid/view/ViewParent;
    :cond_2
    if-eqz v0, :cond_3

    .line 1184
    check-cast v0, Landroid/widget/ScrollView;

    .end local v0           #parent:Landroid/view/ViewParent;
    iput-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mScrollView:Landroid/widget/ScrollView;

    .line 1186
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTriedGettingScrollView:Z

    .line 1188
    :cond_4
    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 4
    .parameter "id"

    .prologue
    const/4 v1, 0x1

    .line 3276
    const v2, 0x1020022

    if-ne p1, v2, :cond_0

    .line 3278
    iput-boolean v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->bPasted:Z

    .line 3280
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 3282
    .local v0, clipboard:Landroid/content/ClipboardManager;
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->handlePasteClip(Landroid/content/ClipData;)V

    .line 3285
    .end local v0           #clipboard:Landroid/content/ClipboardManager;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1949
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1951
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 2061
    :cond_0
    :goto_0
    return v3

    .line 1955
    :cond_1
    iget-boolean v9, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->bPasted:Z

    if-eqz v9, :cond_2

    .line 1956
    iput-boolean v10, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->bTouchedAfterPasted:Z

    .line 1957
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 1961
    :cond_2
    iget-boolean v9, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mForceEnableBringPointIntoView:Z

    if-eqz v9, :cond_3

    .line 1962
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0

    .line 1966
    :cond_3
    const/high16 v7, -0x4080

    .line 1967
    .local v7, x:F
    const/high16 v8, -0x4080

    .line 1968
    .local v8, y:F
    const/4 v4, -0x1

    .line 1969
    .local v4, offset:I
    const/4 v2, 0x0

    .line 1970
    .local v2, currentChip:Lcom/android/ex/chips/RecipientChip;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1971
    .local v0, action:I
    const/4 v6, 0x1

    .line 1972
    .local v6, shouldShowSoftInput:Z
    iget-object v9, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mCopyAddress:Ljava/lang/String;

    if-nez v9, :cond_5

    if-ne v0, v10, :cond_5

    .line 1973
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 1974
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 1975
    invoke-virtual {p0, v7, v8}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/ex/chips/MTKRecipientEditTextView;->putOffsetInRange(I)I

    move-result v4

    .line 1977
    invoke-virtual {p0, v7, v8}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isTouchPointInChip(FF)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-direct {p0, v4}, Lcom/android/ex/chips/MTKRecipientEditTextView;->findChip(I)Lcom/android/ex/chips/RecipientChip;

    move-result-object v2

    .line 1979
    :goto_1
    if-eqz v2, :cond_4

    .line 1980
    invoke-direct {p0, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->shouldShowEditableText(Lcom/android/ex/chips/RecipientChip;)Z

    move-result v6

    .line 1981
    if-nez v6, :cond_4

    .line 1982
    invoke-super {p0, v11}, Landroid/widget/TextView;->setShowSoftInputOnFocus(Z)V

    .line 1986
    :cond_4
    if-eqz v2, :cond_a

    move v9, v10

    :goto_2
    invoke-direct {p0, v9}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setDisableBringPointIntoView(Z)V

    .line 1991
    :cond_5
    const/4 v5, 0x0

    .line 1992
    .local v5, outOfView:Z
    if-ne v0, v10, :cond_7

    cmpg-float v9, v7, v12

    if-ltz v9, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v9, v9, v7

    if-ltz v9, :cond_6

    cmpg-float v9, v8, v12

    if-ltz v9, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v9, v9, v8

    if-gez v9, :cond_7

    .line 1993
    :cond_6
    invoke-direct {p0, v10}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setDisableBringPointIntoView(Z)V

    .line 1994
    const/4 v5, 0x1

    .line 1997
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 1998
    .local v3, handled:Z
    const/4 v1, 0x0

    .line 1999
    .local v1, chipWasSelected:Z
    iget-object v9, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    if-nez v9, :cond_8

    .line 2000
    iget-object v9, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v9, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2006
    :cond_8
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getEnableDiscardNextActionUp()Z

    move-result v9

    if-eqz v9, :cond_b

    if-ne v0, v10, :cond_b

    .line 2007
    invoke-virtual {p0, v11}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setEnableDiscardNextActionUp(Z)V

    .line 2009
    if-nez v6, :cond_0

    .line 2010
    invoke-super {p0, v10}, Landroid/widget/TextView;->setShowSoftInputOnFocus(Z)V

    goto/16 :goto_0

    .line 1977
    .end local v1           #chipWasSelected:Z
    .end local v3           #handled:Z
    .end local v5           #outOfView:Z
    :cond_9
    const/4 v2, 0x0

    goto :goto_1

    :cond_a
    move v9, v11

    .line 1986
    goto :goto_2

    .line 2017
    .restart local v1       #chipWasSelected:Z
    .restart local v3       #handled:Z
    .restart local v5       #outOfView:Z
    :cond_b
    iget-object v9, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mCopyAddress:Ljava/lang/String;

    if-nez v9, :cond_f

    if-ne v0, v10, :cond_f

    .line 2019
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v9

    if-eqz v9, :cond_d

    iget-boolean v9, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoveCursorToVisible:Z

    if-eqz v9, :cond_d

    .line 2020
    iput-boolean v11, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoveCursorToVisible:Z

    .line 2022
    if-nez v6, :cond_c

    .line 2023
    invoke-super {p0, v10}, Landroid/widget/TextView;->setShowSoftInputOnFocus(Z)V

    :cond_c
    move v3, v10

    .line 2026
    goto/16 :goto_0

    .line 2030
    :cond_d
    if-nez v5, :cond_13

    if-eqz v2, :cond_13

    .line 2031
    if-ne v0, v10, :cond_e

    .line 2032
    iget-object v9, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    if-eqz v9, :cond_11

    iget-object v9, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    if-eq v9, v2, :cond_11

    .line 2033
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->clearSelectedChip()V

    .line 2034
    invoke-direct {p0, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->selectChip(Lcom/android/ex/chips/RecipientChip;)Lcom/android/ex/chips/RecipientChip;

    move-result-object v9

    iput-object v9, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    .line 2043
    :goto_3
    iget-object v9, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    if-eqz v9, :cond_e

    .line 2044
    iget-object v9, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    invoke-direct {p0, v9}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getLineOfChip(Lcom/android/ex/chips/RecipientChip;)I

    move-result v9

    iput v9, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mLineOfSelectedChip:I

    .line 2047
    :cond_e
    const/4 v1, 0x1

    .line 2048
    const/4 v3, 0x1

    .line 2053
    :cond_f
    :goto_4
    if-ne v0, v10, :cond_10

    if-nez v1, :cond_10

    .line 2054
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->clearSelectedChip()V

    .line 2057
    :cond_10
    if-nez v6, :cond_0

    .line 2058
    invoke-super {p0, v10}, Landroid/widget/TextView;->setShowSoftInputOnFocus(Z)V

    goto/16 :goto_0

    .line 2035
    :cond_11
    iget-object v9, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    if-nez v9, :cond_12

    .line 2036
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->length()I

    move-result v9

    invoke-virtual {p0, v9}, Landroid/widget/EditText;->setSelection(I)V

    .line 2037
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->commitDefault()Z

    .line 2038
    invoke-direct {p0, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->selectChip(Lcom/android/ex/chips/RecipientChip;)Lcom/android/ex/chips/RecipientChip;

    move-result-object v9

    iput-object v9, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    goto :goto_3

    .line 2040
    :cond_12
    iget-object v9, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    invoke-virtual {p0, v9, v4, v7, v8}, Lcom/android/ex/chips/MTKRecipientEditTextView;->onClick(Lcom/android/ex/chips/RecipientChip;IFF)V

    goto :goto_3

    .line 2049
    :cond_13
    iget-object v9, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    if-eqz v9, :cond_f

    iget-object v9, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    invoke-direct {p0, v9}, Lcom/android/ex/chips/MTKRecipientEditTextView;->shouldShowEditableText(Lcom/android/ex/chips/RecipientChip;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 2050
    const/4 v1, 0x1

    goto :goto_4
.end method

.method protected performFiltering(Ljava/lang/CharSequence;I)V
    .locals 6
    .parameter "text"
    .parameter "keyCode"

    .prologue
    .line 1886
    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipProcessingMode:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    sget-object v5, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;->NONE:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    if-eq v4, v5, :cond_0

    .line 1904
    :goto_0
    return-void

    .line 1890
    :cond_0
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->enoughToFilter()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isCompletedToken(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1891
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 1892
    .local v1, end:I
    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v4, p1, v1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 1895
    .local v3, start:I
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v2

    .line 1896
    .local v2, span:Landroid/text/Spannable;
    const-class v4, Lcom/android/ex/chips/RecipientChip;

    invoke-interface {v2, v3, v1, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/chips/RecipientChip;

    .line 1897
    .local v0, chips:[Lcom/android/ex/chips/RecipientChip;
    if-eqz v0, :cond_1

    array-length v4, v0

    if-lez v4, :cond_1

    .line 1899
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    goto :goto_0

    .line 1903
    .end local v0           #chips:[Lcom/android/ex/chips/RecipientChip;
    .end local v1           #end:I
    .end local v2           #span:Landroid/text/Spannable;
    .end local v3           #start:I
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->performFiltering(Ljava/lang/CharSequence;I)V

    goto :goto_0
.end method

.method public performLongClick()Z
    .locals 1

    .prologue
    .line 665
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setDisableBringPointIntoView(Z)V

    .line 666
    invoke-super {p0}, Landroid/widget/TextView;->performLongClick()Z

    move-result v0

    return v0
.end method

.method public performValidation()V
    .locals 0

    .prologue
    .line 724
    return-void
.end method

.method removeChip(Lcom/android/ex/chips/RecipientChip;)V
    .locals 17
    .parameter "chip"

    .prologue
    .line 2813
    const-string v14, "RecipientEditTextView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[removeChip] "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/chips/RecipientChip;->getValue()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2814
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v10

    .line 2815
    .local v10, spannable:Landroid/text/Spannable;
    move-object/from16 v0, p1

    invoke-interface {v10, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    .line 2816
    .local v9, spanStart:I
    move-object/from16 v0, p1

    invoke-interface {v10, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    .line 2817
    .local v8, spanEnd:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    .line 2818
    .local v11, text:Landroid/text/Editable;
    move v12, v8

    .line 2820
    .local v12, toDelete:I
    invoke-interface {v11}, Landroid/text/Editable;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    if-ne v8, v14, :cond_1

    sget-object v14, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;->REMOVE_LAST:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setChipProcessingMode(Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;)V

    .line 2823
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v14

    if-eqz v14, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v14

    invoke-virtual {v14}, Landroid/text/Layout;->getLineCount()I

    move-result v6

    .line 2824
    .local v6, preLineCount:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_3

    const/4 v13, 0x1

    .line 2826
    .local v13, wasSelected:Z
    :goto_2
    if-eqz v13, :cond_0

    .line 2827
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    .line 2830
    :cond_0
    :goto_3
    if-ltz v12, :cond_4

    invoke-interface {v11}, Landroid/text/Editable;->length()I

    move-result v14

    if-ge v12, v14, :cond_4

    invoke-interface {v11, v12}, Landroid/text/Editable;->charAt(I)C

    move-result v14

    const/16 v15, 0x20

    if-ne v14, v15, :cond_4

    .line 2831
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 2820
    .end local v6           #preLineCount:I
    .end local v13           #wasSelected:Z
    :cond_1
    sget-object v14, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;->REMOVE:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    goto :goto_0

    .line 2823
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 2824
    .restart local v6       #preLineCount:I
    :cond_3
    const/4 v13, 0x0

    goto :goto_2

    .line 2834
    .restart local v13       #wasSelected:Z
    :cond_4
    const/4 v4, 0x1

    .line 2835
    .local v4, needAccelerate:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getLastChip()Lcom/android/ex/chips/RecipientChip;

    move-result-object v3

    .line 2836
    .local v3, lastChip:Lcom/android/ex/chips/RecipientChip;
    invoke-direct/range {p0 .. p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipStart(Lcom/android/ex/chips/RecipientChip;)I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipStart(Lcom/android/ex/chips/RecipientChip;)I

    move-result v15

    if-ne v14, v15, :cond_5

    invoke-direct/range {p0 .. p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipEnd(Lcom/android/ex/chips/RecipientChip;)I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipEnd(Lcom/android/ex/chips/RecipientChip;)I

    move-result v15

    if-ne v14, v15, :cond_5

    .line 2837
    const/4 v4, 0x0

    .line 2840
    :cond_5
    move-object/from16 v0, p1

    invoke-interface {v10, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2842
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/RecipientChip;

    move-result-object v1

    .line 2843
    .local v1, chips:[Lcom/android/ex/chips/RecipientChip;
    if-eqz v1, :cond_6

    array-length v14, v1

    if-nez v14, :cond_7

    .line 2844
    :cond_6
    const/4 v4, 0x0

    .line 2848
    :cond_7
    new-instance v7, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientChipProcessor;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientChipProcessor;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    .line 2849
    .local v7, rcp:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientChipProcessor;
    if-eqz v4, :cond_9

    .line 2851
    const/4 v2, 0x0

    .line 2852
    .local v2, index:I
    const/4 v2, 0x0

    :goto_4
    array-length v14, v1

    if-ge v2, v14, :cond_8

    .line 2853
    aget-object v14, v1, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipStart(Lcom/android/ex/chips/RecipientChip;)I

    move-result v14

    if-lt v14, v9, :cond_d

    .line 2857
    :cond_8
    array-length v14, v1

    invoke-virtual {v7, v2, v14}, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientChipProcessor;->removeChipsWithoutNotification(II)V

    .line 2858
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDuringAccelerateRemoveChip:Z

    .line 2861
    .end local v2           #index:I
    :cond_9
    if-ltz v9, :cond_a

    if-lez v12, :cond_a

    .line 2862
    const-string v14, "MTKRecip"

    const-string v15, "[removeChip] delete"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printThreadingDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2863
    invoke-interface {v11, v9, v12}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 2866
    :cond_a
    if-eqz v4, :cond_b

    .line 2867
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDuringAccelerateRemoveChip:Z

    .line 2868
    sub-int v14, v12, v9

    invoke-virtual {v7, v14}, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientChipProcessor;->addChipsBackWithoutNotification(I)V

    .line 2872
    :cond_b
    if-eqz v13, :cond_c

    .line 2873
    invoke-direct/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->clearSelectedChip()V

    .line 2879
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mLineOfSelectedChip:I

    add-int/lit8 v15, v6, -0x2

    if-lt v14, v15, :cond_c

    .line 2880
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v14

    if-eqz v14, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v14

    invoke-virtual {v14}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    .line 2881
    .local v5, postLineCount:I
    :goto_5
    if-eq v6, v5, :cond_c

    .line 2882
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setDisableBringPointIntoView(Z)V

    .line 2883
    invoke-direct/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->scrollBottomIntoView()V

    .line 2888
    .end local v5           #postLineCount:I
    :cond_c
    sget-object v14, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;->NONE:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setChipProcessingMode(Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;)V

    .line 2889
    return-void

    .line 2852
    .restart local v2       #index:I
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2880
    .end local v2           #index:I
    :cond_e
    const/4 v5, 0x0

    goto :goto_5
.end method

.method removeMoreChip()V
    .locals 12

    .prologue
    .line 2589
    const-string v10, "RecipientEditTextView"

    const-string v11, "[removeMoreChip]"

    invoke-direct {p0, v10, v11}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2590
    iget-object v10, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    if-eqz v10, :cond_0

    .line 2591
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v7

    .line 2592
    .local v7, span:Landroid/text/Spannable;
    iget-object v10, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    invoke-interface {v7, v10}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2593
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    .line 2595
    iget-object v10, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 2597
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/RecipientChip;

    move-result-object v6

    .line 2600
    .local v6, recipients:[Lcom/android/ex/chips/RecipientChip;
    if-eqz v6, :cond_0

    array-length v10, v6

    if-nez v10, :cond_1

    .line 2639
    .end local v6           #recipients:[Lcom/android/ex/chips/RecipientChip;
    .end local v7           #span:Landroid/text/Spannable;
    :cond_0
    :goto_0
    return-void

    .line 2603
    .restart local v6       #recipients:[Lcom/android/ex/chips/RecipientChip;
    .restart local v7       #span:Landroid/text/Spannable;
    :cond_1
    array-length v10, v6

    add-int/lit8 v10, v10, -0x1

    aget-object v10, v6, v10

    invoke-interface {v7, v10}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 2604
    .local v4, end:I
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 2606
    .local v3, editable:Landroid/text/Editable;
    const/4 v9, 0x0

    .line 2607
    .local v9, wp:Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;
    new-instance v9, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;

    .end local v9           #wp:Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;
    invoke-direct {v9, p0}, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    .line 2608
    .restart local v9       #wp:Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;
    invoke-virtual {v9}, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;->initWatcherProcessor()V

    .line 2609
    invoke-virtual {v9}, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;->removeSpanWatchers()V

    .line 2611
    iget-object v10, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/RecipientChip;

    .line 2616
    .local v0, chip:Lcom/android/ex/chips/RecipientChip;
    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientChip;->getOriginalText()Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2621
    .local v8, token:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v8, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 2622
    .local v2, chipStart:I
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v10

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    .local v1, chipEnd:I
    move v4, v1

    .line 2624
    const/4 v10, -0x1

    if-eq v2, v10, :cond_2

    .line 2625
    const-string v10, "MTKRecip"

    const-string v11, "[removeMoreChip] setSpan"

    invoke-direct {p0, v10, v11}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printThreadingDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2626
    const/16 v10, 0x21

    invoke-interface {v3, v0, v2, v1, v10}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 2631
    .end local v0           #chip:Lcom/android/ex/chips/RecipientChip;
    .end local v1           #chipEnd:I
    .end local v2           #chipStart:I
    .end local v8           #token:Ljava/lang/String;
    :cond_3
    if-eqz v9, :cond_4

    .line 2632
    invoke-virtual {v9}, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;->addSpanWatchers()V

    .line 2634
    :cond_4
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->recoverLayout()V

    .line 2636
    iget-object v10, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public removeTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1
    .parameter "watcher"

    .prologue
    .line 3030
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 3031
    invoke-super {p0, p1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3032
    return-void
.end method

.method replaceChip(Lcom/android/ex/chips/RecipientChip;Lcom/android/ex/chips/RecipientEntry;)V
    .locals 25
    .parameter "chip"
    .parameter "entry"

    .prologue
    .line 2897
    const-string v22, "RecipientEditTextView"

    const-string v23, "[replaceChip] start"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_4

    const/16 v21, 0x1

    .line 2899
    .local v21, wasSelected:Z
    :goto_0
    if-eqz v21, :cond_0

    .line 2900
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;

    .line 2902
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipStart(Lcom/android/ex/chips/RecipientChip;)I

    move-result v19

    .line 2903
    .local v19, start:I
    invoke-direct/range {p0 .. p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipEnd(Lcom/android/ex/chips/RecipientChip;)I

    move-result v8

    .line 2904
    .local v8, end:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/RecipientChip;

    move-result-object v6

    .line 2905
    .local v6, currChips:[Lcom/android/ex/chips/RecipientChip;
    const-string v22, "RecipientEditTextView"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[replaceChip] start: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", end: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", chip: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/chips/RecipientChip;->getValue()Ljava/lang/CharSequence;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2908
    const/16 v22, -0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-eq v0, v1, :cond_1

    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v8, v0, :cond_6

    .line 2909
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v9

    .line 2910
    .local v9, entry1:Lcom/android/ex/chips/RecipientEntry;
    if-eqz v6, :cond_2

    array-length v0, v6

    move/from16 v22, v0

    if-lez v22, :cond_2

    .line 2911
    const/16 v22, 0x0

    aget-object v22, v6, v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v10

    .line 2912
    .local v10, entry2:Lcom/android/ex/chips/RecipientEntry;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lcom/android/ex/chips/MTKRecipientEditTextView;->compareEntries(Lcom/android/ex/chips/RecipientEntry;Lcom/android/ex/chips/RecipientEntry;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 2913
    const-string v22, "RecipientEditTextView"

    const-string v23, "[replaceChip] The first chip is changed, update to the new one"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2914
    const/16 v22, 0x0

    aget-object p1, v6, v22

    .line 2915
    invoke-direct/range {p0 .. p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipStart(Lcom/android/ex/chips/RecipientChip;)I

    move-result v19

    .line 2916
    invoke-direct/range {p0 .. p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipEnd(Lcom/android/ex/chips/RecipientChip;)I

    move-result v8

    .line 2922
    .end local v10           #entry2:Lcom/android/ex/chips/RecipientEntry;
    :cond_2
    const/16 v22, -0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v8, v0, :cond_6

    .line 2923
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-lez v22, :cond_6

    .line 2924
    const/4 v3, 0x5

    .line 2925
    .local v3, MAX_SEARCH_COUNT:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 2926
    .local v17, searchCount:I
    const/4 v12, 0x0

    .local v12, idx:I
    :goto_1
    move/from16 v0, v17

    if-ge v12, v0, :cond_6

    .line 2927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/ex/chips/RecipientChip;

    invoke-virtual/range {v22 .. v22}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v11

    .line 2928
    .local v11, entry3:Lcom/android/ex/chips/RecipientEntry;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v11}, Lcom/android/ex/chips/MTKRecipientEditTextView;->compareEntries(Lcom/android/ex/chips/RecipientEntry;Lcom/android/ex/chips/RecipientEntry;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 2929
    const-string v22, "RecipientEditTextView"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[replaceChip] Found in mRemovedSpans, index:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", ignore this replacing action"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2999
    .end local v3           #MAX_SEARCH_COUNT:I
    .end local v9           #entry1:Lcom/android/ex/chips/RecipientEntry;
    .end local v11           #entry3:Lcom/android/ex/chips/RecipientEntry;
    .end local v12           #idx:I
    .end local v17           #searchCount:I
    :goto_2
    return-void

    .line 2898
    .end local v6           #currChips:[Lcom/android/ex/chips/RecipientChip;
    .end local v8           #end:I
    .end local v19           #start:I
    .end local v21           #wasSelected:Z
    :cond_4
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 2926
    .restart local v3       #MAX_SEARCH_COUNT:I
    .restart local v6       #currChips:[Lcom/android/ex/chips/RecipientChip;
    .restart local v8       #end:I
    .restart local v9       #entry1:Lcom/android/ex/chips/RecipientEntry;
    .restart local v11       #entry3:Lcom/android/ex/chips/RecipientEntry;
    .restart local v12       #idx:I
    .restart local v17       #searchCount:I
    .restart local v19       #start:I
    .restart local v21       #wasSelected:Z
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 2937
    .end local v3           #MAX_SEARCH_COUNT:I
    .end local v9           #entry1:Lcom/android/ex/chips/RecipientEntry;
    .end local v11           #entry3:Lcom/android/ex/chips/RecipientEntry;
    .end local v12           #idx:I
    .end local v17           #searchCount:I
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2938
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    .line 2939
    .local v7, editable:Landroid/text/Editable;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDuringReplaceDupChips:Z

    move/from16 v22, v0

    if-nez v22, :cond_7

    .line 2940
    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    if-ne v8, v0, :cond_f

    sget-object v22, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;->REPLACE_LAST:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setChipProcessingMode(Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;)V

    .line 2943
    :cond_7
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createChip(Lcom/android/ex/chips/RecipientEntry;Z)Ljava/lang/CharSequence;

    move-result-object v4

    .line 2944
    .local v4, chipText:Ljava/lang/CharSequence;
    const-string v22, "RecipientEditTextView"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[replaceChip] start: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", end: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", chip: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/chips/RecipientChip;->getValue()Ljava/lang/CharSequence;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", entry: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2946
    const/4 v15, 0x1

    .line 2947
    .local v15, needAccelerate:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getLastChip()Lcom/android/ex/chips/RecipientChip;

    move-result-object v14

    .line 2948
    .local v14, lastChip:Lcom/android/ex/chips/RecipientChip;
    invoke-direct/range {p0 .. p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipStart(Lcom/android/ex/chips/RecipientChip;)I

    move-result v22

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipStart(Lcom/android/ex/chips/RecipientChip;)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    invoke-direct/range {p0 .. p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipEnd(Lcom/android/ex/chips/RecipientChip;)I

    move-result v22

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipEnd(Lcom/android/ex/chips/RecipientChip;)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    .line 2949
    const/4 v15, 0x0

    .line 2953
    :cond_8
    new-instance v16, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientChipProcessor;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientChipProcessor;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    .line 2954
    .local v16, rcp:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientChipProcessor;
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/RecipientChip;

    move-result-object v6

    .line 2955
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v18

    .line 2956
    .local v18, spannable:Landroid/text/Spannable;
    if-eqz v15, :cond_a

    .line 2958
    const/4 v13, 0x0

    .line 2959
    .local v13, index:I
    const/4 v13, 0x0

    :goto_4
    array-length v0, v6

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v13, v0, :cond_9

    .line 2960
    aget-object v22, v6, v13

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipStart(Lcom/android/ex/chips/RecipientChip;)I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, v19

    if-lt v0, v1, :cond_10

    .line 2964
    :cond_9
    array-length v0, v6

    move/from16 v22, v0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v13, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientChipProcessor;->removeChipsWithoutNotification(II)V

    .line 2965
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDuringAccelerateRemoveChip:Z

    .line 2968
    .end local v13           #index:I
    :cond_a
    if-eqz v4, :cond_c

    .line 2969
    const/16 v22, -0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-eq v0, v1, :cond_b

    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v8, v0, :cond_11

    .line 2970
    :cond_b
    const-string v22, "RecipientEditTextView"

    const-string v23, "The chip to replace does not exist but should."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2971
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v7, v0, v4}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 2987
    :cond_c
    :goto_5
    if-eqz v15, :cond_d

    .line 2988
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/ex/chips/MTKRecipientEditTextView;->mDuringAccelerateRemoveChip:Z

    .line 2989
    if-eqz v4, :cond_13

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 2990
    .local v5, chipTextLength:I
    :goto_6
    sub-int v22, v8, v19

    add-int/lit8 v22, v22, 0x1

    sub-int v22, v22, v5

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientChipProcessor;->addChipsBackWithoutNotification(I)V

    .line 2993
    .end local v5           #chipTextLength:I
    :cond_d
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 2994
    if-eqz v21, :cond_e

    .line 2995
    invoke-direct/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->clearSelectedChip()V

    .line 2997
    :cond_e
    sget-object v22, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;->NONE:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setChipProcessingMode(Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;)V

    .line 2998
    const-string v22, "RecipientEditTextView"

    const-string v23, "[replaceChip] end"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2940
    .end local v4           #chipText:Ljava/lang/CharSequence;
    .end local v14           #lastChip:Lcom/android/ex/chips/RecipientChip;
    .end local v15           #needAccelerate:Z
    .end local v16           #rcp:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientChipProcessor;
    .end local v18           #spannable:Landroid/text/Spannable;
    :cond_f
    sget-object v22, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;->REPLACE:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    goto/16 :goto_3

    .line 2959
    .restart local v4       #chipText:Ljava/lang/CharSequence;
    .restart local v13       #index:I
    .restart local v14       #lastChip:Lcom/android/ex/chips/RecipientChip;
    .restart local v15       #needAccelerate:Z
    .restart local v16       #rcp:Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientChipProcessor;
    .restart local v18       #spannable:Landroid/text/Spannable;
    :cond_10
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    .line 2973
    .end local v13           #index:I
    :cond_11
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_c

    .line 2976
    move/from16 v20, v8

    .line 2978
    .local v20, toReplace:I
    :goto_7
    if-ltz v20, :cond_12

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v22

    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_12

    move/from16 v0, v20

    invoke-interface {v7, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v22

    const/16 v23, 0x20

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_12

    .line 2979
    add-int/lit8 v20, v20, 0x1

    goto :goto_7

    .line 2981
    :cond_12
    const-string v22, "MTKRecip"

    const-string v23, "[replaceChip] replace"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printThreadingDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2982
    move/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v7, v0, v1, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_5

    .line 2989
    .end local v20           #toReplace:I
    :cond_13
    const/4 v5, 0x0

    goto :goto_6
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 1573
    return-void
.end method

.method sanitizeBetween()V
    .locals 9

    .prologue
    .line 1778
    iget v6, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingChipsCount:I

    if-lez v6, :cond_1

    .line 1808
    :cond_0
    :goto_0
    return-void

    .line 1782
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/RecipientChip;

    move-result-object v3

    .line 1783
    .local v3, recips:[Lcom/android/ex/chips/RecipientChip;
    if-eqz v3, :cond_0

    array-length v6, v3

    if-lez v6, :cond_0

    .line 1784
    array-length v6, v3

    add-int/lit8 v6, v6, -0x1

    aget-object v2, v3, v6

    .line 1785
    .local v2, last:Lcom/android/ex/chips/RecipientChip;
    const/4 v0, 0x0

    .line 1786
    .local v0, beforeLast:Lcom/android/ex/chips/RecipientChip;
    array-length v6, v3

    const/4 v7, 0x1

    if-le v6, v7, :cond_2

    .line 1787
    array-length v6, v3

    add-int/lit8 v6, v6, -0x2

    aget-object v0, v3, v6

    .line 1789
    :cond_2
    const/4 v4, 0x0

    .line 1790
    .local v4, startLooking:I
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v6

    invoke-interface {v6, v2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 1791
    .local v1, end:I
    if-eqz v0, :cond_3

    .line 1792
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v6

    invoke-interface {v6, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 1793
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    .line 1794
    .local v5, text:Landroid/text/Editable;
    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-gt v4, v6, :cond_0

    .line 1798
    invoke-interface {v5, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_3

    .line 1799
    add-int/lit8 v4, v4, 0x1

    .line 1802
    .end local v5           #text:Landroid/text/Editable;
    :cond_3
    if-ltz v4, :cond_0

    if-ltz v1, :cond_0

    if-ge v4, v1, :cond_0

    .line 1803
    const-string v6, "MTKRecip"

    const-string v7, "[sanitizeBetween] delete"

    invoke-direct {p0, v6, v7}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printThreadingDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1804
    const-string v6, "RecipientEditTextView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[sanitizeBetween] delete, start: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", end: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1805
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6, v4, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0
.end method

.method sanitizeEnd()V
    .locals 8

    .prologue
    .line 1366
    iget v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mPendingChipsCount:I

    if-lez v5, :cond_1

    .line 1393
    :cond_0
    :goto_0
    return-void

    .line 1370
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/RecipientChip;

    move-result-object v0

    .line 1371
    .local v0, chips:[Lcom/android/ex/chips/RecipientChip;
    if-eqz v0, :cond_0

    array-length v5, v0

    if-lez v5, :cond_0

    .line 1374
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getMoreChip()Landroid/text/style/ImageSpan;

    move-result-object v5

    iput-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    .line 1375
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    if-eqz v5, :cond_3

    .line 1376
    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    .line 1380
    .local v3, lastSpan:Landroid/text/style/ImageSpan;
    :goto_1
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 1381
    .local v2, end:I
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1382
    .local v1, editable:Landroid/text/Editable;
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v4

    .line 1383
    .local v4, length:I
    if-le v4, v2, :cond_0

    .line 1385
    const-string v5, "RecipientEditTextView"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1386
    const-string v5, "RecipientEditTextView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "There were extra characters after the last tokenizable entry."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    :cond_2
    const-string v5, "MTKRecip"

    const-string v6, "[sanitizeEnd] delete"

    invoke-direct {p0, v5, v6}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printThreadingDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    add-int/lit8 v5, v2, 0x1

    invoke-interface {v1, v5, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 1378
    .end local v1           #editable:Landroid/text/Editable;
    .end local v2           #end:I
    .end local v3           #lastSpan:Landroid/text/style/ImageSpan;
    .end local v4           #length:I
    :cond_3
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getLastChip()Lcom/android/ex/chips/RecipientChip;

    move-result-object v3

    .restart local v3       #lastSpan:Landroid/text/style/ImageSpan;
    goto :goto_1
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/ListAdapter;",
            ":",
            "Landroid/widget/Filterable;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 690
    .local p1, adapter:Landroid/widget/ListAdapter;,"TT;"
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 691
    check-cast p1, Lcom/android/ex/chips/BaseRecipientAdapter;

    .end local p1           #adapter:Landroid/widget/ListAdapter;,"TT;"
    new-instance v0, Lcom/android/ex/chips/MTKRecipientEditTextView$6;

    invoke-direct {v0, p0}, Lcom/android/ex/chips/MTKRecipientEditTextView$6;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    invoke-virtual {p1, v0}, Lcom/android/ex/chips/BaseRecipientAdapter;->registerUpdateObserver(Lcom/android/ex/chips/BaseRecipientAdapter$EntriesUpdatedObserver;)V

    .line 702
    return-void
.end method

.method setChipBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "chipBackground"

    .prologue
    .line 1147
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipBackground:Landroid/graphics/drawable/Drawable;

    .line 1148
    return-void
.end method

.method setChipHeight(I)V
    .locals 1
    .parameter "height"

    .prologue
    .line 1152
    int-to-float v0, p1

    iput v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipHeight:F

    .line 1153
    return-void
.end method

.method protected setEnableDiscardNextActionUp(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 3778
    iput-boolean p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mRETVDiscardNextActionUp:Z

    .line 3779
    return-void
.end method

.method setMoreItem(Landroid/widget/TextView;)V
    .locals 0
    .parameter "moreItem"

    .prologue
    .line 1141
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    .line 1142
    return-void
.end method

.method public setOnFocusListShrinkRecipients(Z)V
    .locals 0
    .parameter "shrink"

    .prologue
    .line 1163
    iput-boolean p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mShouldShrink:Z

    .line 1164
    return-void
.end method

.method public setScrollAddText(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 3758
    iput-boolean p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mEnableScrollAddText:Z

    .line 3759
    return-void
.end method

.method public setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V
    .locals 1
    .parameter "tokenizer"

    .prologue
    .line 1556
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    .line 1557
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-super {p0, v0}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 1558
    return-void
.end method

.method public setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V
    .locals 0
    .parameter "validator"

    .prologue
    .line 1562
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    .line 1563
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 1564
    return-void
.end method

.method public showDropDown()V
    .locals 1

    .prologue
    .line 4096
    invoke-virtual {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4097
    invoke-direct {p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isEndChip()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4098
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    .line 4105
    :goto_0
    return-void

    .line 4100
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    goto :goto_0

    .line 4103
    :cond_1
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    goto :goto_0
.end method

.method public updatePressedChip(FFLcom/android/ex/chips/MTKRecipientEditTextView$UpdatePressedChipType;)V
    .locals 27
    .parameter "posX"
    .parameter "posY"
    .parameter "updateType"

    .prologue
    .line 4457
    const-string v24, "RecipientEditTextView"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "[updatePressedChip] posX: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", posY: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", type: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 4458
    invoke-virtual/range {p0 .. p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->putOffsetInRange(I)I

    move-result v18

    .line 4459
    .local v18, offset:I
    invoke-virtual/range {p0 .. p2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isTouchPointInChip(FF)Z

    move-result v24

    if-eqz v24, :cond_1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->findChip(I)Lcom/android/ex/chips/RecipientChip;

    move-result-object v9

    .line 4460
    .local v9, currentChip:Lcom/android/ex/chips/RecipientChip;
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4461
    .local v3, addresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v9, :cond_2

    .line 4462
    const-string v24, "RecipientEditTextView"

    const-string v25, "[updatePressedChip] Can\'t find any chip in this position, return"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 4539
    :cond_0
    return-void

    .line 4459
    .end local v3           #addresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9           #currentChip:Lcom/android/ex/chips/RecipientChip;
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 4467
    .restart local v3       #addresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9       #currentChip:Lcom/android/ex/chips/RecipientChip;
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4468
    .local v6, chipCandidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/ex/chips/RecipientChip;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/RecipientChip;

    move-result-object v8

    .line 4469
    .local v8, chips:[Lcom/android/ex/chips/RecipientChip;
    invoke-virtual {v9}, Lcom/android/ex/chips/RecipientChip;->getContactId()J

    move-result-wide v21

    .line 4470
    .local v21, targetID:J
    if-eqz v8, :cond_5

    .line 4471
    move-object v4, v8

    .local v4, arr$:[Lcom/android/ex/chips/RecipientChip;
    array-length v0, v4

    move/from16 v17, v0

    .local v17, len$:I
    const/4 v15, 0x0

    .local v15, i$:I
    :goto_1
    move/from16 v0, v17

    if-ge v15, v0, :cond_4

    aget-object v5, v4, v15

    .line 4472
    .local v5, chip:Lcom/android/ex/chips/RecipientChip;
    invoke-virtual {v5}, Lcom/android/ex/chips/RecipientChip;->getContactId()J

    move-result-wide v24

    cmp-long v24, v24, v21

    if-nez v24, :cond_3

    .line 4473
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4474
    invoke-virtual {v5}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createAddressText(Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4471
    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 4477
    .end local v5           #chip:Lcom/android/ex/chips/RecipientChip;
    :cond_4
    const-string v24, "RecipientEditTextView"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "[updatePressedChip] chips count: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 4481
    .end local v4           #arr$:[Lcom/android/ex/chips/RecipientChip;
    .end local v15           #i$:I
    .end local v17           #len$:I
    :cond_5
    sget-object v24, Lcom/android/ex/chips/MTKRecipientEditTextView$UpdatePressedChipType;->DELETE_CONTACT:Lcom/android/ex/chips/MTKRecipientEditTextView$UpdatePressedChipType;

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_8

    .line 4483
    const/16 v16, 0x0

    .local v16, idx:I
    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v16

    move/from16 v1, v24

    if-ge v0, v1, :cond_0

    .line 4484
    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/ex/chips/RecipientChip;

    .line 4485
    .restart local v5       #chip:Lcom/android/ex/chips/RecipientChip;
    invoke-virtual {v5}, Lcom/android/ex/chips/RecipientChip;->getValue()Ljava/lang/CharSequence;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createTokenizedEntry(Ljava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v14

    .line 4486
    .local v14, entry:Lcom/android/ex/chips/RecipientEntry;
    if-eqz v14, :cond_6

    .line 4487
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    .line 4488
    .local v11, editable:Landroid/text/Editable;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipStart(Lcom/android/ex/chips/RecipientChip;)I

    move-result v20

    .line 4489
    .local v20, start:I
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipEnd(Lcom/android/ex/chips/RecipientChip;)I

    move-result v12

    .line 4490
    .local v12, end:I
    const-string v24, ""

    move/from16 v0, v20

    move-object/from16 v1, v24

    invoke-static {v11, v0, v12, v1}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 4491
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v14, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createChip(Lcom/android/ex/chips/RecipientEntry;Z)Ljava/lang/CharSequence;

    move-result-object v7

    .line 4492
    .local v7, chipText:Ljava/lang/CharSequence;
    if-eqz v7, :cond_6

    const/16 v24, -0x1

    move/from16 v0, v20

    move/from16 v1, v24

    if-le v0, v1, :cond_6

    const/16 v24, -0x1

    move/from16 v0, v24

    if-le v12, v0, :cond_6

    .line 4493
    const-string v24, "RecipientEditTextView"

    const-string v25, "[updatePressedChip] do remove"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 4494
    invoke-interface {v11}, Landroid/text/Editable;->length()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v24

    if-ne v12, v0, :cond_7

    sget-object v24, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;->REMOVE_LAST:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setChipProcessingMode(Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;)V

    .line 4496
    add-int/lit8 v24, v12, 0x1

    move/from16 v0, v20

    move/from16 v1, v24

    invoke-interface {v11, v0, v1, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 4497
    sget-object v24, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;->NONE:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setChipProcessingMode(Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;)V

    .line 4483
    .end local v7           #chipText:Ljava/lang/CharSequence;
    .end local v11           #editable:Landroid/text/Editable;
    .end local v12           #end:I
    .end local v20           #start:I
    :cond_6
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 4494
    .restart local v7       #chipText:Ljava/lang/CharSequence;
    .restart local v11       #editable:Landroid/text/Editable;
    .restart local v12       #end:I
    .restart local v20       #start:I
    :cond_7
    sget-object v24, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;->REMOVE:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    goto :goto_3

    .line 4503
    .end local v5           #chip:Lcom/android/ex/chips/RecipientChip;
    .end local v7           #chipText:Ljava/lang/CharSequence;
    .end local v11           #editable:Landroid/text/Editable;
    .end local v12           #end:I
    .end local v14           #entry:Lcom/android/ex/chips/RecipientEntry;
    .end local v16           #idx:I
    .end local v20           #start:I
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v0, v3}, Lcom/android/ex/chips/RecipientAlternatesAdapter;->getMatchingRecipients(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v13

    .line 4505
    .local v13, entries:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/ex/chips/RecipientEntry;>;"
    const/16 v16, 0x0

    .restart local v16       #idx:I
    :goto_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v16

    move/from16 v1, v24

    if-ge v0, v1, :cond_0

    .line 4506
    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/ex/chips/RecipientChip;

    .line 4507
    .restart local v5       #chip:Lcom/android/ex/chips/RecipientChip;
    invoke-virtual {v5}, Lcom/android/ex/chips/RecipientChip;->getContactId()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Lcom/android/ex/chips/RecipientEntry;->isCreatedRecipient(J)Z

    move-result v24

    if-nez v24, :cond_9

    sget-object v24, Lcom/android/ex/chips/MTKRecipientEditTextView$UpdatePressedChipType;->UPDATE_CONTACT:Lcom/android/ex/chips/MTKRecipientEditTextView$UpdatePressedChipType;

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_c

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v24

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_c

    .line 4509
    invoke-virtual {v5}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v10

    .line 4510
    .local v10, destination:Ljava/lang/String;
    const/4 v14, 0x0

    .line 4511
    .restart local v14       #entry:Lcom/android/ex/chips/RecipientEntry;
    invoke-static {v10}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_d

    .line 4512
    invoke-virtual {v13, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/ex/chips/RecipientEntry;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createValidatedEntry(Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v14

    .line 4516
    :goto_5
    if-nez v14, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v24

    if-nez v24, :cond_a

    .line 4517
    invoke-virtual {v5}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v14

    .line 4519
    :cond_a
    move-object/from16 v23, v14

    .line 4520
    .local v23, tempEntry:Lcom/android/ex/chips/RecipientEntry;
    if-eqz v23, :cond_c

    .line 4522
    invoke-virtual {v14}, Lcom/android/ex/chips/RecipientEntry;->getPhotoThumbnailUri()Landroid/net/Uri;

    move-result-object v19

    .line 4523
    .local v19, photoThumbnailUri:Landroid/net/Uri;
    if-eqz v19, :cond_b

    .line 4524
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v24

    check-cast v24, Lcom/android/ex/chips/BaseRecipientAdapter;

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/ex/chips/BaseRecipientAdapter;->updatePhotoCacheByUri(Landroid/net/Uri;)V

    .line 4527
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView;->mHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    new-instance v25, Lcom/android/ex/chips/MTKRecipientEditTextView$10;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v5, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView$10;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/RecipientChip;Lcom/android/ex/chips/RecipientEntry;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4505
    .end local v10           #destination:Ljava/lang/String;
    .end local v14           #entry:Lcom/android/ex/chips/RecipientEntry;
    .end local v19           #photoThumbnailUri:Landroid/net/Uri;
    .end local v23           #tempEntry:Lcom/android/ex/chips/RecipientEntry;
    :cond_c
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_4

    .line 4514
    .restart local v10       #destination:Ljava/lang/String;
    .restart local v14       #entry:Lcom/android/ex/chips/RecipientEntry;
    :cond_d
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->tokenizeAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/ex/chips/RecipientEntry;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->createValidatedEntry(Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v14

    goto :goto_5
.end method
