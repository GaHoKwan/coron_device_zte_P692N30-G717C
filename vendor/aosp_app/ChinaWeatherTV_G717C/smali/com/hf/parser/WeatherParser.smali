.class public Lcom/hf/parser/WeatherParser;
.super Ljava/lang/Object;
.source "WeatherParser.java"


# static fields
.field private static final CF:Ljava/lang/String; = "cf"

.field private static final CF_IS_NULL:Ljava/lang/String; = "cfIsNull"

.field private static final DATA_FORMATTER:Ljava/lang/String; = "yyyy-M-d"

.field private static final HUMIDITY:Ljava/lang/String; = "humidity"

.field private static final NULL:Ljava/lang/String; = "NULL"

.field private static final PRESSURE:Ljava/lang/String; = "pressure"

.field private static final SK:Ljava/lang/String; = "sk"

.field private static final SK_IS_NULL:Ljava/lang/String; = "skIsNull"

.field private static final SK_REPORTTIME:Ljava/lang/String; = "reportTime"

.field private static final STATION_ID:Ljava/lang/String; = "stationid"

.field private static final TAG:Ljava/lang/String; = "WeatherParser"

.field private static final TEMPERATURE:Ljava/lang/String; = "temperature"

.field private static final TIME_SEPARATOR:Ljava/lang/String; = " "

.field private static final TIME_START:Ljava/lang/String; = "timeStart"

.field private static final TMAX:Ljava/lang/String; = "tmax"

.field private static final TMIN:Ljava/lang/String; = "tmin"

.field private static final VISIBILITY:Ljava/lang/String; = "visibility"

.field private static final WEATHER:Ljava/lang/String; = "weather"

.field private static final WEEK:Ljava/lang/String; = "week"

.field private static final WIND_DIR:Ljava/lang/String; = "windDir"

.field private static final WIND_POWER:Ljava/lang/String; = "windPower"

.field private static final WIND_SPEED:Ljava/lang/String; = "windSpeed"

.field private static final ZU:Ljava/lang/String; = "zu"

.field private static final ZU_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final ZU_IS_NULL:Ljava/lang/String; = "zuIsNull"

.field private static final ZU_NAME:Ljava/lang/String; = "zuName"

.field private static final ZU_VALUE:Ljava/lang/String; = "zuValue"


# instance fields
.field private cfIsNull:Z

.field private mCityId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mModel:Lcom/hf/model/WeatherModel;

.field private skIsNull:Z

.field private zuIsNull:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "cityId"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/hf/parser/WeatherParser;->mContext:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/hf/parser/WeatherParser;->mCityId:Ljava/lang/String;

    .line 74
    return-void
.end method

