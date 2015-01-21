.class Lcom/hf/manager/WeatherManager$2;
.super Landroid/os/AsyncTask;
.source "WeatherManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/manager/WeatherManager;->queryWarning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/manager/WeatherManager;


# direct methods
.method constructor <init>(Lcom/hf/manager/WeatherManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/manager/WeatherManager$2;->this$0:Lcom/hf/manager/WeatherManager;

    .line 303
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21
    .parameter "params"

    .prologue
    .line 308
    sget-boolean v1, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v1, :cond_0

    .line 309
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hf/manager/WeatherManager$2;->this$0:Lcom/hf/manager/WeatherManager;

    #getter for: Lcom/hf/manager/WeatherManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/hf/manager/WeatherManager;->access$0(Lcom/hf/manager/WeatherManager;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "test"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 310
    .local v17, preferences:Landroid/content/SharedPreferences;
    const-string v1, "startQueryWarningCount"

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 311
    .local v19, startcount:I
    const-string v1, "start_query_warning_time"

    const-string v2, ""

    move-object/from16 v0, v17

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 312
    .local v18, service_query_time:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v2, v3}, Lcom/hf/utils/Util;->getDate(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 313
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 314
    .local v14, editor:Landroid/content/SharedPreferences$Editor;
    add-int/lit8 v19, v19, 0x1

    .line 315
    const-string v1, "startQueryWarningCount"

    move/from16 v0, v19

    invoke-interface {v14, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 316
    const-string v1, "start_query_warning_time"

    move-object/from16 v0, v18

    invoke-interface {v14, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 317
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 320
    .end local v14           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v17           #preferences:Landroid/content/SharedPreferences;
    .end local v18           #service_query_time:Ljava/lang/String;
    .end local v19           #startcount:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hf/manager/WeatherManager$2;->this$0:Lcom/hf/manager/WeatherManager;

    #getter for: Lcom/hf/manager/WeatherManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/hf/manager/WeatherManager;->access$0(Lcom/hf/manager/WeatherManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/hf/data/Constant$WEATHER;->WEATHER_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/hf/manager/WeatherManager;->access$3()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 321
    .local v13, cursor:Landroid/database/Cursor;
    if-eqz v13, :cond_1

    .line 323
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 325
    .local v10, cityList:Ljava/util/List;,"Ljava/util/List<Lcom/hf/model/CityModel;>;"
    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 345
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 347
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 351
    .end local v10           #cityList:Ljava/util/List;,"Ljava/util/List<Lcom/hf/model/CityModel;>;"
    :cond_1
    const/4 v1, 0x0

    return-object v1

    .line 326
    .restart local v10       #cityList:Ljava/util/List;,"Ljava/util/List<Lcom/hf/model/CityModel;>;"
    :cond_2
    const/4 v1, 0x0

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 327
    .local v9, cityId:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 328
    .local v11, cityName:Ljava/lang/String;
    const/4 v1, 0x3

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 329
    .local v8, cityDisplayName:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 330
    .local v12, cityPinyin:Ljava/lang/String;
    const/4 v1, 0x4

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 331
    .local v20, stationId:Ljava/lang/String;
    const/4 v1, 0x5

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 332
    .local v16, isDefault:I
    const/4 v1, 0x6

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 334
    .local v15, englishName:Ljava/lang/String;
    new-instance v7, Lcom/hf/model/CityModel;

    invoke-direct {v7}, Lcom/hf/model/CityModel;-><init>()V

    .line 335
    .local v7, city:Lcom/hf/model/CityModel;
    iput-object v9, v7, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    .line 336
    iput-object v11, v7, Lcom/hf/model/CityModel;->cityName:Ljava/lang/String;

    .line 337
    iput-object v15, v7, Lcom/hf/model/CityModel;->englishName:Ljava/lang/String;

    .line 338
    iput-object v12, v7, Lcom/hf/model/CityModel;->cityPinyin:Ljava/lang/String;

    .line 339
    move-object/from16 v0, v20

    iput-object v0, v7, Lcom/hf/model/CityModel;->stationId:Ljava/lang/String;

    .line 340
    const/4 v1, 0x1

    move/from16 v0, v16

    if-ne v0, v1, :cond_3

    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, v7, Lcom/hf/model/CityModel;->isDefault:Z

    .line 341
    iput-object v8, v7, Lcom/hf/model/CityModel;->displayName:Ljava/lang/String;

    .line 343
    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 340
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 347
    .end local v7           #city:Lcom/hf/model/CityModel;
    .end local v8           #cityDisplayName:Ljava/lang/String;
    .end local v9           #cityId:Ljava/lang/String;
    .end local v11           #cityName:Ljava/lang/String;
    .end local v12           #cityPinyin:Ljava/lang/String;
    .end local v15           #englishName:Ljava/lang/String;
    .end local v16           #isDefault:I
    .end local v20           #stationId:Ljava/lang/String;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/hf/model/CityModel;

    .line 348
    .restart local v7       #city:Lcom/hf/model/CityModel;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hf/manager/WeatherManager$2;->this$0:Lcom/hf/manager/WeatherManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hf/manager/WeatherManager$2;->this$0:Lcom/hf/manager/WeatherManager;

    #getter for: Lcom/hf/manager/WeatherManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/hf/manager/WeatherManager;->access$0(Lcom/hf/manager/WeatherManager;)Landroid/content/Context;

    move-result-object v3

    #calls: Lcom/hf/manager/WeatherManager;->queryWarning(Landroid/content/Context;Lcom/hf/model/CityModel;)V
    invoke-static {v2, v3, v7}, Lcom/hf/manager/WeatherManager;->access$4(Lcom/hf/manager/WeatherManager;Landroid/content/Context;Lcom/hf/model/CityModel;)V

    goto :goto_1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 357
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 358
    iget-object v0, p0, Lcom/hf/manager/WeatherManager$2;->this$0:Lcom/hf/manager/WeatherManager;

    #getter for: Lcom/hf/manager/WeatherManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/hf/manager/WeatherManager;->access$0(Lcom/hf/manager/WeatherManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hf/manager/HFPackageManager;->getInstance(Landroid/content/Context;)Lcom/hf/manager/HFPackageManager;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/hf/manager/HFPackageManager;->exitFromReceiver(J)V

    .line 359
    return-void
.end method
