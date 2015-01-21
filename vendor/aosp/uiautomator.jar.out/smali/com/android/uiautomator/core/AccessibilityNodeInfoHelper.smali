.class Lcom/android/uiautomator/core/AccessibilityNodeInfoHelper;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoHelper.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getVisibleBoundsInScreen(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/graphics/Rect;
    .locals 6
    .parameter "node"

    .prologue
    const/4 v5, 0x0

    .line 37
    if-nez p0, :cond_0

    .line 38
    const/4 v2, 0x0

    .line 55
    :goto_0
    return-object v2

    .line 41
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 42
    .local v2, nodeRect:Landroid/graphics/Rect;
    invoke-virtual {p0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 44
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 45
    .local v1, displayRect:Landroid/graphics/Rect;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 47
    .local v0, display:Landroid/view/Display;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 48
    .local v3, outSize:Landroid/graphics/Point;
    invoke-virtual {v0, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 49
    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 50
    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 51
    iget v4, v3, Landroid/graphics/Point;->x:I

    iput v4, v1, Landroid/graphics/Rect;->right:I

    .line 52
    iget v4, v3, Landroid/graphics/Point;->y:I

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 54
    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    goto :goto_0
.end method
