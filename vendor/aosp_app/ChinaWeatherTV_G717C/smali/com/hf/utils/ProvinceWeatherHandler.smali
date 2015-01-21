.class public Lcom/hf/utils/ProvinceWeatherHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ProvinceWeatherHandler.java"


# static fields
.field private static final CITY_ID:Ljava/lang/String; = "CityID"

.field private static final CITY_METEOR:Ljava/lang/String; = "CityMeteor"

.field private static final NULL:Ljava/lang/String; = "NULL"

.field private static final PERIOD:Ljava/lang/String; = "Period"

.field private static final TIME_START:Ljava/lang/String; = "Timestart"

.field private static final T_MAX:Ljava/lang/String; = "Tmax"

.field private static final T_MIN:Ljava/lang/String; = "Tmin"

.field private static final WEATHER:Ljava/lang/String; = "Weather"

.field private static final WEEK:Ljava/lang/String; = "Week"

.field private static final WIND_DIR:Ljava/lang/String; = "WindDir"

.field private static final WIND_POWER:Ljava/lang/String; = "WindPower"


# instance fields
.field private isDay:Z

.field private isHalfDay:Z

.field private mContext:Landroid/content/Context;

.field private mItem:Lcom/hf/model/CFWeather;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hf/model/CFWeather;",
            ">;"
        }
    .end annotation
.end field

.field private tMaxStr:Ljava/lang/String;

.field private tMinStr:Ljava/lang/String;

.field private weatherCode1:I

.field private weatherCode2:I

.field private windDirCode1:I

.field private windDirCode2:I

.field private windPowerCode1:I

.field private windPowerCode2:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hf/utils/ProvinceWeatherHandler;->isHalfDay:Z

    .line 28
    iput-boolean v1, p0, Lcom/hf/utils/ProvinceWeatherHandler;->isDay:Z

    .line 39
    iput v1, p0, Lcom/hf/utils/ProvinceWeatherHandler;->windPowerCode1:I

    iput v1, p0, Lcom/hf/utils/ProvinceWeatherHandler;->windPowerCode2:I

    .line 40
    iput v1, p0, Lcom/hf/utils/ProvinceWeatherHandler;->windDirCode1:I

    iput v1, p0, Lcom/hf/utils/ProvinceWeatherHandler;->windDirCode2:I

    .line 41
    iput v1, p0, Lcom/hf/utils/ProvinceWeatherHandler;->weatherCode1:I

    iput v1, p0, Lcom/hf/utils/ProvinceWeatherHandler;->weatherCode2:I

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hf/utils/ProvinceWeatherHandler;->mList:Ljava/util/List;

    .line 47
    iput-object p1, p0, Lcom/hf/utils/ProvinceWeatherHandler;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method

