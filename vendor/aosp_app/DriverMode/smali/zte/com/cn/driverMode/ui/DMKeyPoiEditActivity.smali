.class public Lzte/com/cn/driverMode/ui/DMKeyPoiEditActivity;
.super Lzte/com/cn/driverMode/ui/DMBaseActivity;


# instance fields
.field a:Landroid/widget/EditText;

.field b:Landroid/widget/Button;

.field c:Landroid/widget/Button;

.field h:I

.field i:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "zte.com.cn.driverMode.keyPoiCancel"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMKeyPoiEditActivity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMKeyPoiEditActivity;->finish()V

    return-void
.end method

.method static synthetic a(Lzte/com/cn/driverMode/ui/DMKeyPoiEditActivity;)V
    .locals 0

    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMKeyPoiEditActivity;->a()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMKeyPoiEditActivity;->a()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030018

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMKeyPoiEditActivity;->setContentView(I)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMKeyPoiEditActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMKeyPoiEditActivity;->i:Landroid/content/Context;

    const v0, 0x7f0b007b

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMKeyPoiEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMKeyPoiEditActivity;->a:Landroid/widget/EditText;

    const v0, 0x7f0b007a

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMKeyPoiEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMKeyPoiEditActivity;->b:Landroid/widget/Button;

    const v0, 0x7f0b0078

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMKeyPoiEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMKeyPoiEditActivity;->c:Landroid/widget/Button;

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMKeyPoiEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "KeyPoiIndex"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lzte/com/cn/driverMode/ui/DMKeyPoiEditActivity;->h:I

    const-string v1, "KeyPoiAddress"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMKeyPoiEditActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMKeyPoiEditActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMKeyPoiEditActivity;->b:Landroid/widget/Button;

    new-instance v1, Lzte/com/cn/driverMode/ui/bf;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/bf;-><init>(Lzte/com/cn/driverMode/ui/DMKeyPoiEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMKeyPoiEditActivity;->c:Landroid/widget/Button;

    new-instance v1, Lzte/com/cn/driverMode/ui/bg;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/bg;-><init>(Lzte/com/cn/driverMode/ui/DMKeyPoiEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onDestroy()V

    return-void
.end method
