.class public Lcom/android/mipop/cropimage/MenuActivity;
.super Landroid/app/Activity;


# instance fields
.field private fM:Landroid/app/Dialog;

.field private fN:Landroid/os/Handler;

.field private fO:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/cropimage/MenuActivity;->fN:Landroid/os/Handler;

    new-instance v0, Lcom/android/mipop/cropimage/h;

    invoke-direct {v0, p0}, Lcom/android/mipop/cropimage/h;-><init>(Lcom/android/mipop/cropimage/MenuActivity;)V

    iput-object v0, p0, Lcom/android/mipop/cropimage/MenuActivity;->fO:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/android/mipop/cropimage/MenuActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mipop/cropimage/MenuActivity;->ao()V

    return-void
.end method

.method private ao()V
    .locals 1

    new-instance v0, Lcom/android/mipop/cropimage/n;

    invoke-direct {v0, p0}, Lcom/android/mipop/cropimage/n;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/mipop/cropimage/n;->start()V

    iget-object v0, p0, Lcom/android/mipop/cropimage/MenuActivity;->fM:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    invoke-static {}, Lcom/android/mipop/api/MyApplication;->aq()Lcom/android/mipop/api/MyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mipop/api/MyApplication;->ax()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b0001

    invoke-virtual {p0, v0}, Lcom/android/mipop/cropimage/MenuActivity;->setTheme(I)V

    const-string v0, "HouJiong"

    const-string v1, "MenuActivity onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/mipop/cropimage/MenuActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03000e

    const v0, 0x7f0c001e

    invoke-virtual {p0, v0}, Lcom/android/mipop/cropimage/MenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0c003d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/mipop/cropimage/l;

    invoke-direct {v1, p0}, Lcom/android/mipop/cropimage/l;-><init>(Lcom/android/mipop/cropimage/MenuActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0040

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/mipop/cropimage/e;

    invoke-direct {v1, p0}, Lcom/android/mipop/cropimage/e;-><init>(Lcom/android/mipop/cropimage/MenuActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0043

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/mipop/cropimage/f;

    invoke-direct {v1, p0}, Lcom/android/mipop/cropimage/f;-><init>(Lcom/android/mipop/cropimage/MenuActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0046

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/mipop/cropimage/c;

    invoke-direct {v1, p0}, Lcom/android/mipop/cropimage/c;-><init>(Lcom/android/mipop/cropimage/MenuActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0049

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/mipop/cropimage/d;

    invoke-direct {v1, p0}, Lcom/android/mipop/cropimage/d;-><init>(Lcom/android/mipop/cropimage/MenuActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c004c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/mipop/cropimage/i;

    invoke-direct {v1, p0}, Lcom/android/mipop/cropimage/i;-><init>(Lcom/android/mipop/cropimage/MenuActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f0b0002

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/mipop/cropimage/MenuActivity;->fM:Landroid/app/Dialog;

    const-string v0, "MenuActivity.java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.android.mipop.widget.Until.SCREEM_WIDTH == "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lcom/android/mipop/b/a;->M:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/android/mipop/b/a;->M:I

    const/16 v1, 0x438

    if-lt v0, v1, :cond_0

    const/16 v1, 0x32a

    const/16 v0, 0x260

    :goto_0
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/android/mipop/cropimage/MenuActivity;->fM:Landroid/app/Dialog;

    invoke-virtual {v0, v2, v3}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/mipop/cropimage/MenuActivity;->fM:Landroid/app/Dialog;

    new-instance v1, Lcom/android/mipop/cropimage/j;

    invoke-direct {v1, p0}, Lcom/android/mipop/cropimage/j;-><init>(Lcom/android/mipop/cropimage/MenuActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/mipop/cropimage/MenuActivity;->fM:Landroid/app/Dialog;

    new-instance v1, Lcom/android/mipop/cropimage/g;

    invoke-direct {v1, p0}, Lcom/android/mipop/cropimage/g;-><init>(Lcom/android/mipop/cropimage/MenuActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-static {}, Lcom/android/mipop/api/MyApplication;->aq()Lcom/android/mipop/api/MyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mipop/api/MyApplication;->aw()V

    iget-object v0, p0, Lcom/android/mipop/cropimage/MenuActivity;->fN:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mipop/cropimage/MenuActivity;->fO:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    sget v0, Lcom/android/mipop/b/a;->M:I

    const/16 v1, 0x244

    if-le v0, v1, :cond_1

    const/16 v1, 0x213

    const/16 v0, 0x19c

    goto :goto_0

    :cond_1
    sget v0, Lcom/android/mipop/b/a;->M:I

    add-int/lit8 v1, v0, -0x28

    int-to-double v3, v1

    const-wide/high16 v5, 0x3fe8

    mul-double/2addr v3, v5

    double-to-int v0, v3

    goto :goto_0
.end method
