.class public Lzte/com/cn/driverMode/ui/DMfeedBackActivity;
.super Lzte/com/cn/driverMode/ui/DMBaseActivity;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/Button;

.field private h:Landroid/content/Context;

.field private i:Lzte/com/cn/driverMode/ui/eb;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lzte/com/cn/driverMode/ui/DMfeedBackActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMfeedBackActivity;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lzte/com/cn/driverMode/ui/DMfeedBackActivity;Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1001

    if-ne v0, v1, :cond_0

    const-string v0, "DMfeedBackActivity"

    const-string v1, "SUCCESS ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMfeedBackActivity;->h:Landroid/content/Context;

    const v1, 0x7f08016f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMfeedBackActivity;->c:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMfeedBackActivity;->finish()V

    return-void

    :cond_0
    const-string v0, "DMfeedBackActivity"

    const-string v1, "ERROR ...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic b(Lzte/com/cn/driverMode/ui/DMfeedBackActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMfeedBackActivity;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lzte/com/cn/driverMode/ui/DMfeedBackActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMfeedBackActivity;->h:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lzte/com/cn/driverMode/ui/DMfeedBackActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMfeedBackActivity;->c:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic e(Lzte/com/cn/driverMode/ui/DMfeedBackActivity;)Lzte/com/cn/driverMode/ui/eb;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMfeedBackActivity;->i:Lzte/com/cn/driverMode/ui/eb;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMfeedBackActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMfeedBackActivity;->setContentView(I)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMfeedBackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMfeedBackActivity;->h:Landroid/content/Context;

    new-instance v0, Lzte/com/cn/driverMode/ui/eb;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/eb;-><init>(Lzte/com/cn/driverMode/ui/DMfeedBackActivity;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMfeedBackActivity;->i:Lzte/com/cn/driverMode/ui/eb;

    const v0, 0x7f0b004f

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMfeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMfeedBackActivity;->a:Landroid/widget/EditText;

    const v0, 0x7f0b0050

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMfeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMfeedBackActivity;->b:Landroid/widget/EditText;

    const v0, 0x7f0b0051

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMfeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMfeedBackActivity;->c:Landroid/widget/Button;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMfeedBackActivity;->c:Landroid/widget/Button;

    new-instance v1, Lzte/com/cn/driverMode/ui/dz;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/dz;-><init>(Lzte/com/cn/driverMode/ui/DMfeedBackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b004e

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMfeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lzte/com/cn/driverMode/ui/ea;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/ea;-><init>(Lzte/com/cn/driverMode/ui/DMfeedBackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
