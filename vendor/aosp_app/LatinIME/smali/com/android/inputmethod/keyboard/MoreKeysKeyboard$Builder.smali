.class public Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$Builder;
.super Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;
.source "MoreKeysKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/MoreKeysKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder",
        "<",
        "Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;",
        ">;"
    }
.end annotation


# static fields
.field private static final DIVIDER_RATIO:F = 0.2f

.field private static final LABEL_PADDING_RATIO:F = 0.2f


# instance fields
.field private final mDivider:Landroid/graphics/drawable/Drawable;

.field private final mParentKey:Lcom/android/inputmethod/keyboard/Key;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/inputmethod/keyboard/Key;Lcom/android/inputmethod/keyboard/KeyboardView;)V
    .locals 11
    .parameter "containerView"
    .parameter "parentKey"
    .parameter "parentKeyboardView"

    .prologue
    const/4 v10, 0x1

    .line 267
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;

    invoke-direct {v1}, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;-><init>(Landroid/content/Context;Lcom/android/inputmethod/keyboard/internal/KeyboardParams;)V

    .line 268
    invoke-virtual {p3}, Lcom/android/inputmethod/keyboard/KeyboardView;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v9

    .line 269
    .local v9, parentKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    iget v0, v9, Lcom/android/inputmethod/keyboard/Keyboard;->mMoreKeysTemplate:I

    iget-object v1, v9, Lcom/android/inputmethod/keyboard/Keyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    invoke-virtual {p0, v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->load(ILcom/android/inputmethod/keyboard/KeyboardId;)Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;

    .line 273
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    check-cast v0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;

    iget v1, v9, Lcom/android/inputmethod/keyboard/Keyboard;->mVerticalGap:I

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mVerticalGap:I

    .line 274
    iput-object p2, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$Builder;->mParentKey:Lcom/android/inputmethod/keyboard/Key;

    .line 277
    invoke-virtual {p3}, Lcom/android/inputmethod/keyboard/KeyboardView;->isKeyPreviewPopupEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/android/inputmethod/keyboard/Key;->noKeyPreview()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p2, Lcom/android/inputmethod/keyboard/Key;->mMoreKeys:[Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;

    array-length v0, v0

    if-ne v0, v10, :cond_1

    .line 279
    .local v10, singleMoreKeyWithPreview:Z
    :goto_0
    if-eqz v10, :cond_2

    .line 287
    iget-object v0, p3, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyPreviewDrawParams:Lcom/android/inputmethod/keyboard/internal/KeyPreviewDrawParams;

    iget v3, v0, Lcom/android/inputmethod/keyboard/internal/KeyPreviewDrawParams;->mPreviewVisibleWidth:I

    .line 288
    .local v3, width:I
    iget-object v0, p3, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyPreviewDrawParams:Lcom/android/inputmethod/keyboard/internal/KeyPreviewDrawParams;

    iget v1, v0, Lcom/android/inputmethod/keyboard/internal/KeyPreviewDrawParams;->mPreviewVisibleHeight:I

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    check-cast v0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mVerticalGap:I

    add-int v4, v1, v0

    .line 295
    .local v4, height:I
    :goto_1
    invoke-virtual {p2}, Lcom/android/inputmethod/keyboard/Key;->needsDividersInMoreKeys()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 296
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f02003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$Builder;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 297
    int-to-float v0, v3

    const v1, 0x3e4ccccd

    mul-float/2addr v0, v1

    float-to-int v8, v0

    .line 307
    .local v8, dividerWidth:I
    :goto_2
    invoke-virtual {p2}, Lcom/android/inputmethod/keyboard/Key;->getMoreKeysColumn()I

    move-result v2

    .line 308
    .local v2, maxColumn:I
    iget-object v0, p2, Lcom/android/inputmethod/keyboard/Key;->mMoreKeys:[Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;

    array-length v0, v0

    if-le v2, v0, :cond_0

    .line 309
    iget-object v0, p2, Lcom/android/inputmethod/keyboard/Key;->mMoreKeys:[Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;

    array-length v2, v0

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    check-cast v0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;

    iget-object v1, p2, Lcom/android/inputmethod/keyboard/Key;->mMoreKeys:[Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;

    array-length v1, v1

    iget v5, p2, Lcom/android/inputmethod/keyboard/Key;->mX:I

    iget v6, p2, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p2}, Lcom/android/inputmethod/keyboard/Key;->isFixedColumnOrderMoreKeys()Z

    move-result v7

    invoke-virtual/range {v0 .. v8}, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->setParameters(IIIIIIZI)V

    .line 317
    return-void

    .line 277
    .end local v2           #maxColumn:I
    .end local v3           #width:I
    .end local v4           #height:I
    .end local v8           #dividerWidth:I
    .end local v10           #singleMoreKeyWithPreview:Z
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 291
    .restart local v10       #singleMoreKeyWithPreview:Z
    :cond_2
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    check-cast v0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;

    iget v0, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mDefaultKeyWidth:I

    invoke-static {p3, p2, v0}, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$Builder;->getMaxKeyWidth(Lcom/android/inputmethod/keyboard/KeyboardView;Lcom/android/inputmethod/keyboard/Key;I)I

    move-result v3

    .line 292
    .restart local v3       #width:I
    iget v4, v9, Lcom/android/inputmethod/keyboard/Keyboard;->mMostCommonKeyHeight:I

    .restart local v4       #height:I
    goto :goto_1

    .line 299
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$Builder;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 300
    const/4 v8, 0x0

    .restart local v8       #dividerWidth:I
    goto :goto_2
.end method

.method private static getMaxKeyWidth(Lcom/android/inputmethod/keyboard/KeyboardView;Lcom/android/inputmethod/keyboard/Key;I)I
    .locals 12
    .parameter "view"
    .parameter "parentKey"
    .parameter "minKeyWidth"

    .prologue
    .line 321
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0005

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/Key;->hasLabelsInMoreKeys()Z

    move-result v9

    if-eqz v9, :cond_1

    int-to-float v9, p2

    const v11, 0x3e4ccccd

    mul-float/2addr v9, v11

    :goto_0
    add-float/2addr v9, v10

    float-to-int v5, v9

    .line 324
    .local v5, padding:I
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->newDefaultLabelPaint()Landroid/graphics/Paint;

    move-result-object v6

    .line 325
    .local v6, paint:Landroid/graphics/Paint;
    iget-object v9, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyDrawParams:Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;

    invoke-virtual {p1, v9}, Lcom/android/inputmethod/keyboard/Key;->selectTypeface(Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 326
    iget-object v9, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyDrawParams:Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;

    invoke-virtual {p1, v9}, Lcom/android/inputmethod/keyboard/Key;->selectMoreKeyTextSize(Lcom/android/inputmethod/keyboard/internal/KeyDrawParams;)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 327
    move v4, p2

    .line 328
    .local v4, maxWidth:I
    iget-object v0, p1, Lcom/android/inputmethod/keyboard/Key;->mMoreKeys:[Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;

    .local v0, arr$:[Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v7, v0, v1

    .line 329
    .local v7, spec:Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;
    iget-object v2, v7, Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;->mLabel:Ljava/lang/String;

    .line 331
    .local v2, label:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/android/inputmethod/latin/StringUtils;->codePointCount(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_0

    .line 332
    invoke-virtual {p0, v2, v6}, Lcom/android/inputmethod/keyboard/KeyboardView;->getLabelWidth(Ljava/lang/String;Landroid/graphics/Paint;)F

    move-result v9

    float-to-int v9, v9

    add-int v8, v9, v5

    .line 333
    .local v8, width:I
    if-ge v4, v8, :cond_0

    .line 334
    move v4, v8

    .line 328
    .end local v8           #width:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 321
    .end local v0           #arr$:[Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;
    .end local v1           #i$:I
    .end local v2           #label:Ljava/lang/String;
    .end local v3           #len$:I
    .end local v4           #maxWidth:I
    .end local v5           #padding:I
    .end local v6           #paint:Landroid/graphics/Paint;
    .end local v7           #spec:Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 338
    .restart local v0       #arr$:[Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;
    .restart local v1       #i$:I
    .restart local v3       #len$:I
    .restart local v4       #maxWidth:I
    .restart local v5       #padding:I
    .restart local v6       #paint:Landroid/graphics/Paint;
    :cond_2
    return v4
.end method


# virtual methods
.method public bridge synthetic build()Lcom/android/inputmethod/keyboard/Keyboard;
    .locals 1

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$Builder;->build()Lcom/android/inputmethod/keyboard/MoreKeysKeyboard;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/android/inputmethod/keyboard/MoreKeysKeyboard;
    .locals 14

    .prologue
    .line 343
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    check-cast v1, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;

    .line 344
    .local v1, params:Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;
    iget-object v5, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$Builder;->mParentKey:Lcom/android/inputmethod/keyboard/Key;

    invoke-virtual {v5}, Lcom/android/inputmethod/keyboard/Key;->getMoreKeyLabelFlags()I

    move-result v7

    .line 345
    .local v7, moreKeyFlags:I
    iget-object v5, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$Builder;->mParentKey:Lcom/android/inputmethod/keyboard/Key;

    iget-object v10, v5, Lcom/android/inputmethod/keyboard/Key;->mMoreKeys:[Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;

    .line 346
    .local v10, moreKeys:[Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;
    const/4 v11, 0x0

    .local v11, n:I
    :goto_0
    array-length v5, v10

    if-ge v11, v5, :cond_2

    .line 347
    aget-object v2, v10, v11

    .line 348
    .local v2, moreKeySpec:Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;
    iget v5, v1, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mNumColumns:I

    div-int v13, v11, v5

    .line 349
    .local v13, row:I
    invoke-virtual {v1, v11, v13}, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->getX(II)I

    move-result v3

    .line 350
    .local v3, x:I
    invoke-virtual {v1, v13}, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->getY(I)I

    move-result v4

    .line 351
    .local v4, y:I
    new-instance v0, Lcom/android/inputmethod/keyboard/Key;

    iget v5, v1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mDefaultKeyWidth:I

    iget v6, v1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mDefaultRowHeight:I

    invoke-direct/range {v0 .. v7}, Lcom/android/inputmethod/keyboard/Key;-><init>(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;IIIII)V

    .line 353
    .local v0, key:Lcom/android/inputmethod/keyboard/Key;
    invoke-virtual {v1, v0, v13}, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->markAsEdgeKey(Lcom/android/inputmethod/keyboard/Key;I)V

    .line 354
    invoke-virtual {v1, v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->onAddKey(Lcom/android/inputmethod/keyboard/Key;)V

    .line 356
    invoke-virtual {v1, v11}, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->getColumnPos(I)I

    move-result v12

    .line 359
    .local v12, pos:I
    iget v5, v1, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mDividerWidth:I

    if-lez v5, :cond_0

    if-eqz v12, :cond_0

    .line 360
    if-lez v12, :cond_1

    iget v5, v1, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;->mDividerWidth:I

    sub-int v9, v3, v5

    .line 362
    .local v9, dividerX:I
    :goto_1
    new-instance v8, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeyDivider;

    iget-object v5, p0, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$Builder;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-direct {v8, v1, v5, v9, v4}, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeyDivider;-><init>(Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;Landroid/graphics/drawable/Drawable;II)V

    .line 363
    .local v8, divider:Lcom/android/inputmethod/keyboard/Key;
    invoke-virtual {v1, v8}, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->onAddKey(Lcom/android/inputmethod/keyboard/Key;)V

    .line 346
    .end local v8           #divider:Lcom/android/inputmethod/keyboard/Key;
    .end local v9           #dividerX:I
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 360
    :cond_1
    iget v5, v1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mDefaultKeyWidth:I

    add-int v9, v3, v5

    goto :goto_1

    .line 366
    .end local v0           #key:Lcom/android/inputmethod/keyboard/Key;
    .end local v2           #moreKeySpec:Lcom/android/inputmethod/keyboard/internal/MoreKeySpec;
    .end local v3           #x:I
    .end local v4           #y:I
    .end local v12           #pos:I
    .end local v13           #row:I
    :cond_2
    new-instance v5, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard;

    invoke-direct {v5, v1}, Lcom/android/inputmethod/keyboard/MoreKeysKeyboard;-><init>(Lcom/android/inputmethod/keyboard/MoreKeysKeyboard$MoreKeysKeyboardParams;)V

    return-object v5
.end method
