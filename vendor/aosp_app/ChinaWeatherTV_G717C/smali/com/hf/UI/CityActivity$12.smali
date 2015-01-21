.class Lcom/hf/UI/CityActivity$12;
.super Landroid/os/AsyncTask;
.source "CityActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/UI/CityActivity;->deleteCity(Lcom/hf/model/CityModel;)V
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
.field final synthetic this$0:Lcom/hf/UI/CityActivity;

.field private final synthetic val$city:Lcom/hf/model/CityModel;


# direct methods
.method constructor <init>(Lcom/hf/UI/CityActivity;Lcom/hf/model/CityModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/CityActivity$12;->this$0:Lcom/hf/UI/CityActivity;

    iput-object p2, p0, Lcom/hf/UI/CityActivity$12;->val$city:Lcom/hf/model/CityModel;

    .line 980
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .parameter "params"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 991
    iget-object v1, p0, Lcom/hf/UI/CityActivity$12;->this$0:Lcom/hf/UI/CityActivity;

    iget-object v2, p0, Lcom/hf/UI/CityActivity$12;->this$0:Lcom/hf/UI/CityActivity;

    const v3, 0x7f080124

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/hf/UI/CityActivity$12;->val$city:Lcom/hf/model/CityModel;

    iget-object v5, v5, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/hf/UI/CityActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hf/UI/CityActivity;->deleteFile(Ljava/lang/String;)Z

    .line 993
    sget-object v1, Lcom/hf/HFWeatherApp;->mWeathersMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/hf/UI/CityActivity$12;->val$city:Lcom/hf/model/CityModel;

    iget-object v2, v2, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 994
    sget-object v1, Lcom/hf/HFWeatherApp;->mWeathersMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/hf/UI/CityActivity$12;->val$city:Lcom/hf/model/CityModel;

    iget-object v2, v2, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    :cond_0
    iget-object v1, p0, Lcom/hf/UI/CityActivity$12;->this$0:Lcom/hf/UI/CityActivity;

    invoke-virtual {v1}, Lcom/hf/UI/CityActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/hf/data/Constant$WEATHER;->WEATHER_URI:Landroid/net/Uri;

    const-string v3, "cityId=\'%s\'"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/hf/UI/CityActivity$12;->val$city:Lcom/hf/model/CityModel;

    iget-object v5, v5, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 998
    iget-object v1, p0, Lcom/hf/UI/CityActivity$12;->this$0:Lcom/hf/UI/CityActivity;

    const-string v2, "indices"

    invoke-virtual {v1, v2, v6}, Lcom/hf/UI/CityActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 999
    .local v0, preference:Landroid/content/SharedPreferences;
    const-string v1, "indices_%s"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/hf/UI/CityActivity$12;->val$city:Lcom/hf/model/CityModel;

    iget-object v3, v3, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1000
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "indices_%s"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/hf/UI/CityActivity$12;->val$city:Lcom/hf/model/CityModel;

    iget-object v4, v4, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1003
    :cond_1
    return-object v8
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 1007
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1008
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.hf.DELETE_CITY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1010
    const-string v1, "cityID"

    iget-object v2, p0, Lcom/hf/UI/CityActivity$12;->val$city:Lcom/hf/model/CityModel;

    iget-object v2, v2, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1011
    iget-object v1, p0, Lcom/hf/UI/CityActivity$12;->this$0:Lcom/hf/UI/CityActivity;

    invoke-virtual {v1, v0}, Lcom/hf/UI/CityActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1012
    iget-object v1, p0, Lcom/hf/UI/CityActivity$12;->this$0:Lcom/hf/UI/CityActivity;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v2}, Lcom/hf/UI/CityActivity;->dismissDialog(I)V

    .line 1013
    iget-object v1, p0, Lcom/hf/UI/CityActivity$12;->this$0:Lcom/hf/UI/CityActivity;

    #getter for: Lcom/hf/UI/CityActivity;->mWeatherAdapter:Lcom/hf/UI/CityActivity$WeatherAdapter;
    invoke-static {v1}, Lcom/hf/UI/CityActivity;->access$6(Lcom/hf/UI/CityActivity;)Lcom/hf/UI/CityActivity$WeatherAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hf/UI/CityActivity$WeatherAdapter;->notifyDataSetChanged()V

    .line 1014
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 983
    iget-object v0, p0, Lcom/hf/UI/CityActivity$12;->this$0:Lcom/hf/UI/CityActivity;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Lcom/hf/UI/CityActivity;->showDialog(I)V

    .line 984
    sget-object v0, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    iget-object v1, p0, Lcom/hf/UI/CityActivity$12;->val$city:Lcom/hf/model/CityModel;

    invoke-virtual {v0, v1}, Lcom/hf/UI/CityList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 985
    sget-object v0, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    iget-object v1, p0, Lcom/hf/UI/CityActivity$12;->val$city:Lcom/hf/model/CityModel;

    invoke-virtual {v0, v1}, Lcom/hf/UI/CityList;->remove(Ljava/lang/Object;)Z

    .line 987
    :cond_0
    return-void
.end method
