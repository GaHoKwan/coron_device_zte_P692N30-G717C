.class public abstract Lcom/zte/retrieve/activity/PasswordRelatedActivity;
.super Landroid/app/Activity;
.source "PasswordRelatedActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/retrieve/activity/PasswordRelatedActivity$SettingViewsBackEventsReceiver;
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field private mController:Lcom/zte/retrieve/controller/Controller;

.field private mReceiver:Lcom/zte/retrieve/activity/PasswordRelatedActivity$SettingViewsBackEventsReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/zte/retrieve/activity/PasswordRelatedActivity;)Lcom/zte/retrieve/controller/Controller;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/zte/retrieve/activity/PasswordRelatedActivity;->mController:Lcom/zte/retrieve/controller/Controller;

    return-object v0
.end method

.method private regBackClickReceiver()V
    .locals 3

    .prologue
    .line 43
    new-instance v1, Lcom/zte/retrieve/activity/PasswordRelatedActivity$SettingViewsBackEventsReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/zte/retrieve/activity/PasswordRelatedActivity$SettingViewsBackEventsReceiver;-><init>(Lcom/zte/retrieve/activity/PasswordRelatedActivity;Lcom/zte/retrieve/activity/PasswordRelatedActivity$SettingViewsBackEventsReceiver;)V

    iput-object v1, p0, Lcom/zte/retrieve/activity/PasswordRelatedActivity;->mReceiver:Lcom/zte/retrieve/activity/PasswordRelatedActivity$SettingViewsBackEventsReceiver;

    .line 44
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 45
    .local v0, mFilter:Landroid/content/IntentFilter;
    const-string v1, "com.zte.retrieve.back_pressed_on_pwd_activity"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/zte/retrieve/activity/PasswordRelatedActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/zte/retrieve/activity/PasswordRelatedActivity;->mReceiver:Lcom/zte/retrieve/activity/PasswordRelatedActivity$SettingViewsBackEventsReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 48
    return-void
.end method


# virtual methods
.method public abstract finishView()V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    iput-object p0, p0, Lcom/zte/retrieve/activity/PasswordRelatedActivity;->mContext:Landroid/content/Context;

    .line 23
    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/retrieve/activity/PasswordRelatedActivity;->mController:Lcom/zte/retrieve/controller/Controller;

    .line 25
    invoke-direct {p0}, Lcom/zte/retrieve/activity/PasswordRelatedActivity;->regBackClickReceiver()V

    .line 26
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/PasswordRelatedActivity;->unRegBackClickReceiver()V

    .line 39
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 40
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/PasswordRelatedActivity;->setPasswordView()V

    .line 33
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 34
    return-void
.end method

.method public setPasswordView()V
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/zte/retrieve/activity/PasswordRelatedActivity;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v0}, Lcom/zte/retrieve/controller/Controller;->isFromRecentapps()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/retrieve/activity/PasswordRelatedActivity;->mController:Lcom/zte/retrieve/controller/Controller;

    invoke-virtual {v0}, Lcom/zte/retrieve/controller/Controller;->isScreenOff2On()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/zte/retrieve/activity/PasswordRelatedActivity;->mController:Lcom/zte/retrieve/controller/Controller;

    iget-object v1, p0, Lcom/zte/retrieve/activity/PasswordRelatedActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcom/zte/retrieve/activity/PasswordCheckActivity;

    invoke-virtual {v0, v1, v2}, Lcom/zte/retrieve/controller/Controller;->navigateTo(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    :cond_1
    return-void
.end method

.method public unRegBackClickReceiver()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/zte/retrieve/activity/PasswordRelatedActivity;->mReceiver:Lcom/zte/retrieve/activity/PasswordRelatedActivity$SettingViewsBackEventsReceiver;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/zte/retrieve/activity/PasswordRelatedActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zte/retrieve/activity/PasswordRelatedActivity;->mReceiver:Lcom/zte/retrieve/activity/PasswordRelatedActivity$SettingViewsBackEventsReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 54
    :cond_0
    return-void
.end method
