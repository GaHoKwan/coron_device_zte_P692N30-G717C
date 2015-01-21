.class Lcom/hf/UI/MainActivity$1;
.super Landroid/os/Handler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hf/UI/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/UI/MainActivity;


# direct methods
.method constructor <init>(Lcom/hf/UI/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/MainActivity$1;->this$0:Lcom/hf/UI/MainActivity;

    .line 123
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    .line 125
    iget v2, p1, Landroid/os/Message;->what:I

    .line 127
    .local v2, what:I
    sparse-switch v2, :sswitch_data_0

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 129
    :sswitch_0
    iget-object v3, p0, Lcom/hf/UI/MainActivity$1;->this$0:Lcom/hf/UI/MainActivity;

    #getter for: Lcom/hf/UI/MainActivity;->mHost:Landroid/widget/TabHost;
    invoke-static {v3}, Lcom/hf/UI/MainActivity;->access$0(Lcom/hf/UI/MainActivity;)Landroid/widget/TabHost;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_0

    .line 132
    :sswitch_1
    iget-object v3, p0, Lcom/hf/UI/MainActivity$1;->this$0:Lcom/hf/UI/MainActivity;

    #getter for: Lcom/hf/UI/MainActivity;->mBgView:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/hf/UI/MainActivity;->access$1(Lcom/hf/UI/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/hf/UI/MainActivity$1;->this$0:Lcom/hf/UI/MainActivity;

    invoke-static {v3, v4}, Lcom/hf/utils/Util;->setRootViewBackground(Landroid/view/View;Landroid/content/Context;)V

    goto :goto_0

    .line 135
    :sswitch_2
    iget-object v3, p0, Lcom/hf/UI/MainActivity$1;->this$0:Lcom/hf/UI/MainActivity;

    #getter for: Lcom/hf/UI/MainActivity;->mRefreshButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/hf/UI/MainActivity;->access$2(Lcom/hf/UI/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 136
    iget-object v3, p0, Lcom/hf/UI/MainActivity$1;->this$0:Lcom/hf/UI/MainActivity;

    #getter for: Lcom/hf/UI/MainActivity;->mRefreshButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/hf/UI/MainActivity;->access$2(Lcom/hf/UI/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageButton;->clearAnimation()V

    goto :goto_0

    .line 139
    :sswitch_3
    iget-object v3, p0, Lcom/hf/UI/MainActivity$1;->this$0:Lcom/hf/UI/MainActivity;

    #getter for: Lcom/hf/UI/MainActivity;->mLocationManager:Lcom/hf/location/HFLocationManager;
    invoke-static {v3}, Lcom/hf/UI/MainActivity;->access$3(Lcom/hf/UI/MainActivity;)Lcom/hf/location/HFLocationManager;

    move-result-object v3

    iget-object v4, p0, Lcom/hf/UI/MainActivity$1;->this$0:Lcom/hf/UI/MainActivity;

    invoke-virtual {v3, v4, v5}, Lcom/hf/location/HFLocationManager;->start(Lcom/hf/location/HFLocationListener;Z)V

    goto :goto_0

    .line 143
    :sswitch_4
    iget-object v3, p0, Lcom/hf/UI/MainActivity$1;->this$0:Lcom/hf/UI/MainActivity;

    #getter for: Lcom/hf/UI/MainActivity;->isLocationClicked:Z
    invoke-static {v3}, Lcom/hf/UI/MainActivity;->access$4(Lcom/hf/UI/MainActivity;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 147
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/hf/model/CityModel;

    .line 148
    .local v0, city:Lcom/hf/model/CityModel;
    const/4 v1, 0x0

    .line 149
    .local v1, isNew:Z
    iget-object v3, p0, Lcom/hf/UI/MainActivity$1;->this$0:Lcom/hf/UI/MainActivity;

    invoke-virtual {v3}, Lcom/hf/UI/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/hf/HFWeatherApp;

    .line 150
    iget-object v4, v0, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/hf/HFWeatherApp;->getCityByCtiyId(Ljava/lang/String;)Lcom/hf/model/CityModel;

    move-result-object v3

    .line 149
    if-eqz v3, :cond_1

    .line 151
    sget-object v3, Lcom/hf/HFWeatherApp;->mWeathersMap:Ljava/util/Map;

    iget-object v4, v0, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 152
    :cond_1
    const/4 v1, 0x1

    .line 154
    :try_start_0
    iget-object v3, p0, Lcom/hf/UI/MainActivity$1;->this$0:Lcom/hf/UI/MainActivity;

    #calls: Lcom/hf/UI/MainActivity;->showLoctionResultDialog(Lcom/hf/model/CityModel;Z)V
    invoke-static {v3, v0, v1}, Lcom/hf/UI/MainActivity;->access$5(Lcom/hf/UI/MainActivity;Lcom/hf/model/CityModel;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 155
    :catch_0
    move-exception v3

    goto :goto_0

    .line 162
    .end local v0           #city:Lcom/hf/model/CityModel;
    .end local v1           #isNew:Z
    :sswitch_5
    :try_start_1
    iget-object v3, p0, Lcom/hf/UI/MainActivity$1;->this$0:Lcom/hf/UI/MainActivity;

    const/16 v4, 0x3e9

    invoke-virtual {v3, v4}, Lcom/hf/UI/MainActivity;->dismissDialog(I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    .line 165
    :goto_1
    invoke-static {}, Lcom/hf/http/WeatherNet;->getInstance()Lcom/hf/http/WeatherNet;

    move-result-object v3

    iget-boolean v3, v3, Lcom/hf/http/WeatherNet;->mCancle:Z

    if-nez v3, :cond_2

    .line 166
    iget-object v3, p0, Lcom/hf/UI/MainActivity$1;->this$0:Lcom/hf/UI/MainActivity;

    .line 167
    const v4, 0x7f080040

    .line 166
    invoke-static {v3, v4}, Lcom/hf/utils/ToastUtil;->getToast(Landroid/content/Context;I)Landroid/widget/Toast;

    move-result-object v3

    .line 167
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 169
    :cond_2
    iget-object v3, p0, Lcom/hf/UI/MainActivity$1;->this$0:Lcom/hf/UI/MainActivity;

    #getter for: Lcom/hf/UI/MainActivity;->mRefreshButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/hf/UI/MainActivity;->access$2(Lcom/hf/UI/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 170
    iget-object v3, p0, Lcom/hf/UI/MainActivity$1;->this$0:Lcom/hf/UI/MainActivity;

    #getter for: Lcom/hf/UI/MainActivity;->mRefreshButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/hf/UI/MainActivity;->access$2(Lcom/hf/UI/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 171
    iget-object v3, p0, Lcom/hf/UI/MainActivity$1;->this$0:Lcom/hf/UI/MainActivity;

    #getter for: Lcom/hf/UI/MainActivity;->mRefreshButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/hf/UI/MainActivity;->access$2(Lcom/hf/UI/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageButton;->clearAnimation()V

    goto/16 :goto_0

    .line 176
    :sswitch_6
    :try_start_2
    iget-object v3, p0, Lcom/hf/UI/MainActivity$1;->this$0:Lcom/hf/UI/MainActivity;

    const/16 v4, 0x3e9

    invoke-virtual {v3, v4}, Lcom/hf/UI/MainActivity;->dismissDialog(I)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 179
    :goto_2
    iget-object v3, p0, Lcom/hf/UI/MainActivity$1;->this$0:Lcom/hf/UI/MainActivity;

    #getter for: Lcom/hf/UI/MainActivity;->mRefreshButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/hf/UI/MainActivity;->access$2(Lcom/hf/UI/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 180
    iget-object v3, p0, Lcom/hf/UI/MainActivity$1;->this$0:Lcom/hf/UI/MainActivity;

    #getter for: Lcom/hf/UI/MainActivity;->mRefreshButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/hf/UI/MainActivity;->access$2(Lcom/hf/UI/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 181
    iget-object v3, p0, Lcom/hf/UI/MainActivity$1;->this$0:Lcom/hf/UI/MainActivity;

    #getter for: Lcom/hf/UI/MainActivity;->mRefreshButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/hf/UI/MainActivity;->access$2(Lcom/hf/UI/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageButton;->clearAnimation()V

    goto/16 :goto_0

    .line 186
    :sswitch_7
    :try_start_3
    iget-object v3, p0, Lcom/hf/UI/MainActivity$1;->this$0:Lcom/hf/UI/MainActivity;

    const/16 v4, 0x3e9

    invoke-virtual {v3, v4}, Lcom/hf/UI/MainActivity;->dismissDialog(I)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 187
    :catch_1
    move-exception v3

    goto/16 :goto_0

    .line 177
    :catch_2
    move-exception v3

    goto :goto_2

    .line 163
    :catch_3
    move-exception v3

    goto :goto_1

    .line 127
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x5 -> :sswitch_5
        0x7 -> :sswitch_7
        0x8 -> :sswitch_6
        0xc8 -> :sswitch_3
        0xca -> :sswitch_4
    .end sparse-switch
.end method
