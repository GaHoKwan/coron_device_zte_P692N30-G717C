.class public Lcom/mediatek/appwidget/worldclock/ClockCityUtils;
.super Ljava/lang/Object;
.source "ClockCityUtils.java"


# static fields
.field protected static final APPWIDGET_STYLE:Ljava/lang/String; = "WidgetStyle"

.field private static final GMT_ZONE:Ljava/lang/String; = "id"

.field protected static final MAX_CITY_SIZE:I = 0x1f4

.field private static final NAME_SPACE:Ljava/lang/String; = null

.field protected static final PANEL_INDEX:Ljava/lang/String; = "panelIndex"

.field protected static final PREF_CLOCK_WIDGET_INFO:Ljava/lang/String; = "pref_clock_widget_info"

.field protected static final SHOW_WEATHER:Ljava/lang/String; = "ShowWeather"

.field protected static final STYLEA_CITYA_INDEX:Ljava/lang/String; = "StyleA_CityAIndex"

.field protected static final STYLEA_CITYA_NAME:Ljava/lang/String; = "StyleA_CityAName"

.field protected static final STYLEA_CITYA_ZONE:Ljava/lang/String; = "StyleA_CityAZone"

.field protected static final STYLEA_CITYB_INDEX:Ljava/lang/String; = "StyleA_CityBIndex"

.field protected static final STYLEA_CITYB_NAME:Ljava/lang/String; = "StyleA_CityBName"

.field protected static final STYLEA_CITYB_ZONE:Ljava/lang/String; = "StyleA_CityBZone"

.field protected static final STYLEA_WEATHERA_ID:Ljava/lang/String; = "StyleA_WeatherAID"

.field protected static final STYLEA_WEATHERB_ID:Ljava/lang/String; = "StyleA_WeatherBID"

.field protected static final STYLEC_CITY_INDEX:Ljava/lang/String; = "StyleC_CityIndex"

.field protected static final STYLEC_CITY_NAME:Ljava/lang/String; = "StyleC_CityName"

.field protected static final STYLEC_CITY_ZONE:Ljava/lang/String; = "StyleC_CityZone"

.field protected static final STYLEC_WEATHER_ID:Ljava/lang/String; = "StyleC_WeatherCID"

.field protected static final STYLE_1:I = 0x0

.field protected static final STYLE_2:I = 0x1

.field protected static final STYLE_3:I = 0x2

.field protected static final STYLE_A_CITY_INFOR:Ljava/lang/String; = "com.mediatek.appwidget.clock.citya"

.field protected static final STYLE_B_CITY_INFOR:Ljava/lang/String; = "com.mediatek.appwidget.clock.cityb"

.field protected static final STYLE_C_CITY_INFOR:Ljava/lang/String; = "com.mediatek.appwidget.clock.cityc"

.field public static final TAG:Ljava/lang/String; = "ClockUtils"

.field private static final WEATHER_ID:Ljava/lang/String; = "weatherID"

.field protected static final XML_TAG_TIME_ZONE:Ljava/lang/String; = "timezone"

.field private static context:Landroid/content/Context;

.field private static mTimeZoneMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mediatek/appwidget/worldclock/ClockCityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static pref:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 112
    sput-object v0, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->mTimeZoneMap:Ljava/util/HashMap;

    .line 114
    sput-object v0, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->NAME_SPACE:Ljava/lang/String;

    .line 120
    sput-object v0, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->pref:Landroid/content/SharedPreferences;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    sput-object p1, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->context:Landroid/content/Context;

    .line 126
    sget-object v0, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->context:Landroid/content/Context;

    const-string v1, "pref_clock_widget_info"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->pref:Landroid/content/SharedPreferences;

    .line 127
    return-void
.end method

