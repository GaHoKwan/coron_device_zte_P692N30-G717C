.class public Lcom/powermo/smartshow/activity/CoverActivity;
.super Lcom/powermo/b/a;


# instance fields
.field a:Lcom/powermo/b/b;

.field b:Z

.field private c:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/powermo/b/a;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/powermo/smartshow/activity/CoverActivity;->b:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/powermo/smartshow/activity/CoverActivity;->c:Landroid/widget/Toast;

    return-void
.end method

.method private a()V
    .locals 2

    const v1, 0x7f050003

    iget-object v0, p0, Lcom/powermo/smartshow/activity/CoverActivity;->c:Landroid/widget/Toast;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/smartshow/activity/CoverActivity;->c:Landroid/widget/Toast;

    :goto_0
    iget-object v0, p0, Lcom/powermo/smartshow/activity/CoverActivity;->c:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/powermo/smartshow/activity/CoverActivity;->c:Landroid/widget/Toast;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    iget-boolean v0, p0, Lcom/powermo/smartshow/activity/CoverActivity;->b:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/powermo/smartshow/activity/CoverActivity;->a()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/powermo/smartshow/activity/CoverActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/powermo/b/a;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/powermo/smartshow/activity/CoverActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/powermo/smartshow/activity/CoverActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v0, 0x7f07000a

    invoke-virtual {p0, v0}, Lcom/powermo/smartshow/activity/CoverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/powermo/smartshow/activity/CoverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v0, "thumbnail"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const-string v4, "needUncover"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/powermo/smartshow/activity/CoverActivity;->b:Z

    const v1, 0x7f07000b

    invoke-virtual {p0, v1}, Lcom/powermo/smartshow/activity/CoverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-boolean v4, p0, Lcom/powermo/smartshow/activity/CoverActivity;->b:Z

    if-nez v4, :cond_0

    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-static {}, Lcom/powermo/b/b;->a()Lcom/powermo/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/smartshow/activity/CoverActivity;->a:Lcom/powermo/b/b;

    return-void

    :cond_0
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_1
    const v0, 0x7f07000d

    invoke-virtual {p0, v0}, Lcom/powermo/smartshow/activity/CoverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/powermo/smartshow/activity/s;

    invoke-direct {v1, p0}, Lcom/powermo/smartshow/activity/s;-><init>(Lcom/powermo/smartshow/activity/CoverActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/powermo/b/a;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/powermo/b/a;->onResume()V

    return-void
.end method
