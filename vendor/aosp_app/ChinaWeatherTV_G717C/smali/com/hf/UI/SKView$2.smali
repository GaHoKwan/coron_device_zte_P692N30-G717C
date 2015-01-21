.class Lcom/hf/UI/SKView$2;
.super Landroid/os/AsyncTask;
.source "SKView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/UI/SKView;->setTemperature(Lcom/hf/model/SKWeather;Lcom/hf/model/CFWeather;)V
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
.field final synthetic this$0:Lcom/hf/UI/SKView;

.field private type:I

.field private final synthetic val$cfWeather:Lcom/hf/model/CFWeather;

.field private final synthetic val$skWeather:Lcom/hf/model/SKWeather;


# direct methods
.method constructor <init>(Lcom/hf/UI/SKView;Lcom/hf/model/SKWeather;Lcom/hf/model/CFWeather;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/SKView$2;->this$0:Lcom/hf/UI/SKView;

    iput-object p2, p0, Lcom/hf/UI/SKView$2;->val$skWeather:Lcom/hf/model/SKWeather;

    iput-object p3, p0, Lcom/hf/UI/SKView$2;->val$cfWeather:Lcom/hf/model/CFWeather;

    .line 260
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "params"

    .prologue
    .line 264
    iget-object v1, p0, Lcom/hf/UI/SKView$2;->this$0:Lcom/hf/UI/SKView;

    #getter for: Lcom/hf/UI/SKView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/hf/UI/SKView;->access$0(Lcom/hf/UI/SKView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 266
    .local v0, preferences:Landroid/content/SharedPreferences;
    :try_start_0
    iget-object v1, p0, Lcom/hf/UI/SKView$2;->this$0:Lcom/hf/UI/SKView;

    #getter for: Lcom/hf/UI/SKView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/hf/UI/SKView;->access$0(Lcom/hf/UI/SKView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080134

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/hf/UI/SKView$2;->type:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 267
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 274
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 275
    iget v2, p0, Lcom/hf/UI/SKView$2;->type:I

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 276
    .local v0, isC:Z
    :goto_0
    iget-object v2, p0, Lcom/hf/UI/SKView$2;->this$0:Lcom/hf/UI/SKView;

    #getter for: Lcom/hf/UI/SKView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/hf/UI/SKView;->access$0(Lcom/hf/UI/SKView;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/hf/UI/SKView$2;->val$skWeather:Lcom/hf/model/SKWeather;

    invoke-static {v2, v3, v0}, Lcom/hf/utils/WeatherUtils;->getSKTemperatureString(Landroid/content/Context;Lcom/hf/model/SKWeather;Z)Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, temperature:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 278
    iget-object v2, p0, Lcom/hf/UI/SKView$2;->this$0:Lcom/hf/UI/SKView;

    #getter for: Lcom/hf/UI/SKView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/hf/UI/SKView;->access$0(Lcom/hf/UI/SKView;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/hf/UI/SKView$2;->val$cfWeather:Lcom/hf/model/CFWeather;

    invoke-static {v2, v3, v0}, Lcom/hf/utils/WeatherUtils;->getCFTemperatureString(Landroid/content/Context;Lcom/hf/model/CFWeather;Z)Ljava/lang/String;

    move-result-object v1

    .line 280
    :cond_0
    iget-object v2, p0, Lcom/hf/UI/SKView$2;->this$0:Lcom/hf/UI/SKView;

    #getter for: Lcom/hf/UI/SKView;->mTemperature:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/hf/UI/SKView;->access$1(Lcom/hf/UI/SKView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    return-void

    .line 275
    .end local v0           #isC:Z
    .end local v1           #temperature:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