.method private devideIndices(Lcom/hf/model/Indices;)V
    .locals 7
    .parameter "indices"

    .prologue
    const/4 v3, 0x0

    .line 347
    iget-object v2, p1, Lcom/hf/model/Indices;->indicesName:Ljava/lang/String;

    .line 348
    .local v2, name:Ljava/lang/String;
    iget-object v4, p0, Lcom/hf/parser/WeatherParser;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070040

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, arrays:[Ljava/lang/String;
    array-length v5, v0

    move v4, v3

    :goto_0
    if-lt v4, v5, :cond_0

    .line 358
    iget-object v4, p0, Lcom/hf/parser/WeatherParser;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070042

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 359
    array-length v5, v0

    move v4, v3

    :goto_1
    if-lt v4, v5, :cond_3

    .line 368
    iget-object v4, p0, Lcom/hf/parser/WeatherParser;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070041

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 369
    array-length v4, v0

    :goto_2
    if-lt v3, v4, :cond_6

    .line 378
    :goto_3
    return-void

    .line 349
    :cond_0
    aget-object v1, v0, v4

    .line 350
    .local v1, item:Ljava/lang/String;
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 351
    iget-object v3, p0, Lcom/hf/parser/WeatherParser;->mModel:Lcom/hf/model/WeatherModel;

    iget-object v3, v3, Lcom/hf/model/WeatherModel;->healthIndices:Ljava/util/List;

    if-nez v3, :cond_1

    .line 352
    iget-object v3, p0, Lcom/hf/parser/WeatherParser;->mModel:Lcom/hf/model/WeatherModel;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/hf/model/WeatherModel;->healthIndices:Ljava/util/List;

    .line 354
    :cond_1
    iget-object v3, p0, Lcom/hf/parser/WeatherParser;->mModel:Lcom/hf/model/WeatherModel;

    iget-object v3, v3, Lcom/hf/model/WeatherModel;->healthIndices:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 349
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 359
    .end local v1           #item:Ljava/lang/String;
    :cond_3
    aget-object v1, v0, v4

    .line 360
    .restart local v1       #item:Ljava/lang/String;
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 361
    iget-object v3, p0, Lcom/hf/parser/WeatherParser;->mModel:Lcom/hf/model/WeatherModel;

    iget-object v3, v3, Lcom/hf/model/WeatherModel;->travelIndices:Ljava/util/List;

    if-nez v3, :cond_4

    .line 362
    iget-object v3, p0, Lcom/hf/parser/WeatherParser;->mModel:Lcom/hf/model/WeatherModel;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/hf/model/WeatherModel;->travelIndices:Ljava/util/List;

    .line 364
    :cond_4
    iget-object v3, p0, Lcom/hf/parser/WeatherParser;->mModel:Lcom/hf/model/WeatherModel;

    iget-object v3, v3, Lcom/hf/model/WeatherModel;->travelIndices:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 359
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 369
    .end local v1           #item:Ljava/lang/String;
    :cond_6
    aget-object v1, v0, v3

    .line 370
    .restart local v1       #item:Ljava/lang/String;
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 371
    iget-object v3, p0, Lcom/hf/parser/WeatherParser;->mModel:Lcom/hf/model/WeatherModel;

    iget-object v3, v3, Lcom/hf/model/WeatherModel;->outDoorIndices:Ljava/util/List;

    if-nez v3, :cond_7

    .line 372
    iget-object v3, p0, Lcom/hf/parser/WeatherParser;->mModel:Lcom/hf/model/WeatherModel;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/hf/model/WeatherModel;->outDoorIndices:Ljava/util/List;

    .line 374
    :cond_7
    iget-object v3, p0, Lcom/hf/parser/WeatherParser;->mModel:Lcom/hf/model/WeatherModel;

    iget-object v3, v3, Lcom/hf/model/WeatherModel;->outDoorIndices:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 369
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private getBrief(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .parameter "indicesName"
    .parameter "code"

    .prologue
    .line 387
    const-string v0, ""

    .line 388
    .local v0, brief:Ljava/lang/String;
    const/4 v1, 0x0

    .line 389
    .local v1, briefs:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 390
    .local v2, id:I
    const-string v4, "CL"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 391
    const v2, 0x7f070024

    .line 445
    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    .line 446
    iget-object v4, p0, Lcom/hf/parser/WeatherParser;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 447
    array-length v3, v1

    .line 448
    .local v3, len:I
    if-lt p2, v3, :cond_1d

    .line 449
    add-int/lit8 p2, v3, -0x1

    .line 453
    :cond_1
    :goto_1
    aget-object v0, v1, p2

    .line 459
    .end local v3           #len:I
    :cond_2
    return-object v0

    .line 392
    :cond_3
    const-string v4, "CY"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 393
    const v2, 0x7f070025

    .line 394
    goto :goto_0

    :cond_4
    const-string v4, "DY"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 395
    const v2, 0x7f070026

    .line 396
    goto :goto_0

    :cond_5
    const-string v4, "FFZ"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 397
    const v2, 0x7f070027

    .line 398
    goto :goto_0

    :cond_6
    const-string v4, "FS"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 399
    const v2, 0x7f070028

    .line 400
    goto :goto_0

    :cond_7
    const-string v4, "FH"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 401
    const v2, 0x7f070029

    .line 402
    goto :goto_0

    :cond_8
    const-string v4, "GM"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 403
    const v2, 0x7f07002a

    .line 404
    goto :goto_0

    :cond_9
    const-string v4, "GJ"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 405
    const v2, 0x7f07002b

    .line 406
    goto :goto_0

    :cond_a
    const-string v4, "HC"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 407
    const v2, 0x7f07002c

    .line 408
    goto :goto_0

    :cond_b
    const-string v4, "HZ"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 409
    const v2, 0x7f07002d

    .line 410
    goto :goto_0

    :cond_c
    const-string v4, "JT"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 411
    const v2, 0x7f07002e

    .line 412
    goto/16 :goto_0

    :cond_d
    const-string v4, "KQWR"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 413
    const v2, 0x7f07002f

    .line 414
    goto/16 :goto_0

    :cond_e
    const-string v4, "KT"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 415
    const v2, 0x7f070030

    .line 416
    goto/16 :goto_0

    :cond_f
    const-string v4, "LS"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 417
    const v2, 0x7f070031

    .line 418
    goto/16 :goto_0

    :cond_10
    const-string v4, "LK"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 419
    const v2, 0x7f070032

    .line 420
    goto/16 :goto_0

    :cond_11
    const-string v4, "LY"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 421
    const v2, 0x7f070033

    .line 422
    goto/16 :goto_0

    :cond_12
    const-string v4, "MF"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 423
    const v2, 0x7f070034

    .line 424
    goto/16 :goto_0

    :cond_13
    const-string v4, "PJ"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 425
    const v2, 0x7f070035

    .line 426
    goto/16 :goto_0

    :cond_14
    const-string v4, "SSD"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 427
    const v2, 0x7f070036

    .line 428
    goto/16 :goto_0

    :cond_15
    const-string v4, "XC"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 429
    const v2, 0x7f070037

    .line 430
    goto/16 :goto_0

    :cond_16
    const-string v4, "XQ"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 431
    const v2, 0x7f070038

    .line 432
    goto/16 :goto_0

    :cond_17
    const-string v4, "YSH"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 433
    const v2, 0x7f070039

    .line 434
    goto/16 :goto_0

    :cond_18
    const-string v4, "YS"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 435
    const v2, 0x7f07003a

    .line 436
    goto/16 :goto_0

    :cond_19
    const-string v4, "YH"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 437
    const v2, 0x7f07003b

    .line 438
    goto/16 :goto_0

    :cond_1a
    const-string v4, "YD"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 439
    const v2, 0x7f07003c

    .line 440
    goto/16 :goto_0

    :cond_1b
    const-string v4, "ZS"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 441
    const v2, 0x7f07003d

    .line 442
    goto/16 :goto_0

    :cond_1c
    const-string v4, "ZWX"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 443
    const v2, 0x7f070023

    goto/16 :goto_0

    .line 450
    .restart local v3       #len:I
    :cond_1d
    if-gez p2, :cond_1

    .line 451
    const/4 p2, 0x0

    goto/16 :goto_1
.end method

.method private parseCFWeather(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 24
    .parameter "cfArray"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/hf/model/CFWeather;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 205
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v8

    .line 206
    .local v8, length:I
    new-instance v15, Landroid/util/SparseArray;

    invoke-direct {v15}, Landroid/util/SparseArray;-><init>()V

    .line 207
    .local v15, sparseArray:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/hf/model/CFWeather;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-lt v6, v8, :cond_0

    .line 252
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 253
    .local v7, len:I
    if-nez v7, :cond_6

    .line 254
    const/4 v9, 0x0

    .line 272
    :goto_1
    return-object v9

    .line 208
    .end local v7           #len:I
    :cond_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 209
    .local v14, object:Lorg/json/JSONObject;
    const-string v22, "week"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/hf/parser/WeatherParser;->sToI(Ljava/lang/String;)I

    move-result v21

    .line 210
    .local v21, week:I
    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 207
    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 213
    :cond_2
    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/hf/model/CFWeather;

    .line 214
    .local v20, weather:Lcom/hf/model/CFWeather;
    if-nez v20, :cond_3

    .line 215
    new-instance v20, Lcom/hf/model/CFWeather;

    .end local v20           #weather:Lcom/hf/model/CFWeather;
    invoke-direct/range {v20 .. v20}, Lcom/hf/model/CFWeather;-><init>()V

    .line 216
    .restart local v20       #weather:Lcom/hf/model/CFWeather;
    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/hf/model/CFWeather;->week:I

    .line 217
    move/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 219
    :cond_3
    const-string v22, "tmax"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 220
    .local v16, tMax:Ljava/lang/String;
    const-string v22, "tmin"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 221
    .local v17, tMin:Ljava/lang/String;
    const-string v22, "NULL"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_4

    .line 222
    move-object/from16 v2, v16

    .line 223
    .local v2, dayTemperature:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, dayWeather:I
    const/4 v4, 0x0

    .local v4, dayWindDir:I
    const/4 v5, 0x0

    .line 224
    .local v5, dayWindPrower:I
    const-string v22, "weather"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/hf/parser/WeatherParser;->sToI(Ljava/lang/String;)I

    move-result v3

    .line 225
    const-string v22, "windDir"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/hf/parser/WeatherParser;->sToI(Ljava/lang/String;)I

    move-result v4

    .line 226
    const-string v22, "windPower"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/hf/parser/WeatherParser;->sToI(Ljava/lang/String;)I

    move-result v5

    .line 227
    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/hf/model/CFWeather;->tDay:Ljava/lang/String;

    .line 228
    move-object/from16 v0, v20

    iput v3, v0, Lcom/hf/model/CFWeather;->weatherDay:I

    .line 229
    move-object/from16 v0, v20

    iput v4, v0, Lcom/hf/model/CFWeather;->windDirCodeDay:I

    .line 230
    move-object/from16 v0, v20

    iput v5, v0, Lcom/hf/model/CFWeather;->windPowerDay:I

    goto :goto_2

    .line 231
    .end local v2           #dayTemperature:Ljava/lang/String;
    .end local v3           #dayWeather:I
    .end local v4           #dayWindDir:I
    .end local v5           #dayWindPrower:I
    :cond_4
    const-string v22, "NULL"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_1

    .line 232
    const-string v22, "timeStart"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 233
    .local v18, time:Ljava/lang/String;
    move-object/from16 v10, v17

    .line 234
    .local v10, nightTemperature:Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, nightWeather:I
    const/4 v12, 0x0

    .local v12, nightWindDir:I
    const/4 v13, 0x0

    .line 235
    .local v13, nightWindPower:I
    const-string v22, "weather"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/hf/parser/WeatherParser;->sToI(Ljava/lang/String;)I

    move-result v11

    .line 236
    const-string v22, "windDir"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/hf/parser/WeatherParser;->sToI(Ljava/lang/String;)I

    move-result v12

    .line 237
    const-string v22, "windPower"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/hf/parser/WeatherParser;->sToI(Ljava/lang/String;)I

    move-result v13

    .line 238
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/hf/model/CFWeather;->time:Ljava/lang/String;

    .line 239
    move-object/from16 v0, v20

    iput-object v10, v0, Lcom/hf/model/CFWeather;->tNight:Ljava/lang/String;

    .line 240
    move-object/from16 v0, v20

    iput v11, v0, Lcom/hf/model/CFWeather;->weatherNigth:I

    .line 241
    move-object/from16 v0, v20

    iput v12, v0, Lcom/hf/model/CFWeather;->windDirCodeNight:I

    .line 242
    move-object/from16 v0, v20

    iput v13, v0, Lcom/hf/model/CFWeather;->windPowerNight:I

    .line 243
    if-nez v6, :cond_5

    .line 244
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/hf/model/CFWeather;->isHalfDay:Z

    .line 248
    :goto_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v22

    const-string v23, "yyyy-M-d"

    invoke-static/range {v22 .. v23}, Lcom/hf/utils/Util;->getDate(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 249
    .local v19, today:Ljava/lang/String;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/hf/model/CFWeather;->time:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/hf/model/CFWeather;->isToday:Z

    goto/16 :goto_2

    .line 246
    .end local v19           #today:Ljava/lang/String;
    :cond_5
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/hf/model/CFWeather;->isHalfDay:Z

    goto :goto_3

    .line 261
    .end local v10           #nightTemperature:Ljava/lang/String;
    .end local v11           #nightWeather:I
    .end local v12           #nightWindDir:I
    .end local v13           #nightWindPower:I
    .end local v14           #object:Lorg/json/JSONObject;
    .end local v16           #tMax:Ljava/lang/String;
    .end local v17           #tMin:Ljava/lang/String;
    .end local v18           #time:Ljava/lang/String;
    .end local v20           #weather:Lcom/hf/model/CFWeather;
    .end local v21           #week:I
    .restart local v7       #len:I
    :cond_6
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .local v9, list:Ljava/util/List;,"Ljava/util/List<Lcom/hf/model/CFWeather;>;"
    const/4 v6, 0x0

    :goto_4
    if-lt v6, v7, :cond_7

    .line 271
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/hf/parser/WeatherParser;->sortCFWeatherList(Ljava/util/List;)V

    goto/16 :goto_1

    .line 263
    :cond_7
    invoke-virtual {v15, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/hf/model/CFWeather;

    .line 264
    .restart local v20       #weather:Lcom/hf/model/CFWeather;
    if-eqz v20, :cond_8

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/hf/model/CFWeather;->tNight:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_8

    .line 268
    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_4
.end method

.method private parseSKWeather(Lorg/json/JSONObject;)Lcom/hf/model/SKWeather;
    .locals 17
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 150
    const/4 v3, 0x0

    .local v3, powerCode:I
    const/4 v12, 0x0

    .local v12, windDirCode:I
    const/4 v10, 0x0

    .line 151
    .local v10, weatherCode:I
    const-string v15, "windPower"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 152
    .local v13, windPower:Ljava/lang/String;
    const-string v15, "windDir"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 153
    .local v11, windDir:Ljava/lang/String;
    const-string v15, "weather"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 154
    .local v9, weather:Ljava/lang/String;
    const-string v15, "pressure"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 155
    .local v4, pressure:Ljava/lang/String;
    const-string v15, "humidity"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, humidity:Ljava/lang/String;
    const-string v15, "temperature"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 157
    .local v7, temperatrue:Ljava/lang/String;
    const-string v15, "visibility"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 158
    .local v8, visibility:Ljava/lang/String;
    const-string v15, "windSpeed"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 159
    .local v14, windSpeed:Ljava/lang/String;
    const-string v15, "reportTime"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 161
    .local v6, sk_reporttime:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/hf/parser/WeatherParser;->sToI(Ljava/lang/String;)I

    move-result v3

    .line 162
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/hf/parser/WeatherParser;->sToI(Ljava/lang/String;)I

    move-result v12

    .line 163
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/hf/parser/WeatherParser;->sToI(Ljava/lang/String;)I

    move-result v10

    .line 165
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_0

    const-string v15, "NULL"

    invoke-static {v7, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 166
    :cond_0
    const/4 v7, 0x0

    .line 168
    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2

    const-string v15, "NULL"

    invoke-static {v4, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 169
    :cond_2
    const/4 v4, 0x0

    .line 172
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_4

    const-string v15, "NULL"

    invoke-static {v2, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 173
    :cond_4
    const/4 v2, 0x0

    .line 176
    :cond_5
    const/4 v1, 0x0

    .line 177
    .local v1, cfWeather:Lcom/hf/model/CFWeather;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/hf/parser/WeatherParser;->mModel:Lcom/hf/model/WeatherModel;

    iget-object v15, v15, Lcom/hf/model/WeatherModel;->weatherList:Ljava/util/List;

    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/hf/parser/WeatherParser;->mModel:Lcom/hf/model/WeatherModel;

    iget-object v15, v15, Lcom/hf/model/WeatherModel;->weatherList:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_6

    .line 178
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/hf/parser/WeatherParser;->mModel:Lcom/hf/model/WeatherModel;

    iget-object v15, v15, Lcom/hf/model/WeatherModel;->weatherList:Ljava/util/List;

    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #cfWeather:Lcom/hf/model/CFWeather;
    check-cast v1, Lcom/hf/model/CFWeather;

    .line 180
    .restart local v1       #cfWeather:Lcom/hf/model/CFWeather;
    :cond_6
    if-eqz v1, :cond_7

    const/4 v15, -0x1

    if-ne v10, v15, :cond_7

    .line 181
    invoke-static {v1}, Lcom/hf/utils/WeatherUtils;->getCfWeatherCode(Lcom/hf/model/CFWeather;)I

    move-result v10

    .line 184
    :cond_7
    new-instance v5, Lcom/hf/model/SKWeather;

    invoke-direct {v5}, Lcom/hf/model/SKWeather;-><init>()V

    .line 185
    .local v5, skWeather:Lcom/hf/model/SKWeather;
    iput v10, v5, Lcom/hf/model/SKWeather;->weatherCode:I

    .line 186
    iput v3, v5, Lcom/hf/model/SKWeather;->windPowerCode:I

    .line 187
    iput v12, v5, Lcom/hf/model/SKWeather;->windDirCode:I

    .line 188
    iput-object v8, v5, Lcom/hf/model/SKWeather;->currentVisibility:Ljava/lang/String;

    .line 190
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/hf/parser/WeatherParser;->mContext:Landroid/content/Context;

    invoke-static {v15, v4}, Lcom/hf/utils/WeatherUtils;->formatPressure(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v5, Lcom/hf/model/SKWeather;->currentPressure:Ljava/lang/String;

    .line 191
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/hf/parser/WeatherParser;->mContext:Landroid/content/Context;

    invoke-static {v15, v2}, Lcom/hf/utils/WeatherUtils;->formatHumidity(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v5, Lcom/hf/model/SKWeather;->currentHumidity:Ljava/lang/String;

    .line 192
    invoke-static {v14}, Lcom/hf/utils/WeatherUtils;->formatWindSpeed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v5, Lcom/hf/model/SKWeather;->currentWindSpeed:Ljava/lang/String;

    .line 193
    iput-object v7, v5, Lcom/hf/model/SKWeather;->temperatrue:Ljava/lang/String;

    .line 194
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/hf/parser/WeatherParser;->mModel:Lcom/hf/model/WeatherModel;

    iput-object v6, v15, Lcom/hf/model/WeatherModel;->skReportTime:Ljava/lang/String;

    .line 195
    return-object v5
.end method

.method private parseWeather(Ljava/lang/String;)Lcom/hf/model/WeatherModel;
    .locals 7
    .parameter "content"

    .prologue
    .line 106
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 107
    .local v2, object:Lorg/json/JSONObject;
    new-instance v5, Lcom/hf/model/WeatherModel;

    invoke-direct {v5}, Lcom/hf/model/WeatherModel;-><init>()V

    iput-object v5, p0, Lcom/hf/parser/WeatherParser;->mModel:Lcom/hf/model/WeatherModel;

    .line 108
    iget-object v5, p0, Lcom/hf/parser/WeatherParser;->mModel:Lcom/hf/model/WeatherModel;

    iget-object v6, p0, Lcom/hf/parser/WeatherParser;->mCityId:Ljava/lang/String;

    iput-object v6, v5, Lcom/hf/model/WeatherModel;->cityId:Ljava/lang/String;

    .line 109
    const-string v5, "cfIsNull"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/hf/parser/WeatherParser;->cfIsNull:Z

    .line 110
    iget-boolean v5, p0, Lcom/hf/parser/WeatherParser;->cfIsNull:Z

    if-eqz v5, :cond_0

    .line 111
    const-string v5, "cf"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 112
    .local v0, cfArray:Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 113
    iget-object v5, p0, Lcom/hf/parser/WeatherParser;->mModel:Lcom/hf/model/WeatherModel;

    invoke-direct {p0, v0}, Lcom/hf/parser/WeatherParser;->parseCFWeather(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v5, Lcom/hf/model/WeatherModel;->weatherList:Ljava/util/List;

    .line 117
    .end local v0           #cfArray:Lorg/json/JSONArray;
    :cond_0
    const-string v5, "skIsNull"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/hf/parser/WeatherParser;->skIsNull:Z

    .line 118
    iget-boolean v5, p0, Lcom/hf/parser/WeatherParser;->skIsNull:Z

    if-eqz v5, :cond_1

    .line 119
    const-string v5, "sk"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 120
    .local v3, skObject:Lorg/json/JSONObject;
    if-eqz v3, :cond_1

    .line 121
    iget-object v5, p0, Lcom/hf/parser/WeatherParser;->mModel:Lcom/hf/model/WeatherModel;

    invoke-direct {p0, v3}, Lcom/hf/parser/WeatherParser;->parseSKWeather(Lorg/json/JSONObject;)Lcom/hf/model/SKWeather;

    move-result-object v6

    iput-object v6, v5, Lcom/hf/model/WeatherModel;->skWeather:Lcom/hf/model/SKWeather;

    .line 125
    .end local v3           #skObject:Lorg/json/JSONObject;
    :cond_1
    const-string v5, "zuIsNull"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/hf/parser/WeatherParser;->zuIsNull:Z

    .line 126
    iget-boolean v5, p0, Lcom/hf/parser/WeatherParser;->zuIsNull:Z

    if-eqz v5, :cond_2

    .line 127
    const-string v5, "zu"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 128
    .local v4, zuArray:Lorg/json/JSONArray;
    if-eqz v4, :cond_2

    .line 129
    iget-object v5, p0, Lcom/hf/parser/WeatherParser;->mModel:Lcom/hf/model/WeatherModel;

    invoke-direct {p0, v4}, Lcom/hf/parser/WeatherParser;->parseZU(Lorg/json/JSONArray;)Ljava/util/Map;

    move-result-object v6

    iput-object v6, v5, Lcom/hf/model/WeatherModel;->indicesMap:Ljava/util/Map;

    .line 133
    .end local v4           #zuArray:Lorg/json/JSONArray;
    :cond_2
    iget-object v5, p0, Lcom/hf/parser/WeatherParser;->mModel:Lcom/hf/model/WeatherModel;

    const-string v6, "stationid"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/hf/model/WeatherModel;->sid:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    iget-object v5, p0, Lcom/hf/parser/WeatherParser;->mModel:Lcom/hf/model/WeatherModel;

    .end local v2           #object:Lorg/json/JSONObject;
    :goto_0
    return-object v5

    .line 134
    :catch_0
    move-exception v1

    .line 136
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 137
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private parseZU(Lorg/json/JSONArray;)Ljava/util/Map;
    .locals 12
    .parameter "array"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/hf/model/Indices;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 318
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 319
    .local v4, length:I
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 320
    .local v5, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/hf/model/Indices;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v4, :cond_0

    .line 339
    return-object v5

    .line 321
    :cond_0
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 322
    .local v7, object:Lorg/json/JSONObject;
    const-string v10, "zuName"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 323
    .local v6, name:Ljava/lang/String;
    const-string v10, "zuValue"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 324
    .local v9, val:Ljava/lang/String;
    const-string v10, "description"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, des:Ljava/lang/String;
    const/4 v0, 0x1

    .line 326
    .local v0, code:I
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "NULL"

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 327
    invoke-direct {p0, v9}, Lcom/hf/parser/WeatherParser;->sToI(Ljava/lang/String;)I

    move-result v8

    .line 328
    .local v8, temp:I
    const/4 v10, -0x1

    if-ne v8, v10, :cond_2

    const/4 v0, 0x1

    .line 330
    .end local v8           #temp:I
    :cond_1
    :goto_1
    new-instance v3, Lcom/hf/model/Indices;

    invoke-direct {v3}, Lcom/hf/model/Indices;-><init>()V

    .line 331
    .local v3, indices:Lcom/hf/model/Indices;
    iput-object v6, v3, Lcom/hf/model/Indices;->indicesName:Ljava/lang/String;

    .line 332
    iput v0, v3, Lcom/hf/model/Indices;->indicesCode:I

    .line 333
    iput-object v1, v3, Lcom/hf/model/Indices;->indicesDescription:Ljava/lang/String;

    .line 334
    iget-object v10, v3, Lcom/hf/model/Indices;->indicesName:Ljava/lang/String;

    iget v11, v3, Lcom/hf/model/Indices;->indicesCode:I

    invoke-direct {p0, v10, v11}, Lcom/hf/parser/WeatherParser;->getBrief(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/hf/model/Indices;->brief:Ljava/lang/String;

    .line 335
    iget-object v10, v3, Lcom/hf/model/Indices;->indicesName:Ljava/lang/String;

    invoke-interface {v5, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    invoke-direct {p0, v3}, Lcom/hf/parser/WeatherParser;->devideIndices(Lcom/hf/model/Indices;)V

    .line 320
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v3           #indices:Lcom/hf/model/Indices;
    .restart local v8       #temp:I
    :cond_2
    move v0, v8

    .line 328
    goto :goto_1
.end method

.method private sToI(Ljava/lang/String;)I
    .locals 4
    .parameter "str"

    .prologue
    .line 469
    const/4 v0, -0x1

    .line 470
    .local v0, code:I
    const-string v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 472
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 473
    .local v2, temp:F
    invoke-static {v2}, Ljava/lang/Math;->round(F)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 488
    .end local v2           #temp:F
    :goto_0
    return v0

    .line 474
    :catch_0
    move-exception v1

    .line 476
    .local v1, e:Ljava/lang/NumberFormatException;
    const/4 v0, -0x1

    .line 478
    goto :goto_0

    .line 480
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_0
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    .line 481
    :catch_1
    move-exception v1

    .line 483
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private sortCFWeatherList(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/hf/model/CFWeather;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 280
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/hf/model/CFWeather;>;"
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-M-d 20:00:00"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 281
    .local v1, format:Ljava/text/SimpleDateFormat;
    new-instance v0, Lcom/hf/parser/WeatherParser$1;

    invoke-direct {v0, p0, v1}, Lcom/hf/parser/WeatherParser$1;-><init>(Lcom/hf/parser/WeatherParser;Ljava/text/SimpleDateFormat;)V

    .line 308
    .local v0, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/hf/model/CFWeather;>;"
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 309
    return-void
.end method


# virtual methods
.method public parseWeatherFile(Ljava/io/InputStream;)Lcom/hf/model/WeatherModel;
    .locals 7
    .parameter "stream"

    .prologue
    const/4 v4, 0x0

    .line 77
    const-string v5, "parseWeatherFile"

    const-string v6, "pareseWeatherFile"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    if-nez p1, :cond_0

    .line 95
    :goto_0
    return-object v4

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 83
    .local v0, buffer:Ljava/lang/StringBuffer;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 84
    .local v3, reader:Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 85
    .local v2, line:Ljava/lang/String;
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 88
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 89
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/hf/parser/WeatherParser;->parseWeather(Ljava/lang/String;)Lcom/hf/model/WeatherModel;

    move-result-object v4

    goto :goto_0

    .line 86
    :cond_1
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 90
    .end local v2           #line:Ljava/lang/String;
    .end local v3           #reader:Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 92
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
