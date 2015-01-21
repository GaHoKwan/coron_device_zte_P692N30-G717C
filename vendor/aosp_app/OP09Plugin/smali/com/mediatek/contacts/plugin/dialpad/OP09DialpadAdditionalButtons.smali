.class public Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;
.super Landroid/widget/FrameLayout;
.source "OP09DialpadAdditionalButtons.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OP09DialpadAdditionalButtons"


# instance fields
.field private mButtonHeight:I

.field private mDialButtonWidth:I

.field private mDividerHeight:I

.field private mDividerVertical:Landroid/graphics/drawable/Drawable;

.field private mDividerWidth:I

.field private mEdgeButtonWidth:I

.field private mHostContext:Landroid/content/Context;

.field private mLayouted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .locals 4
    .parameter "pluginContext"
    .parameter "hostContext"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mLayouted:Z

    .line 37
    iput-object p2, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mHostContext:Landroid/content/Context;

    .line 39
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 40
    .local v1, hostResource:Landroid/content/res/Resources;
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, hostPackageName:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mEdgeButtonWidth:I

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mDialButtonWidth:I

    .line 44
    const-string v2, "dialpad_additional_button_height"

    const-string v3, "dimen"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mButtonHeight:I

    .line 46
    const-string v2, "dialpad_divider_height"

    const-string v3, "dimen"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mDividerHeight:I

    .line 48
    const-string v2, "dialpad_divider_width"

    const-string v3, "dimen"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mDividerWidth:I

    .line 51
    invoke-virtual {p0}, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->init()V

    .line 52
    return-void
.end method


# virtual methods
.method public hideLeftShowRightDialButton()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 173
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 175
    .local v1, leftDialButton:Landroid/view/View;
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 178
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 179
    .local v0, dividerBetweenDialButtons:Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 180
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 182
    .local v2, rightDialButton:Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 188
    return-void
.end method

.method public hideRightShowLeftDialButton()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 192
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 194
    .local v2, rightDialButton:Landroid/view/View;
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 196
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 197
    .local v0, dividerBetweenDialButtons:Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 198
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 199
    .local v1, leftDialButton:Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 201
    return-void
.end method

