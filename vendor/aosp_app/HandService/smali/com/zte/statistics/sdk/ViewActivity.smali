.class public Lcom/zte/statistics/sdk/ViewActivity;
.super Landroid/app/Activity;
.source "ViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/statistics/sdk/ViewActivity$Module;
    }
.end annotation


# instance fields
.field private activeModule:Lcom/zte/statistics/sdk/ViewActivity$Module;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zte/statistics/sdk/ViewActivity;->requestWindowFeature(I)Z

    .line 26
    invoke-virtual {p0}, Lcom/zte/statistics/sdk/ViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "module"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/statistics/sdk/ViewActivity$Module;->valueOf(Ljava/lang/String;)Lcom/zte/statistics/sdk/ViewActivity$Module;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/statistics/sdk/ViewActivity;->activeModule:Lcom/zte/statistics/sdk/ViewActivity$Module;

    .line 27
    const-string v0, "zte_about"

    invoke-static {p0, v0}, Lcom/zte/statistics/sdk/util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zte/statistics/sdk/ViewActivity;->setContentView(I)V

    .line 28
    invoke-static {}, Lcom/zte/statistics/sdk/AboutModule;->getInstance()Lcom/zte/statistics/sdk/AboutModule;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zte/statistics/sdk/AboutModule;->doShow(Landroid/app/Activity;)V

    .line 30
    return-void
.end method
