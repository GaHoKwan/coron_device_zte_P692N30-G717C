.class public Lcom/android/launcher2/PagedViewIcon;
.super Landroid/widget/TextView;
.source "PagedViewIcon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/PagedViewIcon$PressedCallback;
    }
.end annotation


# static fields
.field private static final PRESS_ALPHA:F = 0.4f

.field private static final TAG:Ljava/lang/String; = "PagedViewIcon"


# instance fields
.field private mDeleteButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private mDeleteButtonVisiable:Z

.field private mDeleteMarginleft:I

.field private mIcon:Landroid/graphics/Bitmap;

.field private mLockDrawableState:Z

.field private mPressedCallback:Lcom/android/launcher2/PagedViewIcon$PressedCallback;

.field private mSupportEditAndHideApps:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/PagedViewIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/PagedViewIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    iput-boolean v0, p0, Lcom/android/launcher2/PagedViewIcon;->mLockDrawableState:Z

    .line 55
    iput-boolean v0, p0, Lcom/android/launcher2/PagedViewIcon;->mSupportEditAndHideApps:Z

    .line 56
    iput-boolean v0, p0, Lcom/android/launcher2/PagedViewIcon;->mDeleteButtonVisiable:Z

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/PagedViewIcon;->mDeleteButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 74
    invoke-static {}, Lcom/android/launcher2/LauncherExtPlugin;->getInstance()Lcom/android/launcher2/LauncherExtPlugin;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/LauncherExtPlugin;->getOperatorCheckerExt(Landroid/content/Context;)Lcom/mediatek/launcher2/ext/IOperatorChecker;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/launcher2/ext/IOperatorChecker;->supportEditAndHideApps()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher2/PagedViewIcon;->mSupportEditAndHideApps:Z

    .line 75
    iget-boolean v0, p0, Lcom/android/launcher2/PagedViewIcon;->mSupportEditAndHideApps:Z

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PagedViewIcon;->mDeleteButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher2/PagedViewIcon;->mDeleteMarginleft:I

    .line 79
    :cond_0
    return-void
.end method


# virtual methods
.method public applyFromApplicationInfo(Lcom/android/launcher2/ApplicationInfo;ZLcom/android/launcher2/PagedViewIcon$PressedCallback;)V
    .locals 3
    .parameter "info"
    .parameter "scaleUp"
    .parameter "cb"

    .prologue
    const/4 v2, 0x0

    .line 83
    iget-object v0, p1, Lcom/android/launcher2/ApplicationInfo;->iconBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/launcher2/PagedViewIcon;->mIcon:Landroid/graphics/Bitmap;

    .line 84
    iput-object p3, p0, Lcom/android/launcher2/PagedViewIcon;->mPressedCallback:Lcom/android/launcher2/PagedViewIcon$PressedCallback;

    .line 85
    new-instance v0, Lcom/android/launcher2/FastBitmapDrawable;

    iget-object v1, p0, Lcom/android/launcher2/PagedViewIcon;->mIcon:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v2, v0, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 86
    iget-object v0, p1, Lcom/android/launcher2/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 88
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    .line 124
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 126
    invoke-static {p1, p0}, Lcom/android/launcher2/MTKUnreadLoader;->drawUnreadEventIfNeed(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 129
    iget-boolean v5, p0, Lcom/android/launcher2/PagedViewIcon;->mSupportEditAndHideApps:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/launcher2/PagedViewIcon;->mDeleteButtonVisiable:Z

    if-eqz v5, :cond_0

    .line 130
    iget-object v5, p0, Lcom/android/launcher2/PagedViewIcon;->mDeleteButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 131
    .local v4, deleteButtonWidth:I
    iget-object v5, p0, Lcom/android/launcher2/PagedViewIcon;->mDeleteButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 132
    .local v1, deleteButtonHeight:I
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v5

    iget v6, p0, Lcom/android/launcher2/PagedViewIcon;->mDeleteMarginleft:I

    add-int v2, v5, v6

    .line 133
    .local v2, deleteButtonPosX:I
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    .line 135
    .local v3, deleteButtonPosY:I
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v7, v7, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 136
    .local v0, deleteButtonBounds:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/launcher2/PagedViewIcon;->mDeleteButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 138
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 139
    int-to-float v5, v2

    int-to-float v6, v3

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 141
    iget-object v5, p0, Lcom/android/launcher2/PagedViewIcon;->mDeleteButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 143
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 145
    .end local v0           #deleteButtonBounds:Landroid/graphics/Rect;
    .end local v1           #deleteButtonHeight:I
    .end local v2           #deleteButtonPosX:I
    .end local v3           #deleteButtonPosY:I
    .end local v4           #deleteButtonWidth:I
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 109
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    const v0, 0x3ecccccd

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 111
    iget-object v0, p0, Lcom/android/launcher2/PagedViewIcon;->mPressedCallback:Lcom/android/launcher2/PagedViewIcon$PressedCallback;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/launcher2/PagedViewIcon;->mPressedCallback:Lcom/android/launcher2/PagedViewIcon$PressedCallback;

    invoke-interface {v0, p0}, Lcom/android/launcher2/PagedViewIcon$PressedCallback;->iconPressed(Lcom/android/launcher2/PagedViewIcon;)V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher2/PagedViewIcon;->mLockDrawableState:Z

    if-nez v0, :cond_0

    .line 115
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method public getDeleteButtonVisibility()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/android/launcher2/PagedViewIcon;->mDeleteButtonVisiable:Z

    return v0
.end method

.method public lockDrawableState()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedViewIcon;->mLockDrawableState:Z

    .line 92
    return-void
.end method

.method public resetDrawableState()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PagedViewIcon;->mLockDrawableState:Z

    .line 96
    new-instance v0, Lcom/android/launcher2/PagedViewIcon$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/PagedViewIcon$1;-><init>(Lcom/android/launcher2/PagedViewIcon;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 102
    return-void
.end method

.method public setDeleteButtonVisibility(Z)V
    .locals 0
    .parameter "visiable"

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/android/launcher2/PagedViewIcon;->mDeleteButtonVisiable:Z

    .line 150
    return-void
.end method
