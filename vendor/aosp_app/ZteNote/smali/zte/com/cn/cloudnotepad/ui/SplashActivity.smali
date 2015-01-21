.class public Lzte/com/cn/cloudnotepad/ui/SplashActivity;
.super Landroid/app/Activity;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzte/com/cn/cloudnotepad/ui/SplashActivity$splashHandler;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lzte/com/cn/cloudnotepad/ui/SplashActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/SplashActivity;->isFirstEnter()V

    return-void
.end method

.method private isFirstEnter()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 34
    const-string v2, "count"

    invoke-virtual {p0, v2, v3}, Lzte/com/cn/cloudnotepad/ui/SplashActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 35
    .local v1, preferences:Landroid/content/SharedPreferences;
    const-string v2, "first"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 37
    .local v0, first:Z
    if-eqz v0, :cond_0

    .line 38
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/SplashActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    const-class v4, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lzte/com/cn/cloudnotepad/ui/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 39
    const-string v2, "zhangxue"

    const-string v3, "first"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/SplashActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    const-class v4, Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lzte/com/cn/cloudnotepad/ui/SplashActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v1, 0x7f030028

    invoke-virtual {p0, v1}, Lzte/com/cn/cloudnotepad/ui/SplashActivity;->setContentView(I)V

    .line 19
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 20
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lzte/com/cn/cloudnotepad/ui/SplashActivity$splashHandler;

    invoke-direct {v1, p0}, Lzte/com/cn/cloudnotepad/ui/SplashActivity$splashHandler;-><init>(Lzte/com/cn/cloudnotepad/ui/SplashActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 22
    return-void
.end method
