.class public Lzte/com/cn/driverMode/ui/DMAutoReplyActivity;
.super Lzte/com/cn/driverMode/ui/DMBaseActivity;


# instance fields
.field a:Lzte/com/cn/driverMode/service/by;

.field b:Ljava/lang/String;

.field c:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMAutoReplyActivity;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMAutoReplyActivity;->setContentView(I)V

    new-instance v0, Lzte/com/cn/driverMode/service/by;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/service/by;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMAutoReplyActivity;->a:Lzte/com/cn/driverMode/service/by;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMAutoReplyActivity;->a:Lzte/com/cn/driverMode/service/by;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMAutoReplyActivity;->a:Lzte/com/cn/driverMode/service/by;

    const-string v1, "autoreplaysms"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lzte/com/cn/driverMode/service/by;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMAutoReplyActivity;->b:Ljava/lang/String;

    :cond_0
    const v0, 0x7f0b0003

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMAutoReplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMAutoReplyActivity;->c:Landroid/widget/EditText;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMAutoReplyActivity;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMAutoReplyActivity;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMAutoReplyActivity;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMAutoReplyActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const v0, 0x7f0b0004

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMAutoReplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lzte/com/cn/driverMode/ui/g;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/g;-><init>(Lzte/com/cn/driverMode/ui/DMAutoReplyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v0, 0x7f0b

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMAutoReplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lzte/com/cn/driverMode/ui/h;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/h;-><init>(Lzte/com/cn/driverMode/ui/DMAutoReplyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMAutoReplyActivity;->c:Landroid/widget/EditText;

    const v1, 0x7f0800e0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    goto :goto_0
.end method
