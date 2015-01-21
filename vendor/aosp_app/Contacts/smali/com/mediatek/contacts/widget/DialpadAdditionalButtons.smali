.class public Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;
.super Landroid/widget/FrameLayout;
.source "DialpadAdditionalButtons.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DialpadAdditionalButtons"


# instance fields
.field private mButtonHeight:I

.field private mButtonWidth:I

.field private mDialButton:Landroid/widget/ImageButton;

.field private mDivider1:Landroid/view/View;

.field private mDivider2:Landroid/view/View;

.field private mDividerHeight:I

.field private mDividerVertical:Landroid/graphics/drawable/Drawable;

.field private mDividerWidth:I

.field private mHoloButton:Landroid/widget/ImageButton;

.field private mLayouted:Z

.field private mMenuButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->mLayouted:Z

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 39
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f090073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->mButtonWidth:I

    .line 40
    const v1, 0x7f0900a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->mButtonHeight:I

    .line 41
    const v1, 0x7f090079

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->mDividerHeight:I

    .line 42
    const v1, 0x7f09007a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->mDividerWidth:I

    .line 43
    return-void
.end method

.method private calculatePositionByOrientation(II)I
    .locals 2
    .parameter "portraitPosition"
    .parameter "gapPosition"

    .prologue
    .line 146
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 147
    sub-int/2addr p1, p2

    .line 149
    .end local p1
    :cond_0
    return p1
.end method


# virtual methods
.method protected init()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    new-array v5, v8, [I

    const v6, 0x101030e

    aput v6, v5, v7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 56
    .local v3, typedArray:Landroid/content/res/TypedArray;
    invoke-virtual {v3, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 58
    .local v1, itemBackground:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    new-array v5, v8, [I

    const v6, 0x101030a

    aput v6, v5, v7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 59
    invoke-virtual {v3, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->mDividerVertical:Landroid/graphics/drawable/Drawable;

    .line 61
    new-instance v4, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->mHoloButton:Landroid/widget/ImageButton;

    .line 62
    iget-object v4, p0, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->mHoloButton:Landroid/widget/ImageButton;

    const v5, 0x7f02009d

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 63
    iget-object v4, p0, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->mHoloButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    iget-object v4, p0, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->mHoloButton:Landroid/widget/ImageButton;

    const v5, 0x7f07002a

    invoke-virtual {v4, v5}, Landroid/view/View;->setId(I)V

    .line 65
    iget-object v4, p0, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->mHoloButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 67
    new-instance v4, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->mDivider1:Landroid/view/View;

    .line 68
    iget-object v4, p0, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->mDivider1:Landroid/view/View;

    iget-object v5, p0, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->mDividerVertical:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    iget-object v4, p0, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->mDivider1:Landroid/view/View;

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 71
    new-instance v4, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->mDialButton:Landroid/widget/ImageButton;

    .line 72
    iget-object v4, p0, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->mDialButton:Landroid/widget/ImageButton;

    const v5, 0x7f020096

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    iget-object v4, p0, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->mDialButton:Landroid/widget/ImageButton;

    const v5, 0x7f020016

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 74
    iget-object v4, p0, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->mDialButton:Landroid/widget/ImageButton;

    const v5, 0x7f07002b

    invoke-virtual {v4, v5}, Landroid/view/View;->setId(I)V

    .line 75
    iget-object v4, p0, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->mDialButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 77
    new-instance v4, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->mDivider2:Landroid/view/View;

    .line 78
    iget-object v4, p0, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->mDivider2:Landroid/view/View;

    iget-object v5, p0, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->mDividerVertical:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    iget-object v4, p0, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->mDivider2:Landroid/view/View;

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 81
    new-instance v4, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->mMenuButton:Landroid/widget/ImageButton;

    .line 82
    iget-object v4, p0, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    const v0, 0x7f07002c

    .line 84
    .local v0, id:I
    const v2, 0x7f0200b5

    .line 87
    .local v2, resId:I
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/ContactsUtils;->isDialerUseSystemOptionMenu(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 92
    const v0, 0x7f07002e

    .line 93
    const v2, 0x7f020013

    .line 97
    :cond_0
    iget-object v4, p0, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v0}, Landroid/view/View;->setId(I)V

    .line 98
    iget-object v4, p0, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 99
    iget-object v4, p0, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 100
    invoke-virtual {p0}, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->setButtonVisibility()V

    .line 101
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 50
    invoke-virtual {p0}, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->init()V

    .line 51
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 104
    iget-boolean v5, p0, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->mLayouted:Z

    if-eqz v5, :cond_0

    .line 128
    :goto_0
    return-void

    .line 108
    :cond_0
    iput-boolean v7, p0, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->mLayouted:Z

    .line 110
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 111
    .local v0, child:Landroid/view/View;
    iget v5, p0, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->mButtonWidth:I

    iget v6, p0, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->mButtonHeight:I

    invoke-virtual {v0, v8, v8, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 113
    iget v5, p0, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->mButtonHeight:I

    iget v6, p0, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->mDividerHeight:I

    sub-int/2addr v5, v6

    shr-int/lit8 v4, v5, 0x1

    .line 114
    .local v4, dividerTop:I
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 115
    iget v5, p0, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->mButtonWidth:I

    iget v6, p0, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->mDividerHeight:I

    invoke-direct {p0, v5, v6}, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->calculatePositionByOrientation(II)I

    move-result v1

    .line 116
    .local v1, child1LeftPosition:I
    iget v5, p0, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->mButtonWidth:I

    iget v6, p0, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->mDividerWidth:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->mDividerHeight:I

    invoke-direct {p0, v5, v6}, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->calculatePositionByOrientation(II)I

    move-result v2

    .line 117
    .local v2, child1RightPosition:I
    iget v5, p0, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->mDividerHeight:I

    add-int/2addr v5, v4

    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/view/View;->layout(IIII)V

    .line 119
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 120
    iget v5, p0, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->mButtonWidth:I

    iget v6, p0, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->mDividerHeight:I

    invoke-direct {p0, v5, v6}, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->calculatePositionByOrientation(II)I

    move-result v3

    .line 121
    .local v3, child2LeftPosition:I
    iget v5, p0, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->mButtonWidth:I

    shl-int/lit8 v5, v5, 0x1

    iget v6, p0, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->mButtonHeight:I

    invoke-virtual {v0, v3, v8, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 123
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 124
    iget v5, p0, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->mButtonWidth:I

    shl-int/lit8 v5, v5, 0x1

    iget v6, p0, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->mButtonWidth:I

    shl-int/lit8 v6, v6, 0x1

    iget v7, p0, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->mDividerWidth:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->mDividerHeight:I

    add-int/2addr v7, v4

    invoke-virtual {v0, v5, v4, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 126
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 127
    iget v5, p0, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->mButtonWidth:I

    shl-int/lit8 v5, v5, 0x1

    iget v6, p0, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->mButtonWidth:I

    shl-int/lit8 v6, v6, 0x1

    iget v7, p0, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->mButtonWidth:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->mButtonHeight:I

    invoke-virtual {v0, v5, v8, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method protected setButtonVisibility()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 131
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->mHoloButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->mDivider1:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/mediatek/contacts/widget/DialpadAdditionalButtons;->mDivider2:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 137
    :cond_0
    return-void
.end method
