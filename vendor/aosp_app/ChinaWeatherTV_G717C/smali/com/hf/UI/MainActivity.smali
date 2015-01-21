.class public Lcom/hf/UI/MainActivity;
.super Landroid/app/TabActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/hf/location/HFLocationListener;


# static fields
.field private static final DEFAULT_VIEW_INDEX:I = 0x1

.field private static final DIALOG_LOADING_WEATHER:I = 0x3ea

.field private static final DIALOG_QUERYING:I = 0x3e9

.field private static final HANDLER_CHANGE_BG:I = 0x2

.field private static final HANDLER_CHANGE_TAB:I = 0x1

.field private static final HANDLER_QUERY_ALL_FAILED:I = 0x8

.field private static final HANDLER_QUERY_FAILED:I = 0x5

.field private static final HANDLER_QUERY_LOCATION_CITY_RESULT:I = 0x7

.field private static final HANDLER_UPDATE_FINISH:I = 0x3

.field static final RESULT_CODE_MAP_ACTIVITY:I = 0xb

.field static final SEARCH_TYPE_ALL_CITY:I = 0x1

.field static final SEARCH_TYPE_MAP_WEATHER:I = 0x2

.field static final SEARCH_TYPE_QUERY_SHOWING_CITY:I = 0x3

.field static final SEARCH_TYPE_SINGLE_CITY:I = 0x0

.field public static final TRANSLATION_DIALOG_SWITCH:Ljava/lang/String; = "translation_switch"


# instance fields
.field private cf_guide:Landroid/widget/LinearLayout;

.field private guideLayout:Landroid/widget/RelativeLayout;

.field private isExit:Z

.field private isLocationClicked:Z

.field private mADCloseButton:Landroid/widget/ImageButton;

.field private mADLayout:Landroid/widget/RelativeLayout;

.field private mADView:Lcom/hf/UI/ADView;

.field private mADViewLayout:Landroid/widget/LinearLayout;

.field private mBgView:Landroid/widget/LinearLayout;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mHost:Landroid/widget/TabHost;

.field private mLocateButton:Landroid/widget/ImageButton;

.field private mLocationManager:Lcom/hf/location/HFLocationManager;

.field mNetNoticeSwitch:Z

.field private mRefreshButton:Landroid/widget/ImageButton;

.field private mSettingButton:Landroid/widget/ImageButton;

.field private sk_guide:Landroid/widget/LinearLayout;

.field private update_guide:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 114
    iput-boolean v1, p0, Lcom/hf/UI/MainActivity;->isLocationClicked:Z

    .line 123
    new-instance v0, Lcom/hf/UI/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/hf/UI/MainActivity$1;-><init>(Lcom/hf/UI/MainActivity;)V

    iput-object v0, p0, Lcom/hf/UI/MainActivity;->mHandler:Landroid/os/Handler;

    .line 1084
    iput-boolean v1, p0, Lcom/hf/UI/MainActivity;->isExit:Z

    .line 81
    return-void
.end method

