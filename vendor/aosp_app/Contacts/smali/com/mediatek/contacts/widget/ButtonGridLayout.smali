.class public Lcom/mediatek/contacts/widget/ButtonGridLayout;
.super Landroid/widget/FrameLayout;
.source "ButtonGridLayout.java"


# instance fields
.field private mButtonHeight:I

.field private mButtonWidth:I

.field private final mCOLUMNS:I

.field private mHeight:I

.field private mHeightInc:I

.field private mLayouted:Z

.field private final mROWS:I

.field private mWidthInc:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 63
    const/4 v0, 0x3

    iput v0, p0, Lcom/mediatek/contacts/widget/ButtonGridLayout;->mCOLUMNS:I

    .line 64
    const/4 v0, 0x4

    iput v0, p0, Lcom/mediatek/contacts/widget/ButtonGridLayout;->mROWS:I

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/contacts/widget/ButtonGridLayout;->mLayouted:Z

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    const/4 v0, 0x3

    iput v0, p0, Lcom/mediatek/contacts/widget/ButtonGridLayout;->mCOLUMNS:I

    .line 64
    const/4 v0, 0x4

    iput v0, p0, Lcom/mediatek/contacts/widget/ButtonGridLayout;->mROWS:I

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/contacts/widget/ButtonGridLayout;->mLayouted:Z

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    const/4 v0, 0x3

    iput v0, p0, Lcom/mediatek/contacts/widget/ButtonGridLayout;->mCOLUMNS:I

    .line 64
    const/4 v0, 0x4

    iput v0, p0, Lcom/mediatek/contacts/widget/ButtonGridLayout;->mROWS:I

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/contacts/widget/ButtonGridLayout;->mLayouted:Z

    .line 90
    return-void
.end method


