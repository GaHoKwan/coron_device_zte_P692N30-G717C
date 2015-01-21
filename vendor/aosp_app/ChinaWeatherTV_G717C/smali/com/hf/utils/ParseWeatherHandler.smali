.class public Lcom/hf/utils/ParseWeatherHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ParseWeatherHandler.java"


# static fields
.field private static final CF:Ljava/lang/String; = "CF"

.field private static final CITY_ID:Ljava/lang/String; = "CityID"

.field private static final CITY_METEOR:Ljava/lang/String; = "CityMeteor"

.field private static final HUMIDITY:Ljava/lang/String; = "Humidity"

.field private static final INDICES_NAME:Ljava/lang/String; = "Name"

.field private static final INDICES_VAL:Ljava/lang/String; = "Val"

.field private static final NULL:Ljava/lang/String; = "NULL"

.field private static final PERIOD:Ljava/lang/String; = "Period"

.field private static final PRESSURE:Ljava/lang/String; = "Pressure"

.field private static final REPORT_TIME:Ljava/lang/String; = "ReportTime"

.field private static final SK:Ljava/lang/String; = "SK"

.field private static final SK_INFO:Ljava/lang/String; = "Info"

.field private static final STATIOIN_INFO:Ljava/lang/String; = "StationInfo"

.field private static final STATION_ID:Ljava/lang/String; = "Stationid"

.field private static final TAG:Ljava/lang/String; = "ParseWeatherHandler"

.field private static final TEMPERATURE:Ljava/lang/String; = "Temperature"

.field private static final TIME_START:Ljava/lang/String; = "Timestart"

.field private static final T_MAX:Ljava/lang/String; = "Tmax"

.field private static final T_MIN:Ljava/lang/String; = "Tmin"

.field private static final VISIBILITY:Ljava/lang/String; = "Visibility"

.field private static final WEATHER:Ljava/lang/String; = "Weather"

.field private static final WEEK:Ljava/lang/String; = "Week"

.field private static final WIND_DIR:Ljava/lang/String; = "WindDir"

.field private static final WIND_POWER:Ljava/lang/String; = "WindPower"

.field private static final WIND_SPEED:Ljava/lang/String; = "WindSpeed"

.field private static final ZU_TYPE:Ljava/lang/String; = "Type"


# instance fields
.field private cityId:Ljava/lang/String;

.field private indices:Lcom/hf/model/Indices;

.field private isCF:Z

.field private isDay:Z

.field private isHalfDay:Z

.field private isIndices:Z

.field private mContext:Landroid/content/Context;

.field private mModel:Lcom/hf/model/WeatherModel;

.field private tMaxStr:Ljava/lang/String;

.field private tMinStr:Ljava/lang/String;

.field private weather:Lcom/hf/model/CFWeather;

.field private weatherCode1:I

.field private weatherCode2:I

.field private windDirCode1:I

.field private windDirCode2:I

.field private windPowerCode1:I

.field private windPowerCode2:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 59
    iput-boolean v0, p0, Lcom/hf/utils/ParseWeatherHandler;->isIndices:Z

    .line 60
    iput-boolean v1, p0, Lcom/hf/utils/ParseWeatherHandler;->isDay:Z

    .line 66
    iput v0, p0, Lcom/hf/utils/ParseWeatherHandler;->windPowerCode1:I

    iput v0, p0, Lcom/hf/utils/ParseWeatherHandler;->windPowerCode2:I

    .line 67
    iput v0, p0, Lcom/hf/utils/ParseWeatherHandler;->windDirCode1:I

    iput v0, p0, Lcom/hf/utils/ParseWeatherHandler;->windDirCode2:I

    .line 68
    iput v0, p0, Lcom/hf/utils/ParseWeatherHandler;->weatherCode1:I

    iput v0, p0, Lcom/hf/utils/ParseWeatherHandler;->weatherCode2:I

    .line 70
    iput-boolean v1, p0, Lcom/hf/utils/ParseWeatherHandler;->isHalfDay:Z

    .line 71
    iput-boolean v1, p0, Lcom/hf/utils/ParseWeatherHandler;->isCF:Z

    .line 74
    iput-object p1, p0, Lcom/hf/utils/ParseWeatherHandler;->mContext:Landroid/content/Context;

    .line 75
    iput-boolean v1, p0, Lcom/hf/utils/ParseWeatherHandler;->isDay:Z

    .line 76
    return-void
