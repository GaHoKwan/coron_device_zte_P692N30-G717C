.class public Leu/chainfire/supersu/AppDetailActivity;
.super Landroid/app/Activity;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/chainfire/supersu/AppDetailActivity$UIHandler;
    }
.end annotation


# instance fields
.field private 櫯:Leu/chainfire/supersu/AppDetailActivity$UIHandler;

.field private 鷭:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 0
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 426
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->鷭:Landroid/os/Bundle;

    .line 427
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->櫯:Leu/chainfire/supersu/AppDetailActivity$UIHandler;

    .line 18
    return-void
.end method

.method public static 鷭(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V
    .locals 4

    .line 0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 417
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Leu/chainfire/supersu/AppDetailActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 419
    .line 419
    .line 420
    const/high16 v0, 0x4

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 422
    const-string v0, "eu.chainfire.supersu.extra.appname"

    if-eqz p1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    const/16 v0, 0x1100

    invoke-virtual {p0, v3, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 424
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->櫯:Leu/chainfire/supersu/AppDetailActivity$UIHandler;

    invoke-virtual {v0, p1, p3}, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->鷭(ILandroid/content/Intent;)V

    .line 462
    return-void
.end method

.method public onAppDetailCancel(Landroid/view/View;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/AppDetailActivity;->setResult(I)V

    .line 479
    invoke-virtual {p0}, Leu/chainfire/supersu/AppDetailActivity;->finish()V

    .line 480
    return-void
.end method

.method public onAppDetailForget(Landroid/view/View;)V
    .locals 2

    .line 0
    iget-object p1, p0, Leu/chainfire/supersu/AppDetailActivity;->櫯:Leu/chainfire/supersu/AppDetailActivity$UIHandler;

    iget-object v0, p1, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ȃ:Leu/chainfire/supersu/Settings$App;

    invoke-virtual {v0}, Leu/chainfire/supersu/Settings$App;->ȃ()V

    iget-object v0, p1, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->ˮ͈:Leu/chainfire/supersu/Settings;

    iget-object v1, p1, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->櫯:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/Settings;->櫯(Landroid/content/Context;)V

    .line 473
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/AppDetailActivity;->setResult(I)V

    .line 474
    invoke-virtual {p0}, Leu/chainfire/supersu/AppDetailActivity;->finish()V

    .line 475
    return-void
.end method

.method public onAppDetailSave(Landroid/view/View;)V
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->櫯:Leu/chainfire/supersu/AppDetailActivity$UIHandler;

    invoke-virtual {v0}, Leu/chainfire/supersu/AppDetailActivity$UIHandler;->櫯()V

    .line 466
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/AppDetailActivity;->setResult(I)V

    .line 467
    invoke-virtual {p0}, Leu/chainfire/supersu/AppDetailActivity;->finish()V

    .line 468
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 434
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/AppDetailActivity;->setContentView(I)V

    .line 436
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->鷭:Landroid/os/Bundle;

    .line 437
    invoke-virtual {p0}, Leu/chainfire/supersu/AppDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->鷭:Landroid/os/Bundle;

    invoke-virtual {p0}, Leu/chainfire/supersu/AppDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 438
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->鷭:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 440
    :cond_1
    new-instance v0, Leu/chainfire/supersu/AppDetailActivity$1;

    iget-object v1, p0, Leu/chainfire/supersu/AppDetailActivity;->鷭:Landroid/os/Bundle;

    const-string v2, "eu.chainfire.supersu.extra.appname"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Leu/chainfire/supersu/AppDetailActivity$1;-><init>(Leu/chainfire/supersu/AppDetailActivity;Leu/chainfire/supersu/AppDetailActivity;Ljava/lang/String;)V

    iput-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->櫯:Leu/chainfire/supersu/AppDetailActivity$UIHandler;

    .line 456
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/AppDetailActivity;->setResult(I)V

    .line 457
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/AppDetailActivity;->setResult(I)V

    .line 485
    invoke-virtual {p0}, Leu/chainfire/supersu/AppDetailActivity;->finish()V

    .line 486
    return-void
.end method
