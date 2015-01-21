.class public Lcom/hf/UI/SKView;
.super Landroid/widget/RelativeLayout;
.source "SKView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SKView"


# instance fields
.field public isQuering:Z

.field private mActivity:Lcom/hf/UI/WeatherGroupActivity;

.field public mCity:Lcom/hf/model/CityModel;

.field private mCityName:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mHumidity:Landroid/widget/TextView;

.field private mHumidityTitle:Landroid/widget/TextView;

.field private mPressure:Landroid/widget/TextView;

.field private mPressureTitle:Landroid/widget/TextView;

.field private mPublish:Landroid/widget/TextView;

.field private mSolarData:Landroid/widget/TextView;

.field private mTemperature:Landroid/widget/TextView;

.field private mTrendImageView:Landroid/widget/ImageView;

.field private mTrendLayout:Landroid/widget/LinearLayout;

.field private mTrendTextView:Landroid/widget/TextView;

.field private mUpdating:Landroid/widget/TextView;

.field private mWarnImage:Landroid/widget/ImageView;

.field private mWarnLayout:Landroid/widget/LinearLayout;

.field private mWeatherImage:Landroid/widget/ImageView;

.field private mWeatherText:Landroid/widget/TextView;

.field private mWind:Landroid/widget/TextView;

.field private mWindSpeed:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hf/UI/SKView;->isQuering:Z

    .line 61
    iput-object p1, p0, Lcom/hf/UI/SKView;->mContext:Landroid/content/Context;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hf/UI/SKView;->isQuering:Z

    .line 66
    iput-object p1, p0, Lcom/hf/UI/SKView;->mContext:Landroid/content/Context;

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hf/UI/SKView;->isQuering:Z

    .line 71
    iput-object p1, p0, Lcom/hf/UI/SKView;->mContext:Landroid/content/Context;

    .line 72
    return-void
.end method

