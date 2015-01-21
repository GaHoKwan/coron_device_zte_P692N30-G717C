.class public Lcom/mediatek/contacts/calllog/CallLogListItemView;
.super Landroid/view/ViewGroup;
.source "CallLogListItemView.java"

# interfaces
.implements Landroid/widget/AbsListView$SelectionBoundsAdjuster;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/calllog/CallLogListItemView$DontPressWithParentImageView;
    }
.end annotation


# static fields
.field private static final ADJUST_NUMBER:F = 0.01f

.field private static final DEFAULT_CALLLOG_SECONDARY_TEXT_COLOR:I = 0x999999

.field private static final DEFAULT_DATE_DIVIDER_HEIGHT:I = 0x3

.field private static final DEFAULT_ITEM_CALL_COUNT_TEXT_SIZE:I = 0xc

.field private static final DEFAULT_ITEM_CALL_TIME_TEXT_SIZE:I = 0xc

.field private static final DEFAULT_ITEM_DATE_BACKGROUND_COLOR:I = 0x55ffffff

.field private static final DEFAULT_ITEM_NAME_TEXT_SIZE:I = 0x12

.field private static final DEFAULT_ITEM_NUMBER_TEXT_SIZE:I = 0xe

.field private static final DEFAULT_ITEM_TEXT_COLOR:I = -0x1

.field private static final FONT_SIZE_EXTRA_LARGE:F = 1.15f

.field private static final FONT_SIZE_LARGE:F = 1.1f

.field private static final NAME_TOP_TO_ADD:I = 0x2c

.field private static final NUMBER_TOP_TO_ADD:I = 0x6

.field private static final QUICK_CONTACT_BADGE_STYLE:I = 0x10102af

.field private static final TAG:Ljava/lang/String; = "CallLogListItemView"

.field private static final VERTICAL_DIVIDER_LEN:I = 0x1

.field private static sCallLogInnerMarginDim:I

.field private static sCheckBoxMultiSelWidthDim:I

.field private static sImageViewCallHeightDim:I

.field private static sImageViewCallWidthDim:I

.field private static sListItemPaddingLeftDim:I

.field private static sListItemPaddingRightDim:I

.field private static sListItemQuickContactPaddingBottom:I

.field private static sListItemQuickContactPaddingTop:I

.field private static sNameWidthMaxDim:I

.field private static sSimNameWidthMaxDim:I

.field private static sVerticalDividerHeightDim:I


# instance fields
.field private mActivatedBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mActivatedSupported:Z

.field private mBackground:Landroid/widget/ImageView;

.field private mBoundsWithoutHeader:Landroid/graphics/Rect;

.field private mCallButtonClickListener:Landroid/view/View$OnClickListener;

.field private mCallLogDateVisible:Z

.field private mCallTypeIcon:Lcom/android/contacts/calllog/CallTypeIconsView;

.field private mCallTypeIconHeight:I

.field private mCallTypeIconSimNameMaxHeight:I

.field private mCheckBoxMultiSel:Landroid/widget/CheckBox;

.field private mCheckBoxMultiSelHeight:I

.field protected final mContext:Landroid/content/Context;

.field private mDrawableVertialDivider:Landroid/graphics/drawable/Drawable;

.field private mExtentionIcon:Landroid/widget/ImageView;

.field private final mGapBetweenImageAndText:I