.end method

.method private devideIndices(Lcom/hf/model/Indices;)V
    .locals 7
    .parameter "indices"

    .prologue
    const/4 v3, 0x0

    .line 313
    iget-object v2, p1, Lcom/hf/model/Indices;->indicesName:Ljava/lang/String;

    .line 322
    .local v2, name:Ljava/lang/String;
    iget-object v4, p0, Lcom/hf/utils/ParseWeatherHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070040

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, arrays:[Ljava/lang/String;
    array-length v5, v0

    move v4, v3

    :goto_0
    if-lt v4, v5, :cond_0

    .line 332
    iget-object v4, p0, Lcom/hf/utils/ParseWeatherHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070042

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 333
    array-length v5, v0

    move v4, v3

    :goto_1
    if-lt v4, v5, :cond_3

    .line 342
    iget-object v4, p0, Lcom/hf/utils/ParseWeatherHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070041

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 343
    array-length v4, v0

    :goto_2
    if-lt v3, v4, :cond_6

    .line 352
    :goto_3
    return-void

    .line 323
    :cond_0
    aget-object v1, v0, v4

    .line 324
    .local v1, item:Ljava/lang/String;
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 325
    iget-object v3, p0, Lcom/hf/utils/ParseWeatherHandler;->mModel:Lcom/hf/model/WeatherModel;

    iget-object v3, v3, Lcom/hf/model/WeatherModel;->healthIndices:Ljava/util/List;

    if-nez v3, :cond_1

    .line 326
    iget-object v3, p0, Lcom/hf/utils/ParseWeatherHandler;->mModel:Lcom/hf/model/WeatherModel;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/hf/model/WeatherModel;->healthIndices:Ljava/util/List;

    .line 328
    :cond_1
    iget-object v3, p0, Lcom/hf/utils/ParseWeatherHandler;->mModel:Lcom/hf/model/WeatherModel;

    iget-object v3, v3, Lcom/hf/model/WeatherModel;->healthIndices:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 323
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 333
    .end local v1           #item:Ljava/lang/String;
    :cond_3
    aget-object v1, v0, v4

    .line 334
    .restart local v1       #item:Ljava/lang/String;
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 335
    iget-object v3, p0, Lcom/hf/utils/ParseWeatherHandler;->mModel:Lcom/hf/model/WeatherModel;

    iget-object v3, v3, Lcom/hf/model/WeatherModel;->travelIndices:Ljava/util/List;

    if-nez v3, :cond_4

    .line 336
    iget-object v3, p0, Lcom/hf/utils/ParseWeatherHandler;->mModel:Lcom/hf/model/WeatherModel;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/hf/model/WeatherModel;->travelIndices:Ljava/util/List;

    .line 338
    :cond_4
    iget-object v3, p0, Lcom/hf/utils/ParseWeatherHandler;->mModel:Lcom/hf/model/WeatherModel;

    iget-object v3, v3, Lcom/hf/model/WeatherModel;->travelIndices:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 333
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 343
    .end local v1           #item:Ljava/lang/String;
    :cond_6
    aget-object v1, v0, v3

    .line 344
    .restart local v1       #item:Ljava/lang/String;
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 345
    iget-object v3, p0, Lcom/hf/utils/ParseWeatherHandler;->mModel:Lcom/hf/model/WeatherModel;

    iget-object v3, v3, Lcom/hf/model/WeatherModel;->outDoorIndices:Ljava/util/List;

    if-nez v3, :cond_7

    .line 346
    iget-object v3, p0, Lcom/hf/utils/ParseWeatherHandler;->mModel:Lcom/hf/model/WeatherModel;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/hf/model/WeatherModel;->outDoorIndices:Ljava/util/List;

    .line 348
    :cond_7
    iget-object v3, p0, Lcom/hf/utils/ParseWeatherHandler;->mModel:Lcom/hf/model/WeatherModel;

    iget-object v3, v3, Lcom/hf/model/WeatherModel;->outDoorIndices:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 343
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private getBrief(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .parameter "indicesName"
    .parameter "code"

    .prologue
    .line 360
    const-string v0, ""

    .line 361
    .local v0, brief:Ljava/lang/String;
    const/4 v1, 0x0

    .line 362
    .local v1, briefs:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 363
    .local v2, id:I
    const-string v4, "CL"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 364
    const v2, 0x7f070024

    .line 418
    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    .line 419
    iget-object v4, p0, Lcom/hf/utils/ParseWeatherHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 420
    array-length v3, v1

    .line 421
    .local v3, len:I
    if-lt p2, v3, :cond_1d

    .line 422
    add-int/lit8 p2, v3, -0x1

    .line 426
    :cond_1
    :goto_1
    aget-object v0, v1, p2

    .line 433
    .end local v3           #len:I
    :cond_2
    return-object v0

    .line 365
    :cond_3
    const-string v4, "CY"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 366
    const v2, 0x7f070025

    .line 367
    goto :goto_0

    :cond_4
    const-string v4, "DY"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 368
    const v2, 0x7f070026

    .line 369
    goto :goto_0

    :cond_5
    const-string v4, "FFZ"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 370
    const v2, 0x7f070027

    .line 371
    goto :goto_0

    :cond_6
    const-string v4, "FS"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 372
    const v2, 0x7f070028

    .line 373
    goto :goto_0

    :cond_7
    const-string v4, "FH"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 374
    const v2, 0x7f070029

    .line 375
    goto :goto_0

    :cond_8
    const-string v4, "GM"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 376
    const v2, 0x7f07002a

    .line 377
    goto :goto_0

    :cond_9
    const-string v4, "GJ"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 378
    const v2, 0x7f07002b

    .line 379
    goto :goto_0

    :cond_a
    const-string v4, "HC"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 380
    const v2, 0x7f07002c

    .line 381
    goto :goto_0

    :cond_b
    const-string v4, "HZ"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 382
    const v2, 0x7f07002d

    .line 383
    goto :goto_0

    :cond_c
    const-string v4, "JT"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 384
    const v2, 0x7f07002e

    .line 385
    goto/16 :goto_0

    :cond_d
    const-string v4, "KQWR"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 386
    const v2, 0x7f07002f

    .line 387
    goto/16 :goto_0

    :cond_e
    const-string v4, "KT"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 388
    const v2, 0x7f070030

    .line 389
    goto/16 :goto_0

    :cond_f
    const-string v4, "LS"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 390
    const v2, 0x7f070031

    .line 391
    goto/16 :goto_0

    :cond_10
    const-string v4, "LK"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 392
    const v2, 0x7f070032

    .line 393
    goto/16 :goto_0

    :cond_11
    const-string v4, "LY"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 394
    const v2, 0x7f070033

    .line 395
    goto/16 :goto_0

    :cond_12
    const-string v4, "MF"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 396
    const v2, 0x7f070034

    .line 397
    goto/16 :goto_0

    :cond_13
    const-string v4, "PJ"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 398
    const v2, 0x7f070035

    .line 399
    goto/16 :goto_0

    :cond_14
    const-string v4, "SSD"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 400
    const v2, 0x7f070036

    .line 401
    goto/16 :goto_0

    :cond_15
    const-string v4, "XC"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 402
    const v2, 0x7f070037

    .line 403
    goto/16 :goto_0

    :cond_16
    const-string v4, "XQ"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 404
    const v2, 0x7f070038

    .line 405
    goto/16 :goto_0

    :cond_17
    const-string v4, "YSH"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 406
    const v2, 0x7f070039

    .line 407
    goto/16 :goto_0

    :cond_18
    const-string v4, "YS"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 408
    const v2, 0x7f07003a

    .line 409
    goto/16 :goto_0

    :cond_19
    const-string v4, "YH"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 410
    const v2, 0x7f07003b

    .line 411
    goto/16 :goto_0

    :cond_1a
    const-string v4, "YD"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 412
    const v2, 0x7f07003c

    .line 413
    goto/16 :goto_0

    :cond_1b
    const-string v4, "ZS"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 414
    const v2, 0x7f07003d

    .line 415
    goto/16 :goto_0

    :cond_1c
    const-string v4, "ZWX"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 416
    const v2, 0x7f070023

    goto/16 :goto_0

    .line 423
    .restart local v3       #len:I
    :cond_1d
    if-gez p2, :cond_1

    .line 424
    const/4 p2, 0x0

    goto/16 :goto_1
.end method


# virtual methods
.method public characters([CII)V
    .locals 2
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/hf/utils/ParseWeatherHandler;->isIndices:Z

    if-eqz v0, :cond_0

    .line 278
    if-eqz p1, :cond_0

    .line 279
    iget-object v0, p0, Lcom/hf/utils/ParseWeatherHandler;->indices:Lcom/hf/model/Indices;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, v0, Lcom/hf/model/Indices;->indicesDescription:Ljava/lang/String;

    .line 282
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    .line 283
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 288
    const-string v0, "CityMeteor"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 290
    const-string v0, "Type"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 291
    iput-boolean v1, p0, Lcom/hf/utils/ParseWeatherHandler;->isIndices:Z

    .line 293
    iget-object v0, p0, Lcom/hf/utils/ParseWeatherHandler;->indices:Lcom/hf/model/Indices;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hf/utils/ParseWeatherHandler;->indices:Lcom/hf/model/Indices;

    iget-object v0, v0, Lcom/hf/model/Indices;->indicesName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 294
    iget-object v0, p0, Lcom/hf/utils/ParseWeatherHandler;->mModel:Lcom/hf/model/WeatherModel;

    if-nez v0, :cond_0

    .line 295
    new-instance v0, Lcom/hf/model/WeatherModel;

    invoke-direct {v0}, Lcom/hf/model/WeatherModel;-><init>()V

    iput-object v0, p0, Lcom/hf/utils/ParseWeatherHandler;->mModel:Lcom/hf/model/WeatherModel;

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/hf/utils/ParseWeatherHandler;->mModel:Lcom/hf/model/WeatherModel;

    iget-object v0, v0, Lcom/hf/model/WeatherModel;->indicesMap:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/hf/utils/ParseWeatherHandler;->mModel:Lcom/hf/model/WeatherModel;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/hf/model/WeatherModel;->indicesMap:Ljava/util/Map;

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/hf/utils/ParseWeatherHandler;->mModel:Lcom/hf/model/WeatherModel;

    iget-object v0, v0, Lcom/hf/model/WeatherModel;->indicesMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/hf/utils/ParseWeatherHandler;->indices:Lcom/hf/model/Indices;

    iget-object v1, v1, Lcom/hf/model/Indices;->indicesName:Ljava/lang/String;

    iget-object v2, p0, Lcom/hf/utils/ParseWeatherHandler;->indices:Lcom/hf/model/Indices;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    iget-object v0, p0, Lcom/hf/utils/ParseWeatherHandler;->indices:Lcom/hf/model/Indices;

    invoke-direct {p0, v0}, Lcom/hf/utils/ParseWeatherHandler;->devideIndices(Lcom/hf/model/Indices;)V

    .line 309
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    return-void

    .line 306
    :cond_3
    const-string v0, "CF"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 307
    iput-boolean v1, p0, Lcom/hf/utils/ParseWeatherHandler;->isCF:Z

    goto :goto_0
.end method

.method public getWeatherModel()Lcom/hf/model/WeatherModel;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/hf/utils/ParseWeatherHandler;->mModel:Lcom/hf/model/WeatherModel;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 31
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-super/range {p0 .. p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 91
    const-string v28, "CityMeteor"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_1

    .line 92
    const-string v28, "CityID"

    move-object/from16 v0, p4

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/hf/utils/ParseWeatherHandler;->cityId:Ljava/lang/String;

    .line 93
    new-instance v28, Lcom/hf/model/WeatherModel;

    invoke-direct/range {v28 .. v28}, Lcom/hf/model/WeatherModel;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/hf/utils/ParseWeatherHandler;->mModel:Lcom/hf/model/WeatherModel;

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/utils/ParseWeatherHandler;->mModel:Lcom/hf/model/WeatherModel;

    move-object/from16 v28, v0

    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/hf/model/WeatherModel;->weatherList:Ljava/util/List;

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/utils/ParseWeatherHandler;->mModel:Lcom/hf/model/WeatherModel;

    move-object/from16 v28, v0

    new-instance v29, Ljava/util/HashMap;

    invoke-direct/range {v29 .. v29}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/hf/model/WeatherModel;->indicesMap:Ljava/util/Map;

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/utils/ParseWeatherHandler;->mModel:Lcom/hf/model/WeatherModel;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/utils/ParseWeatherHandler;->cityId:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/hf/model/WeatherModel;->cityId:Ljava/lang/String;

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    const-string v28, "StationInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 98
    const-string v28, "Stationid"

    move-object/from16 v0, p4

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 99
    .local v9, stationId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/utils/ParseWeatherHandler;->mModel:Lcom/hf/model/WeatherModel;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iput-object v9, v0, Lcom/hf/model/WeatherModel;->sid:Ljava/lang/String;

    goto :goto_0

    .line 100
    .end local v9           #stationId:Ljava/lang/String;
    :cond_2
    const-string v28, "CF"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_3

    .line 101
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/hf/utils/ParseWeatherHandler;->isCF:Z

    goto :goto_0

    .line 103
    :cond_3
    const-string v28, "SK"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_4

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/utils/ParseWeatherHandler;->mModel:Lcom/hf/model/WeatherModel;

    move-object/from16 v28, v0

    const-string v29, "ReportTime"

    move-object/from16 v0, p4

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/hf/model/WeatherModel;->skReportTime:Ljava/lang/String;

    goto :goto_0

    .line 105
    :cond_4
    const-string v28, "Period"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_12

    .line 106
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/hf/utils/ParseWeatherHandler;->isCF:Z

    move/from16 v28, v0

    if-eqz v28, :cond_0

    .line 109
    const-string v28, "Timestart"

    move-object/from16 v0, p4

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 111
    .local v14, timeStart:Ljava/lang/String;
    sget-boolean v28, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v28, :cond_5

    .line 112
    const-string v28, "PERIOD"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "time start = "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_5
    const-string v28, "8:00:00"

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/hf/utils/ParseWeatherHandler;->isDay:Z

    .line 117
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/hf/utils/ParseWeatherHandler;->isDay:Z

    move/from16 v28, v0

    if-eqz v28, :cond_a

    .line 118
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/hf/utils/ParseWeatherHandler;->isHalfDay:Z

    .line 119
    const-string v28, "WindPower"

    move-object/from16 v0, p4

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 120
    .local v26, windPower:Ljava/lang/String;
    const-string v28, "WindDir"

    move-object/from16 v0, p4

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 121
    .local v24, windDir:Ljava/lang/String;
    const-string v28, "Tmax"

    move-object/from16 v0, p4

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 122
    .local v10, tMax:Ljava/lang/String;
    const-string v28, "Tmin"

    move-object/from16 v0, p4

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 123
    .local v11, tMin:Ljava/lang/String;
    const-string v28, "Weather"

    move-object/from16 v0, p4

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 124
    .local v20, weather1:Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_6

    const-string v28, "NULL"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_6

    .line 125
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/hf/utils/ParseWeatherHandler;->windPowerCode1:I

    .line 128
    :cond_6
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_7

    const-string v28, "NULL"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_7

    .line 129
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/hf/utils/ParseWeatherHandler;->windDirCode1:I

    .line 132
    :cond_7
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_8

    const-string v28, "NULL"

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_8

    .line 133
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/hf/utils/ParseWeatherHandler;->weatherCode1:I

    .line 136
    :cond_8
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_9

    const-string v28, "NULL"

    move-object/from16 v0, v28

    invoke-static {v10, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_9

    .line 137
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/hf/utils/ParseWeatherHandler;->tMaxStr:Ljava/lang/String;

    .line 140
    :cond_9
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_0

    const-string v28, "NULL"

    move-object/from16 v0, v28

    invoke-static {v11, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_0

    .line 141
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/hf/utils/ParseWeatherHandler;->tMinStr:Ljava/lang/String;

    goto/16 :goto_0

    .line 147
    .end local v10           #tMax:Ljava/lang/String;
    .end local v11           #tMin:Ljava/lang/String;
    .end local v20           #weather1:Ljava/lang/String;
    .end local v24           #windDir:Ljava/lang/String;
    .end local v26           #windPower:Ljava/lang/String;
    :cond_a
    new-instance v28, Lcom/hf/model/CFWeather;

    invoke-direct/range {v28 .. v28}, Lcom/hf/model/CFWeather;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/hf/utils/ParseWeatherHandler;->weather:Lcom/hf/model/CFWeather;

    .line 149
    const-string v28, "WindPower"

    move-object/from16 v0, p4

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 150
    .restart local v26       #windPower:Ljava/lang/String;
    const-string v28, "WindDir"

    move-object/from16 v0, p4

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 151
    .restart local v24       #windDir:Ljava/lang/String;
    const-string v28, "Tmax"

    move-object/from16 v0, p4

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 152
    .restart local v10       #tMax:Ljava/lang/String;
    const-string v28, "Tmin"

    move-object/from16 v0, p4

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 153
    .restart local v11       #tMin:Ljava/lang/String;
    const-string v28, "Weather"

    move-object/from16 v0, p4

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 154
    .local v21, weather2:Ljava/lang/String;
    const-string v28, "Week"

    move-object/from16 v0, p4

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 155
    .local v23, week:Ljava/lang/String;
    const-string v28, "Timestart"

    move-object/from16 v0, p4

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 157
    .local v13, time:Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_b

    const-string v28, "NULL"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_b

    .line 158
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/hf/utils/ParseWeatherHandler;->windPowerCode2:I

    .line 161
    :cond_b
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_c

    const-string v28, "NULL"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_c

    .line 162
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/hf/utils/ParseWeatherHandler;->windDirCode2:I

    .line 165
    :cond_c
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_d

    const-string v28, "NULL"

    move-object/from16 v0, v28

    invoke-static {v11, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_d

    .line 166
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/hf/utils/ParseWeatherHandler;->tMinStr:Ljava/lang/String;

    .line 169
    :cond_d
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_e

    const-string v28, "NULL"

    move-object/from16 v0, v28

    invoke-static {v10, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_e

    .line 170
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/hf/utils/ParseWeatherHandler;->tMaxStr:Ljava/lang/String;

    .line 173
    :cond_e
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_f

    const-string v28, "NULL"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_f

    .line 174
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/hf/utils/ParseWeatherHandler;->weatherCode2:I

    .line 177
    :cond_f
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_10

    const-string v28, "NULL"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_10

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/utils/ParseWeatherHandler;->weather:Lcom/hf/model/CFWeather;

    move-object/from16 v28, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/hf/model/CFWeather;->week:I

    .line 181
    :cond_10
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_11

    const-string v28, "NULL"

    move-object/from16 v0, v28

    invoke-static {v13, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_11

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/utils/ParseWeatherHandler;->weather:Lcom/hf/model/CFWeather;

    move-object/from16 v28, v0

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/hf/model/CFWeather;->time:Ljava/lang/String;

    .line 184
    :cond_11
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v28

    const-string v29, "yyyy-M-dd"

    invoke-static/range {v28 .. v29}, Lcom/hf/utils/Util;->getDate(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 185
    .local v15, today:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/utils/ParseWeatherHandler;->weather:Lcom/hf/model/CFWeather;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/utils/ParseWeatherHandler;->weather:Lcom/hf/model/CFWeather;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/hf/model/CFWeather;->time:Ljava/lang/String;

    move-object/from16 v29, v0

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    aget-object v29, v29, v30

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v0, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/hf/model/CFWeather;->isToday:Z

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/utils/ParseWeatherHandler;->weather:Lcom/hf/model/CFWeather;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/hf/utils/ParseWeatherHandler;->isHalfDay:Z

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/hf/model/CFWeather;->isHalfDay:Z

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/utils/ParseWeatherHandler;->weather:Lcom/hf/model/CFWeather;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/hf/utils/ParseWeatherHandler;->weatherCode1:I

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/hf/model/CFWeather;->weatherDay:I

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/utils/ParseWeatherHandler;->weather:Lcom/hf/model/CFWeather;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/hf/utils/ParseWeatherHandler;->weatherCode2:I

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/hf/model/CFWeather;->weatherNigth:I

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/utils/ParseWeatherHandler;->weather:Lcom/hf/model/CFWeather;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/utils/ParseWeatherHandler;->tMaxStr:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/hf/model/CFWeather;->tDay:Ljava/lang/String;

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/utils/ParseWeatherHandler;->weather:Lcom/hf/model/CFWeather;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/utils/ParseWeatherHandler;->tMinStr:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/hf/model/CFWeather;->tNight:Ljava/lang/String;

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/utils/ParseWeatherHandler;->weather:Lcom/hf/model/CFWeather;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/hf/utils/ParseWeatherHandler;->windPowerCode1:I

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/hf/model/CFWeather;->windPowerDay:I

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/utils/ParseWeatherHandler;->weather:Lcom/hf/model/CFWeather;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/hf/utils/ParseWeatherHandler;->windPowerCode2:I

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/hf/model/CFWeather;->windPowerNight:I

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/utils/ParseWeatherHandler;->weather:Lcom/hf/model/CFWeather;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/hf/utils/ParseWeatherHandler;->windDirCode1:I

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/hf/model/CFWeather;->windDirCodeDay:I

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/utils/ParseWeatherHandler;->weather:Lcom/hf/model/CFWeather;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/hf/utils/ParseWeatherHandler;->windDirCode2:I

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/hf/model/CFWeather;->windDirCodeNight:I

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/utils/ParseWeatherHandler;->mModel:Lcom/hf/model/WeatherModel;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/hf/model/WeatherModel;->weatherList:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/utils/ParseWeatherHandler;->weather:Lcom/hf/model/CFWeather;

    move-object/from16 v29, v0

    invoke-interface/range {v28 .. v29}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 202
    .end local v10           #tMax:Ljava/lang/String;
    .end local v11           #tMin:Ljava/lang/String;
    .end local v13           #time:Ljava/lang/String;
    .end local v14           #timeStart:Ljava/lang/String;
    .end local v15           #today:Ljava/lang/String;
    .end local v21           #weather2:Ljava/lang/String;
    .end local v23           #week:Ljava/lang/String;
    .end local v24           #windDir:Ljava/lang/String;
    .end local v26           #windPower:Ljava/lang/String;
    :cond_12
    const-string v28, "Type"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_14

    .line 203
    const-string v28, "Name"

    move-object/from16 v0, p4

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 204
    .local v5, name:Ljava/lang/String;
    new-instance v28, Lcom/hf/model/Indices;

    invoke-direct/range {v28 .. v28}, Lcom/hf/model/Indices;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/hf/utils/ParseWeatherHandler;->indices:Lcom/hf/model/Indices;

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/utils/ParseWeatherHandler;->indices:Lcom/hf/model/Indices;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iput-object v5, v0, Lcom/hf/model/Indices;->indicesName:Ljava/lang/String;

    .line 206
    const-string v28, "Val"

    move-object/from16 v0, p4

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 207
    .local v16, val:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_13

    const-string v28, "NULL"

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_13

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/utils/ParseWeatherHandler;->indices:Lcom/hf/model/Indices;

    move-object/from16 v28, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/hf/model/Indices;->indicesCode:I

    .line 211
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/utils/ParseWeatherHandler;->indices:Lcom/hf/model/Indices;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/utils/ParseWeatherHandler;->indices:Lcom/hf/model/Indices;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/hf/model/Indices;->indicesName:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/utils/ParseWeatherHandler;->indices:Lcom/hf/model/Indices;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/hf/model/Indices;->indicesCode:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/hf/utils/ParseWeatherHandler;->getBrief(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/hf/model/Indices;->brief:Ljava/lang/String;

    .line 213
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/hf/utils/ParseWeatherHandler;->isIndices:Z

    goto/16 :goto_0

    .line 214
    .end local v5           #name:Ljava/lang/String;
    .end local v16           #val:Ljava/lang/String;
    :cond_14
    const-string v28, "Info"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_0

    .line 215
    const-string v28, "WindPower"

    move-object/from16 v0, p4

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 216
    .restart local v26       #windPower:Ljava/lang/String;
    const-string v28, "WindDir"

    move-object/from16 v0, p4

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 217
    .restart local v24       #windDir:Ljava/lang/String;
    const-string v28, "Weather"

    move-object/from16 v0, p4

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 218
    .local v19, weather:Ljava/lang/String;
    const-string v28, "Visibility"

    move-object/from16 v0, p4

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 219
    .local v17, visibility:Ljava/lang/String;
    const-string v28, "Pressure"

    move-object/from16 v0, p4

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 220
    .local v7, pressure:Ljava/lang/String;
    const-string v28, "Humidity"

    move-object/from16 v0, p4

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 221
    .local v4, humidity:Ljava/lang/String;
    const-string v28, "WindSpeed"

    move-object/from16 v0, p4

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 222
    .local v27, windSpeed:Ljava/lang/String;
    const-string v28, "Temperature"

    move-object/from16 v0, p4

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 224
    .local v12, temperatrue:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, powerCode:I
    const/16 v25, 0x0

    .local v25, windDirCode:I
    const/16 v22, 0x0

    .line 226
    .local v22, weatherCode:I
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_15

    const-string v28, "NULL"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_15

    .line 227
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 230
    :cond_15
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_16

    const-string v28, "NULL"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_16

    .line 231
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 234
    :cond_16
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_17

    const-string v28, "NULL"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_17

    .line 235
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 238
    :cond_17
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_18

    const-string v28, "NULL"

    move-object/from16 v0, v28

    invoke-static {v7, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_19

    .line 239
    :cond_18
    const-string v7, ""

    .line 242
    :cond_19
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_1a

    const-string v28, "NULL"

    move-object/from16 v0, v28

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_1b

    .line 243
    :cond_1a
    const-string v4, ""

    .line 246
    :cond_1b
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_1c

    const-string v28, "NULL"

    move-object/from16 v0, v28

    invoke-static {v12, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_1d

    .line 247
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/utils/ParseWeatherHandler;->mModel:Lcom/hf/model/WeatherModel;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/hf/model/WeatherModel;->weatherList:Ljava/util/List;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-interface/range {v28 .. v29}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/hf/model/CFWeather;

    .line 249
    .local v18, w:Lcom/hf/model/CFWeather;
    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/hf/model/CFWeather;->isHalfDay:Z

    move/from16 v28, v0

    if-eqz v28, :cond_1e

    .line 250
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/hf/model/CFWeather;->tNight:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 255
    .local v3, currentTemperature:I
    :goto_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 258
    .end local v3           #currentTemperature:I
    .end local v18           #w:Lcom/hf/model/CFWeather;
    :cond_1d
    new-instance v8, Lcom/hf/model/SKWeather;

    invoke-direct {v8}, Lcom/hf/model/SKWeather;-><init>()V

    .line 259
    .local v8, skWeather:Lcom/hf/model/SKWeather;
    move/from16 v0, v22

    iput v0, v8, Lcom/hf/model/SKWeather;->weatherCode:I

    .line 260
    iput v6, v8, Lcom/hf/model/SKWeather;->windPowerCode:I

    .line 261
    move/from16 v0, v25

    iput v0, v8, Lcom/hf/model/SKWeather;->windDirCode:I

    .line 262
    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/hf/model/SKWeather;->currentVisibility:Ljava/lang/String;

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/utils/ParseWeatherHandler;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-static {v0, v7}, Lcom/hf/utils/WeatherUtils;->formatPressure(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    iput-object v0, v8, Lcom/hf/model/SKWeather;->currentPressure:Ljava/lang/String;

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/utils/ParseWeatherHandler;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-static {v0, v4}, Lcom/hf/utils/WeatherUtils;->formatHumidity(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    iput-object v0, v8, Lcom/hf/model/SKWeather;->currentHumidity:Ljava/lang/String;

    .line 266
    move-object/from16 v0, v27

    iput-object v0, v8, Lcom/hf/model/SKWeather;->currentWindSpeed:Ljava/lang/String;

    .line 267
    iput-object v12, v8, Lcom/hf/model/SKWeather;->temperatrue:Ljava/lang/String;

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/utils/ParseWeatherHandler;->mModel:Lcom/hf/model/WeatherModel;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iput-object v8, v0, Lcom/hf/model/WeatherModel;->skWeather:Lcom/hf/model/SKWeather;

    goto/16 :goto_0

    .line 252
    .end local v8           #skWeather:Lcom/hf/model/SKWeather;
    .restart local v18       #w:Lcom/hf/model/CFWeather;
    :cond_1e
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/hf/model/CFWeather;->tDay:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/hf/model/CFWeather;->tNight:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    add-int v28, v28, v29

    div-int/lit8 v3, v28, 0x2

    .restart local v3       #currentTemperature:I
    goto :goto_1
.end method
