.class public Lcom/powermo/SmartBar/MLRootLayout;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Lcom/powermo/SmartBar/bb;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/powermo/SmartBar/MLRootLayout;->a:Lcom/powermo/SmartBar/bb;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/powermo/SmartBar/MLRootLayout;->a:Lcom/powermo/SmartBar/bb;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/powermo/SmartBar/MLRootLayout;->a:Lcom/powermo/SmartBar/bb;

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/MLRootLayout;->a:Lcom/powermo/SmartBar/bb;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/powermo/SmartBar/bb;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setOnTouchEventDispatchListener(Lcom/powermo/SmartBar/bb;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/SmartBar/MLRootLayout;->a:Lcom/powermo/SmartBar/bb;

    return-void
.end method
