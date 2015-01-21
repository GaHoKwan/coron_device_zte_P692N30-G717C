.class public Lcom/hf/UI/WeatherGroupActivity;
.super Landroid/app/Activity;
.source "WeatherGroupActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hf/UI/WeatherGroupActivity$SKPagerAdapter;
    }
.end annotation


# static fields
.field private static final HANDLER_ADD_CITY:I = 0x64

.field private static final HANDLER_CHANGE_SHOW_CITY:I = 0x67

.field private static final HANDLER_DELETE_CITY:I = 0x65

.field private static final HANDLER_MOTIFY_CITY_NAME:I = 0x69

.field private static final HANDLER_MOTIFY_DEFAULT_CITY:I = 0x6b

.field private static final HANDLER_MOTIFY_TEMPERATURE_TYPE:I = 0x6c

.field private static final HANDLER_QUERY_WEATHER_FAILED:I = 0x6e

.field private static final HANDLER_RELOAD:I = 0x6f

.field private static final HANDLER_SK_UPDATE_FINISHED:I = 0x6d

.field private static final HANDLER_UPDATE_ALL_WEATHER:I = 0x66

.field private static final HANDLER_UPDATE_CITY:I = 0x6a

.field private static final HANDLER_UPDATE_CITY_WEATHER:I = 0x68

.field private static final TAG:Ljava/lang/String; = "WeatherGroupActivity"

.field public static sIndex:I


# instance fields
.field private mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mCFLayout:Landroid/widget/LinearLayout;

.field private mFilpper:Landroid/widget/ViewFlipper;

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLineLayout:Landroid/widget/LinearLayout;

.field private mLineView:Lcom/hf/UI/LineView;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSKAdapter:Lcom/hf/UI/WeatherGroupActivity$SKPagerAdapter;

.field private mSKViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hf/UI/SKView;",
            ">;"
        }
    .end annotation
.end field

.field private mSKViewPager:Lcom/hf/UI/HFViewPager;

.field private mSelectIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput v0, Lcom/hf/UI/WeatherGroupActivity;->sIndex:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/hf/UI/WeatherGroupActivity;->mSelectIndex:I

    .line 63
    new-instance v0, Lcom/hf/UI/WeatherGroupActivity$1;

    invoke-direct {v0, p0}, Lcom/hf/UI/WeatherGroupActivity$1;-><init>(Lcom/hf/UI/WeatherGroupActivity;)V

    iput-object v0, p0, Lcom/hf/UI/WeatherGroupActivity;->mHandler:Landroid/os/Handler;

    .line 179
    new-instance v0, Lcom/hf/UI/WeatherGroupActivity$2;

    invoke-direct {v0, p0}, Lcom/hf/UI/WeatherGroupActivity$2;-><init>(Lcom/hf/UI/WeatherGroupActivity;)V

    iput-object v0, p0, Lcom/hf/UI/WeatherGroupActivity;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 38
    return-void
.end method