.method static synthetic access$0(Lcom/hf/UI/SKView;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/hf/UI/SKView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/hf/UI/SKView;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/hf/UI/SKView;->mTemperature:Landroid/widget/TextView;

    return-object v0
.end method

.method private setTemperature(Lcom/hf/model/SKWeather;Lcom/hf/model/CFWeather;)V
    .locals 2
    .parameter "skWeather"
    .parameter "cfWeather"

    .prologue
    .line 260
    new-instance v0, Lcom/hf/UI/SKView$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/hf/UI/SKView$2;-><init>(Lcom/hf/UI/SKView;Lcom/hf/model/SKWeather;Lcom/hf/model/CFWeather;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 282
    invoke-virtual {v0, v1}, Lcom/hf/UI/SKView$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 284
    return-void
.end method


# virtual methods
.method public endQuery()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 314
    iget-object v0, p0, Lcom/hf/UI/SKView;->mUpdating:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/hf/UI/SKView;->mPublish:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 316
    iput-boolean v2, p0, Lcom/hf/UI/SKView;->isQuering:Z

    .line 317
    return-void
.end method

.method public onBindView(Lcom/hf/model/CityModel;)V
    .locals 14
    .parameter "city"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/hf/UI/SKView;->mCity:Lcom/hf/model/CityModel;

    .line 128
    iget-object v11, p0, Lcom/hf/UI/SKView;->mCity:Lcom/hf/model/CityModel;

    if-eqz v11, :cond_0

    sget-object v11, Lcom/hf/HFWeatherApp;->mWeathersMap:Ljava/util/Map;

    if-nez v11, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    sget-object v11, Lcom/hf/HFWeatherApp;->mWeathersMap:Ljava/util/Map;

    iget-object v12, p0, Lcom/hf/UI/SKView;->mCity:Lcom/hf/model/CityModel;

    iget-object v12, v12, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/hf/model/WeatherModel;

    .line 133
    .local v7, weatherModel:Lcom/hf/model/WeatherModel;
    if-eqz v7, :cond_0

    .line 136
    iget-object v11, v7, Lcom/hf/model/WeatherModel;->weatherList:Ljava/util/List;

    if-eqz v11, :cond_0

    iget-object v11, v7, Lcom/hf/model/WeatherModel;->weatherList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 139
    iget-object v11, v7, Lcom/hf/model/WeatherModel;->weatherList:Ljava/util/List;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hf/model/CFWeather;

    .line 140
    .local v0, cfweather:Lcom/hf/model/CFWeather;
    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/hf/UI/SKView;->setCityName()V

    .line 144
    iget-object v11, p0, Lcom/hf/UI/SKView;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/hf/utils/Util;->getDateString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, dateTime:Ljava/lang/String;
    iget-object v11, p0, Lcom/hf/UI/SKView;->mSolarData:Landroid/widget/TextView;

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v4, v7, Lcom/hf/model/WeatherModel;->skWeather:Lcom/hf/model/SKWeather;

    .line 148
    .local v4, skWeather:Lcom/hf/model/SKWeather;
    const/4 v8, 0x0

    .line 149
    .local v8, weatherTextStr:Ljava/lang/String;
    const/4 v9, 0x0

    .line 150
    .local v9, wind:Ljava/lang/String;
    const/4 v10, 0x0

    .line 151
    .local v10, windSpeed:Ljava/lang/String;
    const/4 v3, 0x0

    .line 152
    .local v3, skReportTime:Ljava/lang/String;
    const/4 v2, 0x0

    .line 154
    .local v2, imageId:I
    if-nez v4, :cond_4

    .line 155
    iget-object v11, p0, Lcom/hf/UI/SKView;->mContext:Landroid/content/Context;

    invoke-static {v11, v0}, Lcom/hf/utils/WeatherUtils;->getSKWeatherString(Landroid/content/Context;Lcom/hf/model/CFWeather;)Ljava/lang/String;

    move-result-object v8

    .line 156
    iget-object v11, p0, Lcom/hf/UI/SKView;->mContext:Landroid/content/Context;

    invoke-static {v11, v0}, Lcom/hf/utils/WeatherUtils;->getCFWindString(Landroid/content/Context;Lcom/hf/model/CFWeather;)Ljava/lang/String;

    move-result-object v9

    .line 157
    invoke-static {v0}, Lcom/hf/utils/WeatherUtils;->getCfWeatherImageId(Lcom/hf/model/CFWeather;)I

    move-result v2

    .line 165
    :goto_1
    iget-object v11, p0, Lcom/hf/UI/SKView;->mContext:Landroid/content/Context;

    invoke-static {v11, v7}, Lcom/hf/utils/WeatherUtils;->getSKReportTime(Landroid/content/Context;Lcom/hf/model/WeatherModel;)Ljava/lang/String;

    move-result-object v3

    .line 166
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 167
    iget-object v11, p0, Lcom/hf/UI/SKView;->mContext:Landroid/content/Context;

    const v12, 0x7f080065

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 172
    :goto_2
    iget-object v11, p0, Lcom/hf/UI/SKView;->mWeatherImage:Landroid/widget/ImageView;

    invoke-virtual {v11, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 173
    iget-object v11, p0, Lcom/hf/UI/SKView;->mWeatherText:Landroid/widget/TextView;

    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v11, p0, Lcom/hf/UI/SKView;->mWind:Landroid/widget/TextView;

    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v11, p0, Lcom/hf/UI/SKView;->mWindSpeed:Landroid/widget/TextView;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v11, p0, Lcom/hf/UI/SKView;->mPublish:Landroid/widget/TextView;

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    if-eqz v4, :cond_2

    iget-object v11, v4, Lcom/hf/model/SKWeather;->currentPressure:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 179
    :cond_2
    iget-object v11, p0, Lcom/hf/UI/SKView;->mPressure:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    iget-object v11, p0, Lcom/hf/UI/SKView;->mPressureTitle:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    :goto_3
    if-eqz v4, :cond_3

    iget-object v11, v4, Lcom/hf/model/SKWeather;->currentHumidity:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 189
    :cond_3
    iget-object v11, p0, Lcom/hf/UI/SKView;->mHumidity:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    iget-object v11, p0, Lcom/hf/UI/SKView;->mHumidityTitle:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 197
    :goto_4
    invoke-direct {p0, v4, v0}, Lcom/hf/UI/SKView;->setTemperature(Lcom/hf/model/SKWeather;Lcom/hf/model/CFWeather;)V

    .line 199
    sget-object v11, Lcom/hf/HFWeatherApp;->mWarningMap:Ljava/util/Map;

    if-nez v11, :cond_8

    .line 200
    iget-object v11, p0, Lcom/hf/UI/SKView;->mWarnLayout:Landroid/widget/LinearLayout;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 159
    :cond_4
    iget-object v11, p0, Lcom/hf/UI/SKView;->mContext:Landroid/content/Context;

    invoke-static {v11, v4}, Lcom/hf/utils/WeatherUtils;->getSKWeatherString(Landroid/content/Context;Lcom/hf/model/SKWeather;)Ljava/lang/String;

    move-result-object v8

    .line 160
    iget-object v11, p0, Lcom/hf/UI/SKView;->mContext:Landroid/content/Context;

    invoke-static {v11, v4}, Lcom/hf/utils/WeatherUtils;->getSkWindString(Landroid/content/Context;Lcom/hf/model/SKWeather;)Ljava/lang/String;

    move-result-object v9

    .line 161
    iget-object v10, v4, Lcom/hf/model/SKWeather;->currentWindSpeed:Ljava/lang/String;

    .line 162
    invoke-static {v4}, Lcom/hf/utils/WeatherUtils;->getSkWeatherImageId(Lcom/hf/model/SKWeather;)I

    move-result v2

    goto :goto_1

    .line 169
    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/hf/UI/SKView;->mContext:Landroid/content/Context;

    const v13, 0x7f080065

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 183
    :cond_6
    iget-object v11, p0, Lcom/hf/UI/SKView;->mPressure:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    iget-object v11, p0, Lcom/hf/UI/SKView;->mPressureTitle:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    iget-object v11, p0, Lcom/hf/UI/SKView;->mPressure:Landroid/widget/TextView;

    iget-object v12, v4, Lcom/hf/model/SKWeather;->currentPressure:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 192
    :cond_7
    iget-object v11, p0, Lcom/hf/UI/SKView;->mHumidity:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    iget-object v11, p0, Lcom/hf/UI/SKView;->mHumidityTitle:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    iget-object v11, p0, Lcom/hf/UI/SKView;->mHumidity:Landroid/widget/TextView;

    iget-object v12, v4, Lcom/hf/model/SKWeather;->currentHumidity:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 202
    :cond_8
    sget-object v11, Lcom/hf/HFWeatherApp;->mWarningMap:Ljava/util/Map;

    iget-object v12, p0, Lcom/hf/UI/SKView;->mCity:Lcom/hf/model/CityModel;

    iget-object v12, v12, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 203
    .local v6, warningList:Ljava/util/List;,"Ljava/util/List<Lcom/hf/model/WarningModel;>;"
    if-eqz v6, :cond_a

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_a

    .line 204
    const/4 v11, 0x0

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hf/model/WarningModel;

    .line 205
    .local v5, warning:Lcom/hf/model/WarningModel;
    if-nez v5, :cond_9

    .line 206
    iget-object v11, p0, Lcom/hf/UI/SKView;->mWarnLayout:Landroid/widget/LinearLayout;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 209
    :cond_9
    iget-object v11, p0, Lcom/hf/UI/SKView;->mWarnImage:Landroid/widget/ImageView;

    iget v12, v5, Lcom/hf/model/WarningModel;->bigImageId:I

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 210
    iget-object v11, p0, Lcom/hf/UI/SKView;->mWarnLayout:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 211
    iget-object v11, p0, Lcom/hf/UI/SKView;->mWarnLayout:Landroid/widget/LinearLayout;

    new-instance v12, Lcom/hf/UI/SKView$1;

    invoke-direct {v12, p0, v6, v5}, Lcom/hf/UI/SKView$1;-><init>(Lcom/hf/UI/SKView;Ljava/util/List;Lcom/hf/model/WarningModel;)V

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 232
    .end local v5           #warning:Lcom/hf/model/WarningModel;
    :cond_a
    iget-object v11, p0, Lcom/hf/UI/SKView;->mWarnLayout:Landroid/widget/LinearLayout;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 332
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 333
    .local v0, id:I
    const v1, 0x7f0b00e8

    if-ne v0, v1, :cond_0

    .line 334
    iget-object v1, p0, Lcom/hf/UI/SKView;->mActivity:Lcom/hf/UI/WeatherGroupActivity;

    invoke-virtual {v1}, Lcom/hf/UI/WeatherGroupActivity;->changeCF()V

    .line 336
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 82
    sget-boolean v0, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v0, :cond_0

    .line 83
    const-string v0, "SKView"

    const-string v1, "onFinishInflate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    const v0, 0x7f0b00e1

    invoke-virtual {p0, v0}, Lcom/hf/UI/SKView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hf/UI/SKView;->mCityName:Landroid/widget/TextView;

    .line 87
    const v0, 0x7f0b00e2

    invoke-virtual {p0, v0}, Lcom/hf/UI/SKView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hf/UI/SKView;->mSolarData:Landroid/widget/TextView;

    .line 88
    const v0, 0x7f0b00e5

    invoke-virtual {p0, v0}, Lcom/hf/UI/SKView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hf/UI/SKView;->mWeatherText:Landroid/widget/TextView;

    .line 89
    const v0, 0x7f0b00ef

    invoke-virtual {p0, v0}, Lcom/hf/UI/SKView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hf/UI/SKView;->mTemperature:Landroid/widget/TextView;

    .line 90
    const v0, 0x7f0b00f2

    invoke-virtual {p0, v0}, Lcom/hf/UI/SKView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hf/UI/SKView;->mWind:Landroid/widget/TextView;

    .line 91
    const v0, 0x7f0b00f3

    invoke-virtual {p0, v0}, Lcom/hf/UI/SKView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hf/UI/SKView;->mWindSpeed:Landroid/widget/TextView;

    .line 92
    const v0, 0x7f0b00f6

    invoke-virtual {p0, v0}, Lcom/hf/UI/SKView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hf/UI/SKView;->mPressure:Landroid/widget/TextView;

    .line 93
    const v0, 0x7f0b00f5

    invoke-virtual {p0, v0}, Lcom/hf/UI/SKView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hf/UI/SKView;->mPressureTitle:Landroid/widget/TextView;

    .line 94
    const v0, 0x7f0b00f8

    invoke-virtual {p0, v0}, Lcom/hf/UI/SKView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hf/UI/SKView;->mHumidity:Landroid/widget/TextView;

    .line 95
    const v0, 0x7f0b00f7

    invoke-virtual {p0, v0}, Lcom/hf/UI/SKView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hf/UI/SKView;->mHumidityTitle:Landroid/widget/TextView;

    .line 96
    const v0, 0x7f0b00f9

    invoke-virtual {p0, v0}, Lcom/hf/UI/SKView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hf/UI/SKView;->mPublish:Landroid/widget/TextView;

    .line 97
    const v0, 0x7f0b00fa

    invoke-virtual {p0, v0}, Lcom/hf/UI/SKView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hf/UI/SKView;->mUpdating:Landroid/widget/TextView;

    .line 98
    const v0, 0x7f0b00e7

    invoke-virtual {p0, v0}, Lcom/hf/UI/SKView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/hf/UI/SKView;->mWarnLayout:Landroid/widget/LinearLayout;

    .line 99
    const v0, 0x7f0b00e9

    invoke-virtual {p0, v0}, Lcom/hf/UI/SKView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/hf/UI/SKView;->mWarnImage:Landroid/widget/ImageView;

    .line 100
    const v0, 0x7f0b00e8

    invoke-virtual {p0, v0}, Lcom/hf/UI/SKView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/hf/UI/SKView;->mTrendLayout:Landroid/widget/LinearLayout;

    .line 101
    iget-object v0, p0, Lcom/hf/UI/SKView;->mTrendLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    const v0, 0x7f0b00ea

    invoke-virtual {p0, v0}, Lcom/hf/UI/SKView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/hf/UI/SKView;->mTrendImageView:Landroid/widget/ImageView;

    .line 103
    const v0, 0x7f0b00eb

    invoke-virtual {p0, v0}, Lcom/hf/UI/SKView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hf/UI/SKView;->mTrendTextView:Landroid/widget/TextView;

    .line 104
    invoke-virtual {p0}, Lcom/hf/UI/SKView;->setTrendButton()V

    .line 105
    const v0, 0x7f0b00e4

    invoke-virtual {p0, v0}, Lcom/hf/UI/SKView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/hf/UI/SKView;->mWeatherImage:Landroid/widget/ImageView;

    .line 107
    return-void
.end method

.method public reLoadView()V
    .locals 3

    .prologue
    .line 324
    sget-boolean v0, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v0, :cond_0

    .line 325
    const-string v0, "reLoadView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cityId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hf/UI/SKView;->mCity:Lcom/hf/model/CityModel;

    iget-object v2, v2, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/hf/UI/SKView;->mCity:Lcom/hf/model/CityModel;

    invoke-virtual {p0, v0}, Lcom/hf/UI/SKView;->onBindView(Lcom/hf/model/CityModel;)V

    .line 329
    return-void
.end method

.method public setActivity(Lcom/hf/UI/WeatherGroupActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/hf/UI/SKView;->mActivity:Lcom/hf/UI/WeatherGroupActivity;

    .line 76
    return-void
.end method

.method public setCityName()V
    .locals 6

    .prologue
    .line 287
    iget-object v2, p0, Lcom/hf/UI/SKView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/hf/UI/SKView;->mCity:Lcom/hf/model/CityModel;

    invoke-static {v2, v3}, Lcom/hf/utils/Util;->getDiaplayName(Landroid/content/Context;Lcom/hf/model/CityModel;)Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, name:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    :goto_0
    return-void

    .line 291
    :cond_0
    iget-object v2, p0, Lcom/hf/UI/SKView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/hf/UI/SKView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0027

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/hf/utils/Util;->getCityNameSize(Landroid/content/Context;IF)F

    move-result v1

    .line 292
    .local v1, size:F
    iget-object v2, p0, Lcom/hf/UI/SKView;->mCityName:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 293
    iget-object v2, p0, Lcom/hf/UI/SKView;->mCityName:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setTemperature()V
    .locals 4

    .prologue
    .line 238
    iget-object v2, p0, Lcom/hf/UI/SKView;->mCity:Lcom/hf/model/CityModel;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/hf/HFWeatherApp;->mWeathersMap:Ljava/util/Map;

    if-nez v2, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    sget-object v2, Lcom/hf/HFWeatherApp;->mWeathersMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/hf/UI/SKView;->mCity:Lcom/hf/model/CityModel;

    iget-object v3, v3, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hf/model/WeatherModel;

    .line 243
    .local v1, weatherModel:Lcom/hf/model/WeatherModel;
    if-eqz v1, :cond_0

    .line 244
    iget-object v2, v1, Lcom/hf/model/WeatherModel;->weatherList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 245
    iget-object v2, v1, Lcom/hf/model/WeatherModel;->weatherList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 248
    iget-object v2, v1, Lcom/hf/model/WeatherModel;->weatherList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hf/model/CFWeather;

    .line 249
    .local v0, cfweather:Lcom/hf/model/CFWeather;
    if-eqz v0, :cond_0

    .line 252
    iget-object v2, v1, Lcom/hf/model/WeatherModel;->skWeather:Lcom/hf/model/SKWeather;

    invoke-direct {p0, v2, v0}, Lcom/hf/UI/SKView;->setTemperature(Lcom/hf/model/SKWeather;Lcom/hf/model/CFWeather;)V

    goto :goto_0
.end method

.method setTrendButton()V
    .locals 3

    .prologue
    .line 111
    iget-object v1, p0, Lcom/hf/UI/SKView;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/hf/UI/WeatherGroupActivity;

    invoke-virtual {v1}, Lcom/hf/UI/WeatherGroupActivity;->getCFLayoutID()I

    move-result v0

    .line 113
    .local v0, id:I
    const v1, 0x7f0b00d5

    if-ne v0, v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/hf/UI/SKView;->mTrendImageView:Landroid/widget/ImageView;

    const v2, 0x7f020010

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 115
    iget-object v1, p0, Lcom/hf/UI/SKView;->mTrendTextView:Landroid/widget/TextView;

    const v2, 0x7f080063

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 120
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/hf/UI/SKView;->mTrendImageView:Landroid/widget/ImageView;

    const v2, 0x7f0200de

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 118
    iget-object v1, p0, Lcom/hf/UI/SKView;->mTrendTextView:Landroid/widget/TextView;

    const v2, 0x7f080023

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public startQuery()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 300
    iget-object v1, p0, Lcom/hf/UI/SKView;->mCity:Lcom/hf/model/CityModel;

    if-nez v1, :cond_0

    .line 308
    :goto_0
    return-void

    .line 303
    :cond_0
    iget-object v1, p0, Lcom/hf/UI/SKView;->mActivity:Lcom/hf/UI/WeatherGroupActivity;

    invoke-virtual {v1}, Lcom/hf/UI/WeatherGroupActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/hf/UI/MainActivity;

    .line 304
    .local v0, parent:Lcom/hf/UI/MainActivity;
    iget-object v1, p0, Lcom/hf/UI/SKView;->mCity:Lcom/hf/model/CityModel;

    invoke-virtual {v0, v1, v2}, Lcom/hf/UI/MainActivity;->searchWeather(Lcom/hf/model/CityModel;Z)V

    .line 305
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hf/UI/SKView;->isQuering:Z

    .line 306
    iget-object v1, p0, Lcom/hf/UI/SKView;->mUpdating:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 307
    iget-object v1, p0, Lcom/hf/UI/SKView;->mPublish:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
