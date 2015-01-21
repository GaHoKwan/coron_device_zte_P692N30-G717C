.class public Lcom/android/launcher2/PagedViewWidget;
.super Landroid/widget/LinearLayout;
.source "PagedViewWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/PagedViewWidget$CheckForShortPress;,
        Lcom/android/launcher2/PagedViewWidget$ShortPressListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PagedViewWidgetLayout"

.field private static sDeletePreviewsWhenDetachedFromWindow:Z

.field static sShortpressTarget:Lcom/android/launcher2/PagedViewWidget;


# instance fields
.field private mDimensionsFormatString:Ljava/lang/String;

.field mIsAppWidget:Z

.field private final mOriginalImagePadding:Landroid/graphics/Rect;

.field mPendingCheckForShortPress:Lcom/android/launcher2/PagedViewWidget$CheckForShortPress;

.field mShortPressListener:Lcom/android/launcher2/PagedViewWidget$ShortPressListener;

.field mShortPressTriggered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher2/PagedViewWidget;->sDeletePreviewsWhenDetachedFromWindow:Z

    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/PagedViewWidget;->sShortpressTarget:Lcom/android/launcher2/PagedViewWidget;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/PagedViewWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/PagedViewWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    iput-object v1, p0, Lcom/android/launcher2/PagedViewWidget;->mPendingCheckForShortPress:Lcom/android/launcher2/PagedViewWidget$CheckForShortPress;

    .line 46
    iput-object v1, p0, Lcom/android/launcher2/PagedViewWidget;->mShortPressListener:Lcom/android/launcher2/PagedViewWidget$ShortPressListener;

    .line 47
    iput-boolean v2, p0, Lcom/android/launcher2/PagedViewWidget;->mShortPressTriggered:Z

    .line 50
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/PagedViewWidget;->mOriginalImagePadding:Landroid/graphics/Rect;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 64
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f0d0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/PagedViewWidget;->mDimensionsFormatString:Ljava/lang/String;

    .line 66
    invoke-virtual {p0, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 67
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 68
    return-void
.end method

.method private checkForShortPress()V
    .locals 3

    .prologue
    .line 201
    sget-object v0, Lcom/android/launcher2/PagedViewWidget;->sShortpressTarget:Lcom/android/launcher2/PagedViewWidget;

    if-eqz v0, :cond_0

    .line 206
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mPendingCheckForShortPress:Lcom/android/launcher2/PagedViewWidget$CheckForShortPress;

    if-nez v0, :cond_1

    .line 203
    new-instance v0, Lcom/android/launcher2/PagedViewWidget$CheckForShortPress;

    invoke-direct {v0, p0}, Lcom/android/launcher2/PagedViewWidget$CheckForShortPress;-><init>(Lcom/android/launcher2/PagedViewWidget;)V

    iput-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mPendingCheckForShortPress:Lcom/android/launcher2/PagedViewWidget$CheckForShortPress;

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mPendingCheckForShortPress:Lcom/android/launcher2/PagedViewWidget$CheckForShortPress;

    const-wide/16 v1, 0x78

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private cleanUpShortPress()V
    .locals 1

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/android/launcher2/PagedViewWidget;->removeShortPressCallback()V

    .line 219
    iget-boolean v0, p0, Lcom/android/launcher2/PagedViewWidget;->mShortPressTriggered:Z

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mShortPressListener:Lcom/android/launcher2/PagedViewWidget$ShortPressListener;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mShortPressListener:Lcom/android/launcher2/PagedViewWidget$ShortPressListener;

    invoke-interface {v0, p0}, Lcom/android/launcher2/PagedViewWidget$ShortPressListener;->cleanUpShortPress(Landroid/view/View;)V

    .line 223
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PagedViewWidget;->mShortPressTriggered:Z

    .line 225
    :cond_1
    return-void
.end method

.method private removeShortPressCallback()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mPendingCheckForShortPress:Lcom/android/launcher2/PagedViewWidget$CheckForShortPress;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mPendingCheckForShortPress:Lcom/android/launcher2/PagedViewWidget$CheckForShortPress;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 215
    :cond_0
    return-void
.end method

.method static resetShortPressTarget()V
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/PagedViewWidget;->sShortpressTarget:Lcom/android/launcher2/PagedViewWidget;

    .line 229
    return-void
.end method

.method public static setDeletePreviewsWhenDetachedFromWindow(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 82
    sput-boolean p0, Lcom/android/launcher2/PagedViewWidget;->sDeletePreviewsWhenDetachedFromWindow:Z

    .line 83
    return-void
.end method


# virtual methods
.method public applyFromAppWidgetProviderInfo(Landroid/appwidget/AppWidgetProviderInfo;I[I)V
    .locals 10
    .parameter "info"
    .parameter "maxWidth"
    .parameter "cellSpan"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 106
    const-string v5, "PagedViewWidgetLayout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applyFromAppWidgetProviderInfo: info = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", label = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iput-boolean v8, p0, Lcom/android/launcher2/PagedViewWidget;->mIsAppWidget:Z

    .line 110
    const v5, 0x7f070015

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 111
    .local v2, image:Landroid/widget/ImageView;
    const/4 v5, -0x1

    if-le p2, v5, :cond_0

    .line 112
    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 114
    :cond_0
    iget-object v5, p1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 115
    const v5, 0x7f070016

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 116
    .local v3, name:Landroid/widget/TextView;
    iget-object v5, p1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    const v5, 0x7f070017

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 118
    .local v0, dims:Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 119
    aget v5, p3, v9

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 120
    .local v1, hSpan:I
    aget v5, p3, v8

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 121
    .local v4, vSpan:I
    iget-object v5, p0, Lcom/android/launcher2/PagedViewWidget;->mDimensionsFormatString:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    .end local v1           #hSpan:I
    .end local v4           #vSpan:I
    :cond_1
    return-void
.end method

.method public applyFromResolveInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)V
    .locals 9
    .parameter "pm"
    .parameter "info"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 126
    iput-boolean v8, p0, Lcom/android/launcher2/PagedViewWidget;->mIsAppWidget:Z

    .line 127
    invoke-virtual {p2, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 129
    .local v2, label:Ljava/lang/CharSequence;
    const-string v4, "PagedViewWidgetLayout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "applyFromResolveInfo: info = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", label = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const v4, 0x7f070015

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 133
    .local v1, image:Landroid/widget/ImageView;
    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 134
    const v4, 0x7f070016

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 135
    .local v3, name:Landroid/widget/TextView;
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    const v4, 0x7f070017

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 137
    .local v0, dims:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 138
    iget-object v4, p0, Lcom/android/launcher2/PagedViewWidget;->mDimensionsFormatString:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    :cond_0
    return-void
.end method

.method applyPreview(Lcom/android/launcher2/FastBitmapDrawable;I)V
    .locals 7
    .parameter "preview"
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 161
    const v3, 0x7f070015

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/PagedViewWidgetImageView;

    .line 163
    .local v1, image:Lcom/android/launcher2/PagedViewWidgetImageView;
    if-eqz p1, :cond_1

    .line 164
    iput-boolean v4, v1, Lcom/android/launcher2/PagedViewWidgetImageView;->mAllowRequestLayout:Z

    .line 165
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 166
    iget-boolean v3, p0, Lcom/android/launcher2/PagedViewWidget;->mIsAppWidget:Z

    if-eqz v3, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->getPreviewSize()[I

    move-result-object v2

    .line 169
    .local v2, imageSize:[I
    aget v3, v2, v4

    invoke-virtual {p1}, Lcom/android/launcher2/FastBitmapDrawable;->getIntrinsicWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v0, v3, 0x2

    .line 170
    .local v0, centerAmount:I
    iget-object v3, p0, Lcom/android/launcher2/PagedViewWidget;->mOriginalImagePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/android/launcher2/PagedViewWidget;->mOriginalImagePadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/android/launcher2/PagedViewWidget;->mOriginalImagePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/android/launcher2/PagedViewWidget;->mOriginalImagePadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 175
    .end local v0           #centerAmount:I
    .end local v2           #imageSize:[I
    :cond_0
    const/high16 v3, 0x3f80

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 176
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/launcher2/PagedViewWidgetImageView;->mAllowRequestLayout:Z

    .line 178
    :cond_1
    return-void
.end method

.method public getPreviewSize()[I
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 143
    const v2, 0x7f070015

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 144
    .local v0, i:Landroid/widget/ImageView;
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 145
    .local v1, maxSize:[I
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher2/PagedViewWidget;->mOriginalImagePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/launcher2/PagedViewWidget;->mOriginalImagePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    aput v2, v1, v5

    .line 146
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher2/PagedViewWidget;->mOriginalImagePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    aput v2, v1, v6

    .line 149
    aget v2, v1, v5

    if-lez v2, :cond_0

    aget v2, v1, v6

    if-gtz v2, :cond_1

    .line 150
    :cond_0
    const-string v2, "PagedViewWidgetLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPreviewSize: maxSize[0] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", maxSize[1] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", i.getWidth() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", i.getHeight() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mOriginalImagePadding = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/PagedViewWidget;->mOriginalImagePadding:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_1
    return-object v1
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 87
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 91
    sget-boolean v2, Lcom/android/launcher2/PagedViewWidget;->sDeletePreviewsWhenDetachedFromWindow:Z

    if-eqz v2, :cond_1

    .line 92
    const v2, 0x7f070015

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 93
    .local v0, image:Landroid/widget/ImageView;
    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/FastBitmapDrawable;

    .line 95
    .local v1, preview:Lcom/android/launcher2/FastBitmapDrawable;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher2/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 96
    invoke-virtual {v1}, Lcom/android/launcher2/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 98
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    .end local v0           #image:Landroid/widget/ImageView;
    .end local v1           #preview:Lcom/android/launcher2/FastBitmapDrawable;
    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 72
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 74
    const v1, 0x7f070015

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 75
    .local v0, image:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/android/launcher2/PagedViewWidget;->mOriginalImagePadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 76
    iget-object v1, p0, Lcom/android/launcher2/PagedViewWidget;->mOriginalImagePadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 77
    iget-object v1, p0, Lcom/android/launcher2/PagedViewWidget;->mOriginalImagePadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 78
    iget-object v1, p0, Lcom/android/launcher2/PagedViewWidget;->mOriginalImagePadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 79
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 233
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 235
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 256
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 237
    :pswitch_1
    invoke-direct {p0}, Lcom/android/launcher2/PagedViewWidget;->cleanUpShortPress()V

    goto :goto_0

    .line 240
    :pswitch_2
    invoke-direct {p0}, Lcom/android/launcher2/PagedViewWidget;->checkForShortPress()V

    goto :goto_0

    .line 243
    :pswitch_3
    invoke-direct {p0}, Lcom/android/launcher2/PagedViewWidget;->cleanUpShortPress()V

    goto :goto_0

    .line 235
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method setShortPressListener(Lcom/android/launcher2/PagedViewWidget$ShortPressListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/launcher2/PagedViewWidget;->mShortPressListener:Lcom/android/launcher2/PagedViewWidget$ShortPressListener;

    .line 182
    return-void
.end method
