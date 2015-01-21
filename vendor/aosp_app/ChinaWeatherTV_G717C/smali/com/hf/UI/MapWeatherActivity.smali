.class public Lcom/hf/UI/MapWeatherActivity;
.super Lcom/baidu/mapapi/MapActivity;
.source "MapWeatherActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hf/UI/MapWeatherActivity$WeatherItem;
    }
.end annotation


# static fields
.field public static final COLUMN_LAT:I = 0x0

.field public static final COLUMN_LNG:I = 0x1

.field public static final COORDINATE_PROJECTION:[Ljava/lang/String; = null

.field public static final COORDINATE_SELECTION:Ljava/lang/String; = "id=?"

.field private static final HANDLER_QUERY_MAP_WEATHER:I = 0x3e9

.field private static final HANDLER_SHOW_PROVINCE_IN_MAP:I = 0x3e8

.field private static final LAT_KEY:Ljava/lang/String; = "lat"

.field private static final LNG_KEY:Ljava/lang/String; = "lng"

.field private static final QUERY_PROVINCE_ID_PROJECTION:[Ljava/lang/String; = null

.field private static final QUERY_PROVINCE_ID_SELECTION:Ljava/lang/String; = "id=?"

.field private static final TAG:Ljava/lang/String; = "MapWeatherActivity"

.field private static final ZOOM:I = 0xd


# instance fields
.field private mBMapManager:Lcom/baidu/mapapi/BMapManager;

.field private mCityId:Ljava/lang/String;

.field private mCount:I

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMapController:Lcom/baidu/mapapi/MapController;

.field private mMapView:Lcom/baidu/mapapi/MapView;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mWeatherList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hf/model/CFWeather;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "province_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/hf/UI/MapWeatherActivity;->QUERY_PROVINCE_ID_PROJECTION:[Ljava/lang/String;

    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "lat"

    aput-object v1, v0, v2

    const-string v1, "lng"

    aput-object v1, v0, v3

    sput-object v0, Lcom/hf/UI/MapWeatherActivity;->COORDINATE_PROJECTION:[Ljava/lang/String;

    .line 64
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/baidu/mapapi/MapActivity;-><init>()V

    .line 65
    new-instance v0, Lcom/hf/UI/MapWeatherActivity$1;

    invoke-direct {v0, p0}, Lcom/hf/UI/MapWeatherActivity$1;-><init>(Lcom/hf/UI/MapWeatherActivity;)V

    iput-object v0, p0, Lcom/hf/UI/MapWeatherActivity;->mHandler:Landroid/os/Handler;

    .line 44
    return-void
.end method

.method static synthetic access$0(Lcom/hf/UI/MapWeatherActivity;)Lcom/baidu/mapapi/MapController;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/hf/UI/MapWeatherActivity;->mMapController:Lcom/baidu/mapapi/MapController;

    return-object v0
.end method

.method static synthetic access$1(Lcom/hf/UI/MapWeatherActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/hf/UI/MapWeatherActivity;->queryWeathers()V

    return-void
.end method

.method static synthetic access$2(Lcom/hf/UI/MapWeatherActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/hf/UI/MapWeatherActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lcom/hf/UI/MapWeatherActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/hf/UI/MapWeatherActivity;->mCityId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/hf/UI/MapWeatherActivity;->QUERY_PROVINCE_ID_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/hf/UI/MapWeatherActivity;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/hf/UI/MapWeatherActivity;->mWeatherList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$6(Lcom/hf/UI/MapWeatherActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/hf/UI/MapWeatherActivity;->mWeatherList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$7(Lcom/hf/UI/MapWeatherActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/hf/UI/MapWeatherActivity;->addWeatherItem(I)V

    return-void
.end method

.method private addWeatherItem(I)V
    .locals 24
    .parameter "type"

    .prologue
    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/UI/MapWeatherActivity;->mWeatherList:Ljava/util/List;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/UI/MapWeatherActivity;->mWeatherList:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_1

    .line 275
    :cond_0
    return-void

    .line 230
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/UI/MapWeatherActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/UI/MapWeatherActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/baidu/mapapi/MapView;->getChildCount()I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/hf/UI/MapWeatherActivity;->mCount:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/hf/UI/MapWeatherActivity;->mCount:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/baidu/mapapi/MapView;->removeViews(II)V

    .line 231
    if-nez p1, :cond_4

    const/4 v7, 0x1

    .line 232
    .local v7, isSheshi:Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/hf/UI/MapWeatherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0a0051

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    .line 233
    .local v20, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/hf/UI/MapWeatherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0a0052

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 234
    .local v5, height:I
    sget-boolean v21, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v21, :cond_2

    .line 235
    const-string v21, "MapWeatherActivity"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "width = "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "; height = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/UI/MapWeatherActivity;->mWeatherList:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/hf/UI/MapWeatherActivity;->mCount:I

    .line 238
    .local v4, count:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v4, :cond_0

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/UI/MapWeatherActivity;->mWeatherList:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/hf/model/CFWeather;

    .line 241
    .local v17, weather:Lcom/hf/model/CFWeather;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/hf/model/CFWeather;->lat:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_3

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/hf/model/CFWeather;->lng:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 242
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hf/UI/MapWeatherActivity;->mCount:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/hf/UI/MapWeatherActivity;->mCount:I

    .line 238
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 231
    .end local v4           #count:I
    .end local v5           #height:I
    .end local v6           #i:I
    .end local v7           #isSheshi:Z
    .end local v17           #weather:Lcom/hf/model/CFWeather;
    .end local v20           #width:I
    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 246
    .restart local v4       #count:I
    .restart local v5       #height:I
    .restart local v6       #i:I
    .restart local v7       #isSheshi:Z
    .restart local v17       #weather:Lcom/hf/model/CFWeather;
    .restart local v20       #width:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/UI/MapWeatherActivity;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v21, v0

    const v22, 0x7f03001e

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    .line 247
    .local v16, view:Landroid/view/View;
    const v21, 0x7f0b0087

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 248
    .local v3, cityName:Landroid/widget/TextView;
    const v21, 0x7f0b0088

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 249
    .local v18, weatherImage1:Landroid/widget/ImageView;
    const v21, 0x7f0b008a

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 250
    .local v14, temperatureTV1:Landroid/widget/TextView;
    const v21, 0x7f0b0089

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    .line 251
    .local v19, weatherImage2:Landroid/widget/ImageView;
    const v21, 0x7f0b008b

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 253
    .local v15, temperatureTV2:Landroid/widget/TextView;
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/hf/model/CFWeather;->isHalfDay:Z

    move/from16 v21, v0

    if-eqz v21, :cond_6

    .line 254
    move-object/from16 v0, v17

    iget v0, v0, Lcom/hf/model/CFWeather;->weatherNigth:I

    move/from16 v21, v0

    const/16 v22, 0x1

    invoke-static/range {v21 .. v22}, Lcom/hf/utils/WeatherUtils;->getWeatherImageId(IZ)I

    move-result v21

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 255
    move-object/from16 v0, v17

    iget v0, v0, Lcom/hf/model/CFWeather;->weatherDay:I

    move/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/hf/utils/WeatherUtils;->getWeatherImageId(IZ)I

    move-result v21

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 261
    :goto_3
    const/4 v13, 0x0

    .line 262
    .local v13, temperature:Ljava/lang/String;
    if-eqz v7, :cond_7

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/hf/model/CFWeather;->tDay:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "\u00b0C"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 263
    :goto_4
    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    if-eqz v7, :cond_8

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/hf/model/CFWeather;->tNight:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "\u00b0C"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 265
    :goto_5
    invoke-virtual {v15, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/hf/model/CFWeather;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/hf/model/CFWeather;->lat:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 269
    .local v8, lat:D
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/hf/model/CFWeather;->lng:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    .line 270
    .local v10, lng:D
    new-instance v12, Lcom/baidu/mapapi/GeoPoint;

    const-wide v21, 0x412e848000000000L

    mul-double v21, v21, v8

    move-wide/from16 v0, v21

    double-to-int v0, v0

    move/from16 v21, v0

    const-wide v22, 0x412e848000000000L

    mul-double v22, v22, v10

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v12, v0, v1}, Lcom/baidu/mapapi/GeoPoint;-><init>(II)V

    .line 271
    .local v12, point:Lcom/baidu/mapapi/GeoPoint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/UI/MapWeatherActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    move-object/from16 v21, v0

    new-instance v22, Lcom/baidu/mapapi/MapView$LayoutParams;

    const/16 v23, 0x51

    move-object/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, v23

    invoke-direct {v0, v1, v5, v12, v2}, Lcom/baidu/mapapi/MapView$LayoutParams;-><init>(IILcom/baidu/mapapi/GeoPoint;I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapapi/MapView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 258
    .end local v8           #lat:D
    .end local v10           #lng:D
    .end local v12           #point:Lcom/baidu/mapapi/GeoPoint;
    .end local v13           #temperature:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, v17

    iget v0, v0, Lcom/hf/model/CFWeather;->weatherDay:I

    move/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/hf/utils/WeatherUtils;->getWeatherImageId(IZ)I

    move-result v21

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 259
    move-object/from16 v0, v17

    iget v0, v0, Lcom/hf/model/CFWeather;->weatherNigth:I

    move/from16 v21, v0

    const/16 v22, 0x1

    invoke-static/range {v21 .. v22}, Lcom/hf/utils/WeatherUtils;->getWeatherImageId(IZ)I

    move-result v21

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 262
    .restart local v13       #temperature:Ljava/lang/String;
    :cond_7
    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/hf/model/CFWeather;->tDay:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/hf/utils/Util;->CToF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "\u00b0F"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 264
    :cond_8
    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/hf/model/CFWeather;->tNight:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/hf/utils/Util;->CToF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "\u00b0F"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5
.end method

.method private queryWeathers()V
    .locals 2

    .prologue
    .line 154
    new-instance v0, Lcom/hf/UI/MapWeatherActivity$3;

    invoke-direct {v0, p0}, Lcom/hf/UI/MapWeatherActivity$3;-><init>(Lcom/hf/UI/MapWeatherActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 223
    invoke-virtual {v0, v1}, Lcom/hf/UI/MapWeatherActivity$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 224
    return-void
.end method

.method private registerReceiver()V
    .locals 2

    .prologue
    .line 134
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 135
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.hf.QUERY_MAP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    new-instance v1, Lcom/hf/UI/MapWeatherActivity$2;

    invoke-direct {v1, p0}, Lcom/hf/UI/MapWeatherActivity$2;-><init>(Lcom/hf/UI/MapWeatherActivity;)V

    iput-object v1, p0, Lcom/hf/UI/MapWeatherActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 147
    iget-object v1, p0, Lcom/hf/UI/MapWeatherActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/hf/UI/MapWeatherActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 148
    return-void
.end method


# virtual methods
.method protected isRouteDisplayed()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "arg0"

    .prologue
    const/4 v3, 0x1

    .line 100
    invoke-super {p0, p1}, Lcom/baidu/mapapi/MapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$Umeng;->onError(Landroid/content/Context;)V

    .line 102
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$BaiDu;->onError(Landroid/content/Context;)V

    .line 103
    invoke-direct {p0}, Lcom/hf/UI/MapWeatherActivity;->registerReceiver()V

    .line 104
    const v0, 0x7f03001d

    invoke-virtual {p0, v0}, Lcom/hf/UI/MapWeatherActivity;->setContentView(I)V

    .line 105
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/hf/UI/MapWeatherActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 106
    new-instance v0, Lcom/baidu/mapapi/BMapManager;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/BMapManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hf/UI/MapWeatherActivity;->mBMapManager:Lcom/baidu/mapapi/BMapManager;

    .line 107
    iget-object v0, p0, Lcom/hf/UI/MapWeatherActivity;->mBMapManager:Lcom/baidu/mapapi/BMapManager;

    const-string v1, "9DA78102DEA6924AF1A91817FBE2209C76E73EDE"

    new-instance v2, Lcom/hf/map/HFMKGeneralListener;

    invoke-direct {v2, p0}, Lcom/hf/map/HFMKGeneralListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapapi/BMapManager;->init(Ljava/lang/String;Lcom/baidu/mapapi/MKGeneralListener;)Z

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/hf/UI/MapWeatherActivity;->mBMapManager:Lcom/baidu/mapapi/BMapManager;

    invoke-super {p0, v0}, Lcom/baidu/mapapi/MapActivity;->initMapActivity(Lcom/baidu/mapapi/BMapManager;)Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1

    .line 119
    :goto_0
    const v0, 0x7f0b0085

    invoke-virtual {p0, v0}, Lcom/hf/UI/MapWeatherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/MapView;

    iput-object v0, p0, Lcom/hf/UI/MapWeatherActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    .line 120
    iget-object v0, p0, Lcom/hf/UI/MapWeatherActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0, v3}, Lcom/baidu/mapapi/MapView;->setBuiltInZoomControls(Z)V

    .line 122
    :try_start_1
    iget-object v0, p0, Lcom/hf/UI/MapWeatherActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/MapView;->setDrawOverlayWhenZooming(Z)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 125
    :goto_1
    iget-object v0, p0, Lcom/hf/UI/MapWeatherActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MapView;->getController()Lcom/baidu/mapapi/MapController;

    move-result-object v0

    iput-object v0, p0, Lcom/hf/UI/MapWeatherActivity;->mMapController:Lcom/baidu/mapapi/MapController;

    .line 126
    iget-object v0, p0, Lcom/hf/UI/MapWeatherActivity;->mMapController:Lcom/baidu/mapapi/MapController;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/MapController;->setZoom(I)I

    .line 127
    invoke-direct {p0}, Lcom/hf/UI/MapWeatherActivity;->queryWeathers()V

    .line 131
    return-void

    .line 123
    :catch_0
    move-exception v0

    goto :goto_1

    .line 115
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/hf/UI/MapWeatherActivity;->mBMapManager:Lcom/baidu/mapapi/BMapManager;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/hf/UI/MapWeatherActivity;->mBMapManager:Lcom/baidu/mapapi/BMapManager;

    invoke-virtual {v0}, Lcom/baidu/mapapi/BMapManager;->destroy()V

    .line 362
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hf/UI/MapWeatherActivity;->mBMapManager:Lcom/baidu/mapapi/BMapManager;

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/hf/UI/MapWeatherActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/hf/UI/MapWeatherActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 365
    invoke-super {p0}, Lcom/baidu/mapapi/MapActivity;->onDestroy()V

    .line 366
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 344
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 345
    invoke-virtual {p0}, Lcom/hf/UI/MapWeatherActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/hf/UI/MainActivity;

    invoke-virtual {v0}, Lcom/hf/UI/MainActivity;->screenShot()V

    .line 347
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/baidu/mapapi/MapActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 352
    invoke-super {p0}, Lcom/baidu/mapapi/MapActivity;->onPause()V

    .line 353
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$Umeng;->onPause(Landroid/content/Context;)V

    .line 354
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$BaiDu;->onPause(Landroid/content/Context;)V

    .line 355
    iget-object v0, p0, Lcom/hf/UI/MapWeatherActivity;->mBMapManager:Lcom/baidu/mapapi/BMapManager;

    invoke-virtual {v0}, Lcom/baidu/mapapi/BMapManager;->stop()Z

    .line 356
    return-void
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x0

    .line 278
    invoke-super {p0}, Lcom/baidu/mapapi/MapActivity;->onResume()V

    .line 279
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$Umeng;->onResume(Landroid/content/Context;)V

    .line 280
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$BaiDu;->onResume(Landroid/content/Context;)V

    .line 282
    :try_start_0
    iget-object v3, p0, Lcom/hf/UI/MapWeatherActivity;->mBMapManager:Lcom/baidu/mapapi/BMapManager;

    invoke-virtual {v3}, Lcom/baidu/mapapi/BMapManager;->start()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :goto_0
    const/4 v0, 0x0

    .line 287
    .local v0, city:Lcom/hf/model/CityModel;
    sget v3, Lcom/hf/UI/WeatherGroupActivity;->sIndex:I

    if-gtz v3, :cond_4

    .line 288
    sget-object v3, Lcom/hf/HFWeatherApp;->mDefaultCity:Lcom/hf/model/CityModel;

    if-nez v3, :cond_1

    .line 340
    :cond_0
    :goto_1
    return-void

    .line 292
    :cond_1
    sget-object v0, Lcom/hf/HFWeatherApp;->mDefaultCity:Lcom/hf/model/CityModel;

    .line 313
    :goto_2
    if-eqz v0, :cond_0

    .line 317
    iget-object v3, p0, Lcom/hf/UI/MapWeatherActivity;->mCityId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 318
    iget-object v3, v0, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/hf/UI/MapWeatherActivity;->mCityId:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 319
    iget-object v3, v0, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    iput-object v3, p0, Lcom/hf/UI/MapWeatherActivity;->mCityId:Ljava/lang/String;

    .line 320
    invoke-direct {p0}, Lcom/hf/UI/MapWeatherActivity;->queryWeathers()V

    .line 321
    sget-boolean v3, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v3, :cond_2

    .line 322
    const-string v3, "onResume"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mCityId = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/hf/UI/MapWeatherActivity;->mCityId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_2
    iget-object v3, p0, Lcom/hf/UI/MapWeatherActivity;->mCityId:Ljava/lang/String;

    const-string v4, "010101"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 326
    iget-object v3, p0, Lcom/hf/UI/MapWeatherActivity;->mCityId:Ljava/lang/String;

    const-string v4, "010129"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 327
    iget-object v3, p0, Lcom/hf/UI/MapWeatherActivity;->mCityId:Ljava/lang/String;

    const-string v4, "010126"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 328
    iget-object v3, p0, Lcom/hf/UI/MapWeatherActivity;->mCityId:Ljava/lang/String;

    const-string v4, "010104"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 329
    :cond_3
    iget-object v3, p0, Lcom/hf/UI/MapWeatherActivity;->mMapController:Lcom/baidu/mapapi/MapController;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/baidu/mapapi/MapController;->setZoom(I)I

    goto :goto_1

    .line 295
    :cond_4
    sget-object v3, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    invoke-virtual {v3}, Lcom/hf/UI/CityList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 299
    sget-object v3, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    invoke-virtual {v3}, Lcom/hf/UI/CityList;->size()I

    move-result v2

    .line 300
    .local v2, len:I
    add-int/lit8 v1, v2, -0x1

    .line 301
    .local v1, index:I
    sget v3, Lcom/hf/UI/WeatherGroupActivity;->sIndex:I

    if-le v3, v2, :cond_5

    .line 302
    add-int/lit8 v1, v2, -0x1

    .line 309
    :goto_3
    sget-object v3, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    invoke-virtual {v3, v1}, Lcom/hf/UI/CityList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #city:Lcom/hf/model/CityModel;
    check-cast v0, Lcom/hf/model/CityModel;

    .restart local v0       #city:Lcom/hf/model/CityModel;
    goto/16 :goto_2

    .line 303
    :cond_5
    sget v3, Lcom/hf/UI/WeatherGroupActivity;->sIndex:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 304
    const/4 v1, 0x0

    .line 305
    goto :goto_3

    .line 306
    :cond_6
    sget v3, Lcom/hf/UI/WeatherGroupActivity;->sIndex:I

    add-int/lit8 v1, v3, -0x1

    goto :goto_3

    .line 331
    .end local v1           #index:I
    .end local v2           #len:I
    :cond_7
    iget-object v3, p0, Lcom/hf/UI/MapWeatherActivity;->mMapController:Lcom/baidu/mapapi/MapController;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Lcom/baidu/mapapi/MapController;->setZoom(I)I

    goto/16 :goto_1

    .line 336
    :cond_8
    iget-object v3, v0, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    iput-object v3, p0, Lcom/hf/UI/MapWeatherActivity;->mCityId:Ljava/lang/String;

    .line 337
    invoke-direct {p0}, Lcom/hf/UI/MapWeatherActivity;->queryWeathers()V

    goto/16 :goto_1

    .line 283
    .end local v0           #city:Lcom/hf/model/CityModel;
    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method
