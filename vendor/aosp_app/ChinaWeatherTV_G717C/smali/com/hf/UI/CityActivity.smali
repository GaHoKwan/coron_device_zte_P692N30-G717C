.class public Lcom/hf/UI/CityActivity;
.super Landroid/app/Activity;
.source "CityActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;
.implements Lcom/hf/location/HFLocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hf/UI/CityActivity$WeatherAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/ViewGroup$OnHierarchyChangeListener;",
        "Lcom/hf/location/HFLocationListener;"
    }
.end annotation


# static fields
.field private static final DIALOG_DELETE_CITY:I = 0x3eb

.field private static final DIALOG_LOCATING:I = 0x3ea

.field private static final GUIDE_SET_MENU_SWITCH:Ljava/lang/String; = "guide_set_key"

.field public static final HANDLER_ADD_CITY:I = 0x3f0

.field private static final HANDLER_CHANGE_TEMP_TYPE:I = 0x3f3

.field public static final HANDLER_LSITVIEW_HIND:I = 0x3ea

.field public static final HANDLER_LSITVIEW_SHOW:I = 0x3e9

.field public static final HANDLER_NOTIFY_LISTVIEW:I = 0x3e8

.field private static final HANDLER_RELOAD:I = 0x3f4

.field private static final HANDLER_SHOW_GUIDE:I = 0x3f2

.field public static final HANDLER_UPDATE_ALL_WETHER:I = 0x3eb

.field public static final HANDLER_UPDATE_WEATHER:I = 0x3ec

.field private static final QUERY_TOKEN:I = 0x64

.field public static final SELECTION:Ljava/lang/String; = "cityId=\'%s\'"

.field private static final TAG:Ljava/lang/String; = "CityActivity"

.field private static final VOICE_RECOGNITION_REQUEST_CODE:I = 0x4d2


# instance fields
.field private mCitySearchLayout:Landroid/widget/RelativeLayout;

.field private mDefCityTextView:Landroid/widget/TextView;

.field private mDefLayout:Landroid/widget/RelativeLayout;

.field private mDefTemTextView:Landroid/widget/TextView;

.field private mDefWarningImage:Landroid/widget/ImageView;

.field private mDefWeatherImage:Landroid/widget/ImageView;

.field private mDefWindTextView:Landroid/widget/TextView;

.field mEditTextWatcher:Landroid/text/TextWatcher;

.field private mHandler:Landroid/os/Handler;

.field private mLocationButton:Landroid/widget/ImageButton;

.field private mLocationManager:Lcom/hf/location/HFLocationManager;

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSearchAdapter:Lcom/hf/UI/SearchCityAdapter;

.field private mSearchEditText:Landroid/widget/EditText;

.field private mSearchLineView:Landroid/view/View;

.field private mSearchListView:Landroid/widget/ListView;

.field private mTemperatureType:I

.field private mVoiceButton:Landroid/widget/ImageButton;

.field private mWeatherAdapter:Lcom/hf/UI/CityActivity$WeatherAdapter;

.field private mWeatherLayout:Landroid/widget/RelativeLayout;

.field private mWeatherListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 121
    const/4 v0, 0x0

    iput v0, p0, Lcom/hf/UI/CityActivity;->mTemperatureType:I

    .line 124
    new-instance v0, Lcom/hf/UI/CityActivity$1;

    invoke-direct {v0, p0}, Lcom/hf/UI/CityActivity$1;-><init>(Lcom/hf/UI/CityActivity;)V

    iput-object v0, p0, Lcom/hf/UI/CityActivity;->mHandler:Landroid/os/Handler;

    .line 210
    new-instance v0, Lcom/hf/UI/CityActivity$2;

    invoke-direct {v0, p0}, Lcom/hf/UI/CityActivity$2;-><init>(Lcom/hf/UI/CityActivity;)V

    iput-object v0, p0, Lcom/hf/UI/CityActivity;->mEditTextWatcher:Landroid/text/TextWatcher;

    .line 78
    return-void
.end method

