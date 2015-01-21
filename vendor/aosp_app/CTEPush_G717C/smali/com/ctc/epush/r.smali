.class final Lcom/ctc/epush/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ctc/epush/PushDialogActivity;


# direct methods
.method constructor <init>(Lcom/ctc/epush/PushDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ctc/epush/r;->a:Lcom/ctc/epush/PushDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const-wide v9, 0x3feccccccccccccdL

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v2, p0, Lcom/ctc/epush/r;->a:Lcom/ctc/epush/PushDialogActivity;

    invoke-static {v2}, Lcom/ctc/epush/PushDialogActivity;->c(Lcom/ctc/epush/PushDialogActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->measure(II)V

    iget-object v2, p0, Lcom/ctc/epush/r;->a:Lcom/ctc/epush/PushDialogActivity;

    invoke-static {v2}, Lcom/ctc/epush/PushDialogActivity;->c(Lcom/ctc/epush/PushDialogActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/ctc/epush/r;->a:Lcom/ctc/epush/PushDialogActivity;

    invoke-static {v3}, Lcom/ctc/epush/PushDialogActivity;->d(Lcom/ctc/epush/PushDialogActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->measure(II)V

    iget-object v0, p0, Lcom/ctc/epush/r;->a:Lcom/ctc/epush/PushDialogActivity;

    invoke-static {v0}, Lcom/ctc/epush/PushDialogActivity;->d(Lcom/ctc/epush/PushDialogActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/ctc/epush/r;->a:Lcom/ctc/epush/PushDialogActivity;

    invoke-static {v1}, Lcom/ctc/epush/PushDialogActivity;->e(Lcom/ctc/epush/PushDialogActivity;)Landroid/widget/ListView;

    move-result-object v1

    const/16 v3, 0x15e

    invoke-static {v1, v3}, Lcom/ctc/c/h;->a(Landroid/widget/ListView;I)I

    move-result v1

    iget-object v3, p0, Lcom/ctc/epush/r;->a:Lcom/ctc/epush/PushDialogActivity;

    invoke-virtual {v3}, Lcom/ctc/epush/PushDialogActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    iget-object v4, p0, Lcom/ctc/epush/r;->a:Lcom/ctc/epush/PushDialogActivity;

    invoke-virtual {v4}, Lcom/ctc/epush/PushDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    add-int/2addr v1, v2

    add-int v2, v1, v0

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, v9

    double-to-int v1, v0

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v0

    int-to-double v5, v0

    const-wide v7, 0x3fe3333333333333L

    mul-double/2addr v5, v7

    double-to-int v0, v5

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    int-to-double v5, v3

    mul-double/2addr v5, v9

    double-to-int v3, v5

    if-le v2, v1, :cond_1

    :goto_0
    if-ge v1, v0, :cond_0

    :goto_1
    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/ctc/epush/r;->a:Lcom/ctc/epush/PushDialogActivity;

    invoke-virtual {v0}, Lcom/ctc/epush/PushDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_0
.end method