.method protected init()V
    .locals 13

    .prologue
    const v12, 0x7f0200b5

    const v11, 0x7f020009

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    new-array v7, v10, [I

    const v8, 0x101030e

    aput v8, v7, v9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 64
    .local v5, typedArray:Landroid/content/res/TypedArray;
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 66
    .local v2, itemBackground:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    new-array v7, v10, [I

    const v8, 0x101030a

    aput v8, v7, v9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 67
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mDividerVertical:Landroid/graphics/drawable/Drawable;

    .line 69
    iget-object v6, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mHostContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 70
    .local v4, resource:Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mHostContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, packageName:Ljava/lang/String;
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 73
    .local v0, button:Landroid/widget/ImageButton;
    const-string v6, "ic_dialpad_holo_dark"

    const-string v7, "drawable"

    invoke-virtual {v4, v6, v7, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    const-string v6, "dialpadButton"

    const-string v7, "id"

    invoke-virtual {v4, v6, v7, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setId(I)V

    .line 76
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 78
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 79
    .local v1, divider:Landroid/view/View;
    iget-object v6, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mDividerVertical:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 82
    new-instance v0, Landroid/widget/ImageButton;

    .end local v0           #button:Landroid/widget/ImageButton;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 83
    .restart local v0       #button:Landroid/widget/ImageButton;
    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    invoke-virtual {v0, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 85
    const v6, 0x7f0b000d

    invoke-virtual {v0, v6}, Landroid/view/View;->setId(I)V

    .line 86
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 88
    new-instance v1, Landroid/view/View;

    .end local v1           #divider:Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 89
    .restart local v1       #divider:Landroid/view/View;
    iget-object v6, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mDividerVertical:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 92
    new-instance v0, Landroid/widget/ImageButton;

    .end local v0           #button:Landroid/widget/ImageButton;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 93
    .restart local v0       #button:Landroid/widget/ImageButton;
    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    invoke-virtual {v0, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 95
    const v6, 0x7f0b000e

    invoke-virtual {v0, v6}, Landroid/view/View;->setId(I)V

    .line 96
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 98
    new-instance v1, Landroid/view/View;

    .end local v1           #divider:Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 99
    .restart local v1       #divider:Landroid/view/View;
    iget-object v6, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mDividerVertical:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 102
    new-instance v0, Landroid/widget/ImageButton;

    .end local v0           #button:Landroid/widget/ImageButton;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 103
    .restart local v0       #button:Landroid/widget/ImageButton;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 105
    const v6, 0x7f0b000f

    invoke-virtual {v0, v6}, Landroid/view/View;->setId(I)V

    .line 106
    const v6, 0x7f020007

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 111
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 113
    const-string v6, "dialpad_background"

    const-string v7, "drawable"

    invoke-virtual {v4, v6, v7, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    return-void

    .line 108
    :cond_0
    const-string v6, "overflow_menu"

    const-string v7, "id"

    invoke-virtual {v4, v6, v7, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setId(I)V

    .line 109
    const-string v6, "ic_menu_overflow"

    const-string v7, "drawable"

    invoke-virtual {v4, v6, v7, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 58
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
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 117
    iget-boolean v4, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mLayouted:Z

    if-eqz v4, :cond_0

    .line 169
    :goto_0
    return-void

    .line 121
    :cond_0
    iput-boolean v6, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mLayouted:Z

    .line 123
    iget v4, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mButtonHeight:I

    iget v5, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mDividerHeight:I

    sub-int/2addr v4, v5

    shr-int/lit8 v1, v4, 0x1

    .line 126
    .local v1, dividerTop:I
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 127
    .local v0, child:Landroid/view/View;
    iget v4, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mEdgeButtonWidth:I

    iget v5, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mButtonHeight:I

    invoke-virtual {v0, v7, v7, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 130
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 131
    iget v4, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mEdgeButtonWidth:I

    iget v5, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mEdgeButtonWidth:I

    iget v6, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mDividerWidth:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mDividerHeight:I

    add-int/2addr v6, v1

    invoke-virtual {v0, v4, v1, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 134
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 135
    .local v2, leftDialButton:Landroid/view/View;
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 136
    .local v3, rightDialButton:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 137
    iget v4, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mEdgeButtonWidth:I

    iget v5, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mDividerWidth:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mEdgeButtonWidth:I

    iget v6, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mDialButtonWidth:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mDividerWidth:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mButtonHeight:I

    invoke-virtual {v2, v4, v7, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 145
    :goto_1
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 146
    iget v4, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mEdgeButtonWidth:I

    iget v5, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mDialButtonWidth:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mDividerWidth:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mEdgeButtonWidth:I

    iget v6, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mDialButtonWidth:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mDividerWidth:I

    shl-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    iget v6, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mDividerHeight:I

    add-int/2addr v6, v1

    invoke-virtual {v0, v4, v1, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 151
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 152
    iget v4, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mEdgeButtonWidth:I

    iget v5, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mDialButtonWidth:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mDividerWidth:I

    shl-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    iget v5, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mEdgeButtonWidth:I

    iget v6, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mDialButtonWidth:I

    shl-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    iget v6, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mDividerWidth:I

    shl-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    iget v6, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mButtonHeight:I

    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 160
    :goto_2
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 161
    iget v4, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mEdgeButtonWidth:I

    iget v5, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mDialButtonWidth:I

    shl-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    iget v5, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mDividerWidth:I

    shl-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    iget v5, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mEdgeButtonWidth:I

    iget v6, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mDialButtonWidth:I

    shl-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    iget v6, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mDividerWidth:I

    mul-int/lit8 v6, v6, 0x3

    add-int/2addr v5, v6

    iget v6, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mDividerHeight:I

    add-int/2addr v6, v1

    invoke-virtual {v0, v4, v1, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 166
    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 167
    iget v4, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mEdgeButtonWidth:I

    iget v5, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mDialButtonWidth:I

    shl-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    iget v5, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mDividerWidth:I

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    iget v5, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mEdgeButtonWidth:I

    shl-int/lit8 v5, v5, 0x1

    iget v6, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mDialButtonWidth:I

    shl-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    iget v6, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mDividerWidth:I

    mul-int/lit8 v6, v6, 0x3

    add-int/2addr v5, v6

    iget v6, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mButtonHeight:I

    invoke-virtual {v0, v4, v7, v5, v6}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .line 140
    :cond_1
    iget v4, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mEdgeButtonWidth:I

    iget v5, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mDividerWidth:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mEdgeButtonWidth:I

    iget v6, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mDialButtonWidth:I

    shl-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    iget v6, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mDividerWidth:I

    shl-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    iget v6, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mButtonHeight:I

    invoke-virtual {v2, v4, v7, v5, v6}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_1

    .line 155
    :cond_2
    iget v4, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mEdgeButtonWidth:I

    iget v5, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mDividerWidth:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mEdgeButtonWidth:I

    iget v6, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mDialButtonWidth:I

    shl-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    iget v6, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mDividerWidth:I

    shl-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    iget v6, p0, Lcom/mediatek/contacts/plugin/dialpad/OP09DialpadAdditionalButtons;->mButtonHeight:I

    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_2
.end method

.method public showLeftRightDialButton()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 205
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 206
    .local v1, leftDialButton:Landroid/view/View;
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 208
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 209
    .local v0, dividerBetweenDialButtons:Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 211
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 212
    .local v2, rightDialButton:Landroid/view/View;
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 215
    return-void
.end method
