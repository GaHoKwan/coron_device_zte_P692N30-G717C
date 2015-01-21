.class public Lzte/com/cn/driverMode/ui/DMGaoDeDownload;
.super Lzte/com/cn/driverMode/ui/DMBaseActivity;


# instance fields
.field a:Landroid/widget/Button;

.field b:Landroid/widget/Button;

.field c:Landroid/widget/ImageButton;

.field h:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMGaoDeDownload;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMGaoDeDownload;->setContentView(I)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMGaoDeDownload;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMGaoDeDownload;->h:Landroid/content/Context;

    const v0, 0x7f0b0054

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMGaoDeDownload;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMGaoDeDownload;->a:Landroid/widget/Button;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMGaoDeDownload;->a:Landroid/widget/Button;

    new-instance v1, Lzte/com/cn/driverMode/ui/ap;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/ap;-><init>(Lzte/com/cn/driverMode/ui/DMGaoDeDownload;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0056

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMGaoDeDownload;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMGaoDeDownload;->b:Landroid/widget/Button;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMGaoDeDownload;->b:Landroid/widget/Button;

    new-instance v1, Lzte/com/cn/driverMode/ui/aq;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/aq;-><init>(Lzte/com/cn/driverMode/ui/DMGaoDeDownload;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0052

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMGaoDeDownload;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMGaoDeDownload;->c:Landroid/widget/ImageButton;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMGaoDeDownload;->c:Landroid/widget/ImageButton;

    new-instance v1, Lzte/com/cn/driverMode/ui/ar;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/ar;-><init>(Lzte/com/cn/driverMode/ui/DMGaoDeDownload;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