.method public static deletePreferences([I)V
    .locals 10
    .parameter "widgetIds"

    .prologue
    .line 371
    sget-object v7, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->pref:Landroid/content/SharedPreferences;

    if-nez v7, :cond_0

    .line 389
    :goto_0
    return-void

    .line 375
    :cond_0
    :try_start_0
    sget-object v7, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 376
    .local v5, preEdt:Landroid/content/SharedPreferences$Editor;
    move-object v0, p0

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v4, :cond_1

    aget v6, v0, v2

    .line 377
    .local v6, widgetId:I
    const-string v7, "ClockUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " Delete widgetId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " preferences "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 379
    .local v3, key:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "StyleC_CityIndex"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 380
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "StyleC_CityName"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 381
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "StyleC_CityZone"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 382
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "StyleC_WeatherCID"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 376
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 384
    .end local v3           #key:Ljava/lang/String;
    .end local v6           #widgetId:I
    :cond_1
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 385
    .end local v0           #arr$:[I
    .end local v2           #i$:I
    .end local v4           #len$:I
    .end local v5           #preEdt:Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v1

    .line 386
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "ClockUtils"

    const-string v8, "remove data from SharedPreferences:pref_clock_widget_info.xml fail!"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static getBooleanPref(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "keyTag"
    .parameter "widgetId"

    .prologue
    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, name:Ljava/lang/String;
    sget-object v1, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->pref:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getCityAPref(Ljava/lang/String;)Lcom/mediatek/appwidget/worldclock/ClockCityInfo;
    .locals 5
    .parameter "key"

    .prologue
    .line 172
    new-instance v0, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;

    invoke-direct {v0}, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;-><init>()V

    .line 173
    .local v0, city1:Lcom/mediatek/appwidget/worldclock/ClockCityInfo;
    const-string v4, "StyleA_CityAIndex"

    invoke-static {v4, p0}, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->getStringPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, index:Ljava/lang/String;
    const-string v4, "StyleA_WeatherAID"

    invoke-static {v4, p0}, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->getStringPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 175
    .local v3, weatherID:Ljava/lang/String;
    const-string v4, "StyleA_CityAName"

    invoke-static {v4, p0}, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->getStringPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, oldCityName:Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->setIndex(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0, v3}, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->setWeatherID(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v0, v2}, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->setCityName(Ljava/lang/String;)V

    .line 181
    const-string v4, "StyleA_CityAZone"

    invoke-static {v4, p0}, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->getStringPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->setTimeZone(Ljava/lang/String;)V

    .line 182
    return-object v0
.end method

.method public static getCityBPref(Ljava/lang/String;)Lcom/mediatek/appwidget/worldclock/ClockCityInfo;
    .locals 5
    .parameter "key"

    .prologue
    .line 186
    new-instance v0, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;

    invoke-direct {v0}, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;-><init>()V

    .line 187
    .local v0, city2:Lcom/mediatek/appwidget/worldclock/ClockCityInfo;
    const-string v4, "StyleA_CityBIndex"

    invoke-static {v4, p0}, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->getStringPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, index:Ljava/lang/String;
    const-string v4, "StyleA_WeatherBID"

    invoke-static {v4, p0}, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->getStringPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 189
    .local v3, weatherID:Ljava/lang/String;
    const-string v4, "StyleA_CityBName"

    invoke-static {v4, p0}, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->getStringPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, oldCityName:Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->setIndex(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0, v3}, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->setWeatherID(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0, v2}, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->setCityName(Ljava/lang/String;)V

    .line 195
    const-string v4, "StyleA_CityBZone"

    invoke-static {v4, p0}, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->getStringPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->setTimeZone(Ljava/lang/String;)V

    .line 196
    return-object v0
.end method

.method public static getCityCPref(Ljava/lang/String;)Lcom/mediatek/appwidget/worldclock/ClockCityInfo;
    .locals 7
    .parameter "key"

    .prologue
    .line 200
    new-instance v0, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;

    invoke-direct {v0}, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;-><init>()V

    .line 201
    .local v0, city3:Lcom/mediatek/appwidget/worldclock/ClockCityInfo;
    const-string v4, "StyleC_CityIndex"

    invoke-static {v4, p0}, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->getStringPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, index:Ljava/lang/String;
    const-string v4, "StyleC_WeatherCID"

    invoke-static {v4, p0}, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->getStringPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 203
    .local v3, weatherID:Ljava/lang/String;
    const-string v4, "StyleC_CityName"

    invoke-static {v4, p0}, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->getStringPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, oldCityName:Ljava/lang/String;
    invoke-virtual {v0, v3}, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->setWeatherID(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v0, v2}, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->setCityName(Ljava/lang/String;)V

    .line 209
    const-string v4, "ClockUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oldCityName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const-string v4, "StyleC_CityZone"

    invoke-static {v4, p0}, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->getStringPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->setTimeZone(Ljava/lang/String;)V

    .line 211
    return-object v0
.end method

.method public static getCityIndexByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "name"

    .prologue
    const/4 v5, 0x0

    .line 219
    invoke-static {}, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->getTimeZoneMap()Ljava/util/HashMap;

    move-result-object v1

    .line 220
    .local v1, hashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/mediatek/appwidget/worldclock/ClockCityInfo;>;"
    if-nez v1, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-object v5

    .line 223
    :cond_1
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v4

    .line 224
    .local v4, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_0

    .line 225
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 226
    .local v3, key:Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;

    .line 227
    .local v0, cityInfor:Lcom/mediatek/appwidget/worldclock/ClockCityInfo;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->getCityName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 228
    invoke-virtual {v0}, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->getCityName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 229
    invoke-virtual {v0}, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->getIndex()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 224
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static getCityName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .parameter "ctx"
    .parameter "widgetId"

    .prologue
    .line 359
    sget-object v0, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->pref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 360
    const-string v0, "pref_clock_widget_info"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->pref:Landroid/content/SharedPreferences;

    .line 362
    :cond_0
    sget-object v0, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->pref:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StyleC_CityName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCityNameByWeatherID(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "weatherID"

    .prologue
    const/4 v2, 0x0

    .line 324
    invoke-static {}, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->getTimeZoneMap()Ljava/util/HashMap;

    move-result-object v1

    .line 325
    .local v1, hashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/mediatek/appwidget/worldclock/ClockCityInfo;>;"
    if-nez v1, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-object v2

    .line 328
    :cond_1
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;

    .line 329
    .local v0, cityInfor:Lcom/mediatek/appwidget/worldclock/ClockCityInfo;
    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {v0}, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->getCityName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected static getCityTimeZoneByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "name"

    .prologue
    const/4 v5, 0x0

    .line 265
    invoke-static {}, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->getTimeZoneMap()Ljava/util/HashMap;

    move-result-object v1

    .line 266
    .local v1, hashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/mediatek/appwidget/worldclock/ClockCityInfo;>;"
    if-nez v1, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-object v5

    .line 269
    :cond_1
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v4

    .line 270
    .local v4, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_0

    .line 271
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 272
    .local v3, key:Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;

    .line 273
    .local v0, cityInfor:Lcom/mediatek/appwidget/worldclock/ClockCityInfo;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->getCityName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 274
    invoke-virtual {v0}, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->getCityName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 275
    invoke-virtual {v0}, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->getTimeZone()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 270
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static getCityTimeZoneByWeatherID(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "weatherID"

    .prologue
    const/4 v2, 0x0

    .line 288
    invoke-static {}, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->getTimeZoneMap()Ljava/util/HashMap;

    move-result-object v1

    .line 289
    .local v1, hashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/mediatek/appwidget/worldclock/ClockCityInfo;>;"
    if-nez v1, :cond_1

    .line 296
    :cond_0
    :goto_0
    return-object v2

    .line 292
    :cond_1
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;

    .line 293
    .local v0, cityInfor:Lcom/mediatek/appwidget/worldclock/ClockCityInfo;
    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {v0}, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->getTimeZone()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getIntDelete(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .parameter "weatherNameDelete"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 465
    sget-object v6, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->pref:Landroid/content/SharedPreferences;

    if-eqz v6, :cond_1

    .line 466
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 467
    .local v0, al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v6, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 469
    .local v1, ha:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 470
    .local v4, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 471
    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 472
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 473
    .local v3, key:Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 474
    .local v5, value:Ljava/lang/String;
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 475
    const/16 v6, 0x11

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 476
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 481
    .end local v0           #al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v1           #ha:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5           #value:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method

.method public static getIntPref(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "keyTag"
    .parameter "widgetId"

    .prologue
    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, name:Ljava/lang/String;
    sget-object v1, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->pref:Landroid/content/SharedPreferences;

    const/4 v2, -0x1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getStringPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "keyTag"
    .parameter "widgetId"

    .prologue
    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, name:Ljava/lang/String;
    sget-object v1, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->pref:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getTimeZoneMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mediatek/appwidget/worldclock/ClockCityInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    sget-object v0, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->mTimeZoneMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->mTimeZoneMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 136
    :cond_0
    invoke-static {}, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->initTimeZone()V

    .line 138
    :cond_1
    sget-object v0, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->mTimeZoneMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getWeatherIDByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "name"

    .prologue
    const/4 v5, 0x0

    .line 242
    invoke-static {}, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->getTimeZoneMap()Ljava/util/HashMap;

    move-result-object v1

    .line 243
    .local v1, hashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/mediatek/appwidget/worldclock/ClockCityInfo;>;"
    if-nez v1, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-object v5

    .line 246
    :cond_1
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v4

    .line 247
    .local v4, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_0

    .line 248
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 249
    .local v3, key:Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;

    .line 250
    .local v0, cityInfor:Lcom/mediatek/appwidget/worldclock/ClockCityInfo;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->getCityName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 251
    invoke-virtual {v0}, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->getCityName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 252
    invoke-virtual {v0}, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->getWeatherID()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 247
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static initPreference(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 130
    const-string v0, "pref_clock_widget_info"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->pref:Landroid/content/SharedPreferences;

    .line 131
    sput-object p0, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->context:Landroid/content/Context;

    .line 132
    return-void
.end method

.method protected static initTimeZone()V
    .locals 6

    .prologue
    .line 395
    sget-object v2, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->mTimeZoneMap:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->mTimeZoneMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-gtz v2, :cond_2

    .line 396
    :cond_0
    const-string v2, "ClockUtils"

    const-string v3, " Initial timezones data from timezones.xml "

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    sget-object v2, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->mTimeZoneMap:Ljava/util/HashMap;

    if-nez v2, :cond_1

    .line 398
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->mTimeZoneMap:Ljava/util/HashMap;

    .line 399
    const-string v2, "ClockUtils"

    const-string v3, "inittimezone new hashmap"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 402
    .local v0, l:J
    sget-object v2, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->reLoadTimeZone(Landroid/content/Context;)V

    .line 403
    const-string v2, "myTag"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "time - l = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_2
    return-void
.end method

.method protected static reLoadTimeZone(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    const/4 v13, 0x2

    .line 414
    sget-object v10, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->mTimeZoneMap:Ljava/util/HashMap;

    if-nez v10, :cond_0

    .line 415
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    sput-object v10, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->mTimeZoneMap:Ljava/util/HashMap;

    .line 417
    :cond_0
    sget-object v11, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->mTimeZoneMap:Ljava/util/HashMap;

    monitor-enter v11

    .line 418
    :try_start_0
    sget-object v10, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->mTimeZoneMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    if-lez v10, :cond_1

    .line 419
    sget-object v10, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->mTimeZoneMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    :cond_1
    const/4 v9, 0x0

    .line 423
    .local v9, xrp:Landroid/content/res/XmlResourceParser;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v12, 0x7f040001

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    .line 425
    :cond_2
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v10

    if-ne v10, v13, :cond_2

    .line 428
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v2

    .line 429
    .local v2, eventType:I
    const/4 v4, 0x0

    .line 430
    .local v4, index:I
    :goto_0
    const/4 v10, 0x1

    if-eq v2, v10, :cond_4

    .line 431
    if-ne v2, v13, :cond_3

    .line 433
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v12, "timezone"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 434
    sget-object v10, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->NAME_SPACE:Ljava/lang/String;

    const-string v12, "weatherID"

    invoke-interface {v9, v10, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 436
    .local v7, weatherID:Ljava/lang/String;
    sget-object v10, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->NAME_SPACE:Ljava/lang/String;

    const-string v12, "id"

    invoke-interface {v9, v10, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 438
    .local v3, gmtZone:Ljava/lang/String;
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v1

    .line 439
    .local v1, cityName:Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 440
    .local v6, key:Ljava/lang/String;
    new-instance v0, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;

    invoke-direct {v0, v6, v7, v3, v1}, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    .local v0, cityInfor:Lcom/mediatek/appwidget/worldclock/ClockCityInfo;
    sget-object v10, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->mTimeZoneMap:Ljava/util/HashMap;

    invoke-virtual {v10, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    add-int/lit8 v4, v4, 0x1

    .line 447
    .end local v0           #cityInfor:Lcom/mediatek/appwidget/worldclock/ClockCityInfo;
    .end local v1           #cityName:Ljava/lang/String;
    .end local v3           #gmtZone:Ljava/lang/String;
    .end local v6           #key:Ljava/lang/String;
    .end local v7           #weatherID:Ljava/lang/String;
    :cond_3
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    goto :goto_0

    .line 449
    :cond_4
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 456
    if-eqz v9, :cond_5

    .line 457
    :try_start_2
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    .line 460
    .end local v2           #eventType:I
    .end local v4           #index:I
    :cond_5
    :goto_1
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 461
    return-void

    .line 450
    :catch_0
    move-exception v8

    .line 451
    .local v8, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_3
    const-string v10, "ClockUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Ill-formatted timezones.xml file:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 456
    if-eqz v9, :cond_5

    .line 457
    :try_start_4
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .line 460
    .end local v8           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    .end local v9           #xrp:Landroid/content/res/XmlResourceParser;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v10

    .line 453
    .restart local v9       #xrp:Landroid/content/res/XmlResourceParser;
    :catch_1
    move-exception v5

    .line 454
    .local v5, ioe:Ljava/io/IOException;
    :try_start_5
    const-string v10, "ClockUtils"

    const-string v12, "Unable to read timezones.xml file"

    invoke-static {v10, v12}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 456
    if-eqz v9, :cond_5

    .line 457
    :try_start_6
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .line 456
    .end local v5           #ioe:Ljava/io/IOException;
    :catchall_1
    move-exception v10

    if-eqz v9, :cond_6

    .line 457
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_6
    throw v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public static savePreferences(ILcom/mediatek/appwidget/worldclock/ClockCityInfo;)V
    .locals 4
    .parameter "widgetId"
    .parameter "city"

    .prologue
    .line 345
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, appWidgetId:Ljava/lang/String;
    sget-object v2, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 347
    .local v1, preEdt:Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_0

    const-string v2, "-1"

    invoke-virtual {p1}, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->getIndex()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 348
    const-string v2, "ClockUtils"

    const-string v3, "ClockUtils save prefs"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StyleC_CityIndex"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->getIndex()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 350
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StyleC_WeatherCID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->getWeatherID()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 352
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StyleC_CityName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->getCityName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StyleC_CityZone"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->getTimeZone()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 355
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 356
    return-void
.end method


# virtual methods
.method protected getCityNameByIndex(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    .line 304
    invoke-static {}, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->getTimeZoneMap()Ljava/util/HashMap;

    move-result-object v1

    .line 305
    .local v1, hashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/mediatek/appwidget/worldclock/ClockCityInfo;>;"
    if-nez v1, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-object v2

    .line 308
    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;

    .line 309
    .local v0, cityInfor:Lcom/mediatek/appwidget/worldclock/ClockCityInfo;
    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {v0}, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->getCityName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->getCityName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 314
    invoke-virtual {v0}, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->getCityName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
