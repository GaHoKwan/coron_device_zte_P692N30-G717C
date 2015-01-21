.class public Lcom/powermo/smartshow/activity/PauseCoverActivity;
.super Lcom/powermo/b/a;


# instance fields
.field a:Lcom/powermo/b/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/powermo/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Lcom/powermo/smartshow/activity/PauseCoverActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/powermo/b/a;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/powermo/smartshow/activity/PauseCoverActivity;->setContentView(I)V

    const v0, 0x7f07000a

    invoke-virtual {p0, v0}, Lcom/powermo/smartshow/activity/PauseCoverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-static {}, Lcom/powermo/b/b;->a()Lcom/powermo/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/smartshow/activity/PauseCoverActivity;->a:Lcom/powermo/b/b;

    return-void
.end method
