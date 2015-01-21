.class public Lcom/zte/heartyservice/appwidget/TrafficAdjustActivity;
.super Landroid/app/Activity;
.source "TrafficAdjustActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TrafficAdjustActivity"


# instance fields
.field private subscription:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/heartyservice/appwidget/TrafficAdjustActivity;->subscription:I

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lcom/zte/heartyservice/appwidget/TrafficAdjustActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "subscription"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/zte/heartyservice/appwidget/TrafficAdjustActivity;->subscription:I

    .line 23
    invoke-virtual {p0}, Lcom/zte/heartyservice/appwidget/TrafficAdjustActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "show_adj_dialog"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 25
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "subscription"

    iget v2, p0, Lcom/zte/heartyservice/appwidget/TrafficAdjustActivity;->subscription:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 26
    invoke-static {p0, v0}, Lcom/zte/heartyservice/common/utils/AppUtils;->showAdjDialog(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lcom/zte/heartyservice/appwidget/TrafficAdjustActivity;->finish()V

    .line 31
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 29
    :cond_0
    iget v1, p0, Lcom/zte/heartyservice/appwidget/TrafficAdjustActivity;->subscription:I

    const/4 v2, 0x1

    invoke-static {v1, p0, v2}, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->startSelf(ILandroid/app/Activity;Z)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 39
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 40
    const-string v0, "TrafficAdjustActivity"

    const-string v1, "liuji debug TrafficAdjustActivity onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 34
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 35
    const-string v0, "TrafficAdjustActivity"

    const-string v1, "liuji debug TrafficAdjustActivity onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    return-void
.end method
