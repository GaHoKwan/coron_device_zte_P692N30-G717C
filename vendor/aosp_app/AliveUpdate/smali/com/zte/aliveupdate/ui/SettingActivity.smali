.class public Lcom/zte/aliveupdate/ui/SettingActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SettingActivity.java"

# interfaces
.implements Lcom/zte/update/app/ui/UiObserver;
.implements Landroid/os/Handler$Callback;
.implements Lcom/zte/update/ui/HandleTimerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aliveupdate/ui/SettingActivity$BasePagerAdapter;,
        Lcom/zte/aliveupdate/ui/SettingActivity$CursorAnimationOnPageChangeListener;,
        Lcom/zte/aliveupdate/ui/SettingActivity$TabOnClickListener;
    }
.end annotation


# instance fields
.field protected about:Landroid/view/MenuItem;

.field protected appInfoPage:Lcom/zte/update/ui/page/AppInfoPage;

.field protected handler:Landroid/os/Handler;

.field private isRealod:Z

.field protected mPager:Landroid/support/v4/view/ViewPager;

.field nmPage:Lcom/zte/update/ui/page/NotificationManagerPage;

.field protected pagerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected refresh:Landroid/view/MenuItem;

.field protected tabTitles:[Landroid/view/View;

.field timer:Lcom/zte/update/ui/HandleTimer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/zte/aliveupdate/ui/SettingActivity;->handler:Landroid/os/Handler;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/aliveupdate/ui/SettingActivity;->isRealod:Z

    .line 204
    return-void
.end method

.method private changeUpdateTitle(I)V
    .locals 4
    .parameter "updateNum"

    .prologue
    .line 105
    iget-object v2, p0, Lcom/zte/aliveupdate/ui/SettingActivity;->tabTitles:[Landroid/view/View;

    const/4 v3, 0x0

    aget-object v0, v2, v3

    check-cast v0, Landroid/widget/TextView;

    .line 106
    .local v0, textView:Landroid/widget/TextView;
    const v2, 0x7f060054

    invoke-virtual {p0, v2}, Lcom/zte/aliveupdate/ui/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, up:Ljava/lang/String;
    const-string v2, "0"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    return-void
.end method

.method private handleNewAppChecked()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 324
    iget-object v1, p0, Lcom/zte/aliveupdate/ui/SettingActivity;->refresh:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    .line 325
    iget-object v1, p0, Lcom/zte/aliveupdate/ui/SettingActivity;->refresh:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 327
    :cond_0
    invoke-static {}, Lcom/zte/update/ui/NotificationUtil;->getInstance()Lcom/zte/update/ui/NotificationUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/update/ui/NotificationUtil;->cancelUpdateNotification()V

    .line 328
    const-string v1, "handleNewAppChecked"

    invoke-static {p0, v1}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    iget-object v1, p0, Lcom/zte/aliveupdate/ui/SettingActivity;->appInfoPage:Lcom/zte/update/ui/page/AppInfoPage;

    invoke-virtual {v1}, Lcom/zte/update/ui/page/AppInfoPage;->handleNewAppChecked()I

    move-result v0

    .line 330
    .local v0, newAppNum:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNewAppChecked newAppNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/util/Log;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    invoke-direct {p0, v0}, Lcom/zte/aliveupdate/ui/SettingActivity;->changeUpdateTitle(I)V

    .line 332
    iput-boolean v3, p0, Lcom/zte/aliveupdate/ui/SettingActivity;->isRealod:Z

    .line 334
    return-void
.end method

.method private initSubMenu(Landroid/view/Menu;)V
    .locals 8
    .parameter "menu"

    .prologue
    const/high16 v7, 0x1000

    const/4 v6, 0x1

    .line 350
    invoke-interface {p1, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v4

    .line 352
    .local v4, subMenu:Landroid/view/SubMenu;
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 353
    .local v3, setting:Landroid/view/MenuItem;
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/zte/aliveupdate/ui/AutoCheckSetting;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 354
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 355
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 357
    invoke-interface {v4, v6}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iput-object v5, p0, Lcom/zte/aliveupdate/ui/SettingActivity;->about:Landroid/view/MenuItem;

    .line 359
    const/4 v5, 0x2

    invoke-interface {v4, v5}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 360
    .local v0, feedback:Landroid/view/MenuItem;
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/zte/update/ui/FeedbackActivity;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 361
    .local v2, intent3:Landroid/content/Intent;
    invoke-virtual {v2, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 362
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 363
    return-void
.end method


# virtual methods
.method protected findTabViews()[Landroid/view/View;
    .locals 3

    .prologue
    .line 114
    const/4 v1, 0x2

    new-array v0, v1, [Landroid/view/View;

    .line 115
    .local v0, views:[Landroid/view/View;
    const/4 v1, 0x0

    const v2, 0x7f0a0040

    invoke-virtual {p0, v2}, Lcom/zte/aliveupdate/ui/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    .line 116
    const/4 v1, 0x1

    const v2, 0x7f0a0041

    invoke-virtual {p0, v2}, Lcom/zte/aliveupdate/ui/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    .line 119
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handle msg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zte/util/Log;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    iget v1, p1, Landroid/os/Message;->what:I

    .line 301
    .local v1, tag:I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    .line 303
    .local v0, data:[Ljava/lang/Object;
    packed-switch v1, :pswitch_data_0

    .line 320
    :goto_0
    :pswitch_0
    const/4 v2, 0x1

    return v2

    .line 305
    :pswitch_1
    invoke-direct {p0}, Lcom/zte/aliveupdate/ui/SettingActivity;->handleNewAppChecked()V

    goto :goto_0

    .line 308
    :pswitch_2
    iget-object v2, p0, Lcom/zte/aliveupdate/ui/SettingActivity;->appInfoPage:Lcom/zte/update/ui/page/AppInfoPage;

    invoke-virtual {v2, v0}, Lcom/zte/update/ui/page/AppInfoPage;->handleDownloadStatusRefresh([Ljava/lang/Object;)V

    goto :goto_0

    .line 311
    :pswitch_3
    iget-object v2, p0, Lcom/zte/aliveupdate/ui/SettingActivity;->appInfoPage:Lcom/zte/update/ui/page/AppInfoPage;

    invoke-virtual {v2}, Lcom/zte/update/ui/page/AppInfoPage;->handleNewAppCheckedError()V

    goto :goto_0

    .line 314
    :pswitch_4
    invoke-direct {p0}, Lcom/zte/aliveupdate/ui/SettingActivity;->handleNewAppChecked()V

    goto :goto_0

    .line 303
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method protected initPagerList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    new-instance v1, Lcom/zte/update/ui/page/AppInfoPage;

    invoke-direct {v1, p0}, Lcom/zte/update/ui/page/AppInfoPage;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zte/aliveupdate/ui/SettingActivity;->appInfoPage:Lcom/zte/update/ui/page/AppInfoPage;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v0, listViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v1, Lcom/zte/update/ui/page/NotificationManagerPage;

    invoke-direct {v1, p0}, Lcom/zte/update/ui/page/NotificationManagerPage;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zte/aliveupdate/ui/SettingActivity;->nmPage:Lcom/zte/update/ui/page/NotificationManagerPage;

    .line 98
    iget-object v1, p0, Lcom/zte/aliveupdate/ui/SettingActivity;->appInfoPage:Lcom/zte/update/ui/page/AppInfoPage;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v1, p0, Lcom/zte/aliveupdate/ui/SettingActivity;->nmPage:Lcom/zte/update/ui/page/NotificationManagerPage;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    return-object v0
.end method

.method protected initTabTitle()V
    .locals 4

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/zte/aliveupdate/ui/SettingActivity;->findTabViews()[Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/aliveupdate/ui/SettingActivity;->tabTitles:[Landroid/view/View;

    .line 75
    const-string v1, "BaseFragmentActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tabTitles length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/aliveupdate/ui/SettingActivity;->tabTitles:[Landroid/view/View;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zte/util/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/zte/aliveupdate/ui/SettingActivity;->tabTitles:[Landroid/view/View;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/zte/aliveupdate/ui/SettingActivity;->tabTitles:[Landroid/view/View;

    aget-object v1, v1, v0

    new-instance v2, Lcom/zte/aliveupdate/ui/SettingActivity$TabOnClickListener;

    invoke-direct {v2, p0, v0}, Lcom/zte/aliveupdate/ui/SettingActivity$TabOnClickListener;-><init>(Lcom/zte/aliveupdate/ui/SettingActivity;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_0
    return-void
.end method

.method protected initViewPager()V
    .locals 4

    .prologue
    .line 82
    const v1, 0x7f0a0043

    invoke-virtual {p0, v1}, Lcom/zte/aliveupdate/ui/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/zte/aliveupdate/ui/SettingActivity;->mPager:Landroid/support/v4/view/ViewPager;

    .line 83
    invoke-virtual {p0}, Lcom/zte/aliveupdate/ui/SettingActivity;->initPagerList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/aliveupdate/ui/SettingActivity;->pagerList:Ljava/util/List;

    .line 84
    iget-object v1, p0, Lcom/zte/aliveupdate/ui/SettingActivity;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/zte/aliveupdate/ui/SettingActivity$BasePagerAdapter;

    iget-object v3, p0, Lcom/zte/aliveupdate/ui/SettingActivity;->pagerList:Ljava/util/List;

    invoke-direct {v2, p0, v3}, Lcom/zte/aliveupdate/ui/SettingActivity$BasePagerAdapter;-><init>(Lcom/zte/aliveupdate/ui/SettingActivity;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 85
    iget-object v1, p0, Lcom/zte/aliveupdate/ui/SettingActivity;->mPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 87
    new-instance v0, Lcom/zte/aliveupdate/ui/SettingActivity$CursorAnimationOnPageChangeListener;

    invoke-direct {v0, p0}, Lcom/zte/aliveupdate/ui/SettingActivity$CursorAnimationOnPageChangeListener;-><init>(Lcom/zte/aliveupdate/ui/SettingActivity;)V

    .line 88
    .local v0, listner:Lcom/zte/aliveupdate/ui/SettingActivity$CursorAnimationOnPageChangeListener;
    iget-object v1, p0, Lcom/zte/aliveupdate/ui/SettingActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 89
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/zte/aliveupdate/ui/SettingActivity;->setContentView(I)V

    .line 64
    invoke-virtual {p0}, Lcom/zte/aliveupdate/ui/SettingActivity;->initTabTitle()V

    .line 65
    invoke-virtual {p0}, Lcom/zte/aliveupdate/ui/SettingActivity;->initViewPager()V

    .line 67
    invoke-virtual {p0, v1}, Lcom/zte/aliveupdate/ui/SettingActivity;->onTabTitleChange(I)V

    .line 68
    invoke-direct {p0, v1}, Lcom/zte/aliveupdate/ui/SettingActivity;->changeUpdateTitle(I)V

    .line 70
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/zte/aliveupdate/ui/SettingActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f09

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 341
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/aliveupdate/ui/SettingActivity;->refresh:Landroid/view/MenuItem;

    .line 343
    invoke-direct {p0, p1}, Lcom/zte/aliveupdate/ui/SettingActivity;->initSubMenu(Landroid/view/Menu;)V

    .line 345
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 279
    invoke-static {}, Lcom/zte/update/app/ui/ObserverManager;->getInstance()Lcom/zte/update/app/ui/ObserverManager;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/zte/update/app/ui/ObserverManager;->unRegisterObserver(Ljava/lang/Object;Lcom/zte/update/app/ui/UiObserver;)V

    .line 280
    invoke-static {}, Lcom/zte/update/app/ui/ObserverManager;->getInstance()Lcom/zte/update/app/ui/ObserverManager;

    move-result-object v0

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/zte/update/app/ui/ObserverManager;->unRegisterObserver(Ljava/lang/Object;Lcom/zte/update/app/ui/UiObserver;)V

    .line 281
    invoke-static {}, Lcom/zte/update/app/ui/ObserverManager;->getInstance()Lcom/zte/update/app/ui/ObserverManager;

    move-result-object v0

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/zte/update/app/ui/ObserverManager;->unRegisterObserver(Ljava/lang/Object;Lcom/zte/update/app/ui/UiObserver;)V

    .line 282
    invoke-static {}, Lcom/zte/update/app/ui/ObserverManager;->getInstance()Lcom/zte/update/app/ui/ObserverManager;

    move-result-object v0

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/zte/update/app/ui/ObserverManager;->unRegisterObserver(Ljava/lang/Object;Lcom/zte/update/app/ui/UiObserver;)V

    .line 285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/aliveupdate/ui/SettingActivity;->isRealod:Z

    .line 286
    const-string v0, "onDestroy"

    invoke-static {p0, v0}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 289
    iget-object v0, p0, Lcom/zte/aliveupdate/ui/SettingActivity;->timer:Lcom/zte/update/ui/HandleTimer;

    invoke-virtual {v0}, Lcom/zte/update/ui/HandleTimer;->stop()V

    .line 291
    iget-object v0, p0, Lcom/zte/aliveupdate/ui/SettingActivity;->nmPage:Lcom/zte/update/ui/page/NotificationManagerPage;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/zte/aliveupdate/ui/SettingActivity;->nmPage:Lcom/zte/update/ui/page/NotificationManagerPage;

    invoke-virtual {v0}, Lcom/zte/update/ui/page/NotificationManagerPage;->unregistyInstallReceiver()V

    .line 295
    :cond_0
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 2
    .parameter "featureId"
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 367
    iget-object v1, p0, Lcom/zte/aliveupdate/ui/SettingActivity;->refresh:Landroid/view/MenuItem;

    if-ne v1, p2, :cond_0

    .line 371
    new-instance v1, Lcom/zte/update/ui/pop/CheckActionWithPop;

    invoke-direct {v1, p0}, Lcom/zte/update/ui/pop/CheckActionWithPop;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/zte/update/ui/pop/CheckActionWithPop;->startAction()V

    .line 380
    :goto_0
    return v0

    .line 374
    :cond_0
    iget-object v1, p0, Lcom/zte/aliveupdate/ui/SettingActivity;->about:Landroid/view/MenuItem;

    if-ne v1, p2, :cond_1

    .line 377
    new-instance v1, Lcom/zte/update/ui/pop/AboutPop;

    invoke-direct {v1, p0}, Lcom/zte/update/ui/pop/AboutPop;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/zte/update/ui/pop/AboutPop;->update()V

    goto :goto_0

    .line 380
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 249
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume isRealod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/zte/aliveupdate/ui/SettingActivity;->isRealod:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    invoke-static {}, Lcom/zte/update/app/ui/ObserverManager;->getInstance()Lcom/zte/update/app/ui/ObserverManager;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/zte/update/app/ui/ObserverManager;->registerObserver(Ljava/lang/Object;Lcom/zte/update/app/ui/UiObserver;)V

    .line 253
    invoke-static {}, Lcom/zte/update/app/ui/ObserverManager;->getInstance()Lcom/zte/update/app/ui/ObserverManager;

    move-result-object v0

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/zte/update/app/ui/ObserverManager;->registerObserver(Ljava/lang/Object;Lcom/zte/update/app/ui/UiObserver;)V

    .line 254
    invoke-static {}, Lcom/zte/update/app/ui/ObserverManager;->getInstance()Lcom/zte/update/app/ui/ObserverManager;

    move-result-object v0

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/zte/update/app/ui/ObserverManager;->registerObserver(Ljava/lang/Object;Lcom/zte/update/app/ui/UiObserver;)V

    .line 255
    invoke-static {}, Lcom/zte/update/app/ui/ObserverManager;->getInstance()Lcom/zte/update/app/ui/ObserverManager;

    move-result-object v0

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/zte/update/app/ui/ObserverManager;->registerObserver(Ljava/lang/Object;Lcom/zte/update/app/ui/UiObserver;)V

    .line 257
    invoke-static {}, Lcom/zte/aliveupdate/Configuration;->getConfig()Lcom/zte/aliveupdate/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/aliveupdate/Configuration;->isNeedNewAppRefresh()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/zte/aliveupdate/ui/SettingActivity;->isRealod:Z

    if-nez v0, :cond_0

    .line 258
    const-string v0, "update KEY_NEW_APP_CHECKED"

    invoke-static {p0, v0}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    invoke-direct {p0}, Lcom/zte/aliveupdate/ui/SettingActivity;->handleNewAppChecked()V

    .line 264
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handler timer isStop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aliveupdate/ui/SettingActivity;->timer:Lcom/zte/update/ui/HandleTimer;

    invoke-virtual {v1}, Lcom/zte/update/ui/HandleTimer;->isStop()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 270
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 271
    iget-object v0, p0, Lcom/zte/aliveupdate/ui/SettingActivity;->timer:Lcom/zte/update/ui/HandleTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/aliveupdate/ui/SettingActivity;->timer:Lcom/zte/update/ui/HandleTimer;

    invoke-virtual {v0}, Lcom/zte/update/ui/HandleTimer;->isStop()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    :cond_0
    new-instance v0, Lcom/zte/update/ui/HandleTimer;

    invoke-direct {v0, p0}, Lcom/zte/update/ui/HandleTimer;-><init>(Lcom/zte/update/ui/HandleTimerCallback;)V

    iput-object v0, p0, Lcom/zte/aliveupdate/ui/SettingActivity;->timer:Lcom/zte/update/ui/HandleTimer;

    .line 273
    iget-object v0, p0, Lcom/zte/aliveupdate/ui/SettingActivity;->timer:Lcom/zte/update/ui/HandleTimer;

    invoke-virtual {v0}, Lcom/zte/update/ui/HandleTimer;->start()V

    .line 275
    :cond_1
    return-void
.end method

.method protected onTabTitleChange(I)V
    .locals 6
    .parameter "index"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/zte/aliveupdate/ui/SettingActivity;->tabTitles:[Landroid/view/View;

    .local v0, arr$:[Landroid/view/View;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 124
    .local v4, view:Landroid/view/View;
    check-cast v4, Landroid/widget/TextView;

    .end local v4           #view:Landroid/view/View;
    const/high16 v5, -0x100

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    :cond_0
    iget-object v5, p0, Lcom/zte/aliveupdate/ui/SettingActivity;->tabTitles:[Landroid/view/View;

    aget-object v3, v5, p1

    check-cast v3, Landroid/widget/TextView;

    .line 127
    .local v3, tv:Landroid/widget/TextView;
    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    return-void
.end method

.method public onTimeHandle()V
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/zte/aliveupdate/ui/SettingActivity;->appInfoPage:Lcom/zte/update/ui/page/AppInfoPage;

    invoke-virtual {v0}, Lcom/zte/update/ui/page/AppInfoPage;->handleDownloadStatusRefresh()V

    .line 387
    return-void
.end method

.method public varargs update(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .parameter "tag"
    .parameter "data"

    .prologue
    .line 239
    iget-object v1, p0, Lcom/zte/aliveupdate/ui/SettingActivity;->handler:Landroid/os/Handler;

    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 240
    .local v0, msg:Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 241
    iget-object v1, p0, Lcom/zte/aliveupdate/ui/SettingActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 243
    return-void
.end method
