.class Lcom/hf/manager/WeatherNotifyManager$1;
.super Ljava/lang/Object;
.source "WeatherNotifyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/manager/WeatherNotifyManager;->showWeatherNotify(Landroid/content/Context;Lcom/hf/model/CityModel;Lcom/hf/model/WeatherModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$city:Lcom/hf/model/CityModel;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$model:Lcom/hf/model/WeatherModel;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/hf/model/CityModel;Lcom/hf/model/WeatherModel;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/manager/WeatherNotifyManager$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/hf/manager/WeatherNotifyManager$1;->val$city:Lcom/hf/model/CityModel;

    iput-object p3, p0, Lcom/hf/manager/WeatherNotifyManager$1;->val$model:Lcom/hf/model/WeatherModel;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getTomorrowString(Landroid/content/Context;Lcom/hf/model/WeatherModel;Z)Ljava/lang/String;
    .locals 18
    .parameter "context"
    .parameter "model"
    .parameter "isC"

    .prologue
    .line 134
    const-string v8, ""

    .line 135
    .local v8, tomorrowString:Ljava/lang/String;
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/hf/model/WeatherModel;->weatherList:Ljava/util/List;

    if-eqz v11, :cond_0

    .line 136
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/hf/model/WeatherModel;->weatherList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    :cond_0
    move-object v9, v8

    .line 177
    .end local v8           #tomorrowString:Ljava/lang/String;
    .local v9, tomorrowString:Ljava/lang/String;
    :goto_0
    return-object v9

    .line 139
    .end local v9           #tomorrowString:Ljava/lang/String;
    .restart local v8       #tomorrowString:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/hf/model/WeatherModel;->weatherList:Ljava/util/List;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/hf/model/CFWeather;

    .line 140
    .local v6, todayWeather:Lcom/hf/model/CFWeather;
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/hf/model/WeatherModel;->weatherList:Ljava/util/List;

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/hf/model/CFWeather;

    .line 142
    .local v10, tomorrowWeather:Lcom/hf/model/CFWeather;
    iget-boolean v11, v6, Lcom/hf/model/CFWeather;->isHalfDay:Z

    if-eqz v11, :cond_2

    .line 143
    const v11, 0x7f0800d8

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-static {v0, v10, v1}, Lcom/hf/utils/WeatherUtils;->getCFTemperatureString(Landroid/content/Context;Lcom/hf/model/CFWeather;Z)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    :goto_1
    move-object v9, v8

    .line 177
    .end local v8           #tomorrowString:Ljava/lang/String;
    .restart local v9       #tomorrowString:Ljava/lang/String;
    goto :goto_0

    .line 147
    .end local v9           #tomorrowString:Ljava/lang/String;
    .restart local v8       #tomorrowString:Ljava/lang/String;
    :cond_2
    if-eqz p3, :cond_3

    .line 148
    :try_start_0
    iget-object v11, v6, Lcom/hf/model/CFWeather;->tDay:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 149
    .local v5, todayMax:I
    iget-object v11, v10, Lcom/hf/model/CFWeather;->tDay:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 156
    .local v7, tomorrowMax:I
    :goto_2
    if-ne v5, v7, :cond_4

    .line 157
    const v11, 0x7f0800dc

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 158
    goto :goto_1

    .line 151
    .end local v5           #todayMax:I
    .end local v7           #tomorrowMax:I
    :cond_3
    iget-object v11, v6, Lcom/hf/model/CFWeather;->tDay:Ljava/lang/String;

    invoke-static {v11}, Lcom/hf/utils/Util;->CToF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 152
    .restart local v5       #todayMax:I
    iget-object v11, v10, Lcom/hf/model/CFWeather;->tDay:Ljava/lang/String;

    invoke-static {v11}, Lcom/hf/utils/Util;->CToF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .restart local v7       #tomorrowMax:I
    goto :goto_2

    .line 159
    :cond_4
    sub-int v3, v7, v5

    .line 160
    .local v3, diff:I
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 161
    .local v2, buffer:Ljava/lang/StringBuffer;
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 162
    if-eqz p3, :cond_5

    const-string v11, "\u00b0C"

    :goto_3
    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    if-lez v3, :cond_6

    .line 164
    const v11, 0x7f0800d9

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const v14, 0x7f0800db

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 165
    goto :goto_1

    .line 162
    :cond_5
    const-string v11, "\u00b0F"

    goto :goto_3

    .line 166
    :cond_6
    const v11, 0x7f0800d9

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const v14, 0x7f0800da

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto/16 :goto_1

    .line 170
    .end local v2           #buffer:Ljava/lang/StringBuffer;
    .end local v3           #diff:I
    .end local v5           #todayMax:I
    .end local v7           #tomorrowMax:I
    :catch_0
    move-exception v4

    .line 172
    .local v4, e:Ljava/lang/NumberFormatException;
    const v11, 0x7f0800d8

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-static {v0, v10, v1}, Lcom/hf/utils/WeatherUtils;->getCFTemperatureString(Landroid/content/Context;Lcom/hf/model/CFWeather;Z)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/manager/WeatherNotifyManager$1;->val$context:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 184
    .local v13, preferences:Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/manager/WeatherNotifyManager$1;->val$context:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f08013e

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 185
    .local v7, isOpenNotify:Z
    if-nez v7, :cond_1

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/manager/WeatherNotifyManager$1;->val$context:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/hf/manager/WeatherNotifyManager;->cancleWeatherNotify(Landroid/content/Context;)V

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/manager/WeatherNotifyManager$1;->val$city:Lcom/hf/model/CityModel;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 194
    sget-boolean v21, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v21, :cond_2

    .line 195
    const-string v21, "WeatherNotifyManager"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "cityid = "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/manager/WeatherNotifyManager$1;->val$city:Lcom/hf/model/CityModel;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "; cityname = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/manager/WeatherNotifyManager$1;->val$city:Lcom/hf/model/CityModel;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/hf/model/CityModel;->cityName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/manager/WeatherNotifyManager$1;->val$model:Lcom/hf/model/WeatherModel;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 202
    const/16 v19, 0x0

    .line 204
    .local v19, type:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/manager/WeatherNotifyManager$1;->val$context:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f080134

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    const-string v22, "0"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v19

    .line 208
    :goto_1
    if-nez v19, :cond_7

    const/4 v8, 0x1

    .line 210
    .local v8, isSheShi:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/manager/WeatherNotifyManager$1;->val$context:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "notification"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 211
    .local v9, nManager:Landroid/app/NotificationManager;
    new-instance v11, Landroid/app/Notification;

    invoke-direct {v11}, Landroid/app/Notification;-><init>()V

    .line 212
    .local v11, notification:Landroid/app/Notification;
    iget v0, v11, Landroid/app/Notification;->flags:I

    move/from16 v21, v0

    or-int/lit8 v21, v21, 0x20

    move/from16 v0, v21

    iput v0, v11, Landroid/app/Notification;->flags:I

    .line 214
    new-instance v20, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/manager/WeatherNotifyManager$1;->val$context:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v21

    const v22, 0x7f030031

    invoke-direct/range {v20 .. v22}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 215
    .local v20, view:Landroid/widget/RemoteViews;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/manager/WeatherNotifyManager$1;->val$context:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/manager/WeatherNotifyManager$1;->val$city:Lcom/hf/model/CityModel;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/hf/utils/Util;->getDiaplayName(Landroid/content/Context;Lcom/hf/model/CityModel;)Ljava/lang/String;

    move-result-object v10

    .line 216
    .local v10, name:Ljava/lang/String;
    const v21, 0x7f0b00da

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/manager/WeatherNotifyManager$1;->val$context:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/manager/WeatherNotifyManager$1;->val$model:Lcom/hf/model/WeatherModel;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/hf/utils/WeatherUtils;->getSKReportTime(Landroid/content/Context;Lcom/hf/model/WeatherModel;)Ljava/lang/String;

    move-result-object v14

    .line 219
    .local v14, reportTime:Ljava/lang/String;
    const v21, 0x7f0b00db

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v14}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 221
    const/4 v4, 0x0

    .line 222
    .local v4, cfWeather:Lcom/hf/model/CFWeather;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/manager/WeatherNotifyManager$1;->val$model:Lcom/hf/model/WeatherModel;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/hf/model/WeatherModel;->weatherList:Ljava/util/List;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/manager/WeatherNotifyManager$1;->val$model:Lcom/hf/model/WeatherModel;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/hf/model/WeatherModel;->weatherList:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_3

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/manager/WeatherNotifyManager$1;->val$model:Lcom/hf/model/WeatherModel;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/hf/model/WeatherModel;->weatherList:Ljava/util/List;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #cfWeather:Lcom/hf/model/CFWeather;
    check-cast v4, Lcom/hf/model/CFWeather;

    .line 226
    .restart local v4       #cfWeather:Lcom/hf/model/CFWeather;
    :cond_3
    const-string v3, ""

    .line 227
    .local v3, cfTemperature:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/manager/WeatherNotifyManager$1;->val$context:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v4, v8}, Lcom/hf/utils/WeatherUtils;->getCFTemperatureString(Landroid/content/Context;Lcom/hf/model/CFWeather;Z)Ljava/lang/String;

    move-result-object v3

    .line 228
    const v21, 0x7f0b00df

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/manager/WeatherNotifyManager$1;->val$context:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/manager/WeatherNotifyManager$1;->val$model:Lcom/hf/model/WeatherModel;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/hf/model/WeatherModel;->skWeather:Lcom/hf/model/SKWeather;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Lcom/hf/utils/WeatherUtils;->getSKTemperatureString(Landroid/content/Context;Lcom/hf/model/SKWeather;Z)Ljava/lang/String;

    move-result-object v15

    .line 231
    .local v15, skTemperature:Ljava/lang/String;
    const v21, 0x7f0b00dc

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/manager/WeatherNotifyManager$1;->val$context:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/manager/WeatherNotifyManager$1;->val$model:Lcom/hf/model/WeatherModel;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/hf/model/WeatherModel;->skWeather:Lcom/hf/model/SKWeather;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/hf/utils/WeatherUtils;->getSKWeatherString(Landroid/content/Context;Lcom/hf/model/SKWeather;)Ljava/lang/String;

    move-result-object v16

    .line 235
    .local v16, skWeatherText:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/manager/WeatherNotifyManager$1;->val$context:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/hf/utils/WeatherUtils;->getSKWeatherString(Landroid/content/Context;Lcom/hf/model/CFWeather;)Ljava/lang/String;

    move-result-object v16

    .line 238
    :cond_4
    const v21, 0x7f0b00dd

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/manager/WeatherNotifyManager$1;->val$context:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/manager/WeatherNotifyManager$1;->val$model:Lcom/hf/model/WeatherModel;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/hf/model/WeatherModel;->skWeather:Lcom/hf/model/SKWeather;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/hf/utils/WeatherUtils;->getSkWindString(Landroid/content/Context;Lcom/hf/model/SKWeather;)Ljava/lang/String;

    move-result-object v17

    .line 242
    .local v17, skWind:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/manager/WeatherNotifyManager$1;->val$context:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/hf/utils/WeatherUtils;->getCFWindString(Landroid/content/Context;Lcom/hf/model/CFWeather;)Ljava/lang/String;

    move-result-object v17

    .line 245
    :cond_5
    const v21, 0x7f0b00de

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/manager/WeatherNotifyManager$1;->val$context:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/manager/WeatherNotifyManager$1;->val$model:Lcom/hf/model/WeatherModel;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2, v8}, Lcom/hf/manager/WeatherNotifyManager$1;->getTomorrowString(Landroid/content/Context;Lcom/hf/model/WeatherModel;Z)Ljava/lang/String;

    move-result-object v18

    .line 248
    .local v18, tomorrow:Ljava/lang/String;
    const v21, 0x7f0b00e0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/manager/WeatherNotifyManager$1;->val$model:Lcom/hf/model/WeatherModel;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/hf/model/WeatherModel;->skWeather:Lcom/hf/model/SKWeather;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/hf/utils/WeatherUtils;->getSkWeatherImageId(Lcom/hf/model/SKWeather;)I

    move-result v5

    .line 251
    .local v5, imageId:I
    if-nez v5, :cond_6

    .line 252
    invoke-static {v4}, Lcom/hf/utils/WeatherUtils;->getCfWeatherImageId(Lcom/hf/model/CFWeather;)I

    move-result v5

    .line 254
    :cond_6
    const v21, 0x7f0b00d9

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 256
    iput v5, v11, Landroid/app/Notification;->icon:I

    .line 257
    move-object/from16 v0, v20

    iput-object v0, v11, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 259
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 260
    .local v6, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/manager/WeatherNotifyManager$1;->val$context:Landroid/content/Context;

    move-object/from16 v21, v0

    const-class v22, Lcom/hf/UI/LogoActivity;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 261
    const/high16 v21, 0x1000

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/manager/WeatherNotifyManager$1;->val$context:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v6, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 264
    .local v12, pendingIntent:Landroid/app/PendingIntent;
    iput-object v12, v11, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 266
    const/16 v21, 0x464

    :try_start_1
    move/from16 v0, v21

    invoke-virtual {v9, v0, v11}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 267
    :catch_0
    move-exception v21

    goto/16 :goto_0

    .line 208
    .end local v3           #cfTemperature:Ljava/lang/String;
    .end local v4           #cfWeather:Lcom/hf/model/CFWeather;
    .end local v5           #imageId:I
    .end local v6           #intent:Landroid/content/Intent;
    .end local v8           #isSheShi:Z
    .end local v9           #nManager:Landroid/app/NotificationManager;
    .end local v10           #name:Ljava/lang/String;
    .end local v11           #notification:Landroid/app/Notification;
    .end local v12           #pendingIntent:Landroid/app/PendingIntent;
    .end local v14           #reportTime:Ljava/lang/String;
    .end local v15           #skTemperature:Ljava/lang/String;
    .end local v16           #skWeatherText:Ljava/lang/String;
    .end local v17           #skWind:Ljava/lang/String;
    .end local v18           #tomorrow:Ljava/lang/String;
    .end local v20           #view:Landroid/widget/RemoteViews;
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 205
    :catch_1
    move-exception v21

    goto/16 :goto_1
.end method