.method static synthetic access$0(Lcom/hf/UI/CityActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/hf/UI/CityActivity;->mWeatherLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1(Lcom/hf/UI/CityActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/hf/UI/CityActivity;->mSearchListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$10(Lcom/hf/UI/CityActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/hf/UI/CityActivity;->showGuide()V

    return-void
.end method

.method static synthetic access$11(Lcom/hf/UI/CityActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lcom/hf/UI/CityActivity;->queryCity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12(Lcom/hf/UI/CityActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/hf/UI/CityActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$13(Lcom/hf/UI/CityActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 121
    iget v0, p0, Lcom/hf/UI/CityActivity;->mTemperatureType:I

    return v0
.end method

.method static synthetic access$14(Lcom/hf/UI/CityActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 121
    iput p1, p0, Lcom/hf/UI/CityActivity;->mTemperatureType:I

    return-void
.end method

.method static synthetic access$15(Lcom/hf/UI/CityActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/hf/UI/CityActivity;->mDefCityTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$16(Lcom/hf/UI/CityActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/hf/UI/CityActivity;->mDefTemTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$17(Lcom/hf/UI/CityActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/hf/UI/CityActivity;->mDefWindTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$18(Lcom/hf/UI/CityActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/hf/UI/CityActivity;->mDefLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$19(Lcom/hf/UI/CityActivity;)Lcom/hf/location/HFLocationManager;
    .locals 1
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/hf/UI/CityActivity;->mLocationManager:Lcom/hf/location/HFLocationManager;

    return-object v0
.end method

.method static synthetic access$2(Lcom/hf/UI/CityActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 798
    invoke-direct {p0}, Lcom/hf/UI/CityActivity;->openSoftInput()V

    return-void
.end method

.method static synthetic access$20(Lcom/hf/UI/CityActivity;Lcom/hf/model/CityModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 924
    invoke-direct {p0, p1}, Lcom/hf/UI/CityActivity;->setCityAsDefault(Lcom/hf/model/CityModel;)V

    return-void
.end method

.method static synthetic access$21(Lcom/hf/UI/CityActivity;Lcom/hf/model/CityModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1024
    invoke-direct {p0, p1}, Lcom/hf/UI/CityActivity;->showModyCityName(Lcom/hf/model/CityModel;)V

    return-void
.end method

.method static synthetic access$22(Lcom/hf/UI/CityActivity;Lcom/hf/model/CityModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 979
    invoke-direct {p0, p1}, Lcom/hf/UI/CityActivity;->deleteCity(Lcom/hf/model/CityModel;)V

    return-void
.end method

.method static synthetic access$3(Lcom/hf/UI/CityActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 785
    invoke-direct {p0}, Lcom/hf/UI/CityActivity;->hideSoftInput()V

    return-void
.end method

.method static synthetic access$4(Lcom/hf/UI/CityActivity;)Lcom/hf/UI/SearchCityAdapter;
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/hf/UI/CityActivity;->mSearchAdapter:Lcom/hf/UI/SearchCityAdapter;

    return-object v0
.end method

.method static synthetic access$5(Lcom/hf/UI/CityActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 544
    invoke-direct {p0}, Lcom/hf/UI/CityActivity;->setDefCityWeather()V

    return-void
.end method

.method static synthetic access$6(Lcom/hf/UI/CityActivity;)Lcom/hf/UI/CityActivity$WeatherAdapter;
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/hf/UI/CityActivity;->mWeatherAdapter:Lcom/hf/UI/CityActivity$WeatherAdapter;

    return-object v0
.end method

.method static synthetic access$7(Lcom/hf/UI/CityActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/hf/UI/CityActivity;->initTemperatureType()V

    return-void
.end method

.method static synthetic access$8(Lcom/hf/UI/CityActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/hf/UI/CityActivity;->mSearchEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$9(Lcom/hf/UI/CityActivity;Lcom/hf/model/CityModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 777
    invoke-direct {p0, p1}, Lcom/hf/UI/CityActivity;->showHttpDialog(Lcom/hf/model/CityModel;)V

    return-void
.end method

.method private bindDefView(I)V
    .locals 14
    .parameter "type"

    .prologue
    .line 550
    sget-object v11, Lcom/hf/HFWeatherApp;->mDefaultCity:Lcom/hf/model/CityModel;

    if-nez v11, :cond_1

    .line 612
    :cond_0
    :goto_0
    return-void

    .line 554
    :cond_1
    sget-object v1, Lcom/hf/HFWeatherApp;->mDefaultCity:Lcom/hf/model/CityModel;

    .line 556
    .local v1, city:Lcom/hf/model/CityModel;
    if-eqz v1, :cond_0

    .line 557
    sget-object v11, Lcom/hf/HFWeatherApp;->mWeathersMap:Ljava/util/Map;

    if-eqz v11, :cond_0

    .line 558
    sget-object v11, Lcom/hf/HFWeatherApp;->mWeathersMap:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 559
    sget-object v11, Lcom/hf/HFWeatherApp;->mWeathersMap:Ljava/util/Map;

    iget-object v12, v1, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-interface {v11, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 563
    sget-object v11, Lcom/hf/HFWeatherApp;->mWeathersMap:Ljava/util/Map;

    iget-object v12, v1, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/hf/model/WeatherModel;

    .line 564
    .local v9, weatherModel:Lcom/hf/model/WeatherModel;
    if-eqz v9, :cond_0

    .line 568
    sget-object v11, Lcom/hf/HFWeatherApp;->mWarningMap:Ljava/util/Map;

    if-nez v11, :cond_6

    .line 569
    iget-object v11, p0, Lcom/hf/UI/CityActivity;->mDefWarningImage:Landroid/widget/ImageView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 578
    :goto_1
    iget-object v6, v9, Lcom/hf/model/WeatherModel;->skWeather:Lcom/hf/model/SKWeather;

    .line 579
    .local v6, skWeather:Lcom/hf/model/SKWeather;
    const/4 v0, 0x0

    .line 580
    .local v0, cfweather:Lcom/hf/model/CFWeather;
    iget-object v11, v9, Lcom/hf/model/WeatherModel;->weatherList:Ljava/util/List;

    if-eqz v11, :cond_2

    iget-object v11, v9, Lcom/hf/model/WeatherModel;->weatherList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    .line 581
    iget-object v11, v9, Lcom/hf/model/WeatherModel;->weatherList:Ljava/util/List;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cfweather:Lcom/hf/model/CFWeather;
    check-cast v0, Lcom/hf/model/CFWeather;

    .line 583
    .restart local v0       #cfweather:Lcom/hf/model/CFWeather;
    :cond_2
    if-nez p1, :cond_8

    const/4 v3, 0x1

    .line 584
    .local v3, isC:Z
    :goto_2
    const/4 v2, 0x0

    .line 585
    .local v2, imageId:I
    const/4 v7, 0x0

    .line 586
    .local v7, temperature:Ljava/lang/String;
    const/4 v10, 0x0

    .line 588
    .local v10, wind:Ljava/lang/String;
    invoke-static {v6}, Lcom/hf/utils/WeatherUtils;->getSkWeatherImageId(Lcom/hf/model/SKWeather;)I

    move-result v2

    .line 589
    if-nez v2, :cond_3

    .line 590
    invoke-static {v0}, Lcom/hf/utils/WeatherUtils;->getCfWeatherImageId(Lcom/hf/model/CFWeather;)I

    move-result v2

    .line 593
    :cond_3
    invoke-static {p0, v6, v3}, Lcom/hf/utils/WeatherUtils;->getSKTemperatureString(Landroid/content/Context;Lcom/hf/model/SKWeather;Z)Ljava/lang/String;

    move-result-object v7

    .line 594
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 595
    invoke-static {p0, v0, v3}, Lcom/hf/utils/WeatherUtils;->getCFTemperatureString(Landroid/content/Context;Lcom/hf/model/CFWeather;Z)Ljava/lang/String;

    move-result-object v7

    .line 598
    :cond_4
    invoke-static {p0, v6}, Lcom/hf/utils/WeatherUtils;->getSkWindString(Landroid/content/Context;Lcom/hf/model/SKWeather;)Ljava/lang/String;

    move-result-object v10

    .line 599
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 600
    invoke-static {p0, v0}, Lcom/hf/utils/WeatherUtils;->getCFWindString(Landroid/content/Context;Lcom/hf/model/CFWeather;)Ljava/lang/String;

    move-result-object v10

    .line 603
    :cond_5
    iget-object v11, p0, Lcom/hf/UI/CityActivity;->mDefWeatherImage:Landroid/widget/ImageView;

    invoke-virtual {v11, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 604
    iget-object v11, p0, Lcom/hf/UI/CityActivity;->mDefTemTextView:Landroid/widget/TextView;

    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    iget-object v11, p0, Lcom/hf/UI/CityActivity;->mDefWindTextView:Landroid/widget/TextView;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 607
    invoke-static {p0, v1}, Lcom/hf/utils/Util;->getDiaplayName(Landroid/content/Context;Lcom/hf/model/CityModel;)Ljava/lang/String;

    move-result-object v4

    .line 608
    .local v4, name:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {p0}, Lcom/hf/UI/CityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a001a

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    invoke-static {p0, v11, v12}, Lcom/hf/utils/Util;->getCityNameSize(Landroid/content/Context;IF)F

    move-result v5

    .line 609
    .local v5, size:F
    iget-object v11, p0, Lcom/hf/UI/CityActivity;->mDefCityTextView:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 610
    iget-object v11, p0, Lcom/hf/UI/CityActivity;->mDefCityTextView:Landroid/widget/TextView;

    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 571
    .end local v0           #cfweather:Lcom/hf/model/CFWeather;
    .end local v2           #imageId:I
    .end local v3           #isC:Z
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #size:F
    .end local v6           #skWeather:Lcom/hf/model/SKWeather;
    .end local v7           #temperature:Ljava/lang/String;
    .end local v10           #wind:Ljava/lang/String;
    :cond_6
    sget-object v11, Lcom/hf/HFWeatherApp;->mWarningMap:Ljava/util/Map;

    iget-object v12, v1, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 572
    .local v8, warningList:Ljava/util/List;,"Ljava/util/List<Lcom/hf/model/WarningModel;>;"
    if-eqz v8, :cond_7

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_7

    .line 573
    iget-object v11, p0, Lcom/hf/UI/CityActivity;->mDefWarningImage:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 575
    :cond_7
    iget-object v11, p0, Lcom/hf/UI/CityActivity;->mDefWarningImage:Landroid/widget/ImageView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 583
    .end local v8           #warningList:Ljava/util/List;,"Ljava/util/List<Lcom/hf/model/WarningModel;>;"
    .restart local v0       #cfweather:Lcom/hf/model/CFWeather;
    .restart local v6       #skWeather:Lcom/hf/model/SKWeather;
    :cond_8
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private deleteCity(Lcom/hf/model/CityModel;)V
    .locals 2
    .parameter "city"

    .prologue
    .line 980
    new-instance v0, Lcom/hf/UI/CityActivity$12;

    invoke-direct {v0, p0, p1}, Lcom/hf/UI/CityActivity$12;-><init>(Lcom/hf/UI/CityActivity;Lcom/hf/model/CityModel;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 1016
    invoke-virtual {v0, v1}, Lcom/hf/UI/CityActivity$12;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1018
    return-void
.end method

.method private getCityFormLocation()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1160
    invoke-static {p0}, Lcom/hf/utils/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    .line 1161
    .local v0, available:Z
    if-nez v0, :cond_0

    .line 1162
    const v2, 0x7f080008

    invoke-static {p0, v2}, Lcom/hf/utils/ToastUtil;->getToast(Landroid/content/Context;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1175
    :goto_0
    return-void

    .line 1167
    :cond_0
    invoke-virtual {p0}, Lcom/hf/UI/CityActivity;->getParent()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/hf/UI/MainActivity;

    invoke-virtual {v2, v3}, Lcom/hf/UI/MainActivity;->setIsLocationClicked(Z)V

    .line 1169
    iget-object v2, p0, Lcom/hf/UI/CityActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1170
    .local v1, message:Landroid/os/Message;
    const/16 v2, 0xc8

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1171
    iget-object v2, p0, Lcom/hf/UI/CityActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1173
    iget-object v2, p0, Lcom/hf/UI/CityActivity;->mLocationManager:Lcom/hf/location/HFLocationManager;

    invoke-virtual {v2, p0, v3}, Lcom/hf/location/HFLocationManager;->start(Lcom/hf/location/HFLocationListener;Z)V

    goto :goto_0
.end method

.method private hideSoftInput()V
    .locals 5

    .prologue
    .line 786
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/hf/UI/CityActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 787
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/hf/UI/CityActivity;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result v0

    .line 788
    .local v0, hide:Z
    sget-boolean v2, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v2, :cond_0

    .line 789
    const-string v2, "hideSoftInput"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "hide = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    :cond_0
    iget-object v2, p0, Lcom/hf/UI/CityActivity;->mSearchEditText:Landroid/widget/EditText;

    const v3, 0x7f020043

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 792
    iget-object v2, p0, Lcom/hf/UI/CityActivity;->mCitySearchLayout:Landroid/widget/RelativeLayout;

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 793
    return-void
.end method

.method private initResource()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 455
    const v3, 0x7f0b001d

    invoke-virtual {p0, v3}, Lcom/hf/UI/CityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/hf/UI/CityActivity;->mSearchListView:Landroid/widget/ListView;

    .line 456
    new-instance v3, Lcom/hf/UI/SearchCityAdapter;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/hf/UI/SearchCityAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v3, p0, Lcom/hf/UI/CityActivity;->mSearchAdapter:Lcom/hf/UI/SearchCityAdapter;

    .line 457
    iget-object v3, p0, Lcom/hf/UI/CityActivity;->mSearchListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/hf/UI/CityActivity;->mSearchAdapter:Lcom/hf/UI/SearchCityAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 458
    iget-object v3, p0, Lcom/hf/UI/CityActivity;->mSearchListView:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 459
    iget-object v3, p0, Lcom/hf/UI/CityActivity;->mSearchListView:Landroid/widget/ListView;

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 462
    const v3, 0x7f0b00a3

    invoke-virtual {p0, v3}, Lcom/hf/UI/CityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/hf/UI/CityActivity;->mSearchEditText:Landroid/widget/EditText;

    .line 463
    iget-object v3, p0, Lcom/hf/UI/CityActivity;->mSearchEditText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/hf/UI/CityActivity;->mEditTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 464
    iget-object v3, p0, Lcom/hf/UI/CityActivity;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 466
    const v3, 0x7f0b00a2

    invoke-virtual {p0, v3}, Lcom/hf/UI/CityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/hf/UI/CityActivity;->mLocationButton:Landroid/widget/ImageButton;

    .line 467
    iget-object v3, p0, Lcom/hf/UI/CityActivity;->mLocationButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 469
    const v3, 0x7f0b00a4

    invoke-virtual {p0, v3}, Lcom/hf/UI/CityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/hf/UI/CityActivity;->mSearchLineView:Landroid/view/View;

    .line 471
    const v3, 0x7f0b00a5

    invoke-virtual {p0, v3}, Lcom/hf/UI/CityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/hf/UI/CityActivity;->mVoiceButton:Landroid/widget/ImageButton;

    .line 472
    invoke-virtual {p0}, Lcom/hf/UI/CityActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 473
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 474
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 475
    iget-object v3, p0, Lcom/hf/UI/CityActivity;->mVoiceButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 476
    iget-object v3, p0, Lcom/hf/UI/CityActivity;->mSearchLineView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 485
    :goto_0
    const v3, 0x7f0b0018

    invoke-virtual {p0, v3}, Lcom/hf/UI/CityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/hf/UI/CityActivity;->mWeatherListView:Landroid/widget/ListView;

    .line 486
    new-instance v3, Lcom/hf/UI/CityActivity$WeatherAdapter;

    invoke-direct {v3, p0, p0}, Lcom/hf/UI/CityActivity$WeatherAdapter;-><init>(Lcom/hf/UI/CityActivity;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/hf/UI/CityActivity;->mWeatherAdapter:Lcom/hf/UI/CityActivity$WeatherAdapter;

    .line 487
    iget-object v3, p0, Lcom/hf/UI/CityActivity;->mWeatherListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/hf/UI/CityActivity;->mWeatherAdapter:Lcom/hf/UI/CityActivity$WeatherAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 488
    iget-object v3, p0, Lcom/hf/UI/CityActivity;->mWeatherListView:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 489
    iget-object v3, p0, Lcom/hf/UI/CityActivity;->mWeatherListView:Landroid/widget/ListView;

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 490
    iget-object v3, p0, Lcom/hf/UI/CityActivity;->mWeatherListView:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 491
    iget-object v3, p0, Lcom/hf/UI/CityActivity;->mWeatherListView:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 493
    const v3, 0x7f0b0015

    invoke-virtual {p0, v3}, Lcom/hf/UI/CityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/hf/UI/CityActivity;->mWeatherLayout:Landroid/widget/RelativeLayout;

    .line 494
    const v3, 0x7f0b0013

    invoke-virtual {p0, v3}, Lcom/hf/UI/CityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/hf/UI/CityActivity;->mCitySearchLayout:Landroid/widget/RelativeLayout;

    .line 496
    const v3, 0x7f0b0016

    invoke-virtual {p0, v3}, Lcom/hf/UI/CityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/hf/UI/CityActivity;->mDefLayout:Landroid/widget/RelativeLayout;

    .line 497
    iget-object v3, p0, Lcom/hf/UI/CityActivity;->mDefLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 498
    iget-object v3, p0, Lcom/hf/UI/CityActivity;->mDefLayout:Landroid/widget/RelativeLayout;

    new-instance v4, Lcom/hf/UI/CityActivity$7;

    invoke-direct {v4, p0}, Lcom/hf/UI/CityActivity$7;-><init>(Lcom/hf/UI/CityActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 534
    const v3, 0x7f0b0022

    invoke-virtual {p0, v3}, Lcom/hf/UI/CityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/hf/UI/CityActivity;->mDefWeatherImage:Landroid/widget/ImageView;

    .line 535
    const v3, 0x7f0b0020

    invoke-virtual {p0, v3}, Lcom/hf/UI/CityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/hf/UI/CityActivity;->mDefWarningImage:Landroid/widget/ImageView;

    .line 536
    const v3, 0x7f0b0023

    invoke-virtual {p0, v3}, Lcom/hf/UI/CityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/hf/UI/CityActivity;->mDefTemTextView:Landroid/widget/TextView;

    .line 537
    const v3, 0x7f0b0024

    invoke-virtual {p0, v3}, Lcom/hf/UI/CityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/hf/UI/CityActivity;->mDefWindTextView:Landroid/widget/TextView;

    .line 538
    const v3, 0x7f0b0021

    invoke-virtual {p0, v3}, Lcom/hf/UI/CityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/hf/UI/CityActivity;->mDefCityTextView:Landroid/widget/TextView;

    .line 539
    invoke-direct {p0}, Lcom/hf/UI/CityActivity;->initTemperatureType()V

    .line 540
    return-void

    .line 478
    :cond_0
    iget-object v3, p0, Lcom/hf/UI/CityActivity;->mVoiceButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 479
    iget-object v3, p0, Lcom/hf/UI/CityActivity;->mSearchLineView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 480
    iget-object v3, p0, Lcom/hf/UI/CityActivity;->mLocationButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 481
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_0
.end method

.method private initTemperatureType()V
    .locals 2

    .prologue
    .line 268
    :try_start_0
    new-instance v0, Lcom/hf/UI/CityActivity$3;

    invoke-direct {v0, p0}, Lcom/hf/UI/CityActivity$3;-><init>(Lcom/hf/UI/CityActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 287
    invoke-virtual {v0, v1}, Lcom/hf/UI/CityActivity$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :goto_0
    return-void

    .line 288
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private openSoftInput()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 799
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/hf/UI/CityActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 800
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/hf/UI/CityActivity;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v2, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v1

    .line 801
    .local v1, show:Z
    sget-boolean v2, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v2, :cond_0

    .line 802
    const-string v2, "openSoftInput"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "show = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    :cond_0
    if-nez v1, :cond_1

    .line 805
    const/4 v2, 0x1

    invoke-virtual {v0, v5, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 807
    :cond_1
    iget-object v2, p0, Lcom/hf/UI/CityActivity;->mSearchEditText:Landroid/widget/EditText;

    const v3, 0x7f020042

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 808
    iget-object v2, p0, Lcom/hf/UI/CityActivity;->mCitySearchLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f090009

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 809
    return-void
.end method

.method private queryCity(Ljava/lang/String;)V
    .locals 8
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    .line 236
    sget-boolean v0, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v0, :cond_0

    .line 237
    const-string v0, "queryCity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "query city : name = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_0
    const/4 v5, 0x0

    .line 241
    .local v5, selection:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    const-string v5, "is_hot=1"

    .line 248
    :goto_0
    iget-object v0, p0, Lcom/hf/UI/CityActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/16 v1, 0x64

    sget-object v3, Lcom/hf/data/Constant$CITY;->CITY_URI:Landroid/net/Uri;

    sget-object v4, Lcom/hf/UI/SearchCityAdapter;->QUERY_CITY_PROJECTION:[Ljava/lang/String;

    const-string v7, "id asc"

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return-void

    .line 244
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "name LIKE \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 245
    const-string v1, "englishName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIKE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 246
    const-string v1, "pinyin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIKE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 244
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private registBoradCast()V
    .locals 2

    .prologue
    .line 378
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 379
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.hf.UPDATE_ALL_WEATHER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 380
    const-string v1, "com.hf.UPDATE_WEATHER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 381
    const-string v1, "com.hf.CHANGE_TEMPERATURE_TYPE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 382
    const-string v1, "com.hf.ADD_CITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 383
    const-string v1, "com.hf.CHANGE_DEFAULT_CITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 384
    const-string v1, "com.hf.RELOAD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 385
    new-instance v1, Lcom/hf/UI/CityActivity$6;

    invoke-direct {v1, p0}, Lcom/hf/UI/CityActivity$6;-><init>(Lcom/hf/UI/CityActivity;)V

    iput-object v1, p0, Lcom/hf/UI/CityActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 425
    iget-object v1, p0, Lcom/hf/UI/CityActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/hf/UI/CityActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 426
    return-void
.end method

.method private setCityAsDefault(Lcom/hf/model/CityModel;)V
    .locals 7
    .parameter "city"

    .prologue
    const/4 v4, 0x0

    .line 925
    sget-object v5, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    if-eqz v5, :cond_0

    .line 926
    if-nez p1, :cond_1

    .line 973
    :cond_0
    :goto_0
    return-void

    .line 929
    :cond_1
    sget-object v5, Lcom/hf/HFWeatherApp;->mDefaultCity:Lcom/hf/model/CityModel;

    if-eqz v5, :cond_2

    .line 930
    sget-object v5, Lcom/hf/HFWeatherApp;->mDefaultCity:Lcom/hf/model/CityModel;

    iget-object v5, v5, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    iget-object v6, p1, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 932
    :cond_2
    sget-boolean v5, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v5, :cond_3

    .line 933
    const-string v5, "setDefault"

    iget-object v6, p1, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    :cond_3
    sget-object v5, Lcom/hf/HFWeatherApp;->mDefaultCity:Lcom/hf/model/CityModel;

    if-nez v5, :cond_4

    const/4 v0, 0x1

    .line 937
    .local v0, defaultIsNull:Z
    :goto_1
    const/4 v2, 0x0

    .line 938
    .local v2, oldCity:Lcom/hf/model/CityModel;
    if-eqz v0, :cond_5

    .line 939
    sput-object p1, Lcom/hf/HFWeatherApp;->mDefaultCity:Lcom/hf/model/CityModel;

    .line 940
    sget-object v4, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    invoke-virtual {v4, p1}, Lcom/hf/UI/CityList;->remove(Ljava/lang/Object;)Z

    .line 948
    :goto_2
    if-nez v2, :cond_6

    const-string v3, ""

    .line 949
    .local v3, oldCityId:Ljava/lang/String;
    :goto_3
    iget-object v1, p1, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    .line 951
    .local v1, newCityId:Ljava/lang/String;
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/hf/UI/CityActivity$11;

    invoke-direct {v5, p0, v3, v1, p1}, Lcom/hf/UI/CityActivity$11;-><init>(Lcom/hf/UI/CityActivity;Ljava/lang/String;Ljava/lang/String;Lcom/hf/model/CityModel;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 970
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .end local v0           #defaultIsNull:Z
    .end local v1           #newCityId:Ljava/lang/String;
    .end local v2           #oldCity:Lcom/hf/model/CityModel;
    .end local v3           #oldCityId:Ljava/lang/String;
    :cond_4
    move v0, v4

    .line 936
    goto :goto_1

    .line 942
    .restart local v0       #defaultIsNull:Z
    .restart local v2       #oldCity:Lcom/hf/model/CityModel;
    :cond_5
    sget-object v2, Lcom/hf/HFWeatherApp;->mDefaultCity:Lcom/hf/model/CityModel;

    .line 943
    sput-object p1, Lcom/hf/HFWeatherApp;->mDefaultCity:Lcom/hf/model/CityModel;

    .line 944
    sget-object v5, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    invoke-virtual {v5, p1}, Lcom/hf/UI/CityList;->remove(Ljava/lang/Object;)Z

    .line 945
    sget-object v5, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    invoke-virtual {v5, v4, v2}, Lcom/hf/UI/CityList;->add(ILcom/hf/model/CityModel;)V

    goto :goto_2

    .line 948
    :cond_6
    iget-object v3, v2, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    goto :goto_3
.end method

.method private setDefCityWeather()V
    .locals 1

    .prologue
    .line 545
    iget v0, p0, Lcom/hf/UI/CityActivity;->mTemperatureType:I

    invoke-direct {p0, v0}, Lcom/hf/UI/CityActivity;->bindDefView(I)V

    .line 547
    return-void
.end method

.method private setQueryHandler()V
    .locals 2

    .prologue
    .line 364
    new-instance v0, Lcom/hf/UI/CityActivity$5;

    invoke-virtual {p0}, Lcom/hf/UI/CityActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/hf/UI/CityActivity$5;-><init>(Lcom/hf/UI/CityActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/hf/UI/CityActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 374
    return-void
.end method

.method private showGuide()V
    .locals 7

    .prologue
    .line 315
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 316
    .local v3, preference:Landroid/content/SharedPreferences;
    const-string v4, "guide_set_key"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 317
    .local v2, isFirst:Z
    iget-object v4, p0, Lcom/hf/UI/CityActivity;->mWeatherAdapter:Lcom/hf/UI/CityActivity$WeatherAdapter;

    invoke-virtual {v4}, Lcom/hf/UI/CityActivity$WeatherAdapter;->getCount()I

    move-result v0

    .line 318
    .local v0, count:I
    sget-boolean v4, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v4, :cond_0

    .line 319
    const-string v4, "showGuide"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "count = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_0
    if-eqz v2, :cond_1

    if-lez v0, :cond_1

    .line 323
    const v4, 0x7f0b0019

    invoke-virtual {p0, v4}, Lcom/hf/UI/CityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 324
    .local v1, guide_layout:Landroid/widget/LinearLayout;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 325
    new-instance v4, Lcom/hf/UI/CityActivity$4;

    invoke-direct {v4, p0, v1, v3}, Lcom/hf/UI/CityActivity$4;-><init>(Lcom/hf/UI/CityActivity;Landroid/widget/LinearLayout;Landroid/content/SharedPreferences;)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    .end local v1           #guide_layout:Landroid/widget/LinearLayout;
    :cond_1
    return-void
.end method

.method private showHttpDialog(Lcom/hf/model/CityModel;)V
    .locals 3
    .parameter "city"

    .prologue
    .line 778
    invoke-virtual {p0}, Lcom/hf/UI/CityActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/hf/UI/MainActivity;

    .line 779
    .local v0, parent:Lcom/hf/UI/MainActivity;
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/hf/UI/MainActivity;->showHttpDialog(Lcom/hf/model/CityModel;ZI)V

    .line 780
    return-void
.end method

.method private showModifyDialog(Lcom/hf/model/CityModel;)V
    .locals 9
    .parameter "city"

    .prologue
    const/4 v8, 0x1

    .line 867
    new-instance v2, Lcom/hf/UI/HFDialog;

    invoke-direct {v2, p0}, Lcom/hf/UI/HFDialog;-><init>(Landroid/content/Context;)V

    .line 868
    .local v2, dialog:Lcom/hf/UI/HFDialog;
    new-array v5, v8, [I

    const/4 v6, 0x0

    const/4 v7, 0x2

    aput v7, v5, v6

    invoke-virtual {v2, v5}, Lcom/hf/UI/HFDialog;->setStyle([I)V

    .line 869
    invoke-virtual {v2}, Lcom/hf/UI/HFDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 871
    .local v3, listView:Landroid/widget/ListView;
    const/4 v1, 0x0

    .line 872
    .local v1, array:[Ljava/lang/String;
    iget-object v5, p1, Lcom/hf/model/CityModel;->displayName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 873
    .local v4, value:Z
    if-eqz v4, :cond_0

    .line 874
    invoke-virtual {p0}, Lcom/hf/UI/CityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 879
    :goto_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v5, 0x7f030005

    invoke-direct {v0, p0, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 880
    .local v0, adapter:Landroid/widget/ListAdapter;
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 881
    new-instance v5, Lcom/hf/UI/CityActivity$10;

    invoke-direct {v5, p0, p1, v4, v2}, Lcom/hf/UI/CityActivity$10;-><init>(Lcom/hf/UI/CityActivity;Lcom/hf/model/CityModel;ZLcom/hf/UI/HFDialog;)V

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 919
    invoke-virtual {v2, v8}, Lcom/hf/UI/HFDialog;->setCanceledOnTouchOutside(Z)V

    .line 920
    invoke-virtual {v2}, Lcom/hf/UI/HFDialog;->show()V

    .line 922
    return-void

    .line 876
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    :cond_0
    invoke-virtual {p0}, Lcom/hf/UI/CityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private showModyCityName(Lcom/hf/model/CityModel;)V
    .locals 4
    .parameter "city"

    .prologue
    .line 1025
    new-instance v0, Lcom/hf/UI/HFDialog;

    invoke-direct {v0, p0}, Lcom/hf/UI/HFDialog;-><init>(Landroid/content/Context;)V

    .line 1026
    .local v0, dialog:Lcom/hf/UI/HFDialog;
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x5

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/hf/UI/HFDialog;->setStyle([I)V

    .line 1027
    const v1, 0x7f080044

    invoke-virtual {v0, v1}, Lcom/hf/UI/HFDialog;->setTitle(I)V

    .line 1028
    const v1, 0x7f080045

    new-instance v2, Lcom/hf/UI/CityActivity$13;

    invoke-direct {v2, p0, v0, p1}, Lcom/hf/UI/CityActivity$13;-><init>(Lcom/hf/UI/CityActivity;Lcom/hf/UI/HFDialog;Lcom/hf/model/CityModel;)V

    invoke-virtual {v0, v1, v2}, Lcom/hf/UI/HFDialog;->setPositiveButton(ILandroid/view/View$OnClickListener;)V

    .line 1058
    const v1, 0x7f080046

    new-instance v2, Lcom/hf/UI/CityActivity$14;

    invoke-direct {v2, p0, v0}, Lcom/hf/UI/CityActivity$14;-><init>(Lcom/hf/UI/CityActivity;Lcom/hf/UI/HFDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/hf/UI/HFDialog;->setNegativeButton(ILandroid/view/View$OnClickListener;)V

    .line 1067
    :try_start_0
    invoke-virtual {v0}, Lcom/hf/UI/HFDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1073
    :goto_0
    return-void

    .line 1068
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1077
    const/16 v3, 0x4d2

    if-ne p1, v3, :cond_0

    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    .line 1078
    const-string v3, "android.speech.extra.RESULTS"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1079
    .local v1, matches:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 1080
    const/4 v2, 0x0

    .line 1081
    .local v2, name:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 1082
    .local v0, len:I
    if-lez v0, :cond_0

    .line 1083
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #name:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 1084
    .restart local v2       #name:Ljava/lang/String;
    iget-object v3, p0, Lcom/hf/UI/CityActivity;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1088
    .end local v0           #len:I
    .end local v1           #matches:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #name:Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1089
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/hf/UI/CityActivity;->mSearchListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/hf/UI/CityActivity;->mWeatherLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Lcom/hf/UI/CityActivity;->mSearchListView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 349
    invoke-direct {p0}, Lcom/hf/UI/CityActivity;->hideSoftInput()V

    .line 353
    :goto_0
    return-void

    .line 351
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .parameter "parent"
    .parameter "child"

    .prologue
    .line 1178
    iget-object v1, p0, Lcom/hf/UI/CityActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1179
    .local v0, message:Landroid/os/Message;
    const/16 v1, 0x3f2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1180
    iget-object v1, p0, Lcom/hf/UI/CityActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1181
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "parent"
    .parameter "child"

    .prologue
    .line 1185
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 1092
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 1094
    .local v1, id:I
    sparse-switch v1, :sswitch_data_0

    .line 1153
    :cond_0
    :goto_0
    return-void

    .line 1096
    :sswitch_0
    iget-object v4, p0, Lcom/hf/UI/CityActivity;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1097
    .local v3, search:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1098
    iget-object v4, p0, Lcom/hf/UI/CityActivity;->mSearchListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getVisibility()I

    move-result v4

    if-ne v4, v5, :cond_1

    .line 1099
    iget-object v4, p0, Lcom/hf/UI/CityActivity;->mWeatherLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1100
    iget-object v4, p0, Lcom/hf/UI/CityActivity;->mSearchListView:Landroid/widget/ListView;

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1101
    iget-object v4, p0, Lcom/hf/UI/CityActivity;->mSearchEditText:Landroid/widget/EditText;

    const v5, 0x7f020042

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1102
    invoke-direct {p0}, Lcom/hf/UI/CityActivity;->openSoftInput()V

    goto :goto_0

    .line 1104
    :cond_1
    iget-object v4, p0, Lcom/hf/UI/CityActivity;->mWeatherLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1105
    iget-object v4, p0, Lcom/hf/UI/CityActivity;->mSearchListView:Landroid/widget/ListView;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1106
    iget-object v4, p0, Lcom/hf/UI/CityActivity;->mSearchEditText:Landroid/widget/EditText;

    const v5, 0x7f020043

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1107
    invoke-direct {p0}, Lcom/hf/UI/CityActivity;->hideSoftInput()V

    goto :goto_0

    .line 1110
    :cond_2
    iget-object v4, p0, Lcom/hf/UI/CityActivity;->mSearchListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getVisibility()I

    move-result v4

    if-ne v4, v5, :cond_3

    .line 1111
    const-string v4, ""

    invoke-direct {p0, v4}, Lcom/hf/UI/CityActivity;->queryCity(Ljava/lang/String;)V

    .line 1112
    iget-object v4, p0, Lcom/hf/UI/CityActivity;->mWeatherLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1113
    iget-object v4, p0, Lcom/hf/UI/CityActivity;->mSearchListView:Landroid/widget/ListView;

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1114
    invoke-direct {p0}, Lcom/hf/UI/CityActivity;->openSoftInput()V

    goto :goto_0

    .line 1116
    :cond_3
    iget-object v4, p0, Lcom/hf/UI/CityActivity;->mWeatherLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1117
    iget-object v4, p0, Lcom/hf/UI/CityActivity;->mSearchListView:Landroid/widget/ListView;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1118
    invoke-direct {p0}, Lcom/hf/UI/CityActivity;->hideSoftInput()V

    goto :goto_0

    .line 1123
    .end local v3           #search:Ljava/lang/String;
    :sswitch_1
    sget-object v4, Lcom/hf/HFWeatherApp;->mDefaultCity:Lcom/hf/model/CityModel;

    if-eqz v4, :cond_0

    .line 1126
    sget-object v0, Lcom/hf/HFWeatherApp;->mDefaultCity:Lcom/hf/model/CityModel;

    .line 1127
    .local v0, city:Lcom/hf/model/CityModel;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.hf.CHANGE_CURRENT_CITY"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1128
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "com.hf.TAB_INDIEX"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1129
    const-string v4, "cityID"

    iget-object v5, v0, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1130
    invoke-virtual {p0, v2}, Lcom/hf/UI/CityActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1134
    .end local v0           #city:Lcom/hf/model/CityModel;
    .end local v2           #intent:Landroid/content/Intent;
    :sswitch_2
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1135
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v4, "android.speech.extra.LANGUAGE_MODEL"

    const-string v5, "free_form"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1136
    const-string v4, "android.speech.extra.PROMPT"

    const v5, 0x7f080047

    invoke-virtual {p0, v5}, Lcom/hf/UI/CityActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1137
    const/16 v4, 0x4d2

    invoke-virtual {p0, v2, v4}, Lcom/hf/UI/CityActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1138
    .end local v2           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v4

    goto/16 :goto_0

    .line 1144
    :sswitch_3
    :try_start_1
    invoke-direct {p0}, Lcom/hf/UI/CityActivity;->getCityFormLocation()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1145
    :catch_1
    move-exception v4

    goto/16 :goto_0

    .line 1094
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0016 -> :sswitch_1
        0x7f0b00a2 -> :sswitch_3
        0x7f0b00a3 -> :sswitch_0
        0x7f0b00a5 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 253
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 254
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$Umeng;->onError(Landroid/content/Context;)V

    .line 255
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$BaiDu;->onError(Landroid/content/Context;)V

    .line 256
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/hf/UI/CityActivity;->setContentView(I)V

    .line 258
    invoke-direct {p0}, Lcom/hf/UI/CityActivity;->setQueryHandler()V

    .line 259
    invoke-direct {p0}, Lcom/hf/UI/CityActivity;->initResource()V

    .line 260
    invoke-direct {p0}, Lcom/hf/UI/CityActivity;->registBoradCast()V

    .line 262
    invoke-static {p0}, Lcom/hf/location/HFLocationManager;->getInstance(Landroid/content/Context;)Lcom/hf/location/HFLocationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/hf/UI/CityActivity;->mLocationManager:Lcom/hf/location/HFLocationManager;

    .line 264
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 813
    packed-switch p1, :pswitch_data_0

    .line 848
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 815
    :pswitch_0
    new-instance v0, Lcom/hf/UI/HFDialog;

    invoke-direct {v0, p0}, Lcom/hf/UI/HFDialog;-><init>(Landroid/content/Context;)V

    .line 816
    .local v0, dialog:Lcom/hf/UI/HFDialog;
    new-array v1, v1, [I

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/hf/UI/HFDialog;->setStyle([I)V

    .line 817
    const v1, 0x7f080048

    invoke-virtual {v0, v1}, Lcom/hf/UI/HFDialog;->setContent(I)V

    .line 818
    new-instance v1, Lcom/hf/UI/CityActivity$8;

    invoke-direct {v1, p0}, Lcom/hf/UI/CityActivity$8;-><init>(Lcom/hf/UI/CityActivity;)V

    invoke-virtual {v0, v1}, Lcom/hf/UI/HFDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 829
    new-instance v1, Lcom/hf/UI/CityActivity$9;

    invoke-direct {v1, p0}, Lcom/hf/UI/CityActivity$9;-><init>(Lcom/hf/UI/CityActivity;)V

    invoke-virtual {v0, v1}, Lcom/hf/UI/HFDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    .line 840
    .end local v0           #dialog:Lcom/hf/UI/HFDialog;
    :pswitch_1
    new-instance v0, Lcom/hf/UI/HFDialog;

    invoke-direct {v0, p0}, Lcom/hf/UI/HFDialog;-><init>(Landroid/content/Context;)V

    .line 841
    .restart local v0       #dialog:Lcom/hf/UI/HFDialog;
    new-array v1, v1, [I

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/hf/UI/HFDialog;->setStyle([I)V

    .line 842
    const v1, 0x7f080049

    invoke-virtual {v0, v1}, Lcom/hf/UI/HFDialog;->setContent(I)V

    goto :goto_0

    .line 813
    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 448
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 449
    iget-object v0, p0, Lcom/hf/UI/CityActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/hf/UI/CityActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 450
    iget-object v0, p0, Lcom/hf/UI/CityActivity;->mSearchAdapter:Lcom/hf/UI/SearchCityAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hf/UI/SearchCityAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 451
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 758
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    sget-boolean v3, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v3, :cond_0

    .line 759
    const-string v3, "CityActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "position = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; arg0 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    :cond_0
    iget-object v3, p0, Lcom/hf/UI/CityActivity;->mSearchListView:Landroid/widget/ListView;

    if-ne p1, v3, :cond_2

    .line 762
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hf/UI/SearchCityAdapter$CityItem;

    .line 763
    .local v1, cityItem:Lcom/hf/UI/SearchCityAdapter$CityItem;
    iget-object v3, v1, Lcom/hf/UI/SearchCityAdapter$CityItem;->city:Lcom/hf/model/CityModel;

    invoke-direct {p0, v3}, Lcom/hf/UI/CityActivity;->showHttpDialog(Lcom/hf/model/CityModel;)V

    .line 771
    .end local v1           #cityItem:Lcom/hf/UI/SearchCityAdapter$CityItem;
    :cond_1
    :goto_0
    return-void

    .line 764
    :cond_2
    iget-object v3, p0, Lcom/hf/UI/CityActivity;->mWeatherListView:Landroid/widget/ListView;

    if-ne p1, v3, :cond_1

    .line 765
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hf/model/CityModel;

    .line 766
    .local v0, city:Lcom/hf/model/CityModel;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.hf.CHANGE_CURRENT_CITY"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 767
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "com.hf.TAB_INDIEX"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 768
    const-string v3, "cityID"

    iget-object v4, v0, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 769
    invoke-virtual {p0, v2}, Lcom/hf/UI/CityActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 853
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hf/model/CityModel;

    .line 854
    .local v0, city:Lcom/hf/model/CityModel;
    const-string v2, "vibrator"

    invoke-virtual {p0, v2}, Lcom/hf/UI/CityActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 855
    .local v1, vibrator:Landroid/os/Vibrator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 856
    invoke-direct {p0, v0}, Lcom/hf/UI/CityActivity;->showModifyDialog(Lcom/hf/model/CityModel;)V

    .line 858
    const/4 v2, 0x0

    return v2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 302
    sget-boolean v0, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v0, :cond_0

    .line 303
    const-string v0, "onKeyDown"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "keyCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_0
    const/16 v0, 0x52

    if-ne p1, v0, :cond_1

    .line 306
    invoke-virtual {p0}, Lcom/hf/UI/CityActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/hf/UI/MainActivity;

    invoke-virtual {v0}, Lcom/hf/UI/MainActivity;->screenShot()V

    .line 308
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 430
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 431
    sget-boolean v0, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v0, :cond_0

    .line 432
    const-string v0, "Log"

    const-string v1, "cityActivity onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_0
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$Umeng;->onPause(Landroid/content/Context;)V

    .line 436
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$BaiDu;->onPause(Landroid/content/Context;)V

    .line 438
    iget-object v0, p0, Lcom/hf/UI/CityActivity;->mWeatherLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 439
    iget-object v0, p0, Lcom/hf/UI/CityActivity;->mSearchListView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 440
    invoke-direct {p0}, Lcom/hf/UI/CityActivity;->hideSoftInput()V

    .line 442
    const/16 v0, 0x3eb

    invoke-virtual {p0, v0}, Lcom/hf/UI/CityActivity;->removeDialog(I)V

    .line 444
    return-void
.end method

.method public onResult(ILcom/hf/model/CityModel;)V
    .locals 2
    .parameter "result"
    .parameter "city"

    .prologue
    .line 1190
    iget-object v1, p0, Lcom/hf/UI/CityActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1191
    .local v0, message:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1192
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1193
    iget-object v1, p0, Lcom/hf/UI/CityActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1195
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 295
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 296
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$Umeng;->onResume(Landroid/content/Context;)V

    .line 297
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$BaiDu;->onResume(Landroid/content/Context;)V

    .line 299
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 357
    sget-boolean v0, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v0, :cond_0

    .line 358
    const-string v0, "onTouchEvent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CityActivity : event.action = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