.field private mHighlightedText:[C

.field private mHighlighter:Lcom/mediatek/contacts/calllog/CallLogHighlighter;

.field private mHorizontalDateDividerColor:I

.field private mHorizontalDividerHeight:I

.field private mHorizontalDividerVisible:Z

.field private mImageViewCall:Lcom/mediatek/contacts/calllog/CallLogListItemView$DontPressWithParentImageView;

.field private mPhotoViewHeight:I

.field private mPhotoViewWidth:I

.field private mQuickContactPhoto:Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;

.field private final mSecondaryTextColor:I

.field private mSelectIcon:Landroid/widget/ImageView;

.field private final mSelectableItemBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mSelectionBoundsMarginLeft:I

.field private mSelectionBoundsMarginRight:I

.field private mTagId:I

.field private mTextViewCallCount:Landroid/widget/TextView;

.field private mTextViewCallCountHeight:I

.field private mTextViewCallLogDate:Landroid/widget/TextView;

.field private mTextViewCallLogDateHeight:I

.field private mTextViewCallTime:Landroid/widget/TextView;

.field private mTextViewCallTimeHeight:I

.field private mTextViewName:Landroid/widget/TextView;

.field private mTextViewNameHeight:I

.field private mTextViewNumber:Landroid/widget/TextView;

.field private mTextViewNumberHeight:I

.field private mTextViewSimName:Landroid/widget/TextView;

.field private mTextViewSimNameHeight:I

.field private mVerticalDividerBeVisible:Z

.field private mVerticalDividerWidth:I

.field private mViewHorizontalDateDivider:Landroid/view/View;

.field private mViewHorizontalDateDividerHeight:I

.field private mViewHorizontalDivider:Landroid/view/View;

.field private mViewVertialDivider:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v10, 0x2

    const/4 v9, -0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 222
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    const/4 v3, -0x1

    iput v3, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTagId:I

    .line 83
    iput-boolean v7, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mHorizontalDividerVisible:Z

    .line 84
    iput v7, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mHorizontalDividerHeight:I

    .line 90
    iput v7, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mVerticalDividerWidth:I

    .line 99
    const v3, 0x55ffffff

    iput v3, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mHorizontalDateDividerColor:I

    .line 157
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    .line 223
    iput-object p1, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    .line 226
    const/4 v1, 0x0

    .line 232
    .local v1, def:I
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/android/contacts/R$styleable;->ContactListItemView:[I

    invoke-virtual {v3, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 235
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mActivatedBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 240
    const/16 v3, 0x9

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mGapBetweenImageAndText:I

    .line 268
    const/16 v3, 0x8

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    const/4 v5, 0x6

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    const/4 v6, 0x7

    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 278
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 280
    iget-object v3, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    sget-object v5, Lcom/android/internal/R$styleable;->ViewGroup_Layout:[I

    const v6, 0x10102af

    invoke-virtual {v3, v4, v5, v6, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 283
    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    iput v3, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mPhotoViewWidth:I

    .line 286
    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    iput v3, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mPhotoViewHeight:I

    .line 290
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 291
    iget-object v3, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    new-array v4, v7, [I

    const v5, 0x101030e

    aput v5, v4, v8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 293
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mSelectableItemBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 295
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 296
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/android/contacts/R$styleable;->CallLog:[I

    invoke-virtual {v3, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 297
    const v3, 0x999999

    invoke-virtual {v0, v10, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mSecondaryTextColor:I

    .line 299
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 301
    const/4 v2, 0x0

    .line 303
    .local v2, highlightColor:I
    iget-object v3, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getThemeMainColor()I

    move-result v2

    .line 305
    if-nez v2, :cond_0

    .line 306
    const/16 v3, 0x10

    const v4, -0xff0100

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 308
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 310
    :cond_0
    new-instance v3, Lcom/mediatek/contacts/calllog/CallLogHighlighter;

    invoke-direct {v3, v2}, Lcom/mediatek/contacts/calllog/CallLogHighlighter;-><init>(I)V

    iput-object v3, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mHighlighter:Lcom/mediatek/contacts/calllog/CallLogHighlighter;

    .line 312
    iget-object v3, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mActivatedBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 313
    iget-object v3, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mActivatedBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 316
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->initPredefinedData()V

    .line 317
    return-void
.end method

.method private ensureVerticalDivider()V
    .locals 2

    .prologue
    .line 759
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mDrawableVertialDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mDrawableVertialDivider:Landroid/graphics/drawable/Drawable;

    .line 762
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mVerticalDividerWidth:I

    .line 764
    :cond_0
    return-void
.end method

.method public static getFontSize()F
    .locals 5

    .prologue
    .line 1385
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 1387
    .local v1, mCurConfig:Landroid/content/res/Configuration;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1392
    :goto_0
    const-string v2, "CallLogListItemView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFontSize(), Font size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    iget v2, v1, Landroid/content/res/Configuration;->fontScale:F

    return v2

    .line 1388
    :catch_0
    move-exception v0

    .line 1389
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "CallLogListItemView"

    const-string v3, "Unable to retrieve font size"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initPredefinedData()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 668
    sput v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->sCallLogInnerMarginDim:I

    .line 670
    sput v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->sImageViewCallWidthDim:I

    .line 672
    sput v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->sImageViewCallHeightDim:I

    .line 674
    sput v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->sVerticalDividerHeightDim:I

    .line 680
    sput v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->sSimNameWidthMaxDim:I

    .line 682
    sput v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->sListItemQuickContactPaddingTop:I

    .line 684
    sput v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->sListItemQuickContactPaddingBottom:I

    .line 686
    sput v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->sCheckBoxMultiSelWidthDim:I

    .line 690
    sput v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->sListItemPaddingLeftDim:I

    .line 692
    sput v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->sListItemPaddingRightDim:I

    .line 694
    sput v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->sNameWidthMaxDim:I

    .line 698
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 701
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->sCallLogInnerMarginDim:I

    .line 703
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->sImageViewCallWidthDim:I

    .line 705
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->sImageViewCallHeightDim:I

    .line 707
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->sVerticalDividerHeightDim:I

    .line 726
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->sSimNameWidthMaxDim:I

    .line 728
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090080

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->sListItemQuickContactPaddingTop:I

    .line 730
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090081

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->sListItemQuickContactPaddingBottom:I

    .line 733
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090082

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->sCheckBoxMultiSelWidthDim:I

    .line 737
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090084

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->sListItemPaddingLeftDim:I

    .line 739
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->sListItemPaddingRightDim:I

    .line 741
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->sNameWidthMaxDim:I

    .line 749
    :goto_0
    return-void

    .line 747
    :cond_0
    const-string v0, "CallLogListItemView"

    const-string v1, "Error!!! - initPredefinedData() mContext is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public adjustListItemSelectionBounds(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "bounds"

    .prologue
    .line 326
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 327
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 328
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mSelectionBoundsMarginLeft:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 329
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mSelectionBoundsMarginRight:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 330
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 816
    iget-boolean v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mActivatedSupported:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mActivatedBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 825
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mVerticalDividerBeVisible:Z

    if-eqz v0, :cond_1

    .line 826
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mDrawableVertialDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 829
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 830
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 795
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 796
    iget-boolean v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mActivatedSupported:Z

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mActivatedBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 799
    :cond_0
    return-void
.end method

.method public getBackgroundView()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 993
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mBackground:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 994
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mBackground:Landroid/widget/ImageView;

    .line 995
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mBackground:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 998
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mBackground:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getCallButton()Landroid/widget/ImageView;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 945
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mImageViewCall:Lcom/mediatek/contacts/calllog/CallLogListItemView$DontPressWithParentImageView;

    if-nez v0, :cond_1

    .line 946
    new-instance v0, Lcom/mediatek/contacts/calllog/CallLogListItemView$DontPressWithParentImageView;

    iget-object v1, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mediatek/contacts/calllog/CallLogListItemView$DontPressWithParentImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mImageViewCall:Lcom/mediatek/contacts/calllog/CallLogListItemView$DontPressWithParentImageView;

    .line 947
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mImageViewCall:Lcom/mediatek/contacts/calllog/CallLogListItemView$DontPressWithParentImageView;

    iget-object v1, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mCallButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 948
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mImageViewCall:Lcom/mediatek/contacts/calllog/CallLogListItemView$DontPressWithParentImageView;

    iget-object v1, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mSelectableItemBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 951
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mImageViewCall:Lcom/mediatek/contacts/calllog/CallLogListItemView$DontPressWithParentImageView;

    sget v1, Lcom/mediatek/contacts/calllog/CallLogListItemView;->sCallLogInnerMarginDim:I

    sget v2, Lcom/mediatek/contacts/calllog/CallLogListItemView;->sCallLogInnerMarginDim:I

    sget v3, Lcom/mediatek/contacts/calllog/CallLogListItemView;->sCallLogInnerMarginDim:I

    sget v4, Lcom/mediatek/contacts/calllog/CallLogListItemView;->sCallLogInnerMarginDim:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 953
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mImageViewCall:Lcom/mediatek/contacts/calllog/CallLogListItemView$DontPressWithParentImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 955
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mImageViewCall:Lcom/mediatek/contacts/calllog/CallLogListItemView$DontPressWithParentImageView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 957
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mViewVertialDivider:Landroid/view/View;

    if-nez v0, :cond_0

    .line 958
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mViewVertialDivider:Landroid/view/View;

    .line 959
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mViewVertialDivider:Landroid/view/View;

    const v1, 0x7f02009e

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 960
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mViewVertialDivider:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 962
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mImageViewCall:Lcom/mediatek/contacts/calllog/CallLogListItemView$DontPressWithParentImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 963
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mViewVertialDivider:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 966
    :cond_1
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mImageViewCall:Lcom/mediatek/contacts/calllog/CallLogListItemView$DontPressWithParentImageView;

    return-object v0
.end method

.method public getCallCountTextView()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallCount:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1218
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallCount:Landroid/widget/TextView;

    .line 1219
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallCount:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1220
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallCount:Landroid/widget/TextView;

    const/high16 v1, 0x4140

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1221
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallCount:Landroid/widget/TextView;

    iget v1, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mSecondaryTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1222
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallCount:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1225
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 1226
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallCount:Landroid/widget/TextView;

    const-string v1, "100000"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1227
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallCount:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1229
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallCount:Landroid/widget/TextView;

    return-object v0
.end method

.method public getCallLogNameTextView()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewName:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1074
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewName:Landroid/widget/TextView;

    .line 1075
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewName:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1076
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewName:Landroid/widget/TextView;

    const/high16 v1, 0x4190

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1077
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewName:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1078
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewName:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1079
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewName:Landroid/widget/TextView;

    sget v1, Lcom/mediatek/contacts/calllog/CallLogListItemView;->sNameWidthMaxDim:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1082
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewName:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 1083
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewName:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1084
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewName:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1086
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewName:Landroid/widget/TextView;

    return-object v0
.end method

.method public getCallTimeTextView()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 1302
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallTime:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1303
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallTime:Landroid/widget/TextView;

    .line 1304
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallTime:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1305
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallTime:Landroid/widget/TextView;

    const/high16 v1, 0x4140

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1306
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallTime:Landroid/widget/TextView;

    iget v1, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mSecondaryTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1307
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallTime:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1310
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 1311
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallTime:Landroid/widget/TextView;

    const-string v1, "9:00 pm"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1312
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallTime:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1314
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallTime:Landroid/widget/TextView;

    return-object v0
.end method

.method public getCallTypeIconView()Lcom/android/contacts/calllog/CallTypeIconsView;
    .locals 2

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mCallTypeIcon:Lcom/android/contacts/calllog/CallTypeIconsView;

    if-nez v0, :cond_0

    .line 1184
    new-instance v0, Lcom/android/contacts/calllog/CallTypeIconsView;

    iget-object v1, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/contacts/calllog/CallTypeIconsView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mCallTypeIcon:Lcom/android/contacts/calllog/CallTypeIconsView;

    .line 1186
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mCallTypeIcon:Lcom/android/contacts/calllog/CallTypeIconsView;

    invoke-virtual {p0}, Landroid/view/View;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 1187
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mCallTypeIcon:Lcom/android/contacts/calllog/CallTypeIconsView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1189
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mCallTypeIcon:Lcom/android/contacts/calllog/CallTypeIconsView;

    return-object v0
.end method

.method public getCheckBoxMultiSel()Landroid/widget/CheckBox;
    .locals 2

    .prologue
    .line 1357
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mCheckBoxMultiSel:Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    .line 1358
    new-instance v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mCheckBoxMultiSel:Landroid/widget/CheckBox;

    .line 1361
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mCheckBoxMultiSel:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/view/View;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 1362
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mCheckBoxMultiSel:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1364
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mCheckBoxMultiSel:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public getExtentionIconView()V
    .locals 3

    .prologue
    .line 1430
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mExtentionIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 1431
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mExtentionIcon:Landroid/widget/ImageView;

    .line 1433
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mExtentionIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1435
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getCallListExtension()Lcom/android/contacts/ext/CallListExtension;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mExtentionIcon:Landroid/widget/ImageView;

    const-string v2, "ExtenstionForRCS"

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/ext/CallListExtension;->setExtentionImageView(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 1437
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mExtentionIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1438
    return-void
.end method

.method public getHorizontalDivider()Landroid/view/View;
    .locals 2

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mViewHorizontalDivider:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1344
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mViewHorizontalDivider:Landroid/view/View;

    .line 1345
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mViewHorizontalDivider:Landroid/view/View;

    iget v1, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mHorizontalDateDividerColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1346
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mViewHorizontalDivider:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1349
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mViewHorizontalDivider:Landroid/view/View;

    return-object v0
.end method

.method public getNumberTextView()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewNumber:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1140
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewNumber:Landroid/widget/TextView;

    .line 1141
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewNumber:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1142
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewNumber:Landroid/widget/TextView;

    const/high16 v1, 0x4160

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1143
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewNumber:Landroid/widget/TextView;

    iget v1, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mSecondaryTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1145
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewNumber:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1146
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewNumber:Landroid/widget/TextView;

    sget v1, Lcom/mediatek/contacts/calllog/CallLogListItemView;->sNameWidthMaxDim:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1149
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewNumber:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 1150
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewNumber:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1152
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method public getQuickContact()Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;
    .locals 4

    .prologue
    .line 924
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mQuickContactPhoto:Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;

    if-nez v0, :cond_0

    .line 925
    new-instance v0, Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;

    iget-object v1, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const v3, 0x10102af

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mQuickContactPhoto:Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;

    .line 934
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mQuickContactPhoto:Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 936
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mQuickContactPhoto:Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;

    return-object v0
.end method

.method public getSectionDate()Landroid/widget/TextView;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 859
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallLogDate:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 860
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallLogDate:Landroid/widget/TextView;

    .line 861
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallLogDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    const v2, 0x1030046

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 862
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallLogDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallLogDate:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 863
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallLogDate:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 864
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallLogDate:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 865
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallLogDate:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 867
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mViewHorizontalDateDivider:Landroid/view/View;

    if-nez v0, :cond_1

    .line 868
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mViewHorizontalDateDivider:Landroid/view/View;

    .line 869
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mViewHorizontalDateDivider:Landroid/view/View;

    iget v1, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mHorizontalDateDividerColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 870
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mViewHorizontalDateDivider:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 873
    :cond_1
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallLogDate:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 874
    iput-boolean v3, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mCallLogDateVisible:Z

    .line 876
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallLogDate:Landroid/widget/TextView;

    return-object v0
.end method

.method public getSelectImageView()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 976
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mSelectIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 977
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mSelectIcon:Landroid/widget/ImageView;

    .line 978
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mSelectIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200e2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 980
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mSelectIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 981
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mSelectIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 984
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mSelectIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getSimNameTextView()Landroid/widget/TextView;
    .locals 4

    .prologue
    .line 1258
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewSimName:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1259
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewSimName:Landroid/widget/TextView;

    .line 1260
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewSimName:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1261
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewSimName:Landroid/widget/TextView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09007b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1263
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewSimName:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1264
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewSimName:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1265
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewSimName:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1266
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewSimName:Landroid/widget/TextView;

    sget v1, Lcom/mediatek/contacts/calllog/CallLogListItemView;->sSimNameWidthMaxDim:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1269
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewSimName:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 1270
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewSimName:Landroid/widget/TextView;

    const-string v1, "China Mobile Realy?"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1271
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewSimName:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1273
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewSimName:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTagId()I
    .locals 1

    .prologue
    .line 1443
    iget v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTagId:I

    return v0
.end method

.method protected isVisible(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 752
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 808
    invoke-super {p0}, Landroid/view/ViewGroup;->jumpDrawablesToCurrentState()V

    .line 809
    iget-boolean v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mActivatedSupported:Z

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mActivatedBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 812
    :cond_0
    return-void
.end method

.method protected layoutRightSide(IIII)I
    .locals 5
    .parameter "height"
    .parameter "topBound"
    .parameter "bottomBound"
    .parameter "rightBound"

    .prologue
    .line 768
    iget-object v2, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mImageViewCall:Lcom/mediatek/contacts/calllog/CallLogListItemView$DontPressWithParentImageView;

    invoke-virtual {p0, v2}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 769
    iget-object v2, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mImageViewCall:Lcom/mediatek/contacts/calllog/CallLogListItemView$DontPressWithParentImageView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 770
    .local v0, buttonWidth:I
    sub-int/2addr p4, v0

    .line 771
    iget-object v2, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mImageViewCall:Lcom/mediatek/contacts/calllog/CallLogListItemView$DontPressWithParentImageView;

    add-int v3, p4, v0

    iget v4, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mHorizontalDividerHeight:I

    sub-int v4, p1, v4

    invoke-virtual {v2, p4, p2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 776
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mVerticalDividerBeVisible:Z

    .line 777
    invoke-direct {p0}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->ensureVerticalDivider()V

    .line 778
    iget v2, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mVerticalDividerWidth:I

    sub-int/2addr p4, v2

    .line 779
    add-int v2, p2, p1

    sget v3, Lcom/mediatek/contacts/calllog/CallLogListItemView;->sVerticalDividerHeightDim:I

    sub-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x2

    .line 780
    .local v1, iDividTopBond:I
    iget-object v2, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mDrawableVertialDivider:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mVerticalDividerWidth:I

    add-int/2addr v3, p4

    sget v4, Lcom/mediatek/contacts/calllog/CallLogListItemView;->sVerticalDividerHeightDim:I

    add-int/2addr v4, v1

    invoke-virtual {v2, p4, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 785
    sget v2, Lcom/mediatek/contacts/calllog/CallLogListItemView;->sCallLogInnerMarginDim:I

    sub-int/2addr p4, v2

    .line 790
    .end local v0           #buttonWidth:I
    .end local v1           #iDividTopBond:I
    :goto_0
    return p4

    .line 787
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mVerticalDividerBeVisible:Z

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 25
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 490
    sub-int v11, p5, p3

    .line 491
    .local v11, height:I
    sub-int v24, p4, p2

    .line 495
    .local v24, width:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v12

    .line 496
    .local v12, iPaddingRight:I
    const/4 v4, 0x0

    .line 497
    .local v4, topBound:I
    move v5, v11

    .line 498
    .local v5, bottomBound:I
    if-nez v12, :cond_f

    sget v3, Lcom/mediatek/contacts/calllog/CallLogListItemView;->sListItemPaddingLeftDim:I

    .line 499
    .local v3, leftBound:I
    :goto_0
    if-nez v12, :cond_10

    sget v2, Lcom/mediatek/contacts/calllog/CallLogListItemView;->sListItemPaddingRightDim:I

    :goto_1
    sub-int v6, v24, v2

    .line 501
    .local v6, rightBound:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mCallLogDateVisible:Z

    if-eqz v2, :cond_0

    .line 502
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallLogDate:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallLogDateHeight:I

    invoke-virtual {v2, v3, v4, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 504
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallLogDateHeight:I

    add-int/2addr v4, v2

    .line 505
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mViewHorizontalDateDivider:Landroid/view/View;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mViewHorizontalDateDividerHeight:I

    add-int/2addr v7, v4

    invoke-virtual {v2, v3, v4, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 507
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mViewHorizontalDateDividerHeight:I

    add-int/2addr v4, v2

    .line 512
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mBackground:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 513
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mBackground:Landroid/widget/ImageView;

    const/4 v7, 0x0

    move/from16 v0, v24

    invoke-virtual {v2, v7, v4, v0, v11}, Landroid/view/View;->layout(IIII)V

    .line 518
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mHorizontalDividerVisible:Z

    if-eqz v2, :cond_3

    .line 519
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mViewHorizontalDivider:Landroid/view/View;

    if-nez v2, :cond_2

    .line 520
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->getHorizontalDivider()Landroid/view/View;

    .line 522
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mViewHorizontalDivider:Landroid/view/View;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mHorizontalDividerHeight:I

    sub-int v7, v11, v7

    invoke-virtual {v2, v3, v7, v6, v11}, Landroid/view/View;->layout(IIII)V

    .line 524
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mHorizontalDividerHeight:I

    sub-int/2addr v5, v2

    .line 527
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    const/4 v7, 0x0

    move/from16 v0, v24

    invoke-virtual {v2, v7, v4, v0, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 529
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mActivatedSupported:Z

    if-eqz v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 530
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mActivatedBgDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 534
    :cond_4
    sget v2, Lcom/mediatek/contacts/calllog/CallLogListItemView;->sListItemQuickContactPaddingTop:I

    add-int/2addr v4, v2

    .line 535
    sget v2, Lcom/mediatek/contacts/calllog/CallLogListItemView;->sListItemQuickContactPaddingBottom:I

    sub-int/2addr v5, v2

    .line 538
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mCheckBoxMultiSel:Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 539
    sub-int v2, v5, v4

    move-object/from16 v0, p0

    iget v7, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mCheckBoxMultiSelHeight:I

    sub-int/2addr v2, v7

    div-int/lit8 v2, v2, 0x2

    add-int v10, v4, v2

    .line 541
    .local v10, checkBoxTop:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mCheckBoxMultiSel:Landroid/widget/CheckBox;

    sget v7, Lcom/mediatek/contacts/calllog/CallLogListItemView;->sCheckBoxMultiSelWidthDim:I

    add-int/2addr v7, v3

    move-object/from16 v0, p0

    iget v8, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mCheckBoxMultiSelHeight:I

    add-int/2addr v8, v10

    invoke-virtual {v2, v3, v10, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 546
    sget v2, Lcom/mediatek/contacts/calllog/CallLogListItemView;->sCheckBoxMultiSelWidthDim:I

    add-int/2addr v3, v2

    .line 550
    .end local v10           #checkBoxTop:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mQuickContactPhoto:Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 551
    sub-int v2, v5, v4

    move-object/from16 v0, p0

    iget v7, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mPhotoViewHeight:I

    sub-int/2addr v2, v7

    div-int/lit8 v2, v2, 0x2

    add-int v15, v4, v2

    .line 552
    .local v15, photoTop:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mQuickContactPhoto:Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mPhotoViewWidth:I

    add-int/2addr v7, v3

    move-object/from16 v0, p0

    iget v8, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mPhotoViewHeight:I

    add-int/2addr v8, v15

    invoke-virtual {v2, v3, v15, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 557
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mPhotoViewWidth:I

    sget v7, Lcom/mediatek/contacts/calllog/CallLogListItemView;->sCallLogInnerMarginDim:I

    add-int/2addr v2, v7

    add-int/2addr v3, v2

    .line 561
    .end local v15           #photoTop:I
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v4, v5, v6}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->layoutRightSide(IIII)I

    move-result v6

    .line 564
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mSelectIcon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 565
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mSelectIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 568
    .local v14, iconWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mSelectIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 569
    .local v13, iconSelecteWidth:I
    sub-int v16, v24, v13

    .line 570
    .local v16, rBound:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mSelectIcon:Landroid/widget/ImageView;

    add-int/lit8 v7, v16, -0xa

    move-object/from16 v0, p0

    iget v8, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mHorizontalDividerHeight:I

    sub-int v8, v11, v8

    move/from16 v0, v24

    invoke-virtual {v2, v7, v4, v0, v8}, Landroid/view/View;->layout(IIII)V

    .line 575
    .end local v13           #iconSelecteWidth:I
    .end local v14           #iconWidth:I
    .end local v16           #rBound:I
    :cond_7
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/ExtensionManager;->getCallListExtension()Lcom/android/contacts/ext/CallListExtension;

    move-result-object v2

    const-string v7, "ExtenstionForRCS"

    invoke-virtual {v2, v7}, Lcom/android/contacts/ext/CallListExtension;->checkPluginSupport(Ljava/lang/String;)Z

    move-result v17

    .line 577
    .local v17, supportStattus:Z
    if-eqz v17, :cond_8

    .line 578
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/ExtensionManager;->getCallListExtension()Lcom/android/contacts/ext/CallListExtension;

    move-result-object v2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mGapBetweenImageAndText:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mExtentionIcon:Landroid/widget/ImageView;

    const-string v9, "ExtenstionForRCS"

    invoke-virtual/range {v2 .. v9}, Lcom/android/contacts/ext/CallListExtension;->layoutExtentionIcon(IIIIILandroid/widget/ImageView;Ljava/lang/String;)I

    move-result v6

    .line 585
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewNameHeight:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewNumberHeight:I

    add-int/2addr v2, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mCallTypeIconSimNameMaxHeight:I

    add-int v22, v2, v7

    .line 587
    .local v22, totalTextHeight:I
    add-int v2, v5, v4

    sub-int v2, v2, v22

    div-int/lit8 v18, v2, 0x2

    .line 591
    .local v18, textTopBound:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewName:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 592
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewName:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewNameHeight:I

    add-int v7, v7, v18

    move/from16 v0, v18

    invoke-virtual {v2, v3, v0, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 597
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewNameHeight:I

    add-int v18, v18, v2

    .line 600
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewNumber:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 601
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewNumber:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewNumberHeight:I

    add-int v7, v7, v18

    move/from16 v0, v18

    invoke-virtual {v2, v3, v0, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 607
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewNumberHeight:I

    add-int/lit8 v2, v2, 0x6

    add-int v18, v18, v2

    .line 612
    :cond_a
    move/from16 v19, v3

    .line 613
    .local v19, thirdLeftBound:I
    const/16 v23, 0x0

    .line 614
    .local v23, viewWidth:I
    add-int v20, v18, v5

    .line 616
    .local v20, thirdTopAdjust:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mCallTypeIconHeight:I

    sub-int v2, v20, v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v21, v2, 0x2

    .line 617
    .local v21, thirdTopBound:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mCallTypeIcon:Lcom/android/contacts/calllog/CallTypeIconsView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 618
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mCallTypeIcon:Lcom/android/contacts/calllog/CallTypeIconsView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    .line 619
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mCallTypeIcon:Lcom/android/contacts/calllog/CallTypeIconsView;

    add-int v7, v19, v23

    move-object/from16 v0, p0

    iget v8, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mCallTypeIconHeight:I

    add-int v8, v8, v21

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v2, v0, v1, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 623
    sget v2, Lcom/mediatek/contacts/calllog/CallLogListItemView;->sCallLogInnerMarginDim:I

    add-int v2, v2, v23

    add-int v19, v19, v2

    .line 628
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallCount:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 629
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallCount:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    .line 630
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallCountHeight:I

    sub-int v2, v20, v2

    div-int/lit8 v21, v2, 0x2

    .line 631
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallCount:Landroid/widget/TextView;

    add-int v7, v19, v23

    move-object/from16 v0, p0

    iget v8, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallCountHeight:I

    add-int v8, v8, v21

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v2, v0, v1, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 635
    sget v2, Lcom/mediatek/contacts/calllog/CallLogListItemView;->sCallLogInnerMarginDim:I

    add-int v2, v2, v23

    add-int v19, v19, v2

    .line 640
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewSimName:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 641
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewSimName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    .line 643
    sget v2, Lcom/mediatek/contacts/calllog/CallLogListItemView;->sSimNameWidthMaxDim:I

    move/from16 v0, v23

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v23

    .line 644
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewSimNameHeight:I

    sub-int v2, v20, v2

    div-int/lit8 v21, v2, 0x2

    .line 645
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewSimName:Landroid/widget/TextView;

    add-int v7, v19, v23

    move-object/from16 v0, p0

    iget v8, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewSimNameHeight:I

    add-int v8, v8, v21

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v2, v0, v1, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 649
    sget v2, Lcom/mediatek/contacts/calllog/CallLogListItemView;->sCallLogInnerMarginDim:I

    add-int v2, v2, v23

    add-int v19, v19, v2

    .line 654
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallTime:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 655
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallTime:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    .line 656
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallTimeHeight:I

    sub-int v2, v20, v2

    div-int/lit8 v21, v2, 0x2

    .line 657
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallTime:Landroid/widget/TextView;

    add-int v7, v19, v23

    move-object/from16 v0, p0

    iget v8, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallTimeHeight:I

    add-int v8, v8, v21

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v2, v0, v1, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 662
    :cond_e
    return-void

    .line 498
    .end local v3           #leftBound:I
    .end local v6           #rightBound:I
    .end local v17           #supportStattus:Z
    .end local v18           #textTopBound:I
    .end local v19           #thirdLeftBound:I
    .end local v20           #thirdTopAdjust:I
    .end local v21           #thirdTopBound:I
    .end local v22           #totalTextHeight:I
    .end local v23           #viewWidth:I
    :cond_f
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 499
    .restart local v3       #leftBound:I
    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_1
.end method

.method protected onMeasure(II)V
    .locals 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v10, -0x8000

    const/4 v9, 0x0

    .line 345
    invoke-static {v9, p1}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->resolveSize(II)I

    move-result v5

    .line 348
    .local v5, specWidth:I
    iput v9, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallLogDateHeight:I

    .line 349
    iput v9, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mViewHorizontalDateDividerHeight:I

    .line 350
    iput v9, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewNameHeight:I

    .line 351
    iput v9, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewNumberHeight:I

    .line 352
    iput v9, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mCallTypeIconHeight:I

    .line 353
    iput v9, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallCountHeight:I

    .line 354
    iput v9, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewSimNameHeight:I

    .line 355
    iput v9, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallTimeHeight:I

    .line 361
    iget-object v6, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallLogDate:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->isVisible(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 362
    iget-object v6, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallLogDate:Landroid/widget/TextView;

    const/high16 v7, 0x4000

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/view/View;->measure(II)V

    .line 365
    iget-object v6, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallLogDate:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iput v6, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallLogDateHeight:I

    .line 366
    const/4 v6, 0x3

    iput v6, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mViewHorizontalDateDividerHeight:I

    .line 369
    :cond_0
    iget-boolean v6, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mCallLogDateVisible:Z

    if-eqz v6, :cond_a

    .line 370
    iget v6, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mPhotoViewHeight:I

    iget v7, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallLogDateHeight:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mViewHorizontalDateDividerHeight:I

    add-int/2addr v6, v7

    sget v7, Lcom/mediatek/contacts/calllog/CallLogListItemView;->sListItemQuickContactPaddingTop:I

    add-int/2addr v6, v7

    sget v7, Lcom/mediatek/contacts/calllog/CallLogListItemView;->sListItemQuickContactPaddingBottom:I

    add-int v4, v6, v7

    .line 377
    .local v4, preferredHeight:I
    :goto_0
    sget v6, Lcom/mediatek/contacts/calllog/CallLogListItemView;->sImageViewCallWidthDim:I

    sub-int v6, v5, v6

    iget v7, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mVerticalDividerWidth:I

    sub-int/2addr v6, v7

    sget v7, Lcom/mediatek/contacts/calllog/CallLogListItemView;->sCallLogInnerMarginDim:I

    sub-int v3, v6, v7

    .line 381
    .local v3, iPrimaryActionWidth:I
    iget-object v6, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewName:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->isVisible(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 382
    iget-object v6, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewName:Landroid/widget/TextView;

    invoke-static {v3, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/view/View;->measure(II)V

    .line 385
    iget-object v6, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewName:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iput v6, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewNameHeight:I

    .line 391
    :goto_1
    iget-object v6, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewNumber:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->isVisible(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 392
    iget-object v6, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewNumber:Landroid/widget/TextView;

    invoke-static {v3, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/view/View;->measure(II)V

    .line 394
    iget-object v6, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewNumber:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iput v6, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewNumberHeight:I

    .line 398
    :cond_1
    iget-object v6, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mCallTypeIcon:Lcom/android/contacts/calllog/CallTypeIconsView;

    invoke-virtual {p0, v6}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->isVisible(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 399
    iget-object v6, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mCallTypeIcon:Lcom/android/contacts/calllog/CallTypeIconsView;

    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/view/View;->measure(II)V

    .line 401
    iget-object v6, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mCallTypeIcon:Lcom/android/contacts/calllog/CallTypeIconsView;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iput v6, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mCallTypeIconHeight:I

    .line 405
    :cond_2
    iget-object v6, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallCount:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->isVisible(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 406
    iget-object v6, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallCount:Landroid/widget/TextView;

    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/view/View;->measure(II)V

    .line 408
    iget-object v6, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallCount:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iput v6, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallCountHeight:I

    .line 410
    :cond_3
    iget v6, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mCallTypeIconHeight:I

    iget v7, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallCountHeight:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mCallTypeIconSimNameMaxHeight:I

    .line 413
    iget-object v6, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewSimName:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->isVisible(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 414
    iget-object v6, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewSimName:Landroid/widget/TextView;

    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/view/View;->measure(II)V

    .line 416
    iget-object v6, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewSimName:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iput v6, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewSimNameHeight:I

    .line 418
    :cond_4
    iget v6, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mCallTypeIconSimNameMaxHeight:I

    iget v7, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewSimNameHeight:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mCallTypeIconSimNameMaxHeight:I

    .line 422
    iget-object v6, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallTime:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->isVisible(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 423
    iget-object v6, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallTime:Landroid/widget/TextView;

    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/view/View;->measure(II)V

    .line 425
    iget-object v6, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallTime:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iput v6, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallTimeHeight:I

    .line 427
    :cond_5
    iget v6, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mCallTypeIconSimNameMaxHeight:I

    iget v7, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallTimeHeight:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mCallTypeIconSimNameMaxHeight:I

    .line 430
    iget-object v6, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mImageViewCall:Lcom/mediatek/contacts/calllog/CallLogListItemView$DontPressWithParentImageView;

    invoke-virtual {p0, v6}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->isVisible(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 431
    iget-object v6, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mImageViewCall:Lcom/mediatek/contacts/calllog/CallLogListItemView$DontPressWithParentImageView;

    sget v7, Lcom/mediatek/contacts/calllog/CallLogListItemView;->sImageViewCallWidthDim:I

    sget v8, Lcom/mediatek/contacts/calllog/CallLogListItemView;->sImageViewCallHeightDim:I

    invoke-virtual {v6, v7, v8}, Landroid/view/View;->measure(II)V

    .line 437
    :cond_6
    iget-object v6, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mSelectIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v6}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->isVisible(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 438
    iget-object v6, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mSelectIcon:Landroid/widget/ImageView;

    sget v7, Lcom/mediatek/contacts/calllog/CallLogListItemView;->sImageViewCallWidthDim:I

    mul-int/lit8 v7, v7, 0x2

    sget v8, Lcom/mediatek/contacts/calllog/CallLogListItemView;->sImageViewCallHeightDim:I

    mul-int/lit8 v8, v8, 0x2

    invoke-virtual {v6, v7, v8}, Landroid/view/View;->measure(II)V

    .line 442
    :cond_7
    iget-object v6, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mCheckBoxMultiSel:Landroid/widget/CheckBox;

    invoke-virtual {p0, v6}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->isVisible(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 443
    iget-object v6, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mCheckBoxMultiSel:Landroid/widget/CheckBox;

    sget v7, Lcom/mediatek/contacts/calllog/CallLogListItemView;->sCheckBoxMultiSelWidthDim:I

    sget v8, Lcom/mediatek/contacts/calllog/CallLogListItemView;->sCheckBoxMultiSelWidthDim:I

    invoke-virtual {v6, v7, v8}, Landroid/view/View;->measure(II)V

    .line 444
    iget-object v6, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mCheckBoxMultiSel:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iput v6, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mCheckBoxMultiSelHeight:I

    .line 447
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 448
    .local v2, iPaddingTop:I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 449
    .local v1, iPaddingBottom:I
    if-nez v2, :cond_c

    .line 450
    sget v2, Lcom/mediatek/contacts/calllog/CallLogListItemView;->sListItemQuickContactPaddingTop:I

    .line 455
    :goto_2
    if-nez v1, :cond_d

    .line 456
    sget v2, Lcom/mediatek/contacts/calllog/CallLogListItemView;->sListItemQuickContactPaddingBottom:I

    .line 462
    :goto_3
    iget v6, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallLogDateHeight:I

    iget v7, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mViewHorizontalDateDividerHeight:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewNameHeight:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewNumberHeight:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mCallTypeIconSimNameMaxHeight:I

    add-int/2addr v6, v7

    add-int/2addr v6, v1

    add-int v0, v6, v2

    .line 467
    .local v0, height:I
    iget v6, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mPhotoViewHeight:I

    add-int/2addr v6, v2

    add-int/2addr v6, v1

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 470
    iget-boolean v6, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mHorizontalDividerVisible:Z

    if-eqz v6, :cond_9

    .line 471
    iget v6, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mHorizontalDividerHeight:I

    add-int/2addr v0, v6

    .line 475
    :cond_9
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 476
    invoke-virtual {p0, v5, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 480
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/contacts/ExtensionManager;->getCallListExtension()Lcom/android/contacts/ext/CallListExtension;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mExtentionIcon:Landroid/widget/ImageView;

    const-string v8, "ExtenstionForRCS"

    invoke-virtual {v6, v7, v8}, Lcom/android/contacts/ext/CallListExtension;->measureExtention(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 485
    return-void

    .line 373
    .end local v0           #height:I
    .end local v1           #iPaddingBottom:I
    .end local v2           #iPaddingTop:I
    .end local v3           #iPrimaryActionWidth:I
    .end local v4           #preferredHeight:I
    :cond_a
    iget v6, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mPhotoViewHeight:I

    sget v7, Lcom/mediatek/contacts/calllog/CallLogListItemView;->sListItemQuickContactPaddingTop:I

    add-int/2addr v6, v7

    sget v7, Lcom/mediatek/contacts/calllog/CallLogListItemView;->sListItemQuickContactPaddingBottom:I

    add-int v4, v6, v7

    .restart local v4       #preferredHeight:I
    goto/16 :goto_0

    .line 387
    .restart local v3       #iPrimaryActionWidth:I
    :cond_b
    const/16 v6, 0x2c

    iput v6, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewNameHeight:I

    goto/16 :goto_1

    .line 452
    .restart local v1       #iPaddingBottom:I
    .restart local v2       #iPaddingTop:I
    :cond_c
    sput v2, Lcom/mediatek/contacts/calllog/CallLogListItemView;->sListItemQuickContactPaddingTop:I

    goto :goto_2

    .line 458
    :cond_d
    sput v2, Lcom/mediatek/contacts/calllog/CallLogListItemView;->sListItemQuickContactPaddingBottom:I

    goto :goto_3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    .line 1028
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_5

    .line 1029
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1031
    .local v0, ix:F
    const/4 v1, -0x1

    .line 1032
    .local v1, leftSide:I
    const/4 v2, -0x1

    .line 1033
    .local v2, rightSide:I
    iget-object v3, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mImageViewCall:Lcom/mediatek/contacts/calllog/CallLogListItemView$DontPressWithParentImageView;

    if-eqz v3, :cond_0

    .line 1034
    iget-object v3, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mImageViewCall:Lcom/mediatek/contacts/calllog/CallLogListItemView$DontPressWithParentImageView;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 1036
    :cond_0
    iget-object v3, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mCheckBoxMultiSel:Landroid/widget/CheckBox;

    if-eqz v3, :cond_4

    .line 1037
    iget-object v3, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mCheckBoxMultiSel:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 1043
    :cond_1
    :goto_0
    const-string v3, "CallLogListItemView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTouchEvent, rightSide="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", leftSide="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    if-ltz v2, :cond_2

    if-eqz v2, :cond_2

    int-to-float v3, v2

    cmpg-float v3, v0, v3

    if-gez v3, :cond_5

    :cond_2
    if-ltz v1, :cond_3

    int-to-float v3, v1

    cmpl-float v3, v0, v3

    if-lez v3, :cond_5

    .line 1046
    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 1049
    .end local v0           #ix:F
    .end local v1           #leftSide:I
    .end local v2           #rightSide:I
    :goto_1
    return v3

    .line 1039
    .restart local v0       #ix:F
    .restart local v1       #leftSide:I
    .restart local v2       #rightSide:I
    :cond_4
    iget-object v3, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mQuickContactPhoto:Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;

    if-eqz v3, :cond_1

    .line 1040
    iget-object v3, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mQuickContactPhoto:Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v1

    goto :goto_0

    .line 1049
    .end local v0           #ix:F
    .end local v1           #leftSide:I
    .end local v2           #rightSide:I
    :cond_5
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public removeExtentionIconView()V
    .locals 1

    .prologue
    .line 1405
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mExtentionIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1406
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mExtentionIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1407
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mExtentionIcon:Landroid/widget/ImageView;

    .line 1409
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 0

    .prologue
    .line 837
    invoke-virtual {p0}, Landroid/view/View;->forceLayout()V

    .line 838
    return-void
.end method

.method public setCallLogName(Ljava/lang/CharSequence;Z)V
    .locals 2
    .parameter "name"
    .parameter "isNameOrNumber"

    .prologue
    .line 1116
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 1117
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewName:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1118
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewName:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1131
    :cond_1
    :goto_0
    return-void

    .line 1121
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->getCallLogNameTextView()Landroid/widget/TextView;

    .line 1122
    if-eqz p2, :cond_3

    .line 1123
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mHighlighter:Lcom/mediatek/contacts/calllog/CallLogHighlighter;

    iget-object v1, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mHighlightedText:[C

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/contacts/calllog/CallLogHighlighter;->applyName(Ljava/lang/CharSequence;[C)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1127
    :goto_1
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1129
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewName:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1125
    :cond_3
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mHighlighter:Lcom/mediatek/contacts/calllog/CallLogHighlighter;

    iget-object v1, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mHighlightedText:[C

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/contacts/calllog/CallLogHighlighter;->applyNumber(Ljava/lang/CharSequence;[C)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_1
.end method

.method public setCallType(II)V
    .locals 2
    .parameter "callType"
    .parameter "isVTCall"

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mCallTypeIcon:Lcom/android/contacts/calllog/CallTypeIconsView;

    if-nez v0, :cond_0

    .line 1199
    invoke-virtual {p0}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->getCallTypeIconView()Lcom/android/contacts/calllog/CallTypeIconsView;

    .line 1202
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mCallTypeIcon:Lcom/android/contacts/calllog/CallTypeIconsView;

    if-eqz v0, :cond_1

    .line 1203
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mCallTypeIcon:Lcom/android/contacts/calllog/CallTypeIconsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1204
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mCallTypeIcon:Lcom/android/contacts/calllog/CallTypeIconsView;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/calllog/CallTypeIconsView;->set(II)V

    .line 1209
    :goto_0
    return-void

    .line 1206
    :cond_1
    const-string v0, "CallLogListItemView"

    const-string v1, "Error!!! - setCallType() mCallTypeIcon is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setCheckBoxMultiSel(ZZ)V
    .locals 2
    .parameter "focusable"
    .parameter "clickable"

    .prologue
    .line 1374
    invoke-virtual {p0}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->getCheckBoxMultiSel()Landroid/widget/CheckBox;

    .line 1375
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mCheckBoxMultiSel:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 1376
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mCheckBoxMultiSel:Landroid/widget/CheckBox;

    invoke-virtual {v0, p2}, Landroid/view/View;->setClickable(Z)V

    .line 1377
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mCheckBoxMultiSel:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1378
    return-void
.end method

.method public setExtentionIcon(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 1416
    if-eqz p1, :cond_2

    .line 1417
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mExtentionIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 1418
    invoke-virtual {p0}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->getExtentionIconView()V

    .line 1420
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mExtentionIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1426
    :cond_1
    :goto_0
    return-void

    .line 1422
    :cond_2
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mExtentionIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1423
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mExtentionIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setHighlightedText([C)V
    .locals 0
    .parameter "upperCaseText"

    .prologue
    .line 1453
    iput-object p1, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mHighlightedText:[C

    .line 1454
    return-void
.end method

.method public setNumber(Ljava/lang/CharSequence;Z)V
    .locals 2
    .parameter "number"
    .parameter "isNumber"

    .prologue
    .line 1161
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 1162
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1163
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1175
    :cond_1
    :goto_0
    return-void

    .line 1166
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->getNumberTextView()Landroid/widget/TextView;

    .line 1169
    if-eqz p2, :cond_3

    .line 1170
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mHighlighter:Lcom/mediatek/contacts/calllog/CallLogHighlighter;

    iget-object v1, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mHighlightedText:[C

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/contacts/calllog/CallLogHighlighter;->applyNumber(Ljava/lang/CharSequence;[C)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1172
    :cond_3
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1173
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setOnCallButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "callButtonClickListener"

    .prologue
    .line 338
    iput-object p1, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mCallButtonClickListener:Landroid/view/View$OnClickListener;

    .line 339
    return-void
.end method

.method public setSectionDate(Ljava/lang/String;)V
    .locals 3
    .parameter "date"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 901
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 902
    invoke-virtual {p0}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->getSectionDate()Landroid/widget/TextView;

    .line 903
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallLogDate:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 904
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mViewHorizontalDateDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 905
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallLogDate:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 906
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mCallLogDateVisible:Z

    .line 916
    :goto_0
    return-void

    .line 908
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallLogDate:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 909
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTextViewCallLogDate:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 911
    :cond_1
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mViewHorizontalDateDivider:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 912
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mViewHorizontalDateDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 914
    :cond_2
    iput-boolean v1, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mCallLogDateVisible:Z

    goto :goto_0
.end method

.method public setTagId(I)V
    .locals 0
    .parameter "tagId"

    .prologue
    .line 1447
    iput p1, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mTagId:I

    .line 1448
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 803
    iget-object v0, p0, Lcom/mediatek/contacts/calllog/CallLogListItemView;->mActivatedBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