.method static synthetic access$0(Lcom/hf/UI/WeatherGroupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 514
    invoke-direct {p0}, Lcom/hf/UI/WeatherGroupActivity;->loadCFViews()V

    return-void
.end method

.method static synthetic access$1(Lcom/hf/UI/WeatherGroupActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 447
    invoke-direct {p0, p1}, Lcom/hf/UI/WeatherGroupActivity;->addSKView(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10(Lcom/hf/UI/WeatherGroupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/hf/UI/WeatherGroupActivity;->initViews()V

    return-void
.end method

.method static synthetic access$11(Lcom/hf/UI/WeatherGroupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 650
    invoke-direct {p0}, Lcom/hf/UI/WeatherGroupActivity;->changeTemperatureType()V

    return-void
.end method

.method static synthetic access$12(Lcom/hf/UI/WeatherGroupActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 592
    invoke-direct {p0, p1}, Lcom/hf/UI/WeatherGroupActivity;->updateViews(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$13(Lcom/hf/UI/WeatherGroupActivity;)Landroid/widget/ViewFlipper;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/hf/UI/WeatherGroupActivity;->mFilpper:Landroid/widget/ViewFlipper;

    return-object v0
.end method

.method static synthetic access$14(Lcom/hf/UI/WeatherGroupActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/hf/UI/WeatherGroupActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/hf/UI/WeatherGroupActivity;Ljava/lang/String;)Lcom/hf/UI/SKView;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 491
    invoke-direct {p0, p1}, Lcom/hf/UI/WeatherGroupActivity;->getSKView(Ljava/lang/String;)Lcom/hf/UI/SKView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/hf/UI/WeatherGroupActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/hf/UI/WeatherGroupActivity;->mSKViewList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4(Lcom/hf/UI/WeatherGroupActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput p1, p0, Lcom/hf/UI/WeatherGroupActivity;->mSelectIndex:I

    return-void
.end method

.method static synthetic access$5(Lcom/hf/UI/WeatherGroupActivity;)Lcom/hf/UI/HFViewPager;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/hf/UI/WeatherGroupActivity;->mSKViewPager:Lcom/hf/UI/HFViewPager;

    return-object v0
.end method

.method static synthetic access$6(Lcom/hf/UI/WeatherGroupActivity;)Lcom/hf/UI/WeatherGroupActivity$SKPagerAdapter;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/hf/UI/WeatherGroupActivity;->mSKAdapter:Lcom/hf/UI/WeatherGroupActivity$SKPagerAdapter;

    return-object v0
.end method

.method static synthetic access$7(Lcom/hf/UI/WeatherGroupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 573
    invoke-direct {p0}, Lcom/hf/UI/WeatherGroupActivity;->updateViews()V

    return-void
.end method

.method static synthetic access$8(Lcom/hf/UI/WeatherGroupActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 625
    invoke-direct {p0, p1}, Lcom/hf/UI/WeatherGroupActivity;->setShowView(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9(Lcom/hf/UI/WeatherGroupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 846
    invoke-direct {p0}, Lcom/hf/UI/WeatherGroupActivity;->updateWeather()V

    return-void
.end method

.method private addSKView(Lcom/hf/model/CityModel;)V
    .locals 4
    .parameter "city"

    .prologue
    .line 405
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/hf/UI/WeatherGroupActivity;->mSKViewList:Ljava/util/List;

    if-nez v1, :cond_1

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    iget-object v1, p1, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/hf/UI/WeatherGroupActivity;->hasSkView(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 413
    iget-object v1, p0, Lcom/hf/UI/WeatherGroupActivity;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030032

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hf/UI/SKView;

    .line 414
    .local v0, view:Lcom/hf/UI/SKView;
    invoke-virtual {v0, p1}, Lcom/hf/UI/SKView;->onBindView(Lcom/hf/model/CityModel;)V

    .line 415
    iget-object v1, p1, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hf/UI/SKView;->setTag(Ljava/lang/Object;)V

    .line 416
    invoke-virtual {v0, p0}, Lcom/hf/UI/SKView;->setActivity(Lcom/hf/UI/WeatherGroupActivity;)V

    .line 417
    iget-object v1, p0, Lcom/hf/UI/WeatherGroupActivity;->mSKViewList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addSKView(Lcom/hf/model/CityModel;I)V
    .locals 4
    .parameter "city"
    .parameter "index"

    .prologue
    .line 428
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/hf/UI/WeatherGroupActivity;->mSKViewList:Ljava/util/List;

    if-nez v1, :cond_1

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    iget-object v1, p1, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/hf/UI/WeatherGroupActivity;->hasSkView(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 436
    iget-object v1, p0, Lcom/hf/UI/WeatherGroupActivity;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030032

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hf/UI/SKView;

    .line 437
    .local v0, view:Lcom/hf/UI/SKView;
    invoke-virtual {v0, p1}, Lcom/hf/UI/SKView;->onBindView(Lcom/hf/model/CityModel;)V

    .line 438
    iget-object v1, p1, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hf/UI/SKView;->setTag(Ljava/lang/Object;)V

    .line 439
    invoke-virtual {v0, p0}, Lcom/hf/UI/SKView;->setActivity(Lcom/hf/UI/WeatherGroupActivity;)V

    .line 440
    iget-object v1, p0, Lcom/hf/UI/WeatherGroupActivity;->mSKViewList:Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private addSKView(Ljava/lang/String;)V
    .locals 5
    .parameter "cityID"

    .prologue
    .line 449
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    invoke-virtual {p0}, Lcom/hf/UI/WeatherGroupActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/hf/HFWeatherApp;

    invoke-virtual {v2, p1}, Lcom/hf/HFWeatherApp;->getCityByCtiyId(Ljava/lang/String;)Lcom/hf/model/CityModel;

    move-result-object v0

    .line 454
    .local v0, city:Lcom/hf/model/CityModel;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/hf/UI/WeatherGroupActivity;->mSKViewList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 458
    invoke-direct {p0, p1}, Lcom/hf/UI/WeatherGroupActivity;->hasSkView(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 462
    iget-object v2, p0, Lcom/hf/UI/WeatherGroupActivity;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030032

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/hf/UI/SKView;

    .line 463
    .local v1, view:Lcom/hf/UI/SKView;
    invoke-virtual {v1, v0}, Lcom/hf/UI/SKView;->onBindView(Lcom/hf/model/CityModel;)V

    .line 464
    iget-object v2, v0, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/hf/UI/SKView;->setTag(Ljava/lang/Object;)V

    .line 465
    invoke-virtual {v1, p0}, Lcom/hf/UI/SKView;->setActivity(Lcom/hf/UI/WeatherGroupActivity;)V

    .line 466
    iget-object v2, p0, Lcom/hf/UI/WeatherGroupActivity;->mSKViewList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private changeTemperatureType()V
    .locals 6

    .prologue
    .line 651
    iget-object v5, p0, Lcom/hf/UI/WeatherGroupActivity;->mSKViewList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 652
    .local v4, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v4, :cond_1

    .line 658
    iget-object v5, p0, Lcom/hf/UI/WeatherGroupActivity;->mCFLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    .line 659
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v4, :cond_3

    .line 665
    const/4 v0, 0x0

    .line 666
    .local v0, city:Lcom/hf/model/CityModel;
    sget v5, Lcom/hf/UI/WeatherGroupActivity;->sIndex:I

    if-gtz v5, :cond_5

    .line 667
    sget-object v0, Lcom/hf/HFWeatherApp;->mDefaultCity:Lcom/hf/model/CityModel;

    .line 680
    :goto_2
    if-eqz v0, :cond_0

    .line 681
    iget-object v5, p0, Lcom/hf/UI/WeatherGroupActivity;->mLineView:Lcom/hf/UI/LineView;

    invoke-virtual {v5, v0}, Lcom/hf/UI/LineView;->drawLine(Lcom/hf/model/CityModel;)V

    .line 683
    :cond_0
    return-void

    .line 653
    .end local v0           #city:Lcom/hf/model/CityModel;
    :cond_1
    iget-object v5, p0, Lcom/hf/UI/WeatherGroupActivity;->mSKViewList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hf/UI/SKView;

    .line 654
    .local v3, item:Lcom/hf/UI/SKView;
    if-eqz v3, :cond_2

    .line 655
    invoke-virtual {v3}, Lcom/hf/UI/SKView;->setTemperature()V

    .line 652
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 660
    .end local v3           #item:Lcom/hf/UI/SKView;
    :cond_3
    iget-object v5, p0, Lcom/hf/UI/WeatherGroupActivity;->mCFLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 661
    .local v3, item:Landroid/view/View;
    if-eqz v3, :cond_4

    instance-of v5, v3, Lcom/hf/UI/CFView;

    if-eqz v5, :cond_4

    .line 662
    check-cast v3, Lcom/hf/UI/CFView;

    .end local v3           #item:Landroid/view/View;
    invoke-virtual {v3}, Lcom/hf/UI/CFView;->setTemperature()V

    .line 659
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 670
    .restart local v0       #city:Lcom/hf/model/CityModel;
    :cond_5
    sget-object v5, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    invoke-virtual {v5}, Lcom/hf/UI/CityList;->size()I

    move-result v4

    .line 671
    sget v2, Lcom/hf/UI/WeatherGroupActivity;->sIndex:I

    .line 672
    .local v2, index:I
    sget v5, Lcom/hf/UI/WeatherGroupActivity;->sIndex:I

    if-lt v5, v4, :cond_6

    .line 673
    add-int/lit8 v2, v4, -0x1

    .line 676
    :cond_6
    sget-object v5, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    invoke-virtual {v5, v2}, Lcom/hf/UI/CityList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #city:Lcom/hf/model/CityModel;
    check-cast v0, Lcom/hf/model/CityModel;

    .restart local v0       #city:Lcom/hf/model/CityModel;
    goto :goto_2
.end method

.method private getSKView(Ljava/lang/String;)Lcom/hf/UI/SKView;
    .locals 6
    .parameter "tag"

    .prologue
    .line 493
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 494
    const/4 v4, 0x0

    .line 507
    :cond_0
    :goto_0
    return-object v4

    .line 497
    :cond_1
    iget-object v5, p0, Lcom/hf/UI/WeatherGroupActivity;->mSKViewList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .line 498
    .local v3, len:I
    const/4 v4, 0x0

    .line 499
    .local v4, view:Lcom/hf/UI/SKView;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_0

    .line 500
    iget-object v5, p0, Lcom/hf/UI/WeatherGroupActivity;->mSKViewList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hf/UI/SKView;

    .line 501
    .local v1, item:Lcom/hf/UI/SKView;
    invoke-virtual {v1}, Lcom/hf/UI/SKView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 502
    .local v2, itemTag:Ljava/lang/String;
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 503
    move-object v4, v1

    .line 504
    goto :goto_0

    .line 499
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private hasSkView(Ljava/lang/String;)Z
    .locals 6
    .parameter "cityId"

    .prologue
    const/4 v4, 0x1

    .line 470
    iget-object v5, p0, Lcom/hf/UI/WeatherGroupActivity;->mSKViewList:Ljava/util/List;

    if-nez v5, :cond_1

    .line 484
    :cond_0
    :goto_0
    return v4

    .line 473
    :cond_1
    iget-object v5, p0, Lcom/hf/UI/WeatherGroupActivity;->mSKViewList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 475
    .local v2, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, v2, :cond_2

    .line 484
    const/4 v4, 0x0

    goto :goto_0

    .line 476
    :cond_2
    iget-object v5, p0, Lcom/hf/UI/WeatherGroupActivity;->mSKViewList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hf/UI/SKView;

    .line 477
    .local v1, item:Lcom/hf/UI/SKView;
    invoke-virtual {v1}, Lcom/hf/UI/SKView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 478
    .local v3, tag:Ljava/lang/String;
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 475
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private initViews()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 366
    iget-object v2, p0, Lcom/hf/UI/WeatherGroupActivity;->mSKViewList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 368
    sget-object v2, Lcom/hf/HFWeatherApp;->mDefaultCity:Lcom/hf/model/CityModel;

    if-eqz v2, :cond_0

    .line 369
    sget-object v2, Lcom/hf/HFWeatherApp;->mDefaultCity:Lcom/hf/model/CityModel;

    invoke-direct {p0, v2, v4}, Lcom/hf/UI/WeatherGroupActivity;->addSKView(Lcom/hf/model/CityModel;I)V

    .line 370
    invoke-direct {p0}, Lcom/hf/UI/WeatherGroupActivity;->loadCFViews()V

    .line 371
    iget v2, p0, Lcom/hf/UI/WeatherGroupActivity;->mSelectIndex:I

    if-ne v2, v5, :cond_0

    .line 372
    sput v4, Lcom/hf/UI/WeatherGroupActivity;->sIndex:I

    iput v4, p0, Lcom/hf/UI/WeatherGroupActivity;->mSelectIndex:I

    .line 376
    :cond_0
    sget-object v2, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    if-nez v2, :cond_1

    .line 377
    new-instance v2, Lcom/hf/UI/CityList;

    invoke-direct {v2}, Lcom/hf/UI/CityList;-><init>()V

    sput-object v2, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    .line 379
    :cond_1
    sget-object v2, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    invoke-virtual {v2}, Lcom/hf/UI/CityList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 397
    :cond_2
    return-void

    .line 382
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 383
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/hf/model/CityModel;>;"
    sget-object v2, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 384
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hf/model/CityModel;

    .line 385
    .local v0, city:Lcom/hf/model/CityModel;
    if-eqz v0, :cond_4

    .line 388
    invoke-direct {p0, v0}, Lcom/hf/UI/WeatherGroupActivity;->addSKView(Lcom/hf/model/CityModel;)V

    .line 390
    iget v3, p0, Lcom/hf/UI/WeatherGroupActivity;->mSelectIndex:I

    if-ne v3, v5, :cond_4

    .line 391
    sput v4, Lcom/hf/UI/WeatherGroupActivity;->sIndex:I

    iput v4, p0, Lcom/hf/UI/WeatherGroupActivity;->mSelectIndex:I

    .line 392
    invoke-direct {p0}, Lcom/hf/UI/WeatherGroupActivity;->loadCFViews()V

    goto :goto_0
.end method

.method private loadCFViews()V
    .locals 15

    .prologue
    const/4 v14, 0x5

    const/4 v13, -0x1

    const/4 v12, 0x0

    .line 515
    iget-object v9, p0, Lcom/hf/UI/WeatherGroupActivity;->mSKViewList:Ljava/util/List;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/hf/UI/WeatherGroupActivity;->mSKViewList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    iget-object v9, p0, Lcom/hf/UI/WeatherGroupActivity;->mSKViewList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    .line 519
    .local v2, len:I
    sget v9, Lcom/hf/UI/WeatherGroupActivity;->sIndex:I

    if-lt v9, v2, :cond_5

    .line 520
    add-int/lit8 v9, v2, -0x1

    sput v9, Lcom/hf/UI/WeatherGroupActivity;->sIndex:I

    .line 525
    :cond_2
    :goto_1
    iget-object v9, p0, Lcom/hf/UI/WeatherGroupActivity;->mSKViewList:Ljava/util/List;

    sget v10, Lcom/hf/UI/WeatherGroupActivity;->sIndex:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/hf/UI/SKView;

    invoke-virtual {v9}, Lcom/hf/UI/SKView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 527
    .local v5, tag:Ljava/lang/String;
    sget-boolean v9, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v9, :cond_3

    .line 528
    const-string v9, "loadCFViews"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "tag = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :cond_3
    invoke-virtual {p0}, Lcom/hf/UI/WeatherGroupActivity;->getApplication()Landroid/app/Application;

    move-result-object v9

    check-cast v9, Lcom/hf/HFWeatherApp;

    invoke-virtual {v9, v5}, Lcom/hf/HFWeatherApp;->getCityByCtiyId(Ljava/lang/String;)Lcom/hf/model/CityModel;

    move-result-object v0

    .line 532
    .local v0, city:Lcom/hf/model/CityModel;
    if-eqz v0, :cond_0

    .line 535
    sget-object v9, Lcom/hf/HFWeatherApp;->mWeathersMap:Ljava/util/Map;

    if-eqz v9, :cond_0

    sget-object v9, Lcom/hf/HFWeatherApp;->mWeathersMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 538
    sget-object v9, Lcom/hf/HFWeatherApp;->mWeathersMap:Ljava/util/Map;

    iget-object v10, v0, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/hf/model/WeatherModel;

    .line 539
    .local v8, weatherModel:Lcom/hf/model/WeatherModel;
    if-eqz v8, :cond_0

    iget-object v9, v8, Lcom/hf/model/WeatherModel;->weatherList:Ljava/util/List;

    if-eqz v9, :cond_0

    iget-object v9, v8, Lcom/hf/model/WeatherModel;->weatherList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 543
    iget-object v9, v8, Lcom/hf/model/WeatherModel;->weatherList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    .line 545
    sget-boolean v9, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v9, :cond_4

    .line 546
    const-string v9, "WeatherGroupActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "cf.weatrhers len = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_4
    iget-object v9, p0, Lcom/hf/UI/WeatherGroupActivity;->mCFLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 549
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-lt v1, v2, :cond_6

    .line 566
    iget-object v9, p0, Lcom/hf/UI/WeatherGroupActivity;->mLineView:Lcom/hf/UI/LineView;

    invoke-virtual {v9, v0}, Lcom/hf/UI/LineView;->drawLine(Lcom/hf/model/CityModel;)V

    goto/16 :goto_0

    .line 521
    .end local v0           #city:Lcom/hf/model/CityModel;
    .end local v1           #i:I
    .end local v5           #tag:Ljava/lang/String;
    .end local v8           #weatherModel:Lcom/hf/model/WeatherModel;
    :cond_5
    sget v9, Lcom/hf/UI/WeatherGroupActivity;->sIndex:I

    if-gez v9, :cond_2

    .line 522
    sput v12, Lcom/hf/UI/WeatherGroupActivity;->sIndex:I

    goto/16 :goto_1

    .line 550
    .restart local v0       #city:Lcom/hf/model/CityModel;
    .restart local v1       #i:I
    .restart local v5       #tag:Ljava/lang/String;
    .restart local v8       #weatherModel:Lcom/hf/model/WeatherModel;
    :cond_6
    iget-object v9, v8, Lcom/hf/model/WeatherModel;->weatherList:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/hf/model/CFWeather;

    .line 551
    .local v7, weather:Lcom/hf/model/CFWeather;
    if-nez v7, :cond_7

    .line 549
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 554
    :cond_7
    iget-object v9, p0, Lcom/hf/UI/WeatherGroupActivity;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f030020

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/hf/UI/CFView;

    .line 555
    .local v6, view:Lcom/hf/UI/CFView;
    invoke-virtual {v6, v7}, Lcom/hf/UI/CFView;->onBindView(Lcom/hf/model/CFWeather;)V

    .line 556
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/hf/UI/WeatherGroupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a007c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-direct {v4, v9, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 557
    .local v4, params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v4, v14, v12, v14, v12}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 558
    invoke-virtual {v6, v4}, Lcom/hf/UI/CFView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 559
    iget-object v9, p0, Lcom/hf/UI/WeatherGroupActivity;->mCFLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 560
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 561
    .local v3, line:Landroid/view/View;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .end local v4           #params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v9, 0x1

    invoke-direct {v4, v9, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 562
    .restart local v4       #params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 563
    const v9, 0x7f020103

    invoke-virtual {v3, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 564
    iget-object v9, p0, Lcom/hf/UI/WeatherGroupActivity;->mCFLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3
.end method

.method private registBroadCast()V
    .locals 2

    .prologue
    .line 273
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 274
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.hf.ADD_CITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    const-string v1, "com.hf.DELETE_CITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 276
    const-string v1, "com.hf.UPDATE_CITY_WEATHER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 277
    const-string v1, "com.hf.UPDATE_ALL_WEATHER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 278
    const-string v1, "com.hf.UPDATE_WEATHER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 279
    const-string v1, "com.hf.CHANGE_CURRENT_CITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 280
    const-string v1, "com.hf.MODIFY_CITY_NAME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 281
    const-string v1, "com.hf.CHANGE_DEFAULT_CITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 282
    const-string v1, "com.hf.CHANGE_TEMPERATURE_TYPE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 283
    const-string v1, "com.hf.QUERY_WEATHER_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 284
    const-string v1, "com.hf.RELOAD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 285
    new-instance v1, Lcom/hf/UI/WeatherGroupActivity$3;

    invoke-direct {v1, p0}, Lcom/hf/UI/WeatherGroupActivity$3;-><init>(Lcom/hf/UI/WeatherGroupActivity;)V

    iput-object v1, p0, Lcom/hf/UI/WeatherGroupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 350
    iget-object v1, p0, Lcom/hf/UI/WeatherGroupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/hf/UI/WeatherGroupActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 351
    return-void
.end method

.method private setShowView(Ljava/lang/String;)V
    .locals 5
    .parameter "cityID"

    .prologue
    .line 626
    invoke-direct {p0, p1}, Lcom/hf/UI/WeatherGroupActivity;->getSKView(Ljava/lang/String;)Lcom/hf/UI/SKView;

    move-result-object v1

    .line 628
    .local v1, view:Lcom/hf/UI/SKView;
    if-nez v1, :cond_1

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 632
    :cond_1
    iget-object v2, p0, Lcom/hf/UI/WeatherGroupActivity;->mSKViewList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 634
    .local v0, index:I
    sget-boolean v2, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v2, :cond_2

    .line 635
    const-string v2, "WeatherGroupActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setShowView index = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; sIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/hf/UI/WeatherGroupActivity;->sIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :cond_2
    sget v2, Lcom/hf/UI/WeatherGroupActivity;->sIndex:I

    if-eq v2, v0, :cond_0

    .line 641
    iput v0, p0, Lcom/hf/UI/WeatherGroupActivity;->mSelectIndex:I

    sput v0, Lcom/hf/UI/WeatherGroupActivity;->sIndex:I

    .line 642
    iget-object v2, p0, Lcom/hf/UI/WeatherGroupActivity;->mSKViewPager:Lcom/hf/UI/HFViewPager;

    sget v3, Lcom/hf/UI/WeatherGroupActivity;->sIndex:I

    invoke-virtual {v2, v3}, Lcom/hf/UI/HFViewPager;->setCurrentItem(I)V

    .line 643
    invoke-direct {p0}, Lcom/hf/UI/WeatherGroupActivity;->loadCFViews()V

    goto :goto_0
.end method

.method private updateViews()V
    .locals 5

    .prologue
    .line 574
    iget-object v2, p0, Lcom/hf/UI/WeatherGroupActivity;->mSKViewList:Ljava/util/List;

    if-nez v2, :cond_1

    .line 586
    :cond_0
    return-void

    .line 577
    :cond_1
    invoke-direct {p0}, Lcom/hf/UI/WeatherGroupActivity;->loadCFViews()V

    .line 578
    iget-object v2, p0, Lcom/hf/UI/WeatherGroupActivity;->mSKViewList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hf/UI/SKView;

    .line 579
    .local v1, view:Lcom/hf/UI/SKView;
    invoke-virtual {p0}, Lcom/hf/UI/WeatherGroupActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/hf/HFWeatherApp;

    invoke-virtual {v1}, Lcom/hf/UI/SKView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/hf/HFWeatherApp;->getCityByCtiyId(Ljava/lang/String;)Lcom/hf/model/CityModel;

    move-result-object v0

    .line 580
    .local v0, city:Lcom/hf/model/CityModel;
    if-eqz v0, :cond_2

    .line 583
    invoke-virtual {v1, v0}, Lcom/hf/UI/SKView;->onBindView(Lcom/hf/model/CityModel;)V

    goto :goto_0
.end method

.method private updateViews(Ljava/lang/String;)V
    .locals 5
    .parameter "cityID"

    .prologue
    .line 594
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 619
    :cond_0
    :goto_0
    return-void

    .line 598
    :cond_1
    iget-object v3, p0, Lcom/hf/UI/WeatherGroupActivity;->mSKViewList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 599
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, v1, :cond_3

    .line 606
    :goto_2
    if-lez v1, :cond_0

    .line 608
    sget v3, Lcom/hf/UI/WeatherGroupActivity;->sIndex:I

    if-le v3, v1, :cond_5

    .line 609
    add-int/lit8 v3, v1, -0x1

    sput v3, Lcom/hf/UI/WeatherGroupActivity;->sIndex:I

    .line 614
    :cond_2
    :goto_3
    iget-object v3, p0, Lcom/hf/UI/WeatherGroupActivity;->mSKViewList:Ljava/util/List;

    sget v4, Lcom/hf/UI/WeatherGroupActivity;->sIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hf/UI/SKView;

    invoke-virtual {v3}, Lcom/hf/UI/SKView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 615
    invoke-direct {p0}, Lcom/hf/UI/WeatherGroupActivity;->loadCFViews()V

    goto :goto_0

    .line 600
    :cond_3
    iget-object v3, p0, Lcom/hf/UI/WeatherGroupActivity;->mSKViewList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hf/UI/SKView;

    .line 601
    .local v2, view:Lcom/hf/UI/SKView;
    invoke-virtual {v2}, Lcom/hf/UI/SKView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 602
    invoke-virtual {p0}, Lcom/hf/UI/WeatherGroupActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/hf/HFWeatherApp;

    invoke-virtual {v3, p1}, Lcom/hf/HFWeatherApp;->getCityByCtiyId(Ljava/lang/String;)Lcom/hf/model/CityModel;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hf/UI/SKView;->onBindView(Lcom/hf/model/CityModel;)V

    goto :goto_2

    .line 599
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 610
    .end local v2           #view:Lcom/hf/UI/SKView;
    :cond_5
    sget v3, Lcom/hf/UI/WeatherGroupActivity;->sIndex:I

    if-gez v3, :cond_2

    .line 611
    const/4 v3, 0x0

    sput v3, Lcom/hf/UI/WeatherGroupActivity;->sIndex:I

    goto :goto_3
.end method

.method private updateWeather()V
    .locals 5

    .prologue
    .line 848
    iget-object v3, p0, Lcom/hf/UI/WeatherGroupActivity;->mSKViewList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 869
    :cond_0
    :goto_0
    return-void

    .line 851
    :cond_1
    iget-object v3, p0, Lcom/hf/UI/WeatherGroupActivity;->mSKViewList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 852
    .local v1, len:I
    sget v0, Lcom/hf/UI/WeatherGroupActivity;->sIndex:I

    .line 853
    .local v0, index:I
    if-gez v0, :cond_4

    .line 854
    const/4 v0, 0x0

    .line 859
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/hf/UI/WeatherGroupActivity;->mSKViewList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hf/UI/SKView;

    .line 860
    .local v2, skView:Lcom/hf/UI/SKView;
    iget-boolean v3, v2, Lcom/hf/UI/SKView;->isQuering:Z

    if-nez v3, :cond_0

    .line 864
    sget-boolean v3, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v3, :cond_3

    .line 865
    const-string v3, "updateWeather"

    const-string v4, "updateWeather"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    :cond_3
    invoke-virtual {v2}, Lcom/hf/UI/SKView;->startQuery()V

    goto :goto_0

    .line 855
    .end local v2           #skView:Lcom/hf/UI/SKView;
    :cond_4
    if-lt v0, v1, :cond_2

    .line 856
    add-int/lit8 v0, v1, -0x1

    goto :goto_1
.end method


# virtual methods
.method changeCF()V
    .locals 1

    .prologue
    .line 872
    iget-object v0, p0, Lcom/hf/UI/WeatherGroupActivity;->mFilpper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 874
    return-void
.end method

.method getCFLayoutID()I
    .locals 1

    .prologue
    .line 881
    iget-object v0, p0, Lcom/hf/UI/WeatherGroupActivity;->mFilpper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 210
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 211
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$Umeng;->onError(Landroid/content/Context;)V

    .line 212
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$BaiDu;->onError(Landroid/content/Context;)V

    .line 213
    const/4 v1, 0x0

    sput v1, Lcom/hf/UI/WeatherGroupActivity;->sIndex:I

    .line 214
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/hf/UI/WeatherGroupActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 215
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/hf/UI/WeatherGroupActivity;->mSKViewList:Ljava/util/List;

    .line 216
    const v1, 0x7f030030

    invoke-virtual {p0, v1}, Lcom/hf/UI/WeatherGroupActivity;->setContentView(I)V

    .line 217
    const v1, 0x7f0b00d1

    invoke-virtual {p0, v1}, Lcom/hf/UI/WeatherGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/hf/UI/HFViewPager;

    iput-object v1, p0, Lcom/hf/UI/WeatherGroupActivity;->mSKViewPager:Lcom/hf/UI/HFViewPager;

    .line 218
    const v1, 0x7f0b00d4

    invoke-virtual {p0, v1}, Lcom/hf/UI/WeatherGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/hf/UI/WeatherGroupActivity;->mCFLayout:Landroid/widget/LinearLayout;

    .line 219
    const v1, 0x7f0b00d2

    invoke-virtual {p0, v1}, Lcom/hf/UI/WeatherGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewFlipper;

    iput-object v1, p0, Lcom/hf/UI/WeatherGroupActivity;->mFilpper:Landroid/widget/ViewFlipper;

    .line 220
    const/high16 v1, 0x7f04

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 221
    .local v0, inAnim:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/hf/UI/WeatherGroupActivity;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 222
    iget-object v1, p0, Lcom/hf/UI/WeatherGroupActivity;->mFilpper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v0}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 223
    iget-object v1, p0, Lcom/hf/UI/WeatherGroupActivity;->mFilpper:Landroid/widget/ViewFlipper;

    .line 224
    const v2, 0x7f040001

    .line 223
    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 226
    const v1, 0x7f0b00d6

    invoke-virtual {p0, v1}, Lcom/hf/UI/WeatherGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/hf/UI/WeatherGroupActivity;->mLineLayout:Landroid/widget/LinearLayout;

    .line 227
    new-instance v1, Lcom/hf/UI/LineView;

    invoke-direct {v1, p0}, Lcom/hf/UI/LineView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/hf/UI/WeatherGroupActivity;->mLineView:Lcom/hf/UI/LineView;

    .line 228
    iget-object v1, p0, Lcom/hf/UI/WeatherGroupActivity;->mLineLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/hf/UI/WeatherGroupActivity;->mLineView:Lcom/hf/UI/LineView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 229
    invoke-direct {p0}, Lcom/hf/UI/WeatherGroupActivity;->registBroadCast()V

    .line 230
    invoke-direct {p0}, Lcom/hf/UI/WeatherGroupActivity;->initViews()V

    .line 231
    new-instance v1, Lcom/hf/UI/WeatherGroupActivity$SKPagerAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/hf/UI/WeatherGroupActivity$SKPagerAdapter;-><init>(Lcom/hf/UI/WeatherGroupActivity;Lcom/hf/UI/WeatherGroupActivity$SKPagerAdapter;)V

    iput-object v1, p0, Lcom/hf/UI/WeatherGroupActivity;->mSKAdapter:Lcom/hf/UI/WeatherGroupActivity$SKPagerAdapter;

    .line 233
    iget-object v1, p0, Lcom/hf/UI/WeatherGroupActivity;->mSKViewPager:Lcom/hf/UI/HFViewPager;

    iget-object v2, p0, Lcom/hf/UI/WeatherGroupActivity;->mSKAdapter:Lcom/hf/UI/WeatherGroupActivity$SKPagerAdapter;

    invoke-virtual {v1, v2}, Lcom/hf/UI/HFViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 234
    iget-object v1, p0, Lcom/hf/UI/WeatherGroupActivity;->mSKViewPager:Lcom/hf/UI/HFViewPager;

    invoke-virtual {v1, p0}, Lcom/hf/UI/HFViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 236
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 355
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 356
    iget-object v0, p0, Lcom/hf/UI/WeatherGroupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/hf/UI/WeatherGroupActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 357
    iget-object v0, p0, Lcom/hf/UI/WeatherGroupActivity;->mSKViewPager:Lcom/hf/UI/HFViewPager;

    invoke-virtual {v0}, Lcom/hf/UI/HFViewPager;->removeAllViews()V

    .line 358
    iget-object v0, p0, Lcom/hf/UI/WeatherGroupActivity;->mSKViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 359
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hf/UI/WeatherGroupActivity;->mSKViewList:Ljava/util/List;

    .line 360
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 259
    sget-boolean v0, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v0, :cond_0

    .line 260
    const-string v0, "onKeyDown"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "keyCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_0
    const/16 v0, 0x52

    if-ne p1, v0, :cond_1

    .line 263
    invoke-virtual {p0}, Lcom/hf/UI/WeatherGroupActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/hf/UI/MainActivity;

    invoke-virtual {v0}, Lcom/hf/UI/MainActivity;->screenShot()V

    .line 265
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 748
    sget-boolean v1, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v1, :cond_0

    .line 749
    const-string v1, "PageChangeListener"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onPageScrollStateChanged : arg0 = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    :cond_0
    if-nez p1, :cond_1

    .line 754
    sget v1, Lcom/hf/UI/WeatherGroupActivity;->sIndex:I

    iget v2, p0, Lcom/hf/UI/WeatherGroupActivity;->mSelectIndex:I

    if-ne v1, v2, :cond_2

    .line 768
    :cond_1
    :goto_0
    return-void

    .line 758
    :cond_2
    sget-boolean v1, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v1, :cond_3

    .line 759
    const-string v1, "PageChangeListener"

    const-string v2, "---------------->changed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :cond_3
    iget v1, p0, Lcom/hf/UI/WeatherGroupActivity;->mSelectIndex:I

    sput v1, Lcom/hf/UI/WeatherGroupActivity;->sIndex:I

    .line 763
    iget-object v1, p0, Lcom/hf/UI/WeatherGroupActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 764
    .local v0, message:Landroid/os/Message;
    const/16 v1, 0x6d

    iput v1, v0, Landroid/os/Message;->what:I

    .line 765
    iget-object v1, p0, Lcom/hf/UI/WeatherGroupActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onPageScrolled(IFI)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 771
    sget-boolean v0, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v0, :cond_0

    .line 772
    const-string v0, "PageChangeListener"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPageScrolled : arg0 = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; arg1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; arg2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 5
    .parameter "arg0"

    .prologue
    .line 777
    iget-object v2, p0, Lcom/hf/UI/WeatherGroupActivity;->mSKViewList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hf/UI/SKView;

    .line 778
    .local v1, view:Lcom/hf/UI/SKView;
    invoke-virtual {v1}, Lcom/hf/UI/SKView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 780
    .local v0, tag:Ljava/lang/String;
    sget-boolean v2, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v2, :cond_0

    .line 781
    const-string v2, "PageChangeListener"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onPageSelected : arg0 = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; view.tag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    :cond_0
    iput p1, p0, Lcom/hf/UI/WeatherGroupActivity;->mSelectIndex:I

    .line 785
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 252
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 253
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$Umeng;->onPause(Landroid/content/Context;)V

    .line 254
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$BaiDu;->onPause(Landroid/content/Context;)V

    .line 255
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 240
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 241
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$Umeng;->onResume(Landroid/content/Context;)V

    .line 242
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$BaiDu;->onResume(Landroid/content/Context;)V

    .line 243
    sget-boolean v0, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v0, :cond_0

    .line 244
    const-string v0, "onStart"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/hf/UI/WeatherGroupActivity;->mSKViewPager:Lcom/hf/UI/HFViewPager;

    sget v1, Lcom/hf/UI/WeatherGroupActivity;->sIndex:I

    invoke-virtual {v0, v1}, Lcom/hf/UI/HFViewPager;->setCurrentItem(I)V

    .line 248
    return-void
.end method