# virtual methods
.method protected createGridButton(IILandroid/graphics/drawable/Drawable;)Lcom/android/contacts/dialpad/DialpadImageButton;
    .locals 4
    .parameter "id"
    .parameter "imageResId"
    .parameter "drawable"

    .prologue
    .line 93
    new-instance v0, Lcom/android/contacts/dialpad/DialpadImageButton;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/contacts/dialpad/DialpadImageButton;-><init>(Landroid/content/Context;)V

    .line 94
    .local v0, imageButton:Lcom/android/contacts/dialpad/DialpadImageButton;
    invoke-virtual {v0, p1}, Landroid/view/View;->setId(I)V

    .line 95
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 96
    invoke-virtual {v0, p3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 99
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/mediatek/contacts/widget/ButtonGridLayout;->mButtonWidth:I

    iget v3, p0, Lcom/mediatek/contacts/widget/ButtonGridLayout;->mButtonHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 100
    .local v1, lParams:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 107
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 109
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090071

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/mediatek/contacts/widget/ButtonGridLayout;->mButtonWidth:I

    .line 110
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090072

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/mediatek/contacts/widget/ButtonGridLayout;->mButtonHeight:I

    .line 111
    iget v3, p0, Lcom/mediatek/contacts/widget/ButtonGridLayout;->mButtonWidth:I

    iput v3, p0, Lcom/mediatek/contacts/widget/ButtonGridLayout;->mWidthInc:I

    .line 112
    iget v3, p0, Lcom/mediatek/contacts/widget/ButtonGridLayout;->mButtonHeight:I

    iput v3, p0, Lcom/mediatek/contacts/widget/ButtonGridLayout;->mHeightInc:I

    .line 115
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [I

    const v5, 0x101030e

    aput v5, v4, v6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 118
    .local v2, typedArray:Landroid/content/res/TypedArray;
    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 120
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    const v3, 0x7f07001e

    const v4, 0x7f02003c

    invoke-virtual {p0, v3, v4, v1}, Lcom/mediatek/contacts/widget/ButtonGridLayout;->createGridButton(IILandroid/graphics/drawable/Drawable;)Lcom/android/contacts/dialpad/DialpadImageButton;

    move-result-object v0

    .line 121
    .local v0, button:Lcom/android/contacts/dialpad/DialpadImageButton;
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 123
    const v3, 0x7f07001f

    const v4, 0x7f02003d

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/mediatek/contacts/widget/ButtonGridLayout;->createGridButton(IILandroid/graphics/drawable/Drawable;)Lcom/android/contacts/dialpad/DialpadImageButton;

    move-result-object v0

    .line 124
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 126
    const v3, 0x7f070020

    const v4, 0x7f02003e

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/mediatek/contacts/widget/ButtonGridLayout;->createGridButton(IILandroid/graphics/drawable/Drawable;)Lcom/android/contacts/dialpad/DialpadImageButton;

    move-result-object v0

    .line 127
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 129
    const v3, 0x7f070021

    const v4, 0x7f02003f

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/mediatek/contacts/widget/ButtonGridLayout;->createGridButton(IILandroid/graphics/drawable/Drawable;)Lcom/android/contacts/dialpad/DialpadImageButton;

    move-result-object v0

    .line 130
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 132
    const v3, 0x7f070022

    const v4, 0x7f020040

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/mediatek/contacts/widget/ButtonGridLayout;->createGridButton(IILandroid/graphics/drawable/Drawable;)Lcom/android/contacts/dialpad/DialpadImageButton;

    move-result-object v0

    .line 133
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 135
    const v3, 0x7f070023

    const v4, 0x7f020041

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/mediatek/contacts/widget/ButtonGridLayout;->createGridButton(IILandroid/graphics/drawable/Drawable;)Lcom/android/contacts/dialpad/DialpadImageButton;

    move-result-object v0

    .line 136
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 138
    const v3, 0x7f070024

    const v4, 0x7f020042

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/mediatek/contacts/widget/ButtonGridLayout;->createGridButton(IILandroid/graphics/drawable/Drawable;)Lcom/android/contacts/dialpad/DialpadImageButton;

    move-result-object v0

    .line 139
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 141
    const v3, 0x7f070025

    const v4, 0x7f020043

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/mediatek/contacts/widget/ButtonGridLayout;->createGridButton(IILandroid/graphics/drawable/Drawable;)Lcom/android/contacts/dialpad/DialpadImageButton;

    move-result-object v0

    .line 142
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 144
    const v3, 0x7f070026

    const v4, 0x7f020044

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/mediatek/contacts/widget/ButtonGridLayout;->createGridButton(IILandroid/graphics/drawable/Drawable;)Lcom/android/contacts/dialpad/DialpadImageButton;

    move-result-object v0

    .line 145
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 147
    const v3, 0x7f070028

    const v4, 0x7f020046

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/mediatek/contacts/widget/ButtonGridLayout;->createGridButton(IILandroid/graphics/drawable/Drawable;)Lcom/android/contacts/dialpad/DialpadImageButton;

    move-result-object v0

    .line 148
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 150
    const v3, 0x7f070027

    const v4, 0x7f02003a

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/mediatek/contacts/widget/ButtonGridLayout;->createGridButton(IILandroid/graphics/drawable/Drawable;)Lcom/android/contacts/dialpad/DialpadImageButton;

    move-result-object v0

    .line 151
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 153
    const v3, 0x7f070029

    const v4, 0x7f020045

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/mediatek/contacts/widget/ButtonGridLayout;->createGridButton(IILandroid/graphics/drawable/Drawable;)Lcom/android/contacts/dialpad/DialpadImageButton;

    move-result-object v0

    .line 154
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 155
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 159
    iget-boolean v6, p0, Lcom/mediatek/contacts/widget/ButtonGridLayout;->mLayouted:Z

    if-eqz v6, :cond_1

    .line 179
    :cond_0
    return-void

    .line 162
    :cond_1
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/mediatek/contacts/widget/ButtonGridLayout;->mLayouted:Z

    .line 164
    const/4 v2, 0x0

    .line 166
    .local v2, i:I
    iget v5, p0, Landroid/view/View;->mPaddingTop:I

    .line 167
    .local v5, y:I
    const/4 v3, 0x0

    .local v3, row:I
    :goto_0
    const/4 v6, 0x4

    if-ge v3, v6, :cond_0

    .line 168
    iget v4, p0, Landroid/view/View;->mPaddingLeft:I

    .line 169
    .local v4, x:I
    const/4 v1, 0x0

    .local v1, col:I
    :goto_1
    const/4 v6, 0x3

    if-ge v1, v6, :cond_2

    .line 170
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 172
    .local v0, child:Landroid/view/View;
    iget v6, p0, Lcom/mediatek/contacts/widget/ButtonGridLayout;->mButtonWidth:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/mediatek/contacts/widget/ButtonGridLayout;->mButtonHeight:I

    add-int/2addr v7, v5

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 174
    iget v6, p0, Lcom/mediatek/contacts/widget/ButtonGridLayout;->mWidthInc:I

    add-int/2addr v4, v6

    .line 175
    add-int/lit8 v2, v2, 0x1

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 177
    .end local v0           #child:Landroid/view/View;
    :cond_2
    iget v6, p0, Lcom/mediatek/contacts/widget/ButtonGridLayout;->mHeightInc:I

    add-int/2addr v5, v6

    .line 167
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 184
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 185
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 186
    .local v3, windowManager:Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 188
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 189
    .local v2, width:I
    iget v4, p0, Lcom/mediatek/contacts/widget/ButtonGridLayout;->mButtonHeight:I

    mul-int/lit8 v1, v4, 0x4

    .line 191
    .local v1, height:I
    invoke-virtual {p0, v2, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 192
    return-void
.end method
