.class Lcom/hf/UI/CityActivity$3;
.super Landroid/os/AsyncTask;
.source "CityActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/UI/CityActivity;->initTemperatureType()V
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


# direct methods
.method constructor <init>(Lcom/hf/UI/CityActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/CityActivity$3;->this$0:Lcom/hf/UI/CityActivity;

    .line 268
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "params"

    .prologue
    .line 273
    :try_start_0
    iget-object v1, p0, Lcom/hf/UI/CityActivity$3;->this$0:Lcom/hf/UI/CityActivity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 274
    .local v0, preferences:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/hf/UI/CityActivity$3;->this$0:Lcom/hf/UI/CityActivity;

    iget-object v2, p0, Lcom/hf/UI/CityActivity$3;->this$0:Lcom/hf/UI/CityActivity;

    const v3, 0x7f080134

    invoke-virtual {v2, v3}, Lcom/hf/UI/CityActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    #setter for: Lcom/hf/UI/CityActivity;->mTemperatureType:I
    invoke-static {v1, v2}, Lcom/hf/UI/CityActivity;->access$14(Lcom/hf/UI/CityActivity;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    .end local v0           #preferences:Landroid/content/SharedPreferences;
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 275
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/hf/UI/CityActivity$3;->this$0:Lcom/hf/UI/CityActivity;

    #calls: Lcom/hf/UI/CityActivity;->setDefCityWeather()V
    invoke-static {v0}, Lcom/hf/UI/CityActivity;->access$5(Lcom/hf/UI/CityActivity;)V

    .line 282
    iget-object v0, p0, Lcom/hf/UI/CityActivity$3;->this$0:Lcom/hf/UI/CityActivity;

    #getter for: Lcom/hf/UI/CityActivity;->mWeatherAdapter:Lcom/hf/UI/CityActivity$WeatherAdapter;
    invoke-static {v0}, Lcom/hf/UI/CityActivity;->access$6(Lcom/hf/UI/CityActivity;)Lcom/hf/UI/CityActivity$WeatherAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/hf/UI/CityActivity$3;->this$0:Lcom/hf/UI/CityActivity;

    #getter for: Lcom/hf/UI/CityActivity;->mWeatherAdapter:Lcom/hf/UI/CityActivity$WeatherAdapter;
    invoke-static {v0}, Lcom/hf/UI/CityActivity;->access$6(Lcom/hf/UI/CityActivity;)Lcom/hf/UI/CityActivity$WeatherAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hf/UI/CityActivity$WeatherAdapter;->notifyDataSetChanged()V

    .line 285
    :cond_0
    return-void
.end method
