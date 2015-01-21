.class Lcom/hf/UI/CFView$1;
.super Landroid/os/AsyncTask;
.source "CFView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/UI/CFView;->setTemperature()V
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
.field final synthetic this$0:Lcom/hf/UI/CFView;

.field private type:I


# direct methods
.method constructor <init>(Lcom/hf/UI/CFView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/CFView$1;->this$0:Lcom/hf/UI/CFView;

    .line 96
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "params"

    .prologue
    .line 102
    iget-object v1, p0, Lcom/hf/UI/CFView$1;->this$0:Lcom/hf/UI/CFView;

    #getter for: Lcom/hf/UI/CFView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/hf/UI/CFView;->access$0(Lcom/hf/UI/CFView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 104
    .local v0, preferences:Landroid/content/SharedPreferences;
    :try_start_0
    iget-object v1, p0, Lcom/hf/UI/CFView$1;->this$0:Lcom/hf/UI/CFView;

    #getter for: Lcom/hf/UI/CFView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/hf/UI/CFView;->access$0(Lcom/hf/UI/CFView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080134

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/hf/UI/CFView$1;->type:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 105
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 111
    iget-object v1, p0, Lcom/hf/UI/CFView$1;->this$0:Lcom/hf/UI/CFView;

    #getter for: Lcom/hf/UI/CFView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/hf/UI/CFView;->access$0(Lcom/hf/UI/CFView;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/hf/UI/CFView$1;->this$0:Lcom/hf/UI/CFView;

    #getter for: Lcom/hf/UI/CFView;->mWeather:Lcom/hf/model/CFWeather;
    invoke-static {v1}, Lcom/hf/UI/CFView;->access$1(Lcom/hf/UI/CFView;)Lcom/hf/model/CFWeather;

    move-result-object v3

    iget v1, p0, Lcom/hf/UI/CFView$1;->type:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Lcom/hf/utils/WeatherUtils;->getCFTemperatureString(Landroid/content/Context;Lcom/hf/model/CFWeather;Z)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, temperature:Ljava/lang/String;
    iget-object v1, p0, Lcom/hf/UI/CFView$1;->this$0:Lcom/hf/UI/CFView;

    #getter for: Lcom/hf/UI/CFView;->mTemperature:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/hf/UI/CFView;->access$2(Lcom/hf/UI/CFView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    return-void

    .line 111
    .end local v0           #temperature:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
