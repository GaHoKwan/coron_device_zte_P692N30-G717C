.class public Lcom/android/camera/ui/EVPickerItem;
.super Landroid/widget/ImageView;
.source "EVPickerItem.java"


# instance fields
.field private mChecked:Ljava/lang/Boolean;

.field protected mFrame:Landroid/graphics/drawable/Drawable;

.field private mFrameBounds:Landroid/graphics/Rect;

.field private mOverlay:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/EVPickerItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/ui/EVPickerItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 137
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 123
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/EVPickerItem;->mFrameBounds:Landroid/graphics/Rect;

    .line 126
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/EVPickerItem;->mChecked:Ljava/lang/Boolean;

    .line 139
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/EVPickerItem;->mFrame:Landroid/graphics/drawable/Drawable;

    .line 140
    iget-object v0, p0, Lcom/android/camera/ui/EVPickerItem;->mFrame:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 141
    return-void
.end method

.method private toggle()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/camera/ui/EVPickerItem;->mChecked:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/EVPickerItem;->mChecked:Ljava/lang/Boolean;

    .line 196
    return-void

    .line 195
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 150
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 151
    iget-object v1, p0, Lcom/android/camera/ui/EVPickerItem;->mFrame:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 152
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    .line 153
    .local v0, drawableState:[I
    iget-object v1, p0, Lcom/android/camera/ui/EVPickerItem;->mFrame:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 155
    .end local v0           #drawableState:[I
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    .line 159
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 160
    iget-object v0, p0, Lcom/android/camera/ui/EVPickerItem;->mFrameBounds:Landroid/graphics/Rect;

    .line 161
    .local v0, frameBounds:Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 162
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 163
    .local v2, w:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 165
    .local v1, h:I
    invoke-virtual {v0, v4, v4, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 166
    iget-object v3, p0, Lcom/android/camera/ui/EVPickerItem;->mFrame:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 167
    iget-object v3, p0, Lcom/android/camera/ui/EVPickerItem;->mOverlay:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 168
    iget-object v3, p0, Lcom/android/camera/ui/EVPickerItem;->mOverlay:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/android/camera/ui/EVPickerItem;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int v4, v2, v4

    iget-object v5, p0, Lcom/android/camera/ui/EVPickerItem;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int v5, v1, v5

    invoke-virtual {v3, v4, v5, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 172
    .end local v1           #h:I
    .end local v2           #w:I
    :cond_0
    iget-object v3, p0, Lcom/android/camera/ui/EVPickerItem;->mFrame:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 173
    iget-object v3, p0, Lcom/android/camera/ui/EVPickerItem;->mOverlay:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 174
    iget-object v3, p0, Lcom/android/camera/ui/EVPickerItem;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 176
    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 180
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 182
    iget-object v0, p0, Lcom/android/camera/ui/EVPickerItem;->mFrameBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 183
    return-void
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/android/camera/ui/EVPickerItem;->toggle()V

    .line 203
    iget-object v0, p0, Lcom/android/camera/ui/EVPickerItem;->mChecked:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 204
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    return v0
.end method

.method public setOverlay(I)V
    .locals 1
    .parameter "overlayId"

    .prologue
    .line 186
    if-ltz p1, :cond_0

    .line 187
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/EVPickerItem;->mOverlay:Landroid/graphics/drawable/Drawable;

    .line 188
    iget-object v0, p0, Lcom/android/camera/ui/EVPickerItem;->mFrameBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/EVPickerItem;->mOverlay:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 145
    invoke-super {p0, p1}, Landroid/widget/ImageView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/EVPickerItem;->mFrame:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/EVPickerItem;->mOverlay:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
