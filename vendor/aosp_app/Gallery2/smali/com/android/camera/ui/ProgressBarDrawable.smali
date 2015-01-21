.class Lcom/android/camera/ui/ProgressBarDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ProgressBarDrawable.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ProgressBarDrawable"


# instance fields
.field private mAttachedView:Landroid/view/View;

.field private mBlockSizes:[I

.field private mCleanBlock:Landroid/graphics/drawable/Drawable;

.field private mDirtyBlock:Landroid/graphics/drawable/Drawable;

.field private mPadding:I

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;[II)V
    .locals 2
    .parameter "context"
    .parameter "view"
    .parameter "blockSizes"
    .parameter "padding"

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 72
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mPaint:Landroid/graphics/Paint;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 78
    .local v0, res:Landroid/content/res/Resources;
    iput-object p3, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mBlockSizes:[I

    .line 79
    iput-object p2, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mAttachedView:Landroid/view/View;

    .line 80
    iput p4, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mPadding:I

    .line 81
    const v1, 0x7f020111

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mCleanBlock:Landroid/graphics/drawable/Drawable;

    .line 82
    const v1, 0x7f020112

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mDirtyBlock:Landroid/graphics/drawable/Drawable;

    .line 83
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 117
    const/4 v3, 0x0

    .line 118
    .local v3, xoffset:I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v2

    .line 120
    .local v2, level:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 121
    iget-object v5, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mAttachedView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mBlockSizes:[I

    aget v6, v6, v0

    sub-int/2addr v5, v6

    div-int/lit8 v4, v5, 0x2

    .line 122
    .local v4, yoffset:I
    iget-object v5, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mDirtyBlock:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mBlockSizes:[I

    aget v6, v6, v0

    add-int/2addr v6, v3

    iget-object v7, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mBlockSizes:[I

    aget v7, v7, v0

    add-int/2addr v7, v4

    invoke-virtual {v5, v3, v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 123
    iget-object v5, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mDirtyBlock:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 124
    const-string v5, "ProgressBarDrawable"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "draw: i="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " xoffset = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " yoffset = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v5, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mBlockSizes:[I

    aget v5, v5, v0

    iget v6, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mPadding:I

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    .end local v4           #yoffset:I
    :cond_0
    move v0, v2

    iget-object v5, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mBlockSizes:[I

    array-length v1, v5

    .local v1, len:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 130
    iget-object v5, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mAttachedView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mBlockSizes:[I

    aget v6, v6, v0

    sub-int/2addr v5, v6

    div-int/lit8 v4, v5, 0x2

    .line 131
    .restart local v4       #yoffset:I
    iget-object v5, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mCleanBlock:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mBlockSizes:[I

    aget v6, v6, v0

    add-int/2addr v6, v3

    iget-object v7, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mBlockSizes:[I

    aget v7, v7, v0

    add-int/2addr v7, v4

    invoke-virtual {v5, v3, v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 132
    iget-object v5, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mCleanBlock:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 133
    const-string v5, "ProgressBarDrawable"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "draw: i="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " xoffset = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " yoffset = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v5, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mBlockSizes:[I

    aget v5, v5, v0

    iget v6, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mPadding:I

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 136
    .end local v4           #yoffset:I
    :cond_1
    return-void
.end method

.method public getIntrinsicWidth()I
    .locals 6

    .prologue
    .line 94
    const/4 v2, 0x0

    .line 95
    .local v2, width:I
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v3, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mBlockSizes:[I

    array-length v1, v3

    .local v1, len:I
    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-ge v0, v3, :cond_0

    .line 96
    iget-object v3, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mBlockSizes:[I

    aget v3, v3, v0

    iget v4, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mPadding:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_0
    iget-object v3, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mBlockSizes:[I

    iget-object v4, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mBlockSizes:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    add-int/2addr v2, v3

    .line 99
    const-string v3, "ProgressBarDrawable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIntrinsicWidth: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return v2
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 109
    const/4 v0, -0x3

    return v0
.end method

.method protected onLevelChange(I)Z
    .locals 3
    .parameter "level"

    .prologue
    .line 87
    const-string v0, "ProgressBarDrawable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLevelChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 114
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter "cf"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/camera/ui/ProgressBarDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 106
    return-void
.end method
