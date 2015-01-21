.class public Lzte/com/cn/driverMode/ui/DMNewFeedbackActivity;
.super Lzte/com/cn/driverMode/ui/DMBaseActivity;


# instance fields
.field private a:Lcom/b/a/a/e;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;-><init>()V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMNewFeedbackActivity;->a:Lcom/b/a/a/e;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMNewFeedbackActivity;->b:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic a(Lzte/com/cn/driverMode/ui/DMNewFeedbackActivity;)Lcom/b/a/a/e;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNewFeedbackActivity;->a:Lcom/b/a/a/e;

    return-object v0
.end method

.method static synthetic b(Lzte/com/cn/driverMode/ui/DMNewFeedbackActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMNewFeedbackActivity;->b:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMNewFeedbackActivity;->setContentView(I)V

    const v0, 0x7f0b009a

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMNewFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lzte/com/cn/driverMode/ui/bx;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/bx;-><init>(Lzte/com/cn/driverMode/ui/DMNewFeedbackActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/b/a/a/e;

    invoke-direct {v0, p0}, Lcom/b/a/a/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMNewFeedbackActivity;->a:Lcom/b/a/a/e;

    const v0, 0x7f0b0099

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMNewFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMNewFeedbackActivity;->b:Landroid/widget/TextView;

    new-instance v0, Lzte/com/cn/driverMode/ui/by;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/by;-><init>(Lzte/com/cn/driverMode/ui/DMNewFeedbackActivity;)V

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/by;->start()V

    return-void
.end method