.method private queryLatLng(Ljava/lang/String;)V
    .locals 9
    .parameter "cityId"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 59
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/hf/utils/ProvinceWeatherHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/hf/data/Constant$COORDINATE;->COORDINATE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/hf/UI/MapWeatherActivity;->COORDINATE_PROJECTION:[Ljava/lang/String;

    const-string v3, "id=?"

    new-array v4, v8, [Ljava/lang/String;

    aput-object p1, v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 63
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 64
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    iget-object v0, p0, Lcom/hf/utils/ProvinceWeatherHandler;->mItem:Lcom/hf/model/CFWeather;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hf/model/CFWeather;->lat:Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/hf/utils/ProvinceWeatherHandler;->mItem:Lcom/hf/model/CFWeather;

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hf/model/CFWeather;->lng:Ljava/lang/String;

    .line 68
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 71
    :cond_3
    iget-object v0, p0, Lcom/hf/utils/ProvinceWeatherHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/hf/data/Constant$CITY;->CITY_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "name"

    aput-object v3, v2, v7

    const-string v3, "englishName"

    aput-object v3, v2, v8

    const-string v3, "id=?"

    new-array v4, v8, [Ljava/lang/String;

    aput-object p1, v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 72
    if-eqz v6, :cond_0

    .line 74
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 75
    iget-object v0, p0, Lcom/hf/utils/ProvinceWeatherHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/hf/utils/Util;->isChinese(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 76
    iget-object v0, p0, Lcom/hf/utils/ProvinceWeatherHandler;->mItem:Lcom/hf/model/CFWeather;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hf/model/CFWeather;->name:Ljava/lang/String;

    .line 82
    :cond_4
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 78
    :cond_5
    iget-object v0, p0, Lcom/hf/utils/ProvinceWeatherHandler;->mItem:Lcom/hf/model/CFWeather;

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hf/model/CFWeather;->name:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 187
    const-string v0, "CityMeteor"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    iget-object v0, p0, Lcom/hf/utils/ProvinceWeatherHandler;->mItem:Lcom/hf/model/CFWeather;

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Lcom/hf/model/CFWeather;

    invoke-direct {v0}, Lcom/hf/model/CFWeather;-><init>()V

    iput-object v0, p0, Lcom/hf/utils/ProvinceWeatherHandler;->mItem:Lcom/hf/model/CFWeather;

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/hf/utils/ProvinceWeatherHandler;->mList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hf/utils/ProvinceWeatherHandler;->mList:Ljava/util/List;

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/hf/utils/ProvinceWeatherHandler;->mItem:Lcom/hf/model/CFWeather;

    iget-boolean v1, p0, Lcom/hf/utils/ProvinceWeatherHandler;->isHalfDay:Z

    iput-boolean v1, v0, Lcom/hf/model/CFWeather;->isHalfDay:Z

    .line 196
    iget-object v0, p0, Lcom/hf/utils/ProvinceWeatherHandler;->mItem:Lcom/hf/model/CFWeather;

    iget v1, p0, Lcom/hf/utils/ProvinceWeatherHandler;->weatherCode1:I

    iput v1, v0, Lcom/hf/model/CFWeather;->weatherDay:I

    .line 197
    iget-object v0, p0, Lcom/hf/utils/ProvinceWeatherHandler;->mItem:Lcom/hf/model/CFWeather;

    iget v1, p0, Lcom/hf/utils/ProvinceWeatherHandler;->weatherCode2:I

    iput v1, v0, Lcom/hf/model/CFWeather;->weatherNigth:I

    .line 198
    iget-object v0, p0, Lcom/hf/utils/ProvinceWeatherHandler;->mItem:Lcom/hf/model/CFWeather;

    iget-object v1, p0, Lcom/hf/utils/ProvinceWeatherHandler;->tMaxStr:Ljava/lang/String;

    iput-object v1, v0, Lcom/hf/model/CFWeather;->tDay:Ljava/lang/String;

    .line 199
    iget-object v0, p0, Lcom/hf/utils/ProvinceWeatherHandler;->mItem:Lcom/hf/model/CFWeather;

    iget-object v1, p0, Lcom/hf/utils/ProvinceWeatherHandler;->tMinStr:Ljava/lang/String;

    iput-object v1, v0, Lcom/hf/model/CFWeather;->tNight:Ljava/lang/String;

    .line 200
    iget-object v0, p0, Lcom/hf/utils/ProvinceWeatherHandler;->mItem:Lcom/hf/model/CFWeather;

    iget v1, p0, Lcom/hf/utils/ProvinceWeatherHandler;->windPowerCode1:I

    iput v1, v0, Lcom/hf/model/CFWeather;->windPowerDay:I

    .line 201
    iget-object v0, p0, Lcom/hf/utils/ProvinceWeatherHandler;->mItem:Lcom/hf/model/CFWeather;

    iget v1, p0, Lcom/hf/utils/ProvinceWeatherHandler;->windPowerCode2:I

    iput v1, v0, Lcom/hf/model/CFWeather;->windPowerNight:I

    .line 202
    iget-object v0, p0, Lcom/hf/utils/ProvinceWeatherHandler;->mItem:Lcom/hf/model/CFWeather;

    iget v1, p0, Lcom/hf/utils/ProvinceWeatherHandler;->windDirCode1:I

    iput v1, v0, Lcom/hf/model/CFWeather;->windDirCodeDay:I

    .line 203
    iget-object v0, p0, Lcom/hf/utils/ProvinceWeatherHandler;->mItem:Lcom/hf/model/CFWeather;

    iget v1, p0, Lcom/hf/utils/ProvinceWeatherHandler;->windDirCode2:I

    iput v1, v0, Lcom/hf/model/CFWeather;->windDirCodeNight:I

    .line 204
    iget-object v0, p0, Lcom/hf/utils/ProvinceWeatherHandler;->mList:Ljava/util/List;

    iget-object v1, p0, Lcom/hf/utils/ProvinceWeatherHandler;->mItem:Lcom/hf/model/CFWeather;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hf/utils/ProvinceWeatherHandler;->mItem:Lcom/hf/model/CFWeather;

    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hf/utils/ProvinceWeatherHandler;->isHalfDay:Z

    .line 208
    :cond_2
    return-void
.end method

.method public getmList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/hf/model/CFWeather;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/hf/utils/ProvinceWeatherHandler;->mList:Ljava/util/List;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 14
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
    .line 89
    const-string v11, "CityMeteor"

    move-object/from16 v0, p2

    invoke-static {v0, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 90
    new-instance v11, Lcom/hf/model/CFWeather;

    invoke-direct {v11}, Lcom/hf/model/CFWeather;-><init>()V

    iput-object v11, p0, Lcom/hf/utils/ProvinceWeatherHandler;->mItem:Lcom/hf/model/CFWeather;

    .line 91
    const-string v11, "CityID"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, cityId:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/hf/utils/ProvinceWeatherHandler;->queryLatLng(Ljava/lang/String;)V

    .line 94
    sget-boolean v11, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v11, :cond_0

    .line 95
    const-string v11, "CITY_METEOR"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "lat = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, p0, Lcom/hf/utils/ProvinceWeatherHandler;->mItem:Lcom/hf/model/CFWeather;

    iget-object v13, v13, Lcom/hf/model/CFWeather;->lat:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "; lng = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/hf/utils/ProvinceWeatherHandler;->mItem:Lcom/hf/model/CFWeather;

    iget-object v13, v13, Lcom/hf/model/CFWeather;->lng:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .end local v1           #cityId:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    const-string v11, "Period"

    move-object/from16 v0, p2

    invoke-static {v11, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 99
    const-string v11, "Timestart"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 101
    .local v5, timeStart:Ljava/lang/String;
    sget-boolean v11, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v11, :cond_2

    .line 102
    const-string v11, "PERIOD"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "time start = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_2
    const-string v11, "8:00:00"

    invoke-virtual {v5, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/hf/utils/ProvinceWeatherHandler;->isDay:Z

    .line 107
    iget-boolean v11, p0, Lcom/hf/utils/ProvinceWeatherHandler;->isDay:Z

    if-eqz v11, :cond_7

    .line 108
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/hf/utils/ProvinceWeatherHandler;->isHalfDay:Z

    .line 109
    const-string v11, "WindPower"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 110
    .local v10, windPower:Ljava/lang/String;
    const-string v11, "WindDir"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 111
    .local v9, windDir:Ljava/lang/String;
    const-string v11, "Tmax"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, tMax:Ljava/lang/String;
    const-string v11, "Tmin"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, tMin:Ljava/lang/String;
    const-string v11, "Weather"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 114
    .local v6, weather1:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "NULL"

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 115
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/hf/utils/ProvinceWeatherHandler;->windPowerCode1:I

    .line 118
    :cond_3
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "NULL"

    invoke-static {v9, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 119
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/hf/utils/ProvinceWeatherHandler;->windDirCode1:I

    .line 122
    :cond_4
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "NULL"

    invoke-static {v6, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 123
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/hf/utils/ProvinceWeatherHandler;->weatherCode1:I

    .line 126
    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    const-string v11, "NULL"

    invoke-static {v2, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 127
    iput-object v2, p0, Lcom/hf/utils/ProvinceWeatherHandler;->tMaxStr:Ljava/lang/String;

    .line 130
    :cond_6
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "NULL"

    invoke-static {v3, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 131
    iput-object v3, p0, Lcom/hf/utils/ProvinceWeatherHandler;->tMinStr:Ljava/lang/String;

    goto/16 :goto_0

    .line 139
    .end local v2           #tMax:Ljava/lang/String;
    .end local v3           #tMin:Ljava/lang/String;
    .end local v6           #weather1:Ljava/lang/String;
    .end local v9           #windDir:Ljava/lang/String;
    .end local v10           #windPower:Ljava/lang/String;
    :cond_7
    const-string v11, "WindPower"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 140
    .restart local v10       #windPower:Ljava/lang/String;
    const-string v11, "WindDir"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 141
    .restart local v9       #windDir:Ljava/lang/String;
    const-string v11, "Tmax"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 142
    .restart local v2       #tMax:Ljava/lang/String;
    const-string v11, "Tmin"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 143
    .restart local v3       #tMin:Ljava/lang/String;
    const-string v11, "Weather"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 144
    .local v7, weather2:Ljava/lang/String;
    const-string v11, "Week"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 145
    .local v8, week:Ljava/lang/String;
    const-string v11, "Timestart"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 147
    .local v4, time:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8

    const-string v11, "NULL"

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 148
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/hf/utils/ProvinceWeatherHandler;->windPowerCode2:I

    .line 151
    :cond_8
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_9

    const-string v11, "NULL"

    invoke-static {v9, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 152
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/hf/utils/ProvinceWeatherHandler;->windDirCode2:I

    .line 155
    :cond_9
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_a

    const-string v11, "NULL"

    invoke-static {v3, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 156
    iput-object v3, p0, Lcom/hf/utils/ProvinceWeatherHandler;->tMinStr:Ljava/lang/String;

    .line 159
    :cond_a
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_b

    const-string v11, "NULL"

    invoke-static {v2, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 160
    iput-object v2, p0, Lcom/hf/utils/ProvinceWeatherHandler;->tMaxStr:Ljava/lang/String;

    .line 163
    :cond_b
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_c

    const-string v11, "NULL"

    invoke-static {v7, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_c

    .line 164
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/hf/utils/ProvinceWeatherHandler;->weatherCode2:I

    .line 167
    :cond_c
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_e

    const-string v11, "NULL"

    invoke-static {v8, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_e

    .line 168
    iget-object v11, p0, Lcom/hf/utils/ProvinceWeatherHandler;->mItem:Lcom/hf/model/CFWeather;

    if-nez v11, :cond_d

    .line 169
    new-instance v11, Lcom/hf/model/CFWeather;

    invoke-direct {v11}, Lcom/hf/model/CFWeather;-><init>()V

    iput-object v11, p0, Lcom/hf/utils/ProvinceWeatherHandler;->mItem:Lcom/hf/model/CFWeather;

    .line 171
    :cond_d
    iget-object v11, p0, Lcom/hf/utils/ProvinceWeatherHandler;->mItem:Lcom/hf/model/CFWeather;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v11, Lcom/hf/model/CFWeather;->week:I

    .line 174
    :cond_e
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "NULL"

    invoke-static {v4, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 175
    iget-object v11, p0, Lcom/hf/utils/ProvinceWeatherHandler;->mItem:Lcom/hf/model/CFWeather;

    if-nez v11, :cond_f

    .line 176
    new-instance v11, Lcom/hf/model/CFWeather;

    invoke-direct {v11}, Lcom/hf/model/CFWeather;-><init>()V

    iput-object v11, p0, Lcom/hf/utils/ProvinceWeatherHandler;->mItem:Lcom/hf/model/CFWeather;

    .line 178
    :cond_f
    iget-object v11, p0, Lcom/hf/utils/ProvinceWeatherHandler;->mItem:Lcom/hf/model/CFWeather;

    iput-object v4, v11, Lcom/hf/model/CFWeather;->time:Ljava/lang/String;

    goto/16 :goto_0
.end method
