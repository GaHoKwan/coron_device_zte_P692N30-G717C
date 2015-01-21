.class public Lcom/zte/heartyservice/main/FrontCover;
.super Landroid/app/Activity;
.source "FrontCover.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/main/FrontCover$CoverPagerAdapter;,
        Lcom/zte/heartyservice/main/FrontCover$PageChangeListener;
    }
.end annotation


# static fields
.field public static FRONT_COVER_ACTION:Ljava/lang/String;


# instance fields
.field private SelectedDot:Landroid/widget/ImageView;

.field private dot0:Landroid/widget/ImageView;

.field private dot1:Landroid/widget/ImageView;

.field private dot2:Landroid/widget/ImageView;

.field private isFirstStart:Z

.field private mListener:Landroid/view/View$OnClickListener;

.field private final mPageChangeListener:Lcom/zte/heartyservice/main/FrontCover$PageChangeListener;

.field private mPager:Landroid/support/v4/view/ViewPager;

.field private pagerAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/zte/heartyservice/main/FrontCover$CoverPagerAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "front_cover_action"

    sput-object v0, Lcom/zte/heartyservice/main/FrontCover;->FRONT_COVER_ACTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    new-instance v0, Lcom/zte/heartyservice/main/FrontCover$PageChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zte/heartyservice/main/FrontCover$PageChangeListener;-><init>(Lcom/zte/heartyservice/main/FrontCover;Lcom/zte/heartyservice/main/FrontCover$1;)V

    iput-object v0, p0, Lcom/zte/heartyservice/main/FrontCover;->mPageChangeListener:Lcom/zte/heartyservice/main/FrontCover$PageChangeListener;

    .line 64
    new-instance v0, Lcom/zte/heartyservice/main/FrontCover$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/main/FrontCover$1;-><init>(Lcom/zte/heartyservice/main/FrontCover;)V

    iput-object v0, p0, Lcom/zte/heartyservice/main/FrontCover;->mListener:Landroid/view/View$OnClickListener;

    .line 177
    return-void
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/main/FrontCover;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/zte/heartyservice/main/FrontCover;->mListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/main/FrontCover;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/zte/heartyservice/main/FrontCover;->isFirstStart:Z

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Lcom/zte/heartyservice/main/FrontCover;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 86
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isFirstStart()Z

    move-result v0

    iput-boolean v0, p0, Lcom/zte/heartyservice/main/FrontCover;->isFirstStart:Z

    .line 87
    const v0, 0x7f030052

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/FrontCover;->setContentView(I)V

    .line 95
    const v0, 0x7f0e00fe

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/FrontCover;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/zte/heartyservice/main/FrontCover;->mPager:Landroid/support/v4/view/ViewPager;

    .line 97
    new-instance v0, Ljava/lang/ref/WeakReference;

    new-instance v1, Lcom/zte/heartyservice/main/FrontCover$CoverPagerAdapter;

    iget-object v2, p0, Lcom/zte/heartyservice/main/FrontCover;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {v1, p0, v2}, Lcom/zte/heartyservice/main/FrontCover$CoverPagerAdapter;-><init>(Lcom/zte/heartyservice/main/FrontCover;Landroid/support/v4/view/ViewPager;)V

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/zte/heartyservice/main/FrontCover;->pagerAdapter:Ljava/lang/ref/WeakReference;

    .line 99
    iget-object v1, p0, Lcom/zte/heartyservice/main/FrontCover;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/zte/heartyservice/main/FrontCover;->pagerAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 101
    iget-object v0, p0, Lcom/zte/heartyservice/main/FrontCover;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/zte/heartyservice/main/FrontCover;->mPageChangeListener:Lcom/zte/heartyservice/main/FrontCover$PageChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 105
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 154
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 155
    invoke-static {p0}, Lcom/zte/heartyservice/common/utils/AutoRunSwitch;->stopHeartyService(Landroid/content/Context;)V

    .line 158
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method startHeartyService()V
    .locals 4

    .prologue
    .line 128
    iget-boolean v1, p0, Lcom/zte/heartyservice/main/FrontCover;->isFirstStart:Z

    if-eqz v1, :cond_0

    .line 129
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setFirstStart()V

    .line 131
    :cond_0
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isSecurityTestVersion()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    invoke-virtual {p0}, Lcom/zte/heartyservice/main/FrontCover;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/heartyservice/net/NetManagermentUtils;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetManagermentUtils;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/zte/heartyservice/net/NetManagermentUtils;->setAppIpRule(IZ)V

    .line 135
    :cond_1
    const-string v1, "user_enter"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/zte/heartyservice/common/utils/SettingUtils;->putBooleanSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 136
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getCurrentVirusDBEngine()Lcom/zte/heartyservice/porting/All/VirusDBEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/heartyservice/porting/All/VirusDBEngine;->initIntercept()V

    .line 144
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 147
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/FrontCover;->startActivity(Landroid/content/Intent;)V

    .line 148
    invoke-virtual {p0}, Lcom/zte/heartyservice/main/FrontCover;->finish()V

    .line 149
    const v1, 0x7f04000b

    const v2, 0x7f04000c

    invoke-virtual {p0, v1, v2}, Lcom/zte/heartyservice/main/FrontCover;->overridePendingTransition(II)V

    .line 150
    return-void
.end method
