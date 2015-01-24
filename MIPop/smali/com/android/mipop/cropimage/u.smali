.class public Lcom/android/mipop/cropimage/u;
.super Landroid/app/AlertDialog;


# instance fields
.field private fA:I

.field private fB:I

.field private fC:I

.field private fD:I

.field private fE:I

.field private fF:Landroid/graphics/drawable/Drawable;

.field private fG:Landroid/graphics/drawable/Drawable;

.field private fH:Z

.field private fI:Z

.field private fJ:Landroid/os/Handler;

.field private fK:Landroid/content/Context;

.field private fv:Landroid/widget/ProgressBar;

.field private fw:Landroid/widget/TextView;

.field private fx:I

.field private fy:Ljava/lang/String;

.field private fz:Ljava/text/NumberFormat;

.field private mMessage:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mipop/cropimage/u;->fx:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mipop/cropimage/u;->fK:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/mipop/cropimage/u;->fK:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/mipop/cropimage/u;->am()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mipop/cropimage/u;->fx:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mipop/cropimage/u;->fK:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/mipop/cropimage/u;->fK:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/mipop/cropimage/u;->am()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/android/mipop/cropimage/u;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/mipop/cropimage/u;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/android/mipop/cropimage/u;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/android/mipop/cropimage/u;
    .locals 1

    new-instance v0, Lcom/android/mipop/cropimage/u;

    invoke-direct {v0, p0}, Lcom/android/mipop/cropimage/u;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/android/mipop/cropimage/u;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p2}, Lcom/android/mipop/cropimage/u;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p3}, Lcom/android/mipop/cropimage/u;->setIndeterminate(Z)V

    invoke-virtual {v0, p4}, Lcom/android/mipop/cropimage/u;->setCancelable(Z)V

    invoke-virtual {v0, p5}, Lcom/android/mipop/cropimage/u;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0}, Lcom/android/mipop/cropimage/u;->show()V

    return-object v0
.end method

.method private am()V
    .locals 2

    const-string v0, "%1d/%2d"

    iput-object v0, p0, Lcom/android/mipop/cropimage/u;->fy:Ljava/lang/String;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mipop/cropimage/u;->fz:Ljava/text/NumberFormat;

    iget-object v0, p0, Lcom/android/mipop/cropimage/u;->fz:Ljava/text/NumberFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    return-void
.end method

.method private an()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/mipop/cropimage/u;->fx:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mipop/cropimage/u;->fJ:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mipop/cropimage/u;->fJ:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mipop/cropimage/u;->fJ:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public incrementProgressBy(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/mipop/cropimage/u;->fv:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mipop/cropimage/u;->fv:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    invoke-direct {p0}, Lcom/android/mipop/cropimage/u;->an()V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/mipop/cropimage/u;->fD:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/mipop/cropimage/u;->fD:I

    goto :goto_0
.end method

.method public incrementSecondaryProgressBy(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/mipop/cropimage/u;->fv:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mipop/cropimage/u;->fv:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementSecondaryProgressBy(I)V

    invoke-direct {p0}, Lcom/android/mipop/cropimage/u;->an()V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/mipop/cropimage/u;->fE:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/mipop/cropimage/u;->fE:I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/mipop/cropimage/u;->fK:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mipop/cropimage/u;->fK:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const v3, 0x101005d

    const/4 v4, 0x0

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    const-string v2, "shen"

    const-string v3, "shen mProgressStyle == STYLE_VERTICAL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f03000f

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x102000d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/mipop/cropimage/u;->fv:Landroid/widget/ProgressBar;

    const v0, 0x102000b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mipop/cropimage/u;->fw:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/android/mipop/cropimage/u;->setView(Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    iget v0, p0, Lcom/android/mipop/cropimage/u;->fA:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/mipop/cropimage/u;->fA:I

    invoke-virtual {p0, v0}, Lcom/android/mipop/cropimage/u;->setMax(I)V

    :cond_0
    iget v0, p0, Lcom/android/mipop/cropimage/u;->fB:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/mipop/cropimage/u;->fB:I

    invoke-virtual {p0, v0}, Lcom/android/mipop/cropimage/u;->setProgress(I)V

    :cond_1
    iget v0, p0, Lcom/android/mipop/cropimage/u;->fC:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/android/mipop/cropimage/u;->fC:I

    invoke-virtual {p0, v0}, Lcom/android/mipop/cropimage/u;->setSecondaryProgress(I)V

    :cond_2
    iget v0, p0, Lcom/android/mipop/cropimage/u;->fD:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/android/mipop/cropimage/u;->fD:I

    invoke-virtual {p0, v0}, Lcom/android/mipop/cropimage/u;->incrementProgressBy(I)V

    :cond_3
    iget v0, p0, Lcom/android/mipop/cropimage/u;->fE:I

    if-lez v0, :cond_4

    iget v0, p0, Lcom/android/mipop/cropimage/u;->fE:I

    invoke-virtual {p0, v0}, Lcom/android/mipop/cropimage/u;->incrementSecondaryProgressBy(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/mipop/cropimage/u;->fF:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/mipop/cropimage/u;->fF:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/mipop/cropimage/u;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    iget-object v0, p0, Lcom/android/mipop/cropimage/u;->fG:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/mipop/cropimage/u;->fG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/mipop/cropimage/u;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    iget-object v0, p0, Lcom/android/mipop/cropimage/u;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/mipop/cropimage/u;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/mipop/cropimage/u;->setMessage(Ljava/lang/CharSequence;)V

    :cond_7
    iget-boolean v0, p0, Lcom/android/mipop/cropimage/u;->fH:Z

    invoke-virtual {p0, v0}, Lcom/android/mipop/cropimage/u;->setIndeterminate(Z)V

    invoke-direct {p0}, Lcom/android/mipop/cropimage/u;->an()V

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mipop/cropimage/u;->fI:Z

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mipop/cropimage/u;->fI:Z

    return-void
.end method

.method public setIndeterminate(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/mipop/cropimage/u;->fv:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mipop/cropimage/u;->fv:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/mipop/cropimage/u;->fH:Z

    goto :goto_0
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mipop/cropimage/u;->fv:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mipop/cropimage/u;->fv:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/mipop/cropimage/u;->fG:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setMax(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/mipop/cropimage/u;->fv:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mipop/cropimage/u;->fv:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-direct {p0}, Lcom/android/mipop/cropimage/u;->an()V

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/android/mipop/cropimage/u;->fA:I

    goto :goto_0
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/android/mipop/cropimage/u;->fv:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/mipop/cropimage/u;->fx:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    const-string v0, ""

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/mipop/cropimage/u;->fw:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lcom/android/mipop/cropimage/u;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/mipop/cropimage/u;->fI:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mipop/cropimage/u;->fv:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-direct {p0}, Lcom/android/mipop/cropimage/u;->an()V

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/android/mipop/cropimage/u;->fB:I

    goto :goto_0
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mipop/cropimage/u;->fv:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mipop/cropimage/u;->fv:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/mipop/cropimage/u;->fF:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setSecondaryProgress(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/mipop/cropimage/u;->fv:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mipop/cropimage/u;->fv:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    invoke-direct {p0}, Lcom/android/mipop/cropimage/u;->an()V

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/android/mipop/cropimage/u;->fC:I

    goto :goto_0
.end method
