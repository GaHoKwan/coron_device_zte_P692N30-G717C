.class Lcom/hf/UI/CityActivity$1;
.super Landroid/os/Handler;
.source "CityActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hf/UI/CityActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/UI/CityActivity;


# direct methods
.method constructor <init>(Lcom/hf/UI/CityActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/CityActivity$1;->this$0:Lcom/hf/UI/CityActivity;

    .line 124
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const/16 v2, 0x3ea

    .line 126
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 128
    :sswitch_0
    iget-object v1, p0, Lcom/hf/UI/CityActivity$1;->this$0:Lcom/hf/UI/CityActivity;

    #getter for: Lcom/hf/UI/CityActivity;->mWeatherLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/hf/UI/CityActivity;->access$0(Lcom/hf/UI/CityActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 129
    iget-object v1, p0, Lcom/hf/UI/CityActivity$1;->this$0:Lcom/hf/UI/CityActivity;

    #getter for: Lcom/hf/UI/CityActivity;->mSearchListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/hf/UI/CityActivity;->access$1(Lcom/hf/UI/CityActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 130
    iget-object v1, p0, Lcom/hf/UI/CityActivity$1;->this$0:Lcom/hf/UI/CityActivity;

    #calls: Lcom/hf/UI/CityActivity;->openSoftInput()V
    invoke-static {v1}, Lcom/hf/UI/CityActivity;->access$2(Lcom/hf/UI/CityActivity;)V

    goto :goto_0

    .line 134
    :sswitch_1
    iget-object v1, p0, Lcom/hf/UI/CityActivity$1;->this$0:Lcom/hf/UI/CityActivity;

    #getter for: Lcom/hf/UI/CityActivity;->mWeatherLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/hf/UI/CityActivity;->access$0(Lcom/hf/UI/CityActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 135
    iget-object v1, p0, Lcom/hf/UI/CityActivity$1;->this$0:Lcom/hf/UI/CityActivity;

    #getter for: Lcom/hf/UI/CityActivity;->mSearchListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/hf/UI/CityActivity;->access$1(Lcom/hf/UI/CityActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 136
    iget-object v1, p0, Lcom/hf/UI/CityActivity$1;->this$0:Lcom/hf/UI/CityActivity;

    #calls: Lcom/hf/UI/CityActivity;->hideSoftInput()V
    invoke-static {v1}, Lcom/hf/UI/CityActivity;->access$3(Lcom/hf/UI/CityActivity;)V

    goto :goto_0

    .line 139
    :sswitch_2
    iget-object v1, p0, Lcom/hf/UI/CityActivity$1;->this$0:Lcom/hf/UI/CityActivity;

    #getter for: Lcom/hf/UI/CityActivity;->mSearchAdapter:Lcom/hf/UI/SearchCityAdapter;
    invoke-static {v1}, Lcom/hf/UI/CityActivity;->access$4(Lcom/hf/UI/CityActivity;)Lcom/hf/UI/SearchCityAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hf/UI/SearchCityAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 142
    :sswitch_3
    iget-object v1, p0, Lcom/hf/UI/CityActivity$1;->this$0:Lcom/hf/UI/CityActivity;

    #calls: Lcom/hf/UI/CityActivity;->setDefCityWeather()V
    invoke-static {v1}, Lcom/hf/UI/CityActivity;->access$5(Lcom/hf/UI/CityActivity;)V

    .line 143
    iget-object v1, p0, Lcom/hf/UI/CityActivity$1;->this$0:Lcom/hf/UI/CityActivity;

    #getter for: Lcom/hf/UI/CityActivity;->mWeatherAdapter:Lcom/hf/UI/CityActivity$WeatherAdapter;
    invoke-static {v1}, Lcom/hf/UI/CityActivity;->access$6(Lcom/hf/UI/CityActivity;)Lcom/hf/UI/CityActivity$WeatherAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hf/UI/CityActivity$WeatherAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 146
    :sswitch_4
    iget-object v1, p0, Lcom/hf/UI/CityActivity$1;->this$0:Lcom/hf/UI/CityActivity;

    #calls: Lcom/hf/UI/CityActivity;->initTemperatureType()V
    invoke-static {v1}, Lcom/hf/UI/CityActivity;->access$7(Lcom/hf/UI/CityActivity;)V

    goto :goto_0

    .line 149
    :sswitch_5
    iget-object v1, p0, Lcom/hf/UI/CityActivity$1;->this$0:Lcom/hf/UI/CityActivity;

    #calls: Lcom/hf/UI/CityActivity;->setDefCityWeather()V
    invoke-static {v1}, Lcom/hf/UI/CityActivity;->access$5(Lcom/hf/UI/CityActivity;)V

    .line 150
    iget-object v1, p0, Lcom/hf/UI/CityActivity$1;->this$0:Lcom/hf/UI/CityActivity;

    #getter for: Lcom/hf/UI/CityActivity;->mWeatherAdapter:Lcom/hf/UI/CityActivity$WeatherAdapter;
    invoke-static {v1}, Lcom/hf/UI/CityActivity;->access$6(Lcom/hf/UI/CityActivity;)Lcom/hf/UI/CityActivity$WeatherAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hf/UI/CityActivity$WeatherAdapter;->notifyDataSetChanged()V

    .line 152
    iget-object v1, p0, Lcom/hf/UI/CityActivity$1;->this$0:Lcom/hf/UI/CityActivity;

    #getter for: Lcom/hf/UI/CityActivity;->mSearchEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/hf/UI/CityActivity;->access$8(Lcom/hf/UI/CityActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/hf/UI/CityActivity$1;->this$0:Lcom/hf/UI/CityActivity;

    #getter for: Lcom/hf/UI/CityActivity;->mSearchEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/hf/UI/CityActivity;->access$8(Lcom/hf/UI/CityActivity;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 158
    :sswitch_6
    iget-object v1, p0, Lcom/hf/UI/CityActivity$1;->this$0:Lcom/hf/UI/CityActivity;

    invoke-virtual {v1, v2}, Lcom/hf/UI/CityActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 162
    :sswitch_7
    :try_start_0
    iget-object v1, p0, Lcom/hf/UI/CityActivity$1;->this$0:Lcom/hf/UI/CityActivity;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Lcom/hf/UI/CityActivity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 165
    :goto_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/hf/model/CityModel;

    .line 166
    .local v0, city:Lcom/hf/model/CityModel;
    if-eqz v0, :cond_0

    .line 169
    iget-object v1, p0, Lcom/hf/UI/CityActivity$1;->this$0:Lcom/hf/UI/CityActivity;

    #calls: Lcom/hf/UI/CityActivity;->showHttpDialog(Lcom/hf/model/CityModel;)V
    invoke-static {v1, v0}, Lcom/hf/UI/CityActivity;->access$9(Lcom/hf/UI/CityActivity;Lcom/hf/model/CityModel;)V

    goto/16 :goto_0

    .line 173
    .end local v0           #city:Lcom/hf/model/CityModel;
    :sswitch_8
    :try_start_1
    iget-object v1, p0, Lcom/hf/UI/CityActivity$1;->this$0:Lcom/hf/UI/CityActivity;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Lcom/hf/UI/CityActivity;->dismissDialog(I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 176
    :goto_2
    iget-object v1, p0, Lcom/hf/UI/CityActivity$1;->this$0:Lcom/hf/UI/CityActivity;

    const v2, 0x7f08004a

    invoke-static {v1, v2}, Lcom/hf/utils/ToastUtil;->getToast(Landroid/content/Context;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 180
    :sswitch_9
    :try_start_2
    iget-object v1, p0, Lcom/hf/UI/CityActivity$1;->this$0:Lcom/hf/UI/CityActivity;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Lcom/hf/UI/CityActivity;->dismissDialog(I)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 181
    :catch_0
    move-exception v1

    goto/16 :goto_0

    .line 185
    :sswitch_a
    iget-object v1, p0, Lcom/hf/UI/CityActivity$1;->this$0:Lcom/hf/UI/CityActivity;

    #getter for: Lcom/hf/UI/CityActivity;->mSearchEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/hf/UI/CityActivity;->access$8(Lcom/hf/UI/CityActivity;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 186
    iget-object v1, p0, Lcom/hf/UI/CityActivity$1;->this$0:Lcom/hf/UI/CityActivity;

    #getter for: Lcom/hf/UI/CityActivity;->mSearchEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/hf/UI/CityActivity;->access$8(Lcom/hf/UI/CityActivity;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 189
    :cond_1
    iget-object v1, p0, Lcom/hf/UI/CityActivity$1;->this$0:Lcom/hf/UI/CityActivity;

    #calls: Lcom/hf/UI/CityActivity;->setDefCityWeather()V
    invoke-static {v1}, Lcom/hf/UI/CityActivity;->access$5(Lcom/hf/UI/CityActivity;)V

    .line 190
    iget-object v1, p0, Lcom/hf/UI/CityActivity$1;->this$0:Lcom/hf/UI/CityActivity;

    #getter for: Lcom/hf/UI/CityActivity;->mWeatherAdapter:Lcom/hf/UI/CityActivity$WeatherAdapter;
    invoke-static {v1}, Lcom/hf/UI/CityActivity;->access$6(Lcom/hf/UI/CityActivity;)Lcom/hf/UI/CityActivity$WeatherAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hf/UI/CityActivity$WeatherAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 194
    :sswitch_b
    iget-object v1, p0, Lcom/hf/UI/CityActivity$1;->this$0:Lcom/hf/UI/CityActivity;

    #calls: Lcom/hf/UI/CityActivity;->showGuide()V
    invoke-static {v1}, Lcom/hf/UI/CityActivity;->access$10(Lcom/hf/UI/CityActivity;)V

    goto/16 :goto_0

    .line 197
    :sswitch_c
    iget-object v1, p0, Lcom/hf/UI/CityActivity$1;->this$0:Lcom/hf/UI/CityActivity;

    #calls: Lcom/hf/UI/CityActivity;->setDefCityWeather()V
    invoke-static {v1}, Lcom/hf/UI/CityActivity;->access$5(Lcom/hf/UI/CityActivity;)V

    .line 198
    iget-object v1, p0, Lcom/hf/UI/CityActivity$1;->this$0:Lcom/hf/UI/CityActivity;

    #getter for: Lcom/hf/UI/CityActivity;->mWeatherAdapter:Lcom/hf/UI/CityActivity$WeatherAdapter;
    invoke-static {v1}, Lcom/hf/UI/CityActivity;->access$6(Lcom/hf/UI/CityActivity;)Lcom/hf/UI/CityActivity$WeatherAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hf/UI/CityActivity$WeatherAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 174
    :catch_1
    move-exception v1

    goto :goto_2

    .line 163
    :catch_2
    move-exception v1

    goto :goto_1

    .line 126
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_9
        0xc8 -> :sswitch_6
        0xc9 -> :sswitch_8
        0xca -> :sswitch_7
        0x3e8 -> :sswitch_2
        0x3e9 -> :sswitch_0
        0x3ea -> :sswitch_1
        0x3eb -> :sswitch_3
        0x3ec -> :sswitch_5
        0x3f0 -> :sswitch_a
        0x3f2 -> :sswitch_b
        0x3f3 -> :sswitch_4
        0x3f4 -> :sswitch_c
    .end sparse-switch
.end method
