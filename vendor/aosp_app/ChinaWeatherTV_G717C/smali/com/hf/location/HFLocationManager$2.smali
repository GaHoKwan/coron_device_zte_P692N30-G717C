.class Lcom/hf/location/HFLocationManager$2;
.super Landroid/os/AsyncTask;
.source "HFLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/location/HFLocationManager;->findCity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
.field private city:Lcom/hf/model/CityModel;

.field final synthetic this$0:Lcom/hf/location/HFLocationManager;

.field private final synthetic val$cityName:Ljava/lang/String;

.field private final synthetic val$district:Ljava/lang/String;

.field private final synthetic val$province:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hf/location/HFLocationManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/location/HFLocationManager$2;->this$0:Lcom/hf/location/HFLocationManager;

    iput-object p2, p0, Lcom/hf/location/HFLocationManager$2;->val$district:Ljava/lang/String;

    iput-object p3, p0, Lcom/hf/location/HFLocationManager$2;->val$cityName:Ljava/lang/String;

    iput-object p4, p0, Lcom/hf/location/HFLocationManager$2;->val$province:Ljava/lang/String;

    .line 133
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .parameter "params"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 137
    iget-object v5, p0, Lcom/hf/location/HFLocationManager$2;->val$district:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/hf/location/HFLocationManager$2;->val$cityName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-object v7

    .line 140
    :cond_1
    const/4 v2, 0x0

    .local v2, disStr:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, cityStr:Ljava/lang/String;
    const/4 v4, 0x0

    .line 141
    .local v4, provinceStr:Ljava/lang/String;
    iget-object v5, p0, Lcom/hf/location/HFLocationManager$2;->val$district:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v6, :cond_2

    .line 142
    iget-object v5, p0, Lcom/hf/location/HFLocationManager$2;->val$district:Ljava/lang/String;

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 145
    :cond_2
    iget-object v5, p0, Lcom/hf/location/HFLocationManager$2;->val$cityName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v6, :cond_3

    .line 146
    iget-object v5, p0, Lcom/hf/location/HFLocationManager$2;->val$cityName:Ljava/lang/String;

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 149
    :cond_3
    iget-object v5, p0, Lcom/hf/location/HFLocationManager$2;->val$province:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v6, :cond_4

    .line 150
    iget-object v5, p0, Lcom/hf/location/HFLocationManager$2;->val$province:Ljava/lang/String;

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 152
    :cond_4
    invoke-static {}, Lcom/hf/location/HFLocationManager;->access$4()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f08011e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, channel:Ljava/lang/String;
    const-string v5, "ZTE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    .line 159
    .local v3, isZTE:Z
    if-eqz v3, :cond_5

    .line 160
    iget-object v5, p0, Lcom/hf/location/HFLocationManager$2;->this$0:Lcom/hf/location/HFLocationManager;

    const-string v6, ""

    #calls: Lcom/hf/location/HFLocationManager;->hasCity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hf/model/CityModel;
    invoke-static {v5, v1, v6, v4}, Lcom/hf/location/HFLocationManager;->access$5(Lcom/hf/location/HFLocationManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hf/model/CityModel;

    move-result-object v5

    iput-object v5, p0, Lcom/hf/location/HFLocationManager$2;->city:Lcom/hf/model/CityModel;

    goto :goto_0

    .line 162
    :cond_5
    iget-object v5, p0, Lcom/hf/location/HFLocationManager$2;->this$0:Lcom/hf/location/HFLocationManager;

    #calls: Lcom/hf/location/HFLocationManager;->hasCity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hf/model/CityModel;
    invoke-static {v5, v2, v1, v4}, Lcom/hf/location/HFLocationManager;->access$5(Lcom/hf/location/HFLocationManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hf/model/CityModel;

    move-result-object v5

    iput-object v5, p0, Lcom/hf/location/HFLocationManager$2;->city:Lcom/hf/model/CityModel;

    .line 163
    iget-object v5, p0, Lcom/hf/location/HFLocationManager$2;->city:Lcom/hf/model/CityModel;

    if-nez v5, :cond_6

    .line 164
    iget-object v5, p0, Lcom/hf/location/HFLocationManager$2;->this$0:Lcom/hf/location/HFLocationManager;

    #calls: Lcom/hf/location/HFLocationManager;->hasCity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hf/model/CityModel;
    invoke-static {v5, v2, v7, v4}, Lcom/hf/location/HFLocationManager;->access$5(Lcom/hf/location/HFLocationManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hf/model/CityModel;

    move-result-object v5

    iput-object v5, p0, Lcom/hf/location/HFLocationManager$2;->city:Lcom/hf/model/CityModel;

    .line 166
    :cond_6
    iget-object v5, p0, Lcom/hf/location/HFLocationManager$2;->city:Lcom/hf/model/CityModel;

    if-nez v5, :cond_0

    .line 167
    iget-object v5, p0, Lcom/hf/location/HFLocationManager$2;->this$0:Lcom/hf/location/HFLocationManager;

    #calls: Lcom/hf/location/HFLocationManager;->hasCity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hf/model/CityModel;
    invoke-static {v5, v1, v7, v4}, Lcom/hf/location/HFLocationManager;->access$5(Lcom/hf/location/HFLocationManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hf/model/CityModel;

    move-result-object v5

    iput-object v5, p0, Lcom/hf/location/HFLocationManager$2;->city:Lcom/hf/model/CityModel;

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 176
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lcom/hf/location/HFLocationManager$2;->city:Lcom/hf/model/CityModel;

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/hf/location/HFLocationManager$2;->this$0:Lcom/hf/location/HFLocationManager;

    const/16 v1, 0xc9

    const/4 v2, 0x0

    #calls: Lcom/hf/location/HFLocationManager;->end(ILcom/hf/model/CityModel;)V
    invoke-static {v0, v1, v2}, Lcom/hf/location/HFLocationManager;->access$0(Lcom/hf/location/HFLocationManager;ILcom/hf/model/CityModel;)V

    .line 188
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/hf/location/HFLocationManager$2;->this$0:Lcom/hf/location/HFLocationManager;

    const/16 v1, 0xca

    iget-object v2, p0, Lcom/hf/location/HFLocationManager$2;->city:Lcom/hf/model/CityModel;

    #calls: Lcom/hf/location/HFLocationManager;->end(ILcom/hf/model/CityModel;)V
    invoke-static {v0, v1, v2}, Lcom/hf/location/HFLocationManager;->access$0(Lcom/hf/location/HFLocationManager;ILcom/hf/model/CityModel;)V

    goto :goto_0
.end method
