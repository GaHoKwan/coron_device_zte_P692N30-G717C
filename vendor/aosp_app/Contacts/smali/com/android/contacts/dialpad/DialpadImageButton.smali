.class public Lcom/android/contacts/dialpad/DialpadImageButton;
.super Landroid/widget/ImageButton;
.source "DialpadImageButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/dialpad/DialpadImageButton$OnPressedListener;
    }
.end annotation


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mHoverBounds:Landroid/graphics/Rect;

.field private mOnPressedListener:Lcom/android/contacts/dialpad/DialpadImageButton$OnPressedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadImageButton;->mHoverBounds:Landroid/graphics/Rect;

    .line 52
    invoke-direct {p0, p1}, Lcom/android/contacts/dialpad/DialpadImageButton;->initForAccessibility(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadImageButton;->mHoverBounds:Landroid/graphics/Rect;

    .line 57
    invoke-direct {p0, p1}, Lcom/android/contacts/dialpad/DialpadImageButton;->initForAccessibility(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadImageButton;->mHoverBounds:Landroid/graphics/Rect;

    .line 62
    invoke-direct {p0, p1}, Lcom/android/contacts/dialpad/DialpadImageButton;->initForAccessibility(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method private initForAccessibility(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 66
    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadImageButton;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 68
    return-void
.end method


# virtual methods
.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadImageButton;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadImageButton;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 125
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 114
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    .line 117
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadImageButton;->mHoverBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadImageButton;->performClick()Z

    .line 120
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 80
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 82
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadImageButton;->mHoverBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 83
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadImageButton;->mHoverBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int v1, p1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 84
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadImageButton;->mHoverBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 85
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadImageButton;->mHoverBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int v1, p2, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 86
    return-void
.end method

.method public performClick()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 92
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadImageButton;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    invoke-virtual {p0, v0}, Lcom/android/contacts/dialpad/DialpadImageButton;->setPressed(Z)V

    .line 96
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/contacts/dialpad/DialpadImageButton;->setPressed(Z)V

    .line 102
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    goto :goto_0
.end method

.method public setOnPressedListener(Lcom/android/contacts/dialpad/DialpadImageButton$OnPressedListener;)V
    .locals 0
    .parameter "onPressedListener"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/contacts/dialpad/DialpadImageButton;->mOnPressedListener:Lcom/android/contacts/dialpad/DialpadImageButton$OnPressedListener;

    .line 48
    return-void
.end method

.method public setPressed(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 73
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadImageButton;->mOnPressedListener:Lcom/android/contacts/dialpad/DialpadImageButton$OnPressedListener;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadImageButton;->mOnPressedListener:Lcom/android/contacts/dialpad/DialpadImageButton$OnPressedListener;

    invoke-interface {v0, p0, p1}, Lcom/android/contacts/dialpad/DialpadImageButton$OnPressedListener;->onPressed(Landroid/view/View;Z)V

    .line 76
    :cond_0
    return-void
.end method