.method static synthetic access$0(Lcom/hf/UI/MainActivity;)Landroid/widget/TabHost;
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/hf/UI/MainActivity;->mHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$1(Lcom/hf/UI/MainActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/hf/UI/MainActivity;->mBgView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$10(Lcom/hf/UI/MainActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/hf/UI/MainActivity;->sk_guide:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$11(Lcom/hf/UI/MainActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/hf/UI/MainActivity;->cf_guide:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$12(Lcom/hf/UI/MainActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/hf/UI/MainActivity;->guideLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$13(Lcom/hf/UI/MainActivity;Lcom/hf/model/CityModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 597
    invoke-direct {p0, p1}, Lcom/hf/UI/MainActivity;->setAsDefaultCity(Lcom/hf/model/CityModel;)V

    return-void
.end method

.method static synthetic access$14(Lcom/hf/UI/MainActivity;Lcom/hf/model/CityModel;ZI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 641
    invoke-direct {p0, p1, p2, p3}, Lcom/hf/UI/MainActivity;->search(Lcom/hf/model/CityModel;ZI)V

    return-void
.end method

.method static synthetic access$15(Lcom/hf/UI/MainActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/hf/UI/MainActivity;->mADLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$16(Lcom/hf/UI/MainActivity;Lcom/hf/UI/ADView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/hf/UI/MainActivity;->mADView:Lcom/hf/UI/ADView;

    return-void
.end method

.method static synthetic access$17(Lcom/hf/UI/MainActivity;)Lcom/hf/UI/ADView;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/hf/UI/MainActivity;->mADView:Lcom/hf/UI/ADView;

    return-object v0
.end method

.method static synthetic access$18(Lcom/hf/UI/MainActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/hf/UI/MainActivity;->mADViewLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$19(Lcom/hf/UI/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 795
    invoke-direct {p0}, Lcom/hf/UI/MainActivity;->showNetwork()V

    return-void
.end method

.method static synthetic access$2(Lcom/hf/UI/MainActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/hf/UI/MainActivity;->mRefreshButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$20(Lcom/hf/UI/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 494
    invoke-direct {p0}, Lcom/hf/UI/MainActivity;->getCityFormLocation()V

    return-void
.end method

.method static synthetic access$21(Lcom/hf/UI/MainActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1084
    iput-boolean p1, p0, Lcom/hf/UI/MainActivity;->isExit:Z

    return-void
.end method

.method static synthetic access$22(Lcom/hf/UI/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 814
    invoke-direct {p0}, Lcom/hf/UI/MainActivity;->checkAD()V

    return-void
.end method

.method static synthetic access$23(Lcom/hf/UI/MainActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 996
    invoke-direct {p0, p1}, Lcom/hf/UI/MainActivity;->update(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$24(Lcom/hf/UI/MainActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/hf/UI/MainActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lcom/hf/UI/MainActivity;)Lcom/hf/location/HFLocationManager;
    .locals 1
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/hf/UI/MainActivity;->mLocationManager:Lcom/hf/location/HFLocationManager;

    return-object v0
.end method

.method static synthetic access$4(Lcom/hf/UI/MainActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/hf/UI/MainActivity;->isLocationClicked:Z

    return v0
.end method

.method static synthetic access$5(Lcom/hf/UI/MainActivity;Lcom/hf/model/CityModel;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 540
    invoke-direct {p0, p1, p2}, Lcom/hf/UI/MainActivity;->showLoctionResultDialog(Lcom/hf/model/CityModel;Z)V

    return-void
.end method

.method static synthetic access$6(Lcom/hf/UI/MainActivity;Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 384
    invoke-direct {p0, p1}, Lcom/hf/UI/MainActivity;->showTranslationDialog(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method static synthetic access$7(Lcom/hf/UI/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 353
    invoke-direct {p0}, Lcom/hf/UI/MainActivity;->sendQueryAllBroadcast()V

    return-void
.end method

.method static synthetic access$8(Lcom/hf/UI/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 447
    invoke-direct {p0}, Lcom/hf/UI/MainActivity;->showGuideLayout()V

    return-void
.end method

.method static synthetic access$9(Lcom/hf/UI/MainActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/hf/UI/MainActivity;->update_guide:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private addTabs()V
    .locals 13

    .prologue
    const v12, 0x1020016

    .line 1183
    invoke-virtual {p0}, Lcom/hf/UI/MainActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v7

    iput-object v7, p0, Lcom/hf/UI/MainActivity;->mHost:Landroid/widget/TabHost;

    .line 1185
    iget-object v7, p0, Lcom/hf/UI/MainActivity;->mHost:Landroid/widget/TabHost;

    iget-object v8, p0, Lcom/hf/UI/MainActivity;->mHost:Landroid/widget/TabHost;

    .line 1186
    const v9, 0x7f080125

    invoke-virtual {p0, v9}, Lcom/hf/UI/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    .line 1187
    const v9, 0x7f08001e

    invoke-virtual {p0, v9}, Lcom/hf/UI/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1188
    invoke-virtual {p0}, Lcom/hf/UI/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020044

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 1187
    invoke-virtual {v8, v9, v10}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    .line 1189
    new-instance v9, Landroid/content/Intent;

    const-class v10, Lcom/hf/UI/CityActivity;

    invoke-direct {v9, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v8, v9}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    .line 1185
    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 1190
    iget-object v7, p0, Lcom/hf/UI/MainActivity;->mHost:Landroid/widget/TabHost;

    iget-object v8, p0, Lcom/hf/UI/MainActivity;->mHost:Landroid/widget/TabHost;

    .line 1191
    const v9, 0x7f080126

    invoke-virtual {p0, v9}, Lcom/hf/UI/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    .line 1193
    const v9, 0x7f08001f

    invoke-virtual {p0, v9}, Lcom/hf/UI/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1194
    invoke-virtual {p0}, Lcom/hf/UI/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 1195
    const v11, 0x7f0200b6

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 1192
    invoke-virtual {v8, v9, v10}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    .line 1197
    new-instance v9, Landroid/content/Intent;

    .line 1198
    const-class v10, Lcom/hf/UI/WeatherGroupActivity;

    .line 1197
    invoke-direct {v9, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1196
    invoke-virtual {v8, v9}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    .line 1190
    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 1199
    iget-object v7, p0, Lcom/hf/UI/MainActivity;->mHost:Landroid/widget/TabHost;

    iget-object v8, p0, Lcom/hf/UI/MainActivity;->mHost:Landroid/widget/TabHost;

    .line 1200
    const v9, 0x7f080127

    invoke-virtual {p0, v9}, Lcom/hf/UI/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    .line 1202
    const v9, 0x7f080020

    invoke-virtual {p0, v9}, Lcom/hf/UI/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1203
    invoke-virtual {p0}, Lcom/hf/UI/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 1204
    const v11, 0x7f020061

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 1201
    invoke-virtual {v8, v9, v10}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    .line 1206
    new-instance v9, Landroid/content/Intent;

    const-class v10, Lcom/hf/UI/IndicesActivity;

    invoke-direct {v9, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1205
    invoke-virtual {v8, v9}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    .line 1199
    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 1207
    iget-object v7, p0, Lcom/hf/UI/MainActivity;->mHost:Landroid/widget/TabHost;

    iget-object v8, p0, Lcom/hf/UI/MainActivity;->mHost:Landroid/widget/TabHost;

    .line 1208
    const v9, 0x7f080129

    invoke-virtual {p0, v9}, Lcom/hf/UI/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    .line 1209
    const v9, 0x7f080022

    invoke-virtual {p0, v9}, Lcom/hf/UI/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1210
    invoke-virtual {p0}, Lcom/hf/UI/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020072

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 1209
    invoke-virtual {v8, v9, v10}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    .line 1212
    new-instance v9, Landroid/content/Intent;

    const-class v10, Lcom/hf/UI/MapWeatherActivity;

    invoke-direct {v9, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1211
    invoke-virtual {v8, v9}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    .line 1207
    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 1213
    iget-object v7, p0, Lcom/hf/UI/MainActivity;->mHost:Landroid/widget/TabHost;

    iget-object v8, p0, Lcom/hf/UI/MainActivity;->mHost:Landroid/widget/TabHost;

    .line 1214
    const v9, 0x7f080128

    invoke-virtual {p0, v9}, Lcom/hf/UI/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    .line 1215
    const v9, 0x7f080021

    invoke-virtual {p0, v9}, Lcom/hf/UI/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1216
    invoke-virtual {p0}, Lcom/hf/UI/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020082

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 1215
    invoke-virtual {v8, v9, v10}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    .line 1217
    new-instance v9, Landroid/content/Intent;

    const-class v10, Lcom/hf/UI/VideoActivity;

    invoke-direct {v9, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v8, v9}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    .line 1213
    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 1218
    iget-object v7, p0, Lcom/hf/UI/MainActivity;->mHost:Landroid/widget/TabHost;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 1219
    invoke-virtual {p0}, Lcom/hf/UI/MainActivity;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v6

    .line 1220
    .local v6, widget:Landroid/widget/TabWidget;
    invoke-virtual {v6}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v0

    .line 1222
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 1239
    iget-object v7, p0, Lcom/hf/UI/MainActivity;->mHost:Landroid/widget/TabHost;

    new-instance v8, Lcom/hf/UI/MainActivity$22;

    invoke-direct {v8, p0}, Lcom/hf/UI/MainActivity$22;-><init>(Lcom/hf/UI/MainActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 1252
    return-void

    .line 1223
    :cond_0
    invoke-virtual {v6, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    instance-of v7, v7, Landroid/widget/RelativeLayout;

    if-eqz v7, :cond_1

    .line 1224
    invoke-virtual {v6, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1225
    .local v5, view:Landroid/view/View;
    const v7, 0x7f020078

    invoke-virtual {v5, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1226
    invoke-virtual {v5, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1227
    .local v3, textView:Landroid/widget/TextView;
    const/4 v7, -0x1

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1228
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1229
    .local v4, titleParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1230
    const/16 v7, 0xc

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1232
    const v7, 0x1020006

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 1231
    check-cast v7, Landroid/widget/ImageView;

    .line 1232
    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1231
    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1233
    .local v2, localLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v7, 0x2

    invoke-virtual {v2, v7, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1234
    const/16 v7, 0xa

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1222
    .end local v2           #localLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3           #textView:Landroid/widget/TextView;
    .end local v4           #titleParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5           #view:Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private checkAD()V
    .locals 4

    .prologue
    .line 816
    sget-boolean v2, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v2, :cond_0

    .line 817
    const-string v2, "sort"

    const-string v3, "checkAD"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    :cond_0
    new-instance v2, Lcom/hf/UI/MainActivity$16;

    invoke-direct {v2, p0}, Lcom/hf/UI/MainActivity$16;-><init>(Lcom/hf/UI/MainActivity;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 876
    invoke-virtual {v2, v3}, Lcom/hf/UI/MainActivity$16;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 878
    new-instance v0, Lcom/hf/UI/MainActivity$17;

    invoke-direct {v0, p0}, Lcom/hf/UI/MainActivity$17;-><init>(Lcom/hf/UI/MainActivity;)V

    .line 886
    .local v0, task:Ljava/util/TimerTask;
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 887
    .local v1, timer:Ljava/util/Timer;
    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 888
    return-void
.end method

.method private getCityFormLocation()V
    .locals 7

    .prologue
    .line 495
    invoke-static {p0}, Lcom/hf/utils/Util;->isZTE(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p0}, Lcom/hf/utils/Util;->isNubia(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 496
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 497
    .local v3, preference:Landroid/content/SharedPreferences;
    const v4, 0x7f08013d

    invoke-virtual {p0, v4}, Lcom/hf/UI/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 498
    .local v1, boot:Z
    if-nez v1, :cond_2

    .line 516
    .end local v1           #boot:Z
    .end local v3           #preference:Landroid/content/SharedPreferences;
    :cond_1
    :goto_0
    return-void

    .line 502
    :cond_2
    sget-boolean v4, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v4, :cond_3

    .line 503
    const-string v4, "sort"

    const-string v5, "getCityFormLocation"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_3
    invoke-static {p0}, Lcom/hf/utils/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    .line 506
    .local v0, available:Z
    if-eqz v0, :cond_1

    .line 512
    iget-object v4, p0, Lcom/hf/UI/MainActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 513
    .local v2, message:Landroid/os/Message;
    const/16 v4, 0xc8

    iput v4, v2, Landroid/os/Message;->what:I

    .line 514
    iget-object v4, p0, Lcom/hf/UI/MainActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0xbb8

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private initCitysAndWeathers()V
    .locals 2

    .prologue
    .line 305
    sget-object v0, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    if-nez v0, :cond_0

    .line 306
    new-instance v0, Lcom/hf/UI/CityList;

    invoke-direct {v0}, Lcom/hf/UI/CityList;-><init>()V

    sput-object v0, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    .line 308
    :cond_0
    sget-object v0, Lcom/hf/HFWeatherApp;->mWeathersMap:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 309
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/hf/HFWeatherApp;->mWeathersMap:Ljava/util/Map;

    .line 312
    :cond_1
    sget-object v0, Lcom/hf/HFWeatherApp;->mWarningMap:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 313
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/hf/HFWeatherApp;->mWarningMap:Ljava/util/Map;

    .line 316
    :cond_2
    sget-object v0, Lcom/hf/HFWeatherApp;->mWeathersMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 317
    sget-object v0, Lcom/hf/HFWeatherApp;->mDefaultCity:Lcom/hf/model/CityModel;

    if-nez v0, :cond_3

    .line 318
    sget-object v0, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    invoke-virtual {v0}, Lcom/hf/UI/CityList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 319
    :cond_3
    invoke-direct {p0}, Lcom/hf/UI/MainActivity;->sendQueryAllBroadcast()V

    .line 351
    :cond_4
    :goto_0
    return-void

    .line 324
    :cond_5
    new-instance v0, Lcom/hf/UI/MainActivity$3;

    invoke-direct {v0, p0}, Lcom/hf/UI/MainActivity$3;-><init>(Lcom/hf/UI/MainActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 349
    invoke-virtual {v0, v1}, Lcom/hf/UI/MainActivity$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private queryMap()V
    .locals 2

    .prologue
    .line 1438
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.hf.QUERY_MAP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1439
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/hf/UI/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1440
    return-void
.end method

.method private queryVideo()V
    .locals 0

    .prologue
    .line 1448
    return-void
.end method

.method private registBroadCast()V
    .locals 2

    .prologue
    .line 1011
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1012
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.hf.CHANGE_CURRENT_CITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1013
    const-string v1, "com.hf.CHANGE_BACKGROUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1014
    const-string v1, "com.hf.UPDATE_ALL_WEATHER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1015
    const-string v1, "com.hf.UPDATE_ALL_WEATHER_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1017
    const-string v1, "com.hf.ADD_CITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1018
    const-string v1, "com.hf.QUERY_WEATHER_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1019
    const-string v1, "com.hf.UPDATE_WEATHER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1020
    const-string v1, "com.hf.CHANGE_DEFAULT_CITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1021
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1022
    new-instance v1, Lcom/hf/UI/MainActivity$20;

    invoke-direct {v1, p0}, Lcom/hf/UI/MainActivity$20;-><init>(Lcom/hf/UI/MainActivity;)V

    iput-object v1, p0, Lcom/hf/UI/MainActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1080
    iget-object v1, p0, Lcom/hf/UI/MainActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/hf/UI/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1082
    return-void
.end method

.method private returnWeatherActivity()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1423
    iget-object v0, p0, Lcom/hf/UI/MainActivity;->mHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1435
    :goto_0
    return-void

    .line 1427
    :cond_0
    iget-object v0, p0, Lcom/hf/UI/MainActivity;->mHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentView()Landroid/view/View;

    move-result-object v0

    .line 1429
    const v1, 0x10a0003

    .line 1428
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1427
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1430
    iget-object v0, p0, Lcom/hf/UI/MainActivity;->mHost:Landroid/widget/TabHost;

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 1431
    iget-object v0, p0, Lcom/hf/UI/MainActivity;->mHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentView()Landroid/view/View;

    move-result-object v0

    .line 1433
    const v1, 0x10a0002

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1431
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private search(Lcom/hf/model/CityModel;ZI)V
    .locals 0
    .parameter "city"
    .parameter "showDialog"
    .parameter "type"

    .prologue
    .line 642
    packed-switch p3, :pswitch_data_0

    .line 658
    :goto_0
    return-void

    .line 644
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/hf/UI/MainActivity;->searchWeather(Lcom/hf/model/CityModel;Z)V

    goto :goto_0

    .line 647
    :pswitch_1
    invoke-direct {p0}, Lcom/hf/UI/MainActivity;->searchAllWeather()V

    goto :goto_0

    .line 650
    :pswitch_2
    invoke-direct {p0}, Lcom/hf/UI/MainActivity;->queryMap()V

    goto :goto_0

    .line 653
    :pswitch_3
    invoke-direct {p0}, Lcom/hf/UI/MainActivity;->searchShowingWeather()V

    goto :goto_0

    .line 642
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private searchAllWeather()V
    .locals 4

    .prologue
    .line 1451
    .line 1452
    const v2, 0x7f040002

    .line 1451
    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1453
    .local v0, animation:Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/hf/UI/MainActivity;->mRefreshButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 1454
    iget-object v2, p0, Lcom/hf/UI/MainActivity;->mRefreshButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1455
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1456
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.hf.QUERY_ALL_WEATHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1457
    const-string v2, "tag"

    .line 1458
    const-string v3, "update button of China Weather TV app clicked"

    .line 1457
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1459
    invoke-virtual {p0, v1}, Lcom/hf/UI/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1461
    const v2, 0x7f08004b

    invoke-static {p0, v2}, Lcom/hf/utils/ToastUtil;->getToast(Landroid/content/Context;I)Landroid/widget/Toast;

    move-result-object v2

    .line 1462
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1463
    return-void
.end method

.method private searchShowingWeather()V
    .locals 2

    .prologue
    .line 1466
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1467
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.hf.UPDATE_CITY_WEATHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1468
    invoke-virtual {p0, v0}, Lcom/hf/UI/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1469
    return-void
.end method

.method private sendQueryAllBroadcast()V
    .locals 5

    .prologue
    .line 354
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 355
    .local v1, preference:Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    .line 357
    .local v2, type:I
    const v3, 0x7f080135

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/hf/UI/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "12"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 361
    :goto_0
    if-nez v2, :cond_0

    .line 372
    :goto_1
    return-void

    .line 364
    :cond_0
    sget-boolean v3, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v3, :cond_1

    .line 365
    const-string v3, "sendQueryAllBroadcast"

    const-string v4, "sendQueryAllBroadcast"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 368
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "com.hf.QUERY_ALL_WEATHER"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    const-string v3, "tag"

    .line 370
    const-string v4, "open the China Weather TV app to update weather"

    .line 369
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 371
    invoke-virtual {p0, v0}, Lcom/hf/UI/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 358
    .end local v0           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private setAsDefaultCity(Lcom/hf/model/CityModel;)V
    .locals 3
    .parameter "city"

    .prologue
    .line 598
    sget-object v1, Lcom/hf/HFWeatherApp;->mDefaultCity:Lcom/hf/model/CityModel;

    if-nez v1, :cond_1

    .line 639
    :cond_0
    :goto_0
    return-void

    .line 602
    :cond_1
    sget-object v1, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    invoke-virtual {v1, p1}, Lcom/hf/UI/CityList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 604
    sget-boolean v1, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v1, :cond_2

    .line 605
    const-string v1, "setDefault"

    iget-object v2, p1, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :cond_2
    sget-object v0, Lcom/hf/HFWeatherApp;->mDefaultCity:Lcom/hf/model/CityModel;

    .line 608
    .local v0, oldCity:Lcom/hf/model/CityModel;
    sput-object p1, Lcom/hf/HFWeatherApp;->mDefaultCity:Lcom/hf/model/CityModel;

    .line 609
    sget-object v1, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    invoke-virtual {v1, p1}, Lcom/hf/UI/CityList;->remove(Ljava/lang/Object;)Z

    .line 610
    sget-object v1, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/hf/UI/CityList;->add(ILcom/hf/model/CityModel;)V

    .line 612
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/hf/UI/MainActivity$10;

    invoke-direct {v2, p0, v0, p1}, Lcom/hf/UI/MainActivity$10;-><init>(Lcom/hf/UI/MainActivity;Lcom/hf/model/CityModel;Lcom/hf/model/CityModel;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 636
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private showAnniversaryDialog()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 1294
    iget-object v11, p0, Lcom/hf/UI/MainActivity;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v11, :cond_0

    .line 1372
    :goto_0
    return-void

    .line 1297
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1298
    .local v1, inflate:Landroid/view/LayoutInflater;
    const/high16 v11, 0x7f03

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 1300
    .local v9, view:Landroid/view/View;
    const v11, 0x7f0b0003

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1299
    check-cast v6, Landroid/widget/RelativeLayout;

    .line 1301
    .local v6, mRootLayout:Landroid/widget/RelativeLayout;
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 1302
    .local v0, dialog:Landroid/app/Dialog;
    invoke-virtual {v0, v13}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 1303
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    .line 1304
    const v12, 0x106000d

    .line 1303
    invoke-virtual {v11, v12}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 1305
    invoke-virtual {v0, v13}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1306
    invoke-virtual {v0, v9}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1309
    const v11, 0x7f0b0004

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1308
    check-cast v5, Landroid/widget/ImageView;

    .line 1311
    .local v5, mImage:Landroid/widget/ImageView;
    const v11, 0x7f0b0005

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1310
    check-cast v2, Landroid/widget/TextView;

    .line 1313
    .local v2, mContent:Landroid/widget/TextView;
    const v11, 0x7f0b0006

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1312
    check-cast v3, Landroid/widget/TextView;

    .line 1314
    .local v3, mDate:Landroid/widget/TextView;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 1315
    const v12, 0x7f080130

    invoke-virtual {p0, v12}, Lcom/hf/UI/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1314
    invoke-static {v11, v12}, Lcom/hf/utils/Util;->getDate(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1317
    const v11, 0x7f0b0007

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1316
    check-cast v4, Landroid/widget/EditText;

    .line 1318
    .local v4, mEdit:Landroid/widget/EditText;
    const v11, 0x7f0b0008

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 1320
    .local v8, shareButton:Landroid/widget/Button;
    const v11, 0x7f0b0009

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 1319
    check-cast v7, Landroid/widget/Button;

    .line 1321
    .local v7, saveButton:Landroid/widget/Button;
    iget-object v11, p0, Lcom/hf/UI/MainActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1323
    new-instance v10, Lcom/hf/UI/MainActivity$23;

    invoke-direct {v10, p0, v2}, Lcom/hf/UI/MainActivity$23;-><init>(Lcom/hf/UI/MainActivity;Landroid/widget/TextView;)V

    .line 1340
    .local v10, watcher:Landroid/text/TextWatcher;
    invoke-virtual {v4, v10}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1342
    new-instance v11, Lcom/hf/UI/MainActivity$24;

    invoke-direct {v11, p0, v6}, Lcom/hf/UI/MainActivity$24;-><init>(Lcom/hf/UI/MainActivity;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1350
    new-instance v11, Lcom/hf/UI/MainActivity$25;

    invoke-direct {v11, p0, v6, v0}, Lcom/hf/UI/MainActivity$25;-><init>(Lcom/hf/UI/MainActivity;Landroid/widget/RelativeLayout;Landroid/app/Dialog;)V

    invoke-virtual {v7, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1368
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1369
    :catch_0
    move-exception v11

    goto/16 :goto_0
.end method

.method private showExitDialg()V
    .locals 3

    .prologue
    .line 1102
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1103
    .local v0, preferences:Landroid/content/SharedPreferences;
    new-instance v1, Lcom/hf/UI/MainActivity$21;

    invoke-direct {v1, p0, v0}, Lcom/hf/UI/MainActivity$21;-><init>(Lcom/hf/UI/MainActivity;Landroid/content/SharedPreferences;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 1175
    invoke-virtual {v1, v2}, Lcom/hf/UI/MainActivity$21;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1177
    return-void
.end method

.method private showGuideLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 448
    iget-object v0, p0, Lcom/hf/UI/MainActivity;->guideLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 449
    iget-object v0, p0, Lcom/hf/UI/MainActivity;->update_guide:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 450
    iget-object v0, p0, Lcom/hf/UI/MainActivity;->sk_guide:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 451
    iget-object v0, p0, Lcom/hf/UI/MainActivity;->cf_guide:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 452
    iget-object v0, p0, Lcom/hf/UI/MainActivity;->guideLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/hf/UI/MainActivity$7;

    invoke-direct {v1, p0}, Lcom/hf/UI/MainActivity$7;-><init>(Lcom/hf/UI/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 468
    return-void
.end method

.method private showLoctionResultDialog(Lcom/hf/model/CityModel;Z)V
    .locals 10
    .parameter "city"
    .parameter "isNew"

    .prologue
    const v9, 0x7f08000a

    const v8, 0x7f080009

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 542
    const/4 v0, 0x0

    .line 543
    .local v0, content:Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 544
    invoke-static {p0}, Lcom/hf/utils/Util;->isChinese(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 545
    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/hf/model/CityModel;->cityName:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {p0, v8, v3}, Lcom/hf/UI/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 563
    :goto_0
    new-instance v1, Lcom/hf/UI/HFDialog;

    invoke-direct {v1, p0}, Lcom/hf/UI/HFDialog;-><init>(Landroid/content/Context;)V

    .line 564
    .local v1, dialog:Lcom/hf/UI/HFDialog;
    new-array v3, v6, [I

    aput v6, v3, v7

    invoke-virtual {v1, v3}, Lcom/hf/UI/HFDialog;->setStyle([I)V

    .line 565
    invoke-virtual {v1, v0}, Lcom/hf/UI/HFDialog;->setContent(Ljava/lang/String;)V

    .line 566
    const v3, 0x104000a

    .line 567
    new-instance v4, Lcom/hf/UI/MainActivity$8;

    invoke-direct {v4, p0, v1, p2, p1}, Lcom/hf/UI/MainActivity$8;-><init>(Lcom/hf/UI/MainActivity;Lcom/hf/UI/HFDialog;ZLcom/hf/model/CityModel;)V

    .line 566
    invoke-virtual {v1, v3, v4}, Lcom/hf/UI/HFDialog;->setPositiveButton(ILandroid/view/View$OnClickListener;)V

    .line 580
    const/high16 v3, 0x104

    .line 581
    new-instance v4, Lcom/hf/UI/MainActivity$9;

    invoke-direct {v4, p0, v1}, Lcom/hf/UI/MainActivity$9;-><init>(Lcom/hf/UI/MainActivity;Lcom/hf/UI/HFDialog;)V

    .line 580
    invoke-virtual {v1, v3, v4}, Lcom/hf/UI/HFDialog;->setNegativeButton(ILandroid/view/View$OnClickListener;)V

    .line 591
    :try_start_0
    invoke-virtual {v1}, Lcom/hf/UI/HFDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    :goto_1
    return-void

    .line 547
    .end local v1           #dialog:Lcom/hf/UI/HFDialog;
    :cond_0
    iget-object v3, p1, Lcom/hf/model/CityModel;->cityPinyin:Ljava/lang/String;

    .line 548
    iget-object v4, p1, Lcom/hf/model/CityModel;->cityPinyin:Ljava/lang/String;

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/hf/model/CityModel;->cityPinyin:Ljava/lang/String;

    .line 549
    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 547
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 550
    .local v2, englishName:Ljava/lang/String;
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v2, v3, v7

    invoke-virtual {p0, v8, v3}, Lcom/hf/UI/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 552
    goto :goto_0

    .line 553
    .end local v2           #englishName:Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/hf/utils/Util;->isChinese(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 554
    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/hf/model/CityModel;->cityName:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {p0, v9, v3}, Lcom/hf/UI/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 555
    goto :goto_0

    .line 556
    :cond_2
    iget-object v3, p1, Lcom/hf/model/CityModel;->cityPinyin:Ljava/lang/String;

    .line 557
    iget-object v4, p1, Lcom/hf/model/CityModel;->cityPinyin:Ljava/lang/String;

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/hf/model/CityModel;->cityPinyin:Ljava/lang/String;

    .line 558
    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 556
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 559
    .restart local v2       #englishName:Ljava/lang/String;
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v2, v3, v7

    invoke-virtual {p0, v9, v3}, Lcom/hf/UI/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 592
    .end local v2           #englishName:Ljava/lang/String;
    .restart local v1       #dialog:Lcom/hf/UI/HFDialog;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private showNetwork()V
    .locals 4

    .prologue
    .line 796
    invoke-static {p0}, Lcom/hf/manager/HFPackageManager;->getInstance(Landroid/content/Context;)Lcom/hf/manager/HFPackageManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hf/manager/HFPackageManager;->activityIsRunning()Z

    move-result v3

    if-nez v3, :cond_1

    .line 812
    :cond_0
    :goto_0
    return-void

    .line 800
    :cond_1
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/hf/UI/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 799
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 801
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 802
    .local v1, network:Landroid/net/NetworkInfo;
    if-nez v1, :cond_2

    .line 803
    const v3, 0x7f0800d3

    invoke-static {p0, v3}, Lcom/hf/utils/ToastUtil;->getToast(Landroid/content/Context;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 806
    :cond_2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 807
    .local v2, type:I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 808
    const v3, 0x7f0800d1

    invoke-static {p0, v3}, Lcom/hf/utils/ToastUtil;->getToast(Landroid/content/Context;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 809
    :cond_3
    if-nez v2, :cond_0

    .line 810
    const v3, 0x7f0800d2

    invoke-static {p0, v3}, Lcom/hf/utils/ToastUtil;->getToast(Landroid/content/Context;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private showTranslationDialog(Landroid/content/SharedPreferences;)V
    .locals 7
    .parameter "preferences"

    .prologue
    const v6, 0x7f080001

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 385
    sget-boolean v1, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v1, :cond_0

    .line 386
    const-string v1, "sort"

    const-string v2, "showTranslationDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_0
    new-instance v0, Lcom/hf/UI/HFDialog;

    invoke-direct {v0, p0}, Lcom/hf/UI/HFDialog;-><init>(Landroid/content/Context;)V

    .line 389
    .local v0, dialog:Lcom/hf/UI/HFDialog;
    const v1, 0x7f080012

    new-array v2, v4, [Ljava/lang/Object;

    .line 390
    invoke-virtual {p0, v6}, Lcom/hf/UI/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 389
    invoke-virtual {p0, v1, v2}, Lcom/hf/UI/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hf/UI/HFDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 391
    invoke-virtual {v0, v4}, Lcom/hf/UI/HFDialog;->setTitleGravity(I)V

    .line 392
    invoke-virtual {v0, v5}, Lcom/hf/UI/HFDialog;->setTitlePaddingBottom(I)V

    .line 393
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/hf/UI/HFDialog;->setContentPaddingBottomPlus(I)V

    .line 394
    const v1, 0x7f080013

    new-array v2, v4, [Ljava/lang/Object;

    .line 395
    invoke-virtual {p0, v6}, Lcom/hf/UI/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 394
    invoke-virtual {p0, v1, v2}, Lcom/hf/UI/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hf/UI/HFDialog;->setContent(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v0, v4}, Lcom/hf/UI/HFDialog;->setCanceledOnTouchOutside(Z)V

    .line 397
    new-instance v1, Lcom/hf/UI/MainActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/hf/UI/MainActivity$4;-><init>(Lcom/hf/UI/MainActivity;Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v1}, Lcom/hf/UI/HFDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 417
    invoke-virtual {v0}, Lcom/hf/UI/HFDialog;->getRootView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/hf/UI/MainActivity$5;

    invoke-direct {v2, p0, v0}, Lcom/hf/UI/MainActivity$5;-><init>(Lcom/hf/UI/MainActivity;Lcom/hf/UI/HFDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    new-instance v1, Lcom/hf/UI/MainActivity$6;

    invoke-direct {v1, p0}, Lcom/hf/UI/MainActivity$6;-><init>(Lcom/hf/UI/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/hf/UI/HFDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 441
    invoke-virtual {v0}, Lcom/hf/UI/HFDialog;->show()V

    .line 442
    return-void
.end method

.method private showUpdateDialog(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "type"
    .parameter "url"
    .parameter "log"

    .prologue
    .line 953
    sget-boolean v1, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v1, :cond_0

    .line 954
    const-string v1, "sort"

    const-string v2, "showUpdateDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    :cond_0
    new-instance v0, Lcom/hf/UI/HFDialog;

    invoke-direct {v0, p0}, Lcom/hf/UI/HFDialog;-><init>(Landroid/content/Context;)V

    .line 957
    .local v0, dialog:Lcom/hf/UI/HFDialog;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 958
    const v1, 0x7f080030

    invoke-virtual {v0, v1}, Lcom/hf/UI/HFDialog;->setContent(I)V

    .line 962
    :goto_0
    const v1, 0x7f080032

    .line 963
    new-instance v2, Lcom/hf/UI/MainActivity$18;

    invoke-direct {v2, p0, v0, p1}, Lcom/hf/UI/MainActivity$18;-><init>(Lcom/hf/UI/MainActivity;Lcom/hf/UI/HFDialog;Z)V

    .line 962
    invoke-virtual {v0, v1, v2}, Lcom/hf/UI/HFDialog;->setNegativeButton(ILandroid/view/View$OnClickListener;)V

    .line 978
    const v1, 0x7f080031

    .line 979
    new-instance v2, Lcom/hf/UI/MainActivity$19;

    invoke-direct {v2, p0, v0, p2}, Lcom/hf/UI/MainActivity$19;-><init>(Lcom/hf/UI/MainActivity;Lcom/hf/UI/HFDialog;Ljava/lang/String;)V

    .line 978
    invoke-virtual {v0, v1, v2}, Lcom/hf/UI/HFDialog;->setPositiveButton(ILandroid/view/View$OnClickListener;)V

    .line 990
    :try_start_0
    invoke-virtual {v0}, Lcom/hf/UI/HFDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 994
    :goto_1
    return-void

    .line 960
    :cond_1
    invoke-virtual {v0, p3}, Lcom/hf/UI/HFDialog;->setContent(Ljava/lang/String;)V

    goto :goto_0

    .line 991
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private translation()V
    .locals 2

    .prologue
    .line 271
    sget-boolean v0, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v0, :cond_0

    .line 272
    const-string v0, "sort"

    const-string v1, "translation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_0
    new-instance v0, Lcom/hf/UI/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/hf/UI/MainActivity$2;-><init>(Lcom/hf/UI/MainActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 297
    invoke-virtual {v0, v1}, Lcom/hf/UI/MainActivity$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 298
    return-void
.end method

.method private update(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 998
    invoke-static {p0}, Lcom/hf/utils/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 999
    const v1, 0x7f080033

    invoke-static {p0, v1}, Lcom/hf/utils/ToastUtil;->getToast(Landroid/content/Context;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1007
    :goto_0
    return-void

    .line 1003
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1004
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/hf/UI/DownloadingActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1005
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1006
    invoke-virtual {p0, v0}, Lcom/hf/UI/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public closeLoadingWeatherDialog()V
    .locals 1

    .prologue
    .line 376
    const/16 v0, 0x3ea

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/hf/UI/MainActivity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    :goto_0
    return-void

    .line 377
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 1089
    iget-boolean v0, p0, Lcom/hf/UI/MainActivity;->isExit:Z

    if-eqz v0, :cond_0

    .line 1090
    invoke-super {p0}, Landroid/app/TabActivity;->finish()V

    .line 1095
    :goto_0
    return-void

    .line 1094
    :cond_0
    invoke-direct {p0}, Lcom/hf/UI/MainActivity;->showExitDialg()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 256
    const/16 v0, 0xb

    if-ne p2, v0, :cond_0

    .line 257
    if-eqz p3, :cond_0

    .line 258
    const-string v0, "dialog_net_notice_switch"

    iget-boolean v1, p0, Lcom/hf/UI/MainActivity;->mNetNoticeSwitch:Z

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hf/UI/MainActivity;->mNetNoticeSwitch:Z

    .line 262
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/TabActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 263
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1472
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1473
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 1509
    :goto_0
    :pswitch_0
    return-void

    .line 1475
    :pswitch_1
    invoke-direct {p0}, Lcom/hf/UI/MainActivity;->returnWeatherActivity()V

    goto :goto_0

    .line 1478
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/hf/preference/SettingActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1479
    .local v1, settingIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/hf/UI/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1482
    .end local v1           #settingIntent:Landroid/content/Intent;
    :pswitch_3
    iget-object v2, p0, Lcom/hf/UI/MainActivity;->mHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    .line 1484
    :pswitch_4
    const/4 v2, 0x1

    invoke-virtual {p0, v4, v3, v2}, Lcom/hf/UI/MainActivity;->showHttpDialog(Lcom/hf/model/CityModel;ZI)V

    goto :goto_0

    .line 1488
    :pswitch_5
    const/4 v2, 0x3

    invoke-virtual {p0, v4, v3, v2}, Lcom/hf/UI/MainActivity;->showHttpDialog(Lcom/hf/model/CityModel;ZI)V

    goto :goto_0

    .line 1491
    :pswitch_6
    invoke-direct {p0}, Lcom/hf/UI/MainActivity;->queryVideo()V

    goto :goto_0

    .line 1494
    :pswitch_7
    const/4 v2, 0x2

    invoke-virtual {p0, v4, v3, v2}, Lcom/hf/UI/MainActivity;->showHttpDialog(Lcom/hf/model/CityModel;ZI)V

    goto :goto_0

    .line 1503
    :pswitch_8
    iget-object v2, p0, Lcom/hf/UI/MainActivity;->mADLayout:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 1473
    :pswitch_data_0
    .packed-switch 0x7f0b0075
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_2
    .end packed-switch

    .line 1482
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 201
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 202
    invoke-static {p0}, Lcom/hf/utils/Util;->isNubia(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0}, Lcom/hf/utils/Util;->isZTE(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 203
    :cond_0
    invoke-static {p0}, Lcom/hf/manager/MemoryManager;->getInstance(Landroid/content/Context;)Lcom/hf/manager/MemoryManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hf/manager/MemoryManager;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 204
    iput-boolean v4, p0, Lcom/hf/UI/MainActivity;->isExit:Z

    .line 205
    const v3, 0x7f08000e

    invoke-virtual {p0, v3}, Lcom/hf/UI/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 206
    invoke-virtual {p0}, Lcom/hf/UI/MainActivity;->finish()V

    .line 251
    :goto_0
    return-void

    .line 211
    :cond_1
    const v3, 0x7f03001b

    invoke-virtual {p0, v3}, Lcom/hf/UI/MainActivity;->setContentView(I)V

    .line 212
    invoke-direct {p0}, Lcom/hf/UI/MainActivity;->initCitysAndWeathers()V

    .line 213
    invoke-virtual {p0}, Lcom/hf/UI/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 214
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "dialog_net_notice_switch"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 215
    const-string v3, "dialog_net_notice_switch"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/hf/UI/MainActivity;->mNetNoticeSwitch:Z

    .line 221
    :goto_1
    invoke-static {p0}, Lcom/hf/location/HFLocationManager;->getInstance(Landroid/content/Context;)Lcom/hf/location/HFLocationManager;

    move-result-object v3

    iput-object v3, p0, Lcom/hf/UI/MainActivity;->mLocationManager:Lcom/hf/location/HFLocationManager;

    .line 223
    const v3, 0x7f0b0075

    invoke-virtual {p0, v3}, Lcom/hf/UI/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/hf/UI/MainActivity;->mLocateButton:Landroid/widget/ImageButton;

    .line 224
    const v3, 0x7f0b007a

    invoke-virtual {p0, v3}, Lcom/hf/UI/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/hf/UI/MainActivity;->mSettingButton:Landroid/widget/ImageButton;

    .line 225
    const v3, 0x7f0b0076

    invoke-virtual {p0, v3}, Lcom/hf/UI/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/hf/UI/MainActivity;->mRefreshButton:Landroid/widget/ImageButton;

    .line 226
    iget-object v3, p0, Lcom/hf/UI/MainActivity;->mLocateButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v3, p0, Lcom/hf/UI/MainActivity;->mRefreshButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v3, p0, Lcom/hf/UI/MainActivity;->mSettingButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    const v3, 0x7f0b007c

    invoke-virtual {p0, v3}, Lcom/hf/UI/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/hf/UI/MainActivity;->guideLayout:Landroid/widget/RelativeLayout;

    .line 230
    iget-object v3, p0, Lcom/hf/UI/MainActivity;->guideLayout:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 231
    const v3, 0x7f0b007d

    invoke-virtual {p0, v3}, Lcom/hf/UI/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/hf/UI/MainActivity;->update_guide:Landroid/widget/LinearLayout;

    .line 232
    const v3, 0x7f0b007e

    invoke-virtual {p0, v3}, Lcom/hf/UI/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/hf/UI/MainActivity;->sk_guide:Landroid/widget/LinearLayout;

    .line 233
    const v3, 0x7f0b007f

    invoke-virtual {p0, v3}, Lcom/hf/UI/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/hf/UI/MainActivity;->cf_guide:Landroid/widget/LinearLayout;

    .line 235
    const v3, 0x7f0b0077

    invoke-virtual {p0, v3}, Lcom/hf/UI/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/hf/UI/MainActivity;->mADLayout:Landroid/widget/RelativeLayout;

    .line 236
    const v3, 0x7f0b0078

    invoke-virtual {p0, v3}, Lcom/hf/UI/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/hf/UI/MainActivity;->mADViewLayout:Landroid/widget/LinearLayout;

    .line 237
    const v3, 0x7f0b0079

    invoke-virtual {p0, v3}, Lcom/hf/UI/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/hf/UI/MainActivity;->mADCloseButton:Landroid/widget/ImageButton;

    .line 238
    iget-object v3, p0, Lcom/hf/UI/MainActivity;->mADCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    invoke-direct {p0}, Lcom/hf/UI/MainActivity;->addTabs()V

    .line 242
    invoke-direct {p0}, Lcom/hf/UI/MainActivity;->registBroadCast()V

    .line 243
    const v3, 0x7f0b0073

    invoke-virtual {p0, v3}, Lcom/hf/UI/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/hf/UI/MainActivity;->mBgView:Landroid/widget/LinearLayout;

    .line 245
    iget-object v3, p0, Lcom/hf/UI/MainActivity;->mBgView:Landroid/widget/LinearLayout;

    invoke-static {v3, p0}, Lcom/hf/utils/Util;->setRootViewBackground(Landroid/view/View;Landroid/content/Context;)V

    .line 246
    invoke-direct {p0}, Lcom/hf/UI/MainActivity;->translation()V

    .line 247
    const v3, 0x7f0b007b

    invoke-virtual {p0, v3}, Lcom/hf/UI/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 248
    .local v0, adLayout:Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/hf/ad/AdManager;->instance()Lcom/hf/ad/AdManager;

    move-result-object v3

    invoke-virtual {v3, p0, v0, v5, v5}, Lcom/hf/ad/AdManager;->showBanner(Landroid/app/Activity;Landroid/view/ViewGroup;IZ)V

    .line 249
    invoke-static {p0}, Lcom/hf/utils/UpdateUtils;->onUpdate(Landroid/content/Context;)V

    .line 250
    invoke-direct {p0}, Lcom/hf/UI/MainActivity;->getCityFormLocation()V

    goto/16 :goto_0

    .line 217
    .end local v0           #adLayout:Landroid/widget/LinearLayout;
    :cond_2
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 218
    .local v2, preferences:Landroid/content/SharedPreferences;
    const-string v3, "dialog_net_notice_switch"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/hf/UI/MainActivity;->mNetNoticeSwitch:Z

    goto/16 :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 752
    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_0

    .line 753
    new-instance v0, Lcom/hf/UI/HFDialog;

    invoke-direct {v0, p0}, Lcom/hf/UI/HFDialog;-><init>(Landroid/content/Context;)V

    .line 754
    .local v0, dialog:Lcom/hf/UI/HFDialog;
    new-array v1, v3, [I

    aput v4, v1, v2

    invoke-virtual {v0, v1}, Lcom/hf/UI/HFDialog;->setStyle([I)V

    .line 755
    const v1, 0x7f08003f

    invoke-virtual {v0, v1}, Lcom/hf/UI/HFDialog;->setContent(I)V

    .line 756
    new-instance v1, Lcom/hf/UI/MainActivity$14;

    invoke-direct {v1, p0}, Lcom/hf/UI/MainActivity$14;-><init>(Lcom/hf/UI/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/hf/UI/HFDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 789
    .end local v0           #dialog:Lcom/hf/UI/HFDialog;
    :goto_0
    return-object v0

    .line 771
    :cond_0
    const/16 v1, 0x3ea

    if-ne p1, v1, :cond_1

    .line 772
    new-instance v0, Lcom/hf/UI/HFDialog;

    invoke-direct {v0, p0}, Lcom/hf/UI/HFDialog;-><init>(Landroid/content/Context;)V

    .line 773
    .restart local v0       #dialog:Lcom/hf/UI/HFDialog;
    new-array v1, v3, [I

    aput v4, v1, v2

    invoke-virtual {v0, v1}, Lcom/hf/UI/HFDialog;->setStyle([I)V

    .line 774
    const v1, 0x7f08002e

    invoke-virtual {v0, v1}, Lcom/hf/UI/HFDialog;->setContent(I)V

    .line 775
    new-instance v1, Lcom/hf/UI/MainActivity$15;

    invoke-direct {v1, p0}, Lcom/hf/UI/MainActivity$15;-><init>(Lcom/hf/UI/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/hf/UI/HFDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_0

    .line 789
    .end local v0           #dialog:Lcom/hf/UI/HFDialog;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 1256
    invoke-virtual {p0}, Lcom/hf/UI/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1257
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 1413
    invoke-super {p0}, Landroid/app/TabActivity;->onDestroy()V

    .line 1414
    iget-object v1, p0, Lcom/hf/UI/MainActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/hf/UI/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1415
    invoke-virtual {p0}, Lcom/hf/UI/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/hf/HFWeatherApp;

    .line 1416
    .local v0, app:Lcom/hf/HFWeatherApp;
    invoke-virtual {v0}, Lcom/hf/HFWeatherApp;->clearData()V

    .line 1417
    invoke-static {}, Lcom/hf/ad/AdManager;->instance()Lcom/hf/ad/AdManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hf/ad/AdManager;->alloc()V

    .line 1418
    invoke-static {p0}, Lcom/hf/manager/HFPackageManager;->getInstance(Landroid/content/Context;)Lcom/hf/manager/HFPackageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hf/manager/HFPackageManager;->exitFromActivity()V

    .line 1420
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 473
    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/hf/UI/MainActivity;->guideLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/hf/UI/MainActivity;->update_guide:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/hf/UI/MainActivity;->update_guide:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 477
    iget-object v0, p0, Lcom/hf/UI/MainActivity;->sk_guide:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 488
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/TabActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 478
    :cond_1
    iget-object v0, p0, Lcom/hf/UI/MainActivity;->sk_guide:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 479
    iget-object v0, p0, Lcom/hf/UI/MainActivity;->sk_guide:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 480
    iget-object v0, p0, Lcom/hf/UI/MainActivity;->cf_guide:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 481
    :cond_2
    iget-object v0, p0, Lcom/hf/UI/MainActivity;->cf_guide:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/hf/UI/MainActivity;->cf_guide:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 483
    iget-object v0, p0, Lcom/hf/UI/MainActivity;->guideLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 1263
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1265
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 1287
    :goto_0
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 1267
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/hf/preference/SettingActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1268
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/hf/UI/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1271
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/hf/UI/MapActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1272
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "dialog_net_notice_switch"

    iget-boolean v3, p0, Lcom/hf/UI/MainActivity;->mNetNoticeSwitch:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1273
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/hf/UI/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1276
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_2
    invoke-static {}, Lcom/hf/share/ShareManager;->instance()Lcom/hf/share/ShareManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/hf/share/ShareManager;->showShareDialog(Landroid/content/Context;)V

    goto :goto_0

    .line 1279
    :pswitch_3
    invoke-direct {p0}, Lcom/hf/UI/MainActivity;->showAnniversaryDialog()V

    goto :goto_0

    .line 1282
    :pswitch_4
    invoke-static {}, Lcom/hf/ad/AdManager;->instance()Lcom/hf/ad/AdManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/hf/ad/AdManager;->showWall(Landroid/app/Activity;)V

    goto :goto_0

    .line 1265
    :pswitch_data_0
    .packed-switch 0x7f0b00fc
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onResult(ILcom/hf/model/CityModel;)V
    .locals 4
    .parameter "result"
    .parameter "city"

    .prologue
    .line 1514
    sget-boolean v1, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v1, :cond_0

    .line 1515
    const-string v1, "Location-MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "result = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    :cond_0
    iget-object v1, p0, Lcom/hf/UI/MainActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1519
    .local v0, message:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1520
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1521
    iget-object v1, p0, Lcom/hf/UI/MainActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1523
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 521
    invoke-super {p0}, Landroid/app/TabActivity;->onStop()V

    .line 523
    sget-boolean v0, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v0, :cond_0

    .line 524
    const-string v0, "onStop"

    const-string v1, "main onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/hf/UI/MainActivity;->mLocationManager:Lcom/hf/location/HFLocationManager;

    invoke-virtual {v0}, Lcom/hf/location/HFLocationManager;->cancle()V

    .line 531
    return-void
.end method

.method public screenShot()V
    .locals 9

    .prologue
    .line 1381
    :try_start_0
    invoke-virtual {p0}, Lcom/hf/UI/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    .line 1382
    .local v4, view:Landroid/view/View;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1383
    .local v2, frame:Landroid/graphics/Rect;
    invoke-virtual {v4, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1384
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1385
    invoke-virtual {v4}, Landroid/view/View;->buildDrawingCache()V

    .line 1386
    invoke-virtual {v4}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1387
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 1409
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #frame:Landroid/graphics/Rect;
    .end local v4           #view:Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 1390
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v2       #frame:Landroid/graphics/Rect;
    .restart local v4       #view:Landroid/view/View;
    :cond_1
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1391
    .local v1, bmp:Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/view/View;->destroyDrawingCache()V

    .line 1392
    if-eqz v1, :cond_0

    .line 1395
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 1396
    .local v5, width:I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 1397
    .local v3, height:I
    iget-object v6, p0, Lcom/hf/UI/MainActivity;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_2

    .line 1398
    iget-object v6, p0, Lcom/hf/UI/MainActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 1399
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/hf/UI/MainActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 1401
    :cond_2
    const/4 v6, 0x0

    iget v7, v2, Landroid/graphics/Rect;->top:I

    .line 1402
    iget v8, v2, Landroid/graphics/Rect;->top:I

    sub-int v8, v3, v8

    .line 1401
    invoke-static {v1, v6, v7, v5, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/hf/UI/MainActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 1403
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1404
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #bmp:Landroid/graphics/Bitmap;
    .end local v2           #frame:Landroid/graphics/Rect;
    .end local v3           #height:I
    .end local v4           #view:Landroid/view/View;
    .end local v5           #width:I
    :catch_0
    move-exception v6

    goto :goto_0

    .line 1406
    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method protected searchWeather(Lcom/hf/model/CityModel;Z)V
    .locals 4
    .parameter "city"
    .parameter "showDialog"

    .prologue
    .line 726
    if-nez p1, :cond_0

    .line 748
    :goto_0
    return-void

    .line 729
    :cond_0
    if-eqz p2, :cond_1

    .line 731
    const/16 v2, 0x3e9

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/hf/UI/MainActivity;->showDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    :cond_1
    :goto_1
    iget-object v2, p1, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/hf/utils/Util;->hasCity(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 738
    .local v0, hasCity:Z
    if-eqz v0, :cond_2

    .line 739
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.hf.QUERY_WEATHER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 740
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "cityID"

    iget-object v3, p1, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 747
    :goto_2
    invoke-virtual {p0, v1}, Lcom/hf/UI/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 743
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.hf.QUERY_NEW_CITY_WEATHER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 744
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "cityID"

    iget-object v3, p1, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 732
    .end local v0           #hasCity:Z
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public setIsLocationClicked(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 266
    iput-boolean p1, p0, Lcom/hf/UI/MainActivity;->isLocationClicked:Z

    .line 267
    return-void
.end method

.method setmNetNoticeSwitch(Z)V
    .locals 4
    .parameter "netNoticeSwitch"

    .prologue
    .line 1526
    iput-boolean p1, p0, Lcom/hf/UI/MainActivity;->mNetNoticeSwitch:Z

    .line 1527
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1528
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1529
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "dialog_net_notice_switch"

    iget-boolean v3, p0, Lcom/hf/UI/MainActivity;->mNetNoticeSwitch:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1530
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1531
    return-void
.end method

.method public showHttpDialog(Lcom/hf/model/CityModel;ZI)V
    .locals 8
    .parameter "city"
    .parameter "showDialog"
    .parameter "type"

    .prologue
    .line 667
    invoke-static {p0}, Lcom/hf/utils/Util;->getNetworkType(Landroid/content/Context;)I

    move-result v6

    .line 668
    .local v6, net_type:I
    if-eqz v6, :cond_0

    const/4 v0, 0x2

    if-ne v6, v0, :cond_1

    .line 669
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/hf/UI/MainActivity;->search(Lcom/hf/model/CityModel;ZI)V

    .line 716
    :goto_0
    return-void

    .line 673
    :cond_1
    iget-boolean v0, p0, Lcom/hf/UI/MainActivity;->mNetNoticeSwitch:Z

    if-eqz v0, :cond_2

    .line 674
    invoke-direct {p0, p1, p2, p3}, Lcom/hf/UI/MainActivity;->search(Lcom/hf/model/CityModel;ZI)V

    goto :goto_0

    .line 678
    :cond_2
    new-instance v2, Lcom/hf/UI/HFDialog;

    invoke-direct {v2, p0}, Lcom/hf/UI/HFDialog;-><init>(Landroid/content/Context;)V

    .line 679
    .local v2, dialog:Lcom/hf/UI/HFDialog;
    const v0, 0x7f0200b7

    invoke-virtual {v2, v0}, Lcom/hf/UI/HFDialog;->setIcon(I)V

    .line 680
    const v0, 0x7f08009f

    invoke-virtual {v2, v0}, Lcom/hf/UI/HFDialog;->setTitle(I)V

    .line 681
    const v0, 0x7f0800a0

    invoke-virtual {v2, v0}, Lcom/hf/UI/HFDialog;->setContent(I)V

    .line 682
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/hf/UI/HFDialog;->setTitlePaddingBottom(I)V

    .line 683
    const/high16 v0, 0x104

    .line 684
    new-instance v1, Lcom/hf/UI/MainActivity$11;

    invoke-direct {v1, p0, v2}, Lcom/hf/UI/MainActivity$11;-><init>(Lcom/hf/UI/MainActivity;Lcom/hf/UI/HFDialog;)V

    .line 683
    invoke-virtual {v2, v0, v1}, Lcom/hf/UI/HFDialog;->setNegativeButton(ILandroid/view/View$OnClickListener;)V

    .line 692
    const v7, 0x104000a

    .line 693
    new-instance v0, Lcom/hf/UI/MainActivity$12;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/hf/UI/MainActivity$12;-><init>(Lcom/hf/UI/MainActivity;Lcom/hf/UI/HFDialog;Lcom/hf/model/CityModel;ZI)V

    .line 692
    invoke-virtual {v2, v7, v0}, Lcom/hf/UI/HFDialog;->setNeutralButton(ILandroid/view/View$OnClickListener;)V

    .line 703
    const v7, 0x7f0800a1

    .line 704
    new-instance v0, Lcom/hf/UI/MainActivity$13;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/hf/UI/MainActivity$13;-><init>(Lcom/hf/UI/MainActivity;Lcom/hf/UI/HFDialog;Lcom/hf/model/CityModel;ZI)V

    .line 703
    invoke-virtual {v2, v7, v0}, Lcom/hf/UI/HFDialog;->setPositiveButton(ILandroid/view/View$OnClickListener;)V

    .line 715
    invoke-virtual {v2}, Lcom/hf/UI/HFDialog;->show()V

    goto :goto_0
.end method
