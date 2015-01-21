.class public Lcom/hf/UI/IndicesActivity;
.super Landroid/app/Activity;
.source "IndicesActivity.java"


# static fields
.field private static final HANDLER_MOTIFY_DEFAULT_CITY:I = 0x6b

.field private static final HANDLER_RELOAD:I = 0x6c

.field private static final HANDLE_ADD_CITY:I = 0x66

.field private static final HANDLE_DELETE_CITY:I = 0x67

.field private static final HANDLE_MODIFY_CITY_NAME:I = 0x69

.field private static final HANDLE_UPDATE_ALL_WEATHER:I = 0x65

.field private static final HANDLE_UPDATE_CITY:I = 0x68

.field public static final REQUEST_CODE:I = 0x1

.field public static mIndicesDesIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static mIndicesImage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static mIndicesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRoot:Lcom/hf/UI/ScrollLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    new-instance v0, Lcom/hf/UI/IndicesActivity$1;

    invoke-direct {v0, p0}, Lcom/hf/UI/IndicesActivity$1;-><init>(Lcom/hf/UI/IndicesActivity;)V

    iput-object v0, p0, Lcom/hf/UI/IndicesActivity;->mHandler:Landroid/os/Handler;

    .line 27
    return-void
.end method

.method static synthetic access$0(Lcom/hf/UI/IndicesActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 260
    invoke-direct {p0, p1}, Lcom/hf/UI/IndicesActivity;->addCity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/hf/UI/IndicesActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 280
    invoke-direct {p0, p1}, Lcom/hf/UI/IndicesActivity;->deleteCity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/hf/UI/IndicesActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lcom/hf/UI/IndicesActivity;->updateViews(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/hf/UI/IndicesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/hf/UI/IndicesActivity;->updateViews()V

    return-void
.end method

.method static synthetic access$4(Lcom/hf/UI/IndicesActivity;)Lcom/hf/UI/ScrollLayout;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/hf/UI/IndicesActivity;->mRoot:Lcom/hf/UI/ScrollLayout;

    return-object v0
.end method

.method static synthetic access$5(Lcom/hf/UI/IndicesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/hf/UI/IndicesActivity;->initViews()V

    return-void
.end method

.method static synthetic access$6(Lcom/hf/UI/IndicesActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/hf/UI/IndicesActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addCity(Ljava/lang/String;)V
    .locals 4
    .parameter "cityId"

    .prologue
    .line 262
    sget-object v3, Lcom/hf/HFWeatherApp;->mDefaultCity:Lcom/hf/model/CityModel;

    if-eqz v3, :cond_1

    .line 263
    sget-object v3, Lcom/hf/HFWeatherApp;->mDefaultCity:Lcom/hf/model/CityModel;

    iget-object v3, v3, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 264
    sget-object v3, Lcom/hf/HFWeatherApp;->mDefaultCity:Lcom/hf/model/CityModel;

    invoke-direct {p0, v3}, Lcom/hf/UI/IndicesActivity;->addView(Lcom/hf/model/CityModel;)V

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    sget-object v3, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    if-eqz v3, :cond_0

    .line 268
    sget-object v3, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    invoke-virtual {v3}, Lcom/hf/UI/CityList;->size()I

    move-result v2

    .line 269
    .local v2, len:I
    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_0

    .line 270
    sget-object v3, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    invoke-virtual {v3, v1}, Lcom/hf/UI/CityList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hf/model/CityModel;

    .line 271
    .local v0, city:Lcom/hf/model/CityModel;
    iget-object v3, v0, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 272
    invoke-direct {p0, v0}, Lcom/hf/UI/IndicesActivity;->addView(Lcom/hf/model/CityModel;)V

    goto :goto_0

    .line 269
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method private addView(Lcom/hf/model/CityModel;)V
    .locals 2
    .parameter "city"

    .prologue
    .line 303
    if-nez p1, :cond_1

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    iget-object v1, p1, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/hf/UI/IndicesActivity;->hasViewWithCity(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 310
    new-instance v0, Lcom/hf/UI/IndicesLayout;

    invoke-direct {v0, p0, p1}, Lcom/hf/UI/IndicesLayout;-><init>(Landroid/content/Context;Lcom/hf/model/CityModel;)V

    .line 311
    .local v0, layout:Lcom/hf/UI/IndicesLayout;
    iget-object v1, p1, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hf/UI/IndicesLayout;->setTag(Ljava/lang/Object;)V

    .line 313
    iget-object v1, p0, Lcom/hf/UI/IndicesActivity;->mRoot:Lcom/hf/UI/ScrollLayout;

    invoke-virtual {v1, v0}, Lcom/hf/UI/ScrollLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private deleteCity(Ljava/lang/String;)V
    .locals 7
    .parameter "cityId"

    .prologue
    .line 281
    sget-boolean v4, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v4, :cond_0

    .line 282
    const-string v4, "initWeather"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "tag = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_0
    iget-object v4, p0, Lcom/hf/UI/IndicesActivity;->mRoot:Lcom/hf/UI/ScrollLayout;

    invoke-virtual {v4}, Lcom/hf/UI/ScrollLayout;->getChildCount()I

    move-result v0

    .line 286
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 294
    :goto_1
    iget-object v4, p0, Lcom/hf/UI/IndicesActivity;->mRoot:Lcom/hf/UI/ScrollLayout;

    invoke-virtual {v4}, Lcom/hf/UI/ScrollLayout;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    sput v4, Lcom/hf/UI/WeatherGroupActivity;->sIndex:I

    .line 295
    iget-object v4, p0, Lcom/hf/UI/IndicesActivity;->mRoot:Lcom/hf/UI/ScrollLayout;

    invoke-virtual {v4}, Lcom/hf/UI/ScrollLayout;->invalidate()V

    .line 296
    return-void

    .line 287
    :cond_1
    iget-object v4, p0, Lcom/hf/UI/IndicesActivity;->mRoot:Lcom/hf/UI/ScrollLayout;

    invoke-virtual {v4, v1}, Lcom/hf/UI/ScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 288
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 289
    .local v3, viewTag:Ljava/lang/String;
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 290
    iget-object v4, p0, Lcom/hf/UI/IndicesActivity;->mRoot:Lcom/hf/UI/ScrollLayout;

    invoke-virtual {v4, v2}, Lcom/hf/UI/ScrollLayout;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 286
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private hasViewWithCity(Ljava/lang/String;)Z
    .locals 5
    .parameter "cityId"

    .prologue
    .line 317
    iget-object v4, p0, Lcom/hf/UI/IndicesActivity;->mRoot:Lcom/hf/UI/ScrollLayout;

    invoke-virtual {v4}, Lcom/hf/UI/ScrollLayout;->getChildCount()I

    move-result v0

    .line 318
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 326
    const/4 v4, 0x0

    :goto_1
    return v4

    .line 319
    :cond_0
    iget-object v4, p0, Lcom/hf/UI/IndicesActivity;->mRoot:Lcom/hf/UI/ScrollLayout;

    invoke-virtual {v4, v1}, Lcom/hf/UI/ScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/hf/UI/IndicesLayout;

    .line 320
    .local v2, item:Lcom/hf/UI/IndicesLayout;
    invoke-virtual {v2}, Lcom/hf/UI/IndicesLayout;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 321
    .local v3, tag:Ljava/lang/String;
    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 322
    const/4 v4, 0x1

    goto :goto_1

    .line 318
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private initIndicesMap()V
    .locals 3

    .prologue
    .line 89
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesMap:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesMap:Ljava/util/Map;

    .line 94
    :goto_0
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesMap:Ljava/util/Map;

    const-string v1, "CL"

    const v2, 0x7f08006f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesMap:Ljava/util/Map;

    const-string v1, "CY"

    const v2, 0x7f080070

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesMap:Ljava/util/Map;

    const-string v1, "DY"

    const v2, 0x7f08007a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesMap:Ljava/util/Map;

    const-string v1, "FFZ"

    const v2, 0x7f080084

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesMap:Ljava/util/Map;

    const-string v1, "FS"

    const v2, 0x7f08007b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesMap:Ljava/util/Map;

    const-string v1, "FH"

    const v2, 0x7f080086

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesMap:Ljava/util/Map;

    const-string v1, "GM"

    const v2, 0x7f080071

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesMap:Ljava/util/Map;

    const-string v1, "GJ"

    const v2, 0x7f08007c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesMap:Ljava/util/Map;

    const-string v1, "HC"

    const v2, 0x7f08007d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesMap:Ljava/util/Map;

    const-string v1, "HZ"

    const v2, 0x7f080085

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesMap:Ljava/util/Map;

    const-string v1, "JT"

    const v2, 0x7f08007e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesMap:Ljava/util/Map;

    const-string v1, "KQWR"

    const v2, 0x7f080077

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesMap:Ljava/util/Map;

    const-string v1, "KT"

    const v2, 0x7f080079

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesMap:Ljava/util/Map;

    const-string v1, "LS"

    const v2, 0x7f080076

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesMap:Ljava/util/Map;

    const-string v1, "LK"

    const v2, 0x7f08007f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesMap:Ljava/util/Map;

    const-string v1, "LY"

    const v2, 0x7f080078

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesMap:Ljava/util/Map;

    const-string v1, "MF"

    const v2, 0x7f080081

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesMap:Ljava/util/Map;

    const-string v1, "PJ"

    const v2, 0x7f080083

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesMap:Ljava/util/Map;

    const-string v1, "SSD"

    const v2, 0x7f080072

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesMap:Ljava/util/Map;

    const-string v1, "XC"

    const v2, 0x7f080073

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesMap:Ljava/util/Map;

    const-string v1, "XQ"

    const v2, 0x7f080087

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesMap:Ljava/util/Map;

    const-string v1, "YSH"

    const v2, 0x7f080082

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesMap:Ljava/util/Map;

    const-string v1, "YS"

    const v2, 0x7f080080

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesMap:Ljava/util/Map;

    const-string v1, "YH"

    const v2, 0x7f080089

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesMap:Ljava/util/Map;

    const-string v1, "YD"

    const v2, 0x7f080088

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesMap:Ljava/util/Map;

    const-string v1, "ZS"

    const v2, 0x7f080074

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesMap:Ljava/util/Map;

    const-string v1, "ZWX"

    const v2, 0x7f080075

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesImage:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesImage:Ljava/util/Map;

    .line 124
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesImage:Ljava/util/Map;

    const-string v1, "CL"

    const v2, 0x7f02004f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesImage:Ljava/util/Map;

    const-string v1, "CY"

    const v2, 0x7f020050

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesImage:Ljava/util/Map;

    const-string v1, "DY"

    const v2, 0x7f020051

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesImage:Ljava/util/Map;

    const-string v1, "FFZ"

    const v2, 0x7f020052

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesImage:Ljava/util/Map;

    const-string v1, "FS"

    const v2, 0x7f020054

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesImage:Ljava/util/Map;

    const-string v1, "FH"

    const v2, 0x7f020053

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesImage:Ljava/util/Map;

    const-string v1, "GM"

    const v2, 0x7f020056

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesImage:Ljava/util/Map;

    const-string v1, "GJ"

    const v2, 0x7f020055

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesImage:Ljava/util/Map;

    const-string v1, "HC"

    const v2, 0x7f020057

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesImage:Ljava/util/Map;

    const-string v1, "HZ"

    const v2, 0x7f020058

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesImage:Ljava/util/Map;

    const-string v1, "JT"

    const v2, 0x7f020059

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesImage:Ljava/util/Map;

    const-string v1, "KQWR"

    const v2, 0x7f02005a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesImage:Ljava/util/Map;

    const-string v1, "KT"

    const v2, 0x7f02005b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesImage:Ljava/util/Map;

    const-string v1, "LS"

    const v2, 0x7f02005d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesImage:Ljava/util/Map;

    const-string v1, "LK"

    const v2, 0x7f02005c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesImage:Ljava/util/Map;

    const-string v1, "LY"

    const v2, 0x7f02005e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesImage:Ljava/util/Map;

    const-string v1, "MF"

    const v2, 0x7f02005f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesImage:Ljava/util/Map;

    const-string v1, "PJ"

    const v2, 0x7f020060

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesImage:Ljava/util/Map;

    const-string v1, "SSD"

    const v2, 0x7f020062

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesImage:Ljava/util/Map;

    const-string v1, "XC"

    const v2, 0x7f020063

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesImage:Ljava/util/Map;

    const-string v1, "XQ"

    const v2, 0x7f020064

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesImage:Ljava/util/Map;

    const-string v1, "YSH"

    const v2, 0x7f020068

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesImage:Ljava/util/Map;

    const-string v1, "YS"

    const v2, 0x7f020067

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesImage:Ljava/util/Map;

    const-string v1, "YH"

    const v2, 0x7f020066

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesImage:Ljava/util/Map;

    const-string v1, "YD"

    const v2, 0x7f020065

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesImage:Ljava/util/Map;

    const-string v1, "ZS"

    const v2, 0x7f020069

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesImage:Ljava/util/Map;

    const-string v1, "ZWX"

    const v2, 0x7f02006a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_0
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesDesIds:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesDesIds:Ljava/util/Map;

    .line 155
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesDesIds:Ljava/util/Map;

    const-string v1, "CL"

    const v2, 0x7f070008

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesDesIds:Ljava/util/Map;

    const-string v1, "CY"

    const v2, 0x7f070009

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesDesIds:Ljava/util/Map;

    const-string v1, "DY"

    const v2, 0x7f07000a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesDesIds:Ljava/util/Map;

    const-string v1, "FFZ"

    const v2, 0x7f07000b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesDesIds:Ljava/util/Map;

    const-string v1, "FS"

    const v2, 0x7f07000c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesDesIds:Ljava/util/Map;

    const-string v1, "FH"

    const v2, 0x7f07000d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesDesIds:Ljava/util/Map;

    const-string v1, "GM"

    const v2, 0x7f07000e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesDesIds:Ljava/util/Map;

    const-string v1, "GJ"

    const v2, 0x7f07000f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesDesIds:Ljava/util/Map;

    const-string v1, "HC"

    const v2, 0x7f070010

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesDesIds:Ljava/util/Map;

    const-string v1, "HZ"

    const v2, 0x7f070011

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesDesIds:Ljava/util/Map;

    const-string v1, "JT"

    const v2, 0x7f070012

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesDesIds:Ljava/util/Map;

    const-string v1, "KQWR"

    const v2, 0x7f070013

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesDesIds:Ljava/util/Map;

    const-string v1, "KT"

    const v2, 0x7f070014

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesDesIds:Ljava/util/Map;

    const-string v1, "LS"

    const v2, 0x7f070015

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesDesIds:Ljava/util/Map;

    const-string v1, "LK"

    const v2, 0x7f070016

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesDesIds:Ljava/util/Map;

    const-string v1, "LY"

    const v2, 0x7f070017

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesDesIds:Ljava/util/Map;

    const-string v1, "MF"

    const v2, 0x7f070018

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesDesIds:Ljava/util/Map;

    const-string v1, "PJ"

    const v2, 0x7f070019

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesDesIds:Ljava/util/Map;

    const-string v1, "SSD"

    const v2, 0x7f07001a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesDesIds:Ljava/util/Map;

    const-string v1, "XC"

    const v2, 0x7f07001b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesDesIds:Ljava/util/Map;

    const-string v1, "XQ"

    const v2, 0x7f07001c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesDesIds:Ljava/util/Map;

    const-string v1, "YSH"

    const v2, 0x7f07001d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesDesIds:Ljava/util/Map;

    const-string v1, "YS"

    const v2, 0x7f07001e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesDesIds:Ljava/util/Map;

    const-string v1, "YH"

    const v2, 0x7f07001f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesDesIds:Ljava/util/Map;

    const-string v1, "YD"

    const v2, 0x7f070020

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesDesIds:Ljava/util/Map;

    const-string v1, "ZS"

    const v2, 0x7f070021

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesDesIds:Ljava/util/Map;

    const-string v1, "ZWX"

    const v2, 0x7f070022

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    :cond_1
    return-void

    .line 92
    :cond_2
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto/16 :goto_0
.end method

.method private initViews()V
    .locals 6

    .prologue
    .line 236
    sget-object v3, Lcom/hf/HFWeatherApp;->mDefaultCity:Lcom/hf/model/CityModel;

    if-nez v3, :cond_0

    .line 254
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v3, p0, Lcom/hf/UI/IndicesActivity;->mRoot:Lcom/hf/UI/ScrollLayout;

    invoke-virtual {v3}, Lcom/hf/UI/ScrollLayout;->removeAllViews()V

    .line 241
    sget-object v3, Lcom/hf/HFWeatherApp;->mDefaultCity:Lcom/hf/model/CityModel;

    invoke-direct {p0, v3}, Lcom/hf/UI/IndicesActivity;->addView(Lcom/hf/model/CityModel;)V

    .line 243
    sget-object v3, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    if-eqz v3, :cond_2

    .line 244
    sget-object v3, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    invoke-virtual {v3}, Lcom/hf/UI/CityList;->size()I

    move-result v2

    .line 245
    .local v2, len:I
    sget-boolean v3, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v3, :cond_1

    .line 246
    const-string v3, "IndicesActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "len = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-lt v1, v2, :cond_3

    .line 253
    .end local v1           #i:I
    .end local v2           #len:I
    :cond_2
    iget-object v3, p0, Lcom/hf/UI/IndicesActivity;->mRoot:Lcom/hf/UI/ScrollLayout;

    sget v4, Lcom/hf/UI/WeatherGroupActivity;->sIndex:I

    invoke-virtual {v3, v4}, Lcom/hf/UI/ScrollLayout;->setCurScreen(I)V

    goto :goto_0

    .line 249
    .restart local v1       #i:I
    .restart local v2       #len:I
    :cond_3
    sget-object v3, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    invoke-virtual {v3, v1}, Lcom/hf/UI/CityList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hf/model/CityModel;

    .line 250
    .local v0, city:Lcom/hf/model/CityModel;
    invoke-direct {p0, v0}, Lcom/hf/UI/IndicesActivity;->addView(Lcom/hf/model/CityModel;)V

    .line 248
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private registBroadcast()V
    .locals 2

    .prologue
    .line 341
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 342
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.hf.ADD_CITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 343
    const-string v1, "com.hf.DELETE_CITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 344
    const-string v1, "com.hf.UPDATE_ALL_WEATHER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 345
    const-string v1, "com.hf.MODIFY_CITY_NAME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 346
    const-string v1, "com.hf.UPDATE_WEATHER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 347
    const-string v1, "com.hf.CHANGE_DEFAULT_CITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 348
    const-string v1, "com.hf.RELOAD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 349
    new-instance v1, Lcom/hf/UI/IndicesActivity$2;

    invoke-direct {v1, p0}, Lcom/hf/UI/IndicesActivity$2;-><init>(Lcom/hf/UI/IndicesActivity;)V

    iput-object v1, p0, Lcom/hf/UI/IndicesActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 390
    iget-object v1, p0, Lcom/hf/UI/IndicesActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/hf/UI/IndicesActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 391
    return-void
.end method

.method private updateViews()V
    .locals 4

    .prologue
    .line 209
    iget-object v3, p0, Lcom/hf/UI/IndicesActivity;->mRoot:Lcom/hf/UI/ScrollLayout;

    invoke-virtual {v3}, Lcom/hf/UI/ScrollLayout;->getChildCount()I

    move-result v0

    .line 210
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 214
    return-void

    .line 211
    :cond_0
    iget-object v3, p0, Lcom/hf/UI/IndicesActivity;->mRoot:Lcom/hf/UI/ScrollLayout;

    invoke-virtual {v3, v1}, Lcom/hf/UI/ScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/hf/UI/IndicesLayout;

    .line 212
    .local v2, layout:Lcom/hf/UI/IndicesLayout;
    invoke-virtual {v2}, Lcom/hf/UI/IndicesLayout;->updateIndices()V

    .line 210
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private updateViews(Ljava/lang/String;)V
    .locals 7
    .parameter "cityId"

    .prologue
    .line 220
    sget-boolean v4, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v4, :cond_0

    .line 221
    const-string v4, "updateViews"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "indices : cityId = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    iget-object v4, p0, Lcom/hf/UI/IndicesActivity;->mRoot:Lcom/hf/UI/ScrollLayout;

    invoke-virtual {v4}, Lcom/hf/UI/ScrollLayout;->getChildCount()I

    move-result v1

    .line 225
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v1, :cond_1

    .line 233
    :goto_1
    return-void

    .line 226
    :cond_1
    iget-object v4, p0, Lcom/hf/UI/IndicesActivity;->mRoot:Lcom/hf/UI/ScrollLayout;

    invoke-virtual {v4, v2}, Lcom/hf/UI/ScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hf/UI/IndicesLayout;

    .line 227
    .local v0, child:Lcom/hf/UI/IndicesLayout;
    invoke-virtual {v0}, Lcom/hf/UI/IndicesLayout;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 228
    .local v3, tag:Ljava/lang/String;
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 229
    invoke-virtual {v0}, Lcom/hf/UI/IndicesLayout;->updateIndices()V

    goto :goto_1

    .line 225
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$Umeng;->onError(Landroid/content/Context;)V

    .line 80
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$BaiDu;->onError(Landroid/content/Context;)V

    .line 81
    const v0, 0x7f030012

    invoke-virtual {p0, v0}, Lcom/hf/UI/IndicesActivity;->setContentView(I)V

    .line 82
    const v0, 0x7f0b005a

    invoke-virtual {p0, v0}, Lcom/hf/UI/IndicesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hf/UI/ScrollLayout;

    iput-object v0, p0, Lcom/hf/UI/IndicesActivity;->mRoot:Lcom/hf/UI/ScrollLayout;

    .line 83
    invoke-direct {p0}, Lcom/hf/UI/IndicesActivity;->initIndicesMap()V

    .line 84
    invoke-direct {p0}, Lcom/hf/UI/IndicesActivity;->initViews()V

    .line 85
    invoke-direct {p0}, Lcom/hf/UI/IndicesActivity;->registBroadcast()V

    .line 86
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 395
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 396
    iget-object v0, p0, Lcom/hf/UI/IndicesActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/hf/UI/IndicesActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 397
    sget-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 398
    const/4 v0, 0x0

    sput-object v0, Lcom/hf/UI/IndicesActivity;->mIndicesMap:Ljava/util/Map;

    .line 399
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 196
    sget-boolean v0, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v0, :cond_0

    .line 197
    const-string v0, "onKeyDown"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "keyCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_0
    const/16 v0, 0x52

    if-ne p1, v0, :cond_1

    .line 200
    invoke-virtual {p0}, Lcom/hf/UI/IndicesActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/hf/UI/MainActivity;

    invoke-virtual {v0}, Lcom/hf/UI/MainActivity;->screenShot()V

    .line 202
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 188
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 190
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$Umeng;->onPause(Landroid/content/Context;)V

    .line 191
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$BaiDu;->onPause(Landroid/content/Context;)V

    .line 192
    return-void
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 403
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 404
    iget-object v1, p0, Lcom/hf/UI/IndicesActivity;->mRoot:Lcom/hf/UI/ScrollLayout;

    invoke-virtual {v1}, Lcom/hf/UI/ScrollLayout;->getCurrentScreen()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hf/UI/IndicesLayout;

    .line 405
    .local v0, child:Lcom/hf/UI/IndicesLayout;
    if-eqz v0, :cond_0

    .line 406
    invoke-virtual {v0}, Lcom/hf/UI/IndicesLayout;->changeIndices()V

    .line 408
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 331
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 332
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$Umeng;->onResume(Landroid/content/Context;)V

    .line 333
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$BaiDu;->onResume(Landroid/content/Context;)V

    .line 334
    return-void
.end method
