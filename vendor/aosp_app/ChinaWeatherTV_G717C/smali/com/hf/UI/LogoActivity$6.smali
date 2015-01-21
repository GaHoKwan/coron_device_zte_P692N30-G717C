.class Lcom/hf/UI/LogoActivity$6;
.super Landroid/os/AsyncTask;
.source "LogoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/UI/LogoActivity;->initWeather()V
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
.field final synthetic this$0:Lcom/hf/UI/LogoActivity;


# direct methods
.method constructor <init>(Lcom/hf/UI/LogoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/LogoActivity$6;->this$0:Lcom/hf/UI/LogoActivity;

    .line 198
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter "params"

    .prologue
    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 218
    .local v2, time1:J
    iget-object v4, p0, Lcom/hf/UI/LogoActivity$6;->this$0:Lcom/hf/UI/LogoActivity;

    invoke-virtual {v4}, Lcom/hf/UI/LogoActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    check-cast v4, Lcom/hf/HFWeatherApp;

    invoke-virtual {v4}, Lcom/hf/HFWeatherApp;->initWeathers()V

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v1, v4

    .line 222
    .local v1, time:I
    const/4 v4, 0x2

    if-ge v1, v4, :cond_0

    .line 224
    const-wide/16 v4, 0x7d0

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :cond_0
    :goto_0
    const/4 v4, 0x0

    return-object v4

    .line 225
    :catch_0
    move-exception v0

    .line 227
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 204
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 205
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 235
    iget-object v1, p0, Lcom/hf/UI/LogoActivity$6;->this$0:Lcom/hf/UI/LogoActivity;

    const/4 v2, 0x0

    #setter for: Lcom/hf/UI/LogoActivity;->isRuning:Z
    invoke-static {v1, v2}, Lcom/hf/UI/LogoActivity;->access$2(Lcom/hf/UI/LogoActivity;Z)V

    .line 236
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 237
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 238
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/hf/HFWeatherApp;->mDefaultCity:Lcom/hf/model/CityModel;

    if-nez v1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/hf/UI/LogoActivity$6;->this$0:Lcom/hf/UI/LogoActivity;

    const-class v2, Lcom/hf/UI/GuideActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 240
    iget-object v1, p0, Lcom/hf/UI/LogoActivity$6;->this$0:Lcom/hf/UI/LogoActivity;

    invoke-virtual {v1, v0}, Lcom/hf/UI/LogoActivity;->startActivity(Landroid/content/Intent;)V

    .line 246
    :goto_0
    iget-object v1, p0, Lcom/hf/UI/LogoActivity$6;->this$0:Lcom/hf/UI/LogoActivity;

    invoke-virtual {v1}, Lcom/hf/UI/LogoActivity;->finish()V

    .line 247
    return-void

    .line 242
    :cond_0
    iget-object v1, p0, Lcom/hf/UI/LogoActivity$6;->this$0:Lcom/hf/UI/LogoActivity;

    const-class v2, Lcom/hf/UI/MainActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 243
    iget-object v1, p0, Lcom/hf/UI/LogoActivity$6;->this$0:Lcom/hf/UI/LogoActivity;

    invoke-virtual {v1, v0}, Lcom/hf/UI/LogoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/hf/UI/LogoActivity$6;->this$0:Lcom/hf/UI/LogoActivity;

    const/4 v1, 0x1

    #setter for: Lcom/hf/UI/LogoActivity;->isRuning:Z
    invoke-static {v0, v1}, Lcom/hf/UI/LogoActivity;->access$2(Lcom/hf/UI/LogoActivity;Z)V

    .line 210
    new-instance v0, Lcom/hf/UI/CityList;

    invoke-direct {v0}, Lcom/hf/UI/CityList;-><init>()V

    sput-object v0, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    .line 211
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/hf/HFWeatherApp;->mWeathersMap:Ljava/util/Map;

    .line 212
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/hf/HFWeatherApp;->mWarningMap:Ljava/util/Map;

    .line 213
    return-void
.end method
