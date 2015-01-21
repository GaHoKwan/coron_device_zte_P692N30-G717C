.class public Lcom/hf/share/ShareManager;
.super Ljava/lang/Object;
.source "ShareManager.java"


# static fields
.field private static final ICON_KEY:Ljava/lang/String; = "icon"

.field private static final TITLE_KEY:Ljava/lang/String; = "title"

.field private static sInstance:Lcom/hf/share/ShareManager;


# instance fields
.field private mLocaleSave:Lcom/hf/share/LocaleSave;

.field private mShare:Lcom/hf/share/Share;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/hf/share/ShareManager;Landroid/content/Context;Lcom/hf/share/Share;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/hf/share/ShareManager;->share(Landroid/content/Context;Lcom/hf/share/Share;)V

    return-void
.end method

.method static synthetic access$1(Lcom/hf/share/ShareManager;Landroid/content/Context;Lcom/hf/share/Share;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/hf/share/ShareManager;->shareAnniversary(Landroid/content/Context;Lcom/hf/share/Share;Landroid/view/View;)V

    return-void
.end method

.method private cfWeatherMessage(Landroid/content/Context;Lcom/hf/model/CFWeather;I)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "weather"
    .parameter "type"

    .prologue
    const/4 v3, 0x0

    .line 156
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 157
    .local v1, weatherStr:Ljava/lang/StringBuffer;
    iget-object v4, p2, Lcom/hf/model/CFWeather;->time:Ljava/lang/String;

    invoke-static {p1, v4, v3}, Lcom/hf/utils/Util;->formatDate(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    iget v4, p2, Lcom/hf/model/CFWeather;->week:I

    invoke-static {p1, v4}, Lcom/hf/utils/Util;->formatWeek(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    invoke-static {p1, p2}, Lcom/hf/utils/WeatherUtils;->getCFWeatherString(Landroid/content/Context;Lcom/hf/model/CFWeather;)Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, weatherString:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    if-nez p3, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-static {p1, p2, v3}, Lcom/hf/utils/WeatherUtils;->getCFTemperatureString(Landroid/content/Context;Lcom/hf/model/CFWeather;Z)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, temperature:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getAnniversaryShareList(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/hf/share/Share;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07003e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, array:[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/hf/share/Share;>;"
    new-instance v2, Lcom/hf/share/BaiDuShare;

    invoke-direct {v2, p1}, Lcom/hf/share/BaiDuShare;-><init>(Landroid/content/Context;)V

    .line 243
    .local v2, pcsShare:Lcom/hf/share/BaiDuShare;
    const/4 v4, 0x0

    aget-object v4, v0, v4

    iput-object v4, v2, Lcom/hf/share/BaiDuShare;->title:Ljava/lang/String;

    .line 244
    const v4, 0x7f020004

    iput v4, v2, Lcom/hf/share/BaiDuShare;->iconId:I

    .line 245
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    new-instance v3, Lcom/hf/share/ZTESNSShare;

    invoke-direct {v3, p1}, Lcom/hf/share/ZTESNSShare;-><init>(Landroid/content/Context;)V

    .line 248
    .local v3, snsShare:Lcom/hf/share/ZTESNSShare;
    invoke-virtual {v3}, Lcom/hf/share/ZTESNSShare;->hasSNSSharePackage()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 249
    const/4 v4, 0x1

    aget-object v4, v0, v4

    iput-object v4, v3, Lcom/hf/share/ZTESNSShare;->title:Ljava/lang/String;

    .line 250
    const v4, 0x7f0200db

    iput v4, v3, Lcom/hf/share/ZTESNSShare;->iconId:I

    .line 251
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    :cond_0
    return-object v1
.end method

.method private getShareList(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/hf/share/Share;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07003f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, array:[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/hf/share/Share;>;"
    new-instance v2, Lcom/hf/share/SMSShare;

    invoke-direct {v2, p1}, Lcom/hf/share/SMSShare;-><init>(Landroid/content/Context;)V

    .line 178
    .local v2, smsShare:Lcom/hf/share/Share;
    const/4 v4, 0x0

    aget-object v4, v0, v4

    iput-object v4, v2, Lcom/hf/share/Share;->title:Ljava/lang/String;

    .line 179
    const v4, 0x7f0200dc

    iput v4, v2, Lcom/hf/share/Share;->iconId:I

    .line 180
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v3, Lcom/hf/share/ZTESNSShare;

    invoke-direct {v3, p1}, Lcom/hf/share/ZTESNSShare;-><init>(Landroid/content/Context;)V

    .line 183
    .local v3, snsShare:Lcom/hf/share/ZTESNSShare;
    invoke-virtual {v3}, Lcom/hf/share/ZTESNSShare;->hasSNSSharePackage()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 184
    const/4 v4, 0x1

    aget-object v4, v0, v4

    iput-object v4, v3, Lcom/hf/share/ZTESNSShare;->title:Ljava/lang/String;

    .line 185
    const v4, 0x7f0200db

    iput v4, v3, Lcom/hf/share/ZTESNSShare;->iconId:I

    .line 186
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_0
    return-object v1
.end method

.method private initWeatherMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 18
    .parameter "context"

    .prologue
    .line 101
    const/4 v2, 0x0

    .line 102
    .local v2, city:Lcom/hf/model/CityModel;
    sget v14, Lcom/hf/UI/WeatherGroupActivity;->sIndex:I

    if-gtz v14, :cond_2

    .line 103
    sget-object v2, Lcom/hf/HFWeatherApp;->mDefaultCity:Lcom/hf/model/CityModel;

    .line 113
    :goto_0
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 114
    .local v9, message:Ljava/lang/StringBuffer;
    if-eqz v2, :cond_1

    sget-object v14, Lcom/hf/HFWeatherApp;->mWeathersMap:Ljava/util/Map;

    if-eqz v14, :cond_1

    .line 115
    sget-object v14, Lcom/hf/HFWeatherApp;->mWeathersMap:Ljava/util/Map;

    iget-object v15, v2, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/hf/model/WeatherModel;

    .line 116
    .local v13, weatherModel:Lcom/hf/model/WeatherModel;
    if-eqz v13, :cond_1

    .line 117
    iget-object v8, v13, Lcom/hf/model/WeatherModel;->weatherList:Ljava/util/List;

    .line 118
    .local v8, list:Ljava/util/List;,"Ljava/util/List<Lcom/hf/model/CFWeather;>;"
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 119
    .local v10, preferences:Landroid/content/SharedPreferences;
    const/4 v12, 0x0

    .line 121
    .local v12, type:I
    const v14, 0x7f080134

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "0"

    invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v12

    .line 124
    :goto_1
    if-eqz v8, :cond_1

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_1

    .line 125
    iget-object v14, v2, Lcom/hf/model/CityModel;->cityName:Ljava/lang/String;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    .line 127
    .local v11, size:I
    const/4 v3, 0x0

    .line 128
    .local v3, count:I
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v14

    const v15, 0x7f080136

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/high16 v16, 0x7f08

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, days:Ljava/lang/String;
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    .line 134
    :goto_2
    if-le v3, v11, :cond_0

    .line 135
    move v3, v11

    .line 137
    :cond_0
    const/4 v5, 0x0

    .local v5, i:I
    :goto_3
    if-lt v5, v3, :cond_4

    .line 141
    const v14, 0x7f08002d

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const v17, 0x7f080001

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    .end local v3           #count:I
    .end local v4           #days:Ljava/lang/String;
    .end local v5           #i:I
    .end local v8           #list:Ljava/util/List;,"Ljava/util/List<Lcom/hf/model/CFWeather;>;"
    .end local v10           #preferences:Landroid/content/SharedPreferences;
    .end local v11           #size:I
    .end local v12           #type:I
    .end local v13           #weatherModel:Lcom/hf/model/WeatherModel;
    :cond_1
    const v14, 0x7f08010c

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const v17, 0x7f080001

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    return-object v14

    .line 105
    .end local v9           #message:Ljava/lang/StringBuffer;
    :cond_2
    sget-object v14, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    invoke-virtual {v14}, Lcom/hf/UI/CityList;->size()I

    move-result v7

    .line 106
    .local v7, len:I
    sget v14, Lcom/hf/UI/WeatherGroupActivity;->sIndex:I

    if-gt v14, v7, :cond_3

    .line 107
    sget-object v14, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    sget v15, Lcom/hf/UI/WeatherGroupActivity;->sIndex:I

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14, v15}, Lcom/hf/UI/CityList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #city:Lcom/hf/model/CityModel;
    check-cast v2, Lcom/hf/model/CityModel;

    .line 108
    .restart local v2       #city:Lcom/hf/model/CityModel;
    goto/16 :goto_0

    .line 109
    :cond_3
    sget-object v14, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    add-int/lit8 v15, v7, -0x1

    invoke-virtual {v14, v15}, Lcom/hf/UI/CityList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #city:Lcom/hf/model/CityModel;
    check-cast v2, Lcom/hf/model/CityModel;

    .restart local v2       #city:Lcom/hf/model/CityModel;
    goto/16 :goto_0

    .line 138
    .end local v7           #len:I
    .restart local v3       #count:I
    .restart local v4       #days:Ljava/lang/String;
    .restart local v5       #i:I
    .restart local v8       #list:Ljava/util/List;,"Ljava/util/List<Lcom/hf/model/CFWeather;>;"
    .restart local v9       #message:Ljava/lang/StringBuffer;
    .restart local v10       #preferences:Landroid/content/SharedPreferences;
    .restart local v11       #size:I
    .restart local v12       #type:I
    .restart local v13       #weatherModel:Lcom/hf/model/WeatherModel;
    :cond_4
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/hf/model/CFWeather;

    .line 139
    .local v6, item:Lcom/hf/model/CFWeather;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v12}, Lcom/hf/share/ShareManager;->cfWeatherMessage(Landroid/content/Context;Lcom/hf/model/CFWeather;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 131
    .end local v5           #i:I
    .end local v6           #item:Lcom/hf/model/CFWeather;
    :catch_0
    move-exception v14

    goto :goto_2

    .line 122
    .end local v3           #count:I
    .end local v4           #days:Ljava/lang/String;
    .end local v11           #size:I
    :catch_1
    move-exception v14

    goto/16 :goto_1
.end method

.method public static declared-synchronized instance()Lcom/hf/share/ShareManager;
    .locals 2

    .prologue
    .line 43
    const-class v1, Lcom/hf/share/ShareManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hf/share/ShareManager;->sInstance:Lcom/hf/share/ShareManager;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/hf/share/ShareManager;

    invoke-direct {v0}, Lcom/hf/share/ShareManager;-><init>()V

    sput-object v0, Lcom/hf/share/ShareManager;->sInstance:Lcom/hf/share/ShareManager;

    .line 46
    :cond_0
    sget-object v0, Lcom/hf/share/ShareManager;->sInstance:Lcom/hf/share/ShareManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private saveBitmapTemp(Landroid/content/Context;Landroid/view/View;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "view"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/hf/share/ShareManager;->mLocaleSave:Lcom/hf/share/LocaleSave;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/hf/share/LocaleSave;

    invoke-direct {v0}, Lcom/hf/share/LocaleSave;-><init>()V

    iput-object v0, p0, Lcom/hf/share/ShareManager;->mLocaleSave:Lcom/hf/share/LocaleSave;

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/hf/share/ShareManager;->mLocaleSave:Lcom/hf/share/LocaleSave;

    invoke-virtual {v0, p1, p2}, Lcom/hf/share/LocaleSave;->saveViewToTemp(Landroid/content/Context;Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private share(Landroid/content/Context;Lcom/hf/share/Share;)V
    .locals 1
    .parameter "context"
    .parameter "share"

    .prologue
    .line 54
    iput-object p2, p0, Lcom/hf/share/ShareManager;->mShare:Lcom/hf/share/Share;

    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, content:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/hf/share/ShareManager;->initWeatherMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-virtual {p2, v0}, Lcom/hf/share/Share;->messageShare(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method private shareAnniversary(Landroid/content/Context;Lcom/hf/share/Share;Landroid/view/View;)V
    .locals 2
    .parameter "context"
    .parameter "share"
    .parameter "view"

    .prologue
    .line 66
    iput-object p2, p0, Lcom/hf/share/ShareManager;->mShare:Lcom/hf/share/Share;

    .line 67
    invoke-direct {p0, p1}, Lcom/hf/share/ShareManager;->initWeatherMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, content:Ljava/lang/String;
    invoke-direct {p0, p1, p3}, Lcom/hf/share/ShareManager;->saveBitmapTemp(Landroid/content/Context;Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, path:Ljava/lang/String;
    invoke-virtual {p2, v0, v1}, Lcom/hf/share/Share;->imageShare(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method


# virtual methods
.method public saveViewToSDCard(Landroid/content/Context;Landroid/view/View;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "view"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/hf/share/ShareManager;->mLocaleSave:Lcom/hf/share/LocaleSave;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/hf/share/LocaleSave;

    invoke-direct {v0}, Lcom/hf/share/LocaleSave;-><init>()V

    iput-object v0, p0, Lcom/hf/share/ShareManager;->mLocaleSave:Lcom/hf/share/LocaleSave;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/hf/share/ShareManager;->mLocaleSave:Lcom/hf/share/LocaleSave;

    invoke-virtual {v0, p1, p2}, Lcom/hf/share/LocaleSave;->saveViewToSdcard(Landroid/content/Context;Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public showAnniversaryShareDialog(Landroid/content/Context;Landroid/view/View;)V
    .locals 13
    .parameter "context"
    .parameter "view"

    .prologue
    const/4 v12, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x2

    .line 274
    invoke-direct {p0, p1}, Lcom/hf/share/ShareManager;->getAnniversaryShareList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v7

    .line 275
    .local v7, list:Ljava/util/List;,"Ljava/util/List<Lcom/hf/share/Share;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 276
    .local v2, data:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 282
    new-instance v0, Landroid/widget/SimpleAdapter;

    .line 284
    const v3, 0x7f030001

    .line 285
    new-array v4, v6, [Ljava/lang/String;

    const-string v1, "icon"

    aput-object v1, v4, v8

    const-string v1, "title"

    aput-object v1, v4, v12

    .line 286
    new-array v5, v6, [I

    fill-array-data v5, :array_0

    move-object v1, p1

    .line 282
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 288
    .local v0, adapter:Landroid/widget/ListAdapter;
    new-instance v5, Lcom/hf/UI/HFDialog;

    invoke-direct {v5, p1}, Lcom/hf/UI/HFDialog;-><init>(Landroid/content/Context;)V

    .line 289
    .local v5, shareDialog:Lcom/hf/UI/HFDialog;
    new-array v1, v12, [I

    aput v6, v1, v8

    invoke-virtual {v5, v1}, Lcom/hf/UI/HFDialog;->setStyle([I)V

    .line 290
    invoke-virtual {v5}, Lcom/hf/UI/HFDialog;->getListView()Landroid/widget/ListView;

    move-result-object v10

    .line 291
    .local v10, listView:Landroid/widget/ListView;
    invoke-virtual {v10, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 292
    new-instance v3, Lcom/hf/share/ShareManager$2;

    move-object v4, p0

    move-object v6, p1

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/hf/share/ShareManager$2;-><init>(Lcom/hf/share/ShareManager;Lcom/hf/UI/HFDialog;Landroid/content/Context;Ljava/util/List;Landroid/view/View;)V

    invoke-virtual {v10, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 303
    :try_start_0
    invoke-virtual {v5}, Lcom/hf/UI/HFDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :goto_1
    return-void

    .line 276
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v5           #shareDialog:Lcom/hf/UI/HFDialog;
    .end local v10           #listView:Landroid/widget/ListView;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/hf/share/Share;

    .line 277
    .local v11, share:Lcom/hf/share/Share;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 278
    .local v9, item:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "icon"

    iget v4, v11, Lcom/hf/share/Share;->iconId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v9, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string v3, "title"

    iget-object v4, v11, Lcom/hf/share/Share;->title:Ljava/lang/String;

    invoke-interface {v9, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 304
    .end local v9           #item:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v11           #share:Lcom/hf/share/Share;
    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    .restart local v5       #shareDialog:Lcom/hf/UI/HFDialog;
    .restart local v10       #listView:Landroid/widget/ListView;
    :catch_0
    move-exception v1

    goto :goto_1

    .line 286
    nop

    :array_0
    .array-data 0x4
        0xat 0x0t 0xbt 0x7ft
        0xbt 0x0t 0xbt 0x7ft
    .end array-data
.end method

.method public showShareDialog(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 203
    invoke-direct {p0, p1}, Lcom/hf/share/ShareManager;->getShareList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v8

    .line 204
    .local v8, list:Ljava/util/List;,"Ljava/util/List<Lcom/hf/share/Share;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v2, data:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 211
    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x7f030001

    new-array v4, v12, [Ljava/lang/String;

    const-string v1, "icon"

    aput-object v1, v4, v13

    const-string v1, "title"

    aput-object v1, v4, v11

    new-array v5, v12, [I

    fill-array-data v5, :array_0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 212
    .local v0, adapter:Landroid/widget/ListAdapter;
    new-instance v6, Lcom/hf/UI/HFDialog;

    invoke-direct {v6, p1}, Lcom/hf/UI/HFDialog;-><init>(Landroid/content/Context;)V

    .line 213
    .local v6, dialog:Lcom/hf/UI/HFDialog;
    new-array v1, v11, [I

    aput v12, v1, v13

    invoke-virtual {v6, v1}, Lcom/hf/UI/HFDialog;->setStyle([I)V

    .line 215
    invoke-virtual {v6}, Lcom/hf/UI/HFDialog;->getListView()Landroid/widget/ListView;

    move-result-object v9

    .line 216
    .local v9, listView:Landroid/widget/ListView;
    invoke-virtual {v9, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 217
    new-instance v1, Lcom/hf/share/ShareManager$1;

    invoke-direct {v1, p0, p1, v8, v6}, Lcom/hf/share/ShareManager$1;-><init>(Lcom/hf/share/ShareManager;Landroid/content/Context;Ljava/util/List;Lcom/hf/UI/HFDialog;)V

    invoke-virtual {v9, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 227
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v6, v1}, Lcom/hf/UI/HFDialog;->setCanceledOnTouchOutside(Z)V

    .line 228
    invoke-virtual {v6}, Lcom/hf/UI/HFDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :goto_1
    return-void

    .line 205
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v6           #dialog:Lcom/hf/UI/HFDialog;
    .end local v9           #listView:Landroid/widget/ListView;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/hf/share/Share;

    .line 206
    .local v7, item:Lcom/hf/share/Share;
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 207
    .local v10, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "icon"

    iget v4, v7, Lcom/hf/share/Share;->iconId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v10, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v3, "title"

    iget-object v4, v7, Lcom/hf/share/Share;->title:Ljava/lang/String;

    invoke-interface {v10, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 229
    .end local v7           #item:Lcom/hf/share/Share;
    .end local v10           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    .restart local v6       #dialog:Lcom/hf/UI/HFDialog;
    .restart local v9       #listView:Landroid/widget/ListView;
    :catch_0
    move-exception v1

    goto :goto_1

    .line 211
    :array_0
    .array-data 0x4
        0xat 0x0t 0xbt 0x7ft
        0xbt 0x0t 0xbt 0x7ft
    .end array-data
.end method
