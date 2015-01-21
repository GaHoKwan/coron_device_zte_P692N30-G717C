.class Lcom/hf/UI/MapWeatherActivity$3;
.super Landroid/os/AsyncTask;
.source "MapWeatherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/UI/MapWeatherActivity;->queryWeathers()V
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
.field final synthetic this$0:Lcom/hf/UI/MapWeatherActivity;

.field private type:I


# direct methods
.method constructor <init>(Lcom/hf/UI/MapWeatherActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/MapWeatherActivity$3;->this$0:Lcom/hf/UI/MapWeatherActivity;

    .line 154
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15
    .parameter "params"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/hf/UI/MapWeatherActivity$3;->this$0:Lcom/hf/UI/MapWeatherActivity;

    #getter for: Lcom/hf/UI/MapWeatherActivity;->mCityId:Ljava/lang/String;
    invoke-static {v0}, Lcom/hf/UI/MapWeatherActivity;->access$3(Lcom/hf/UI/MapWeatherActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    const/4 v0, 0x0

    .line 214
    :goto_0
    return-object v0

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/hf/UI/MapWeatherActivity$3;->this$0:Lcom/hf/UI/MapWeatherActivity;

    invoke-virtual {v0}, Lcom/hf/UI/MapWeatherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/hf/data/Constant$CITY;->CITY_URI:Landroid/net/Uri;

    .line 165
    invoke-static {}, Lcom/hf/UI/MapWeatherActivity;->access$4()[Ljava/lang/String;

    move-result-object v2

    .line 166
    const-string v3, "id=?"

    .line 167
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v14, p0, Lcom/hf/UI/MapWeatherActivity$3;->this$0:Lcom/hf/UI/MapWeatherActivity;

    #getter for: Lcom/hf/UI/MapWeatherActivity;->mCityId:Ljava/lang/String;
    invoke-static {v14}, Lcom/hf/UI/MapWeatherActivity;->access$3(Lcom/hf/UI/MapWeatherActivity;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v4, v5

    .line 168
    const/4 v5, 0x0

    .line 164
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 169
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 170
    .local v13, provinceId:Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 171
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 174
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 176
    :cond_2
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 177
    const/4 v0, 0x0

    goto :goto_0

    .line 180
    :cond_3
    iget-object v0, p0, Lcom/hf/UI/MapWeatherActivity$3;->this$0:Lcom/hf/UI/MapWeatherActivity;

    invoke-virtual {v0}, Lcom/hf/UI/MapWeatherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/hf/data/Constant$COORDINATE;->COORDINATE_URI:Landroid/net/Uri;

    .line 181
    sget-object v2, Lcom/hf/UI/MapWeatherActivity;->COORDINATE_PROJECTION:[Ljava/lang/String;

    .line 182
    const-string v3, "id=?"

    .line 183
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v13, v4, v5

    .line 184
    const/4 v5, 0x0

    .line 180
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 185
    const/4 v9, 0x0

    .local v9, lat:Ljava/lang/String;
    const/4 v10, 0x0

    .line 186
    .local v10, lng:Ljava/lang/String;
    if-eqz v7, :cond_5

    .line 187
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 188
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 189
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 191
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 194
    :cond_5
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 195
    const/4 v0, 0x0

    goto :goto_0

    .line 198
    :cond_6
    iget-object v0, p0, Lcom/hf/UI/MapWeatherActivity$3;->this$0:Lcom/hf/UI/MapWeatherActivity;

    #getter for: Lcom/hf/UI/MapWeatherActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/hf/UI/MapWeatherActivity;->access$2(Lcom/hf/UI/MapWeatherActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v11

    .line 199
    .local v11, message:Landroid/os/Message;
    const/16 v0, 0x3e8

    iput v0, v11, Landroid/os/Message;->what:I

    .line 200
    invoke-virtual {v11}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    .line 201
    .local v6, bundle:Landroid/os/Bundle;
    const-string v0, "lat"

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 202
    const-string v0, "lng"

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 203
    iget-object v0, p0, Lcom/hf/UI/MapWeatherActivity$3;->this$0:Lcom/hf/UI/MapWeatherActivity;

    #getter for: Lcom/hf/UI/MapWeatherActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/hf/UI/MapWeatherActivity;->access$2(Lcom/hf/UI/MapWeatherActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 205
    invoke-static {}, Lcom/hf/http/HFWeatherHttp;->getInstance()Lcom/hf/http/HFWeatherHttp;

    move-result-object v8

    .line 207
    .local v8, http:Lcom/hf/http/HFWeatherHttp;
    iget-object v0, p0, Lcom/hf/UI/MapWeatherActivity$3;->this$0:Lcom/hf/UI/MapWeatherActivity;

    iget-object v1, p0, Lcom/hf/UI/MapWeatherActivity$3;->this$0:Lcom/hf/UI/MapWeatherActivity;

    invoke-virtual {v8, v1, v13}, Lcom/hf/http/HFWeatherHttp;->queryProvinceWeather(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/hf/UI/MapWeatherActivity;->mWeatherList:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/hf/UI/MapWeatherActivity;->access$5(Lcom/hf/UI/MapWeatherActivity;Ljava/util/List;)V

    .line 208
    iget-object v0, p0, Lcom/hf/UI/MapWeatherActivity$3;->this$0:Lcom/hf/UI/MapWeatherActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 211
    .local v12, preferences:Landroid/content/SharedPreferences;
    :try_start_0
    iget-object v0, p0, Lcom/hf/UI/MapWeatherActivity$3;->this$0:Lcom/hf/UI/MapWeatherActivity;

    const v1, 0x7f080134

    invoke-virtual {v0, v1}, Lcom/hf/UI/MapWeatherActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hf/UI/MapWeatherActivity$3;->type:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_1
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 212
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/hf/UI/MapWeatherActivity$3;->this$0:Lcom/hf/UI/MapWeatherActivity;

    #getter for: Lcom/hf/UI/MapWeatherActivity;->mWeatherList:Ljava/util/List;
    invoke-static {v0}, Lcom/hf/UI/MapWeatherActivity;->access$6(Lcom/hf/UI/MapWeatherActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hf/UI/MapWeatherActivity$3;->this$0:Lcom/hf/UI/MapWeatherActivity;

    #getter for: Lcom/hf/UI/MapWeatherActivity;->mWeatherList:Ljava/util/List;
    invoke-static {v0}, Lcom/hf/UI/MapWeatherActivity;->access$6(Lcom/hf/UI/MapWeatherActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/hf/UI/MapWeatherActivity$3;->this$0:Lcom/hf/UI/MapWeatherActivity;

    iget v1, p0, Lcom/hf/UI/MapWeatherActivity$3;->type:I

    #calls: Lcom/hf/UI/MapWeatherActivity;->addWeatherItem(I)V
    invoke-static {v0, v1}, Lcom/hf/UI/MapWeatherActivity;->access$7(Lcom/hf/UI/MapWeatherActivity;I)V

    .line 221
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method
