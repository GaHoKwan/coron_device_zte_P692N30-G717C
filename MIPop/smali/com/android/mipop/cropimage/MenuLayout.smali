.class public Lcom/android/mipop/cropimage/MenuLayout;
.super Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/16 v4, 0x64

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v1, "Hello"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/android/mipop/cropimage/MenuLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    const/16 v2, 0x7d0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x4

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v2, 0x33

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 v2, 0x12c

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v2, 0xc8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method
