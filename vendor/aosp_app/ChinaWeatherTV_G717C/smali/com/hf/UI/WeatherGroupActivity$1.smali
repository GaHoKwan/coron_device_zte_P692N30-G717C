.class Lcom/hf/UI/WeatherGroupActivity$1;
.super Landroid/os/Handler;
.source "WeatherGroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hf/UI/WeatherGroupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/UI/WeatherGroupActivity;


# direct methods
.method constructor <init>(Lcom/hf/UI/WeatherGroupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/WeatherGroupActivity$1;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    .line 63
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    .line 65
    iget v10, p1, Landroid/os/Message;->what:I

    .line 67
    .local v10, what:I
    packed-switch v10, :pswitch_data_0

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 69
    :pswitch_0
    iget-object v11, p0, Lcom/hf/UI/WeatherGroupActivity$1;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    #calls: Lcom/hf/UI/WeatherGroupActivity;->loadCFViews()V
    invoke-static {v11}, Lcom/hf/UI/WeatherGroupActivity;->access$0(Lcom/hf/UI/WeatherGroupActivity;)V

    goto :goto_0

    .line 72
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "cityID"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, cityId:Ljava/lang/String;
    sget-boolean v11, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v11, :cond_1

    .line 75
    const-string v11, "handleMessage"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "cityId = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_1
    iget-object v11, p0, Lcom/hf/UI/WeatherGroupActivity$1;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    #calls: Lcom/hf/UI/WeatherGroupActivity;->addSKView(Ljava/lang/String;)V
    invoke-static {v11, v2}, Lcom/hf/UI/WeatherGroupActivity;->access$1(Lcom/hf/UI/WeatherGroupActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 80
    .end local v2           #cityId:Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "cityID"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 81
    .local v7, tag:Ljava/lang/String;
    sget-boolean v11, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v11, :cond_2

    .line 82
    const-string v11, "handleMessage"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "delete cityId = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_2
    iget-object v11, p0, Lcom/hf/UI/WeatherGroupActivity$1;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    #calls: Lcom/hf/UI/WeatherGroupActivity;->getSKView(Ljava/lang/String;)Lcom/hf/UI/SKView;
    invoke-static {v11, v7}, Lcom/hf/UI/WeatherGroupActivity;->access$2(Lcom/hf/UI/WeatherGroupActivity;Ljava/lang/String;)Lcom/hf/UI/SKView;

    move-result-object v3

    .line 87
    .local v3, deleteView:Lcom/hf/UI/SKView;
    if-eqz v3, :cond_0

    .line 88
    iget-object v11, p0, Lcom/hf/UI/WeatherGroupActivity$1;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    #getter for: Lcom/hf/UI/WeatherGroupActivity;->mSKViewList:Ljava/util/List;
    invoke-static {v11}, Lcom/hf/UI/WeatherGroupActivity;->access$3(Lcom/hf/UI/WeatherGroupActivity;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 90
    .local v4, index:I
    const/4 v11, -0x1

    if-eq v4, v11, :cond_0

    .line 95
    :try_start_0
    iget-object v11, p0, Lcom/hf/UI/WeatherGroupActivity$1;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    #getter for: Lcom/hf/UI/WeatherGroupActivity;->mSKViewList:Ljava/util/List;
    invoke-static {v11}, Lcom/hf/UI/WeatherGroupActivity;->access$3(Lcom/hf/UI/WeatherGroupActivity;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_1
    sget v11, Lcom/hf/UI/WeatherGroupActivity;->sIndex:I

    if-lt v11, v4, :cond_3

    .line 100
    iget-object v11, p0, Lcom/hf/UI/WeatherGroupActivity$1;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    sget v12, Lcom/hf/UI/WeatherGroupActivity;->sIndex:I

    add-int/lit8 v12, v12, -0x1

    #setter for: Lcom/hf/UI/WeatherGroupActivity;->mSelectIndex:I
    invoke-static {v11, v12}, Lcom/hf/UI/WeatherGroupActivity;->access$4(Lcom/hf/UI/WeatherGroupActivity;I)V

    sput v12, Lcom/hf/UI/WeatherGroupActivity;->sIndex:I

    .line 104
    :cond_3
    sget-boolean v11, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v11, :cond_4

    .line 105
    const-string v11, "handleMessage"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "delete city : index = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "; before sIndex = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget v13, Lcom/hf/UI/WeatherGroupActivity;->sIndex:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "; after sIndex = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget v13, Lcom/hf/UI/WeatherGroupActivity;->sIndex:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_4
    iget-object v11, p0, Lcom/hf/UI/WeatherGroupActivity$1;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    #getter for: Lcom/hf/UI/WeatherGroupActivity;->mSKViewPager:Lcom/hf/UI/HFViewPager;
    invoke-static {v11}, Lcom/hf/UI/WeatherGroupActivity;->access$5(Lcom/hf/UI/WeatherGroupActivity;)Lcom/hf/UI/HFViewPager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/hf/UI/HFViewPager;->removeAllViews()V

    .line 109
    iget-object v11, p0, Lcom/hf/UI/WeatherGroupActivity$1;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    #getter for: Lcom/hf/UI/WeatherGroupActivity;->mSKViewPager:Lcom/hf/UI/HFViewPager;
    invoke-static {v11}, Lcom/hf/UI/WeatherGroupActivity;->access$5(Lcom/hf/UI/WeatherGroupActivity;)Lcom/hf/UI/HFViewPager;

    move-result-object v11

    iget-object v12, p0, Lcom/hf/UI/WeatherGroupActivity$1;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    #getter for: Lcom/hf/UI/WeatherGroupActivity;->mSKAdapter:Lcom/hf/UI/WeatherGroupActivity$SKPagerAdapter;
    invoke-static {v12}, Lcom/hf/UI/WeatherGroupActivity;->access$6(Lcom/hf/UI/WeatherGroupActivity;)Lcom/hf/UI/WeatherGroupActivity$SKPagerAdapter;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/hf/UI/HFViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 110
    iget-object v11, p0, Lcom/hf/UI/WeatherGroupActivity$1;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    #getter for: Lcom/hf/UI/WeatherGroupActivity;->mSKViewPager:Lcom/hf/UI/HFViewPager;
    invoke-static {v11}, Lcom/hf/UI/WeatherGroupActivity;->access$5(Lcom/hf/UI/WeatherGroupActivity;)Lcom/hf/UI/HFViewPager;

    move-result-object v11

    sget v12, Lcom/hf/UI/WeatherGroupActivity;->sIndex:I

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/hf/UI/HFViewPager;->setCurrentItem(IZ)V

    .line 111
    iget-object v11, p0, Lcom/hf/UI/WeatherGroupActivity$1;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    #calls: Lcom/hf/UI/WeatherGroupActivity;->loadCFViews()V
    invoke-static {v11}, Lcom/hf/UI/WeatherGroupActivity;->access$0(Lcom/hf/UI/WeatherGroupActivity;)V

    goto/16 :goto_0

    .line 116
    .end local v3           #deleteView:Lcom/hf/UI/SKView;
    .end local v4           #index:I
    .end local v7           #tag:Ljava/lang/String;
    :pswitch_3
    iget-object v11, p0, Lcom/hf/UI/WeatherGroupActivity$1;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    #calls: Lcom/hf/UI/WeatherGroupActivity;->updateViews()V
    invoke-static {v11}, Lcom/hf/UI/WeatherGroupActivity;->access$7(Lcom/hf/UI/WeatherGroupActivity;)V

    goto/16 :goto_0

    .line 119
    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "cityID"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 120
    .local v8, tag1:Ljava/lang/String;
    sget-boolean v11, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v11, :cond_5

    .line 121
    const-string v11, "WeatherGroupActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "change show city : tag = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_5
    iget-object v11, p0, Lcom/hf/UI/WeatherGroupActivity$1;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    #calls: Lcom/hf/UI/WeatherGroupActivity;->setShowView(Ljava/lang/String;)V
    invoke-static {v11, v8}, Lcom/hf/UI/WeatherGroupActivity;->access$8(Lcom/hf/UI/WeatherGroupActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 127
    .end local v8           #tag1:Ljava/lang/String;
    :pswitch_5
    iget-object v11, p0, Lcom/hf/UI/WeatherGroupActivity$1;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    #calls: Lcom/hf/UI/WeatherGroupActivity;->updateWeather()V
    invoke-static {v11}, Lcom/hf/UI/WeatherGroupActivity;->access$9(Lcom/hf/UI/WeatherGroupActivity;)V

    goto/16 :goto_0

    .line 130
    :pswitch_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "cityID"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, childTag:Ljava/lang/String;
    iget-object v11, p0, Lcom/hf/UI/WeatherGroupActivity$1;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    #calls: Lcom/hf/UI/WeatherGroupActivity;->getSKView(Ljava/lang/String;)Lcom/hf/UI/SKView;
    invoke-static {v11, v0}, Lcom/hf/UI/WeatherGroupActivity;->access$2(Lcom/hf/UI/WeatherGroupActivity;Ljava/lang/String;)Lcom/hf/UI/SKView;

    move-result-object v9

    .line 132
    .local v9, view:Lcom/hf/UI/SKView;
    if-eqz v9, :cond_0

    .line 133
    invoke-virtual {v9}, Lcom/hf/UI/SKView;->setCityName()V

    goto/16 :goto_0

    .line 137
    .end local v0           #childTag:Ljava/lang/String;
    .end local v9           #view:Lcom/hf/UI/SKView;
    :pswitch_7
    iget-object v11, p0, Lcom/hf/UI/WeatherGroupActivity$1;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    #calls: Lcom/hf/UI/WeatherGroupActivity;->initViews()V
    invoke-static {v11}, Lcom/hf/UI/WeatherGroupActivity;->access$10(Lcom/hf/UI/WeatherGroupActivity;)V

    .line 138
    iget-object v11, p0, Lcom/hf/UI/WeatherGroupActivity$1;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    #getter for: Lcom/hf/UI/WeatherGroupActivity;->mSKViewPager:Lcom/hf/UI/HFViewPager;
    invoke-static {v11}, Lcom/hf/UI/WeatherGroupActivity;->access$5(Lcom/hf/UI/WeatherGroupActivity;)Lcom/hf/UI/HFViewPager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/hf/UI/HFViewPager;->removeAllViews()V

    .line 139
    iget-object v11, p0, Lcom/hf/UI/WeatherGroupActivity$1;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    #getter for: Lcom/hf/UI/WeatherGroupActivity;->mSKViewPager:Lcom/hf/UI/HFViewPager;
    invoke-static {v11}, Lcom/hf/UI/WeatherGroupActivity;->access$5(Lcom/hf/UI/WeatherGroupActivity;)Lcom/hf/UI/HFViewPager;

    move-result-object v11

    iget-object v12, p0, Lcom/hf/UI/WeatherGroupActivity$1;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    #getter for: Lcom/hf/UI/WeatherGroupActivity;->mSKAdapter:Lcom/hf/UI/WeatherGroupActivity$SKPagerAdapter;
    invoke-static {v12}, Lcom/hf/UI/WeatherGroupActivity;->access$6(Lcom/hf/UI/WeatherGroupActivity;)Lcom/hf/UI/WeatherGroupActivity$SKPagerAdapter;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/hf/UI/HFViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 140
    iget-object v11, p0, Lcom/hf/UI/WeatherGroupActivity$1;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    const/4 v12, 0x0

    #setter for: Lcom/hf/UI/WeatherGroupActivity;->mSelectIndex:I
    invoke-static {v11, v12}, Lcom/hf/UI/WeatherGroupActivity;->access$4(Lcom/hf/UI/WeatherGroupActivity;I)V

    sput v12, Lcom/hf/UI/WeatherGroupActivity;->sIndex:I

    .line 141
    iget-object v11, p0, Lcom/hf/UI/WeatherGroupActivity$1;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    #getter for: Lcom/hf/UI/WeatherGroupActivity;->mSKViewPager:Lcom/hf/UI/HFViewPager;
    invoke-static {v11}, Lcom/hf/UI/WeatherGroupActivity;->access$5(Lcom/hf/UI/WeatherGroupActivity;)Lcom/hf/UI/HFViewPager;

    move-result-object v11

    sget v12, Lcom/hf/UI/WeatherGroupActivity;->sIndex:I

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/hf/UI/HFViewPager;->setCurrentItem(IZ)V

    goto/16 :goto_0

    .line 144
    :pswitch_8
    iget-object v11, p0, Lcom/hf/UI/WeatherGroupActivity$1;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    #calls: Lcom/hf/UI/WeatherGroupActivity;->changeTemperatureType()V
    invoke-static {v11}, Lcom/hf/UI/WeatherGroupActivity;->access$11(Lcom/hf/UI/WeatherGroupActivity;)V

    goto/16 :goto_0

    .line 147
    :pswitch_9
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "cityID"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, cityID:Ljava/lang/String;
    iget-object v11, p0, Lcom/hf/UI/WeatherGroupActivity$1;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    #calls: Lcom/hf/UI/WeatherGroupActivity;->updateViews(Ljava/lang/String;)V
    invoke-static {v11, v1}, Lcom/hf/UI/WeatherGroupActivity;->access$12(Lcom/hf/UI/WeatherGroupActivity;Ljava/lang/String;)V

    .line 149
    iget-object v11, p0, Lcom/hf/UI/WeatherGroupActivity$1;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    #calls: Lcom/hf/UI/WeatherGroupActivity;->getSKView(Ljava/lang/String;)Lcom/hf/UI/SKView;
    invoke-static {v11, v1}, Lcom/hf/UI/WeatherGroupActivity;->access$2(Lcom/hf/UI/WeatherGroupActivity;Ljava/lang/String;)Lcom/hf/UI/SKView;

    move-result-object v6

    .line 150
    .local v6, skiew:Lcom/hf/UI/SKView;
    if-eqz v6, :cond_0

    .line 151
    const/4 v11, 0x0

    iput-boolean v11, v6, Lcom/hf/UI/SKView;->isQuering:Z

    .line 152
    invoke-virtual {v6}, Lcom/hf/UI/SKView;->endQuery()V

    goto/16 :goto_0

    .line 156
    .end local v1           #cityID:Ljava/lang/String;
    .end local v6           #skiew:Lcom/hf/UI/SKView;
    :pswitch_a
    iget-object v11, p0, Lcom/hf/UI/WeatherGroupActivity$1;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "cityID"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/hf/UI/WeatherGroupActivity;->getSKView(Ljava/lang/String;)Lcom/hf/UI/SKView;
    invoke-static {v11, v12}, Lcom/hf/UI/WeatherGroupActivity;->access$2(Lcom/hf/UI/WeatherGroupActivity;Ljava/lang/String;)Lcom/hf/UI/SKView;

    move-result-object v5

    .line 157
    .local v5, mView:Lcom/hf/UI/SKView;
    if-eqz v5, :cond_0

    .line 158
    invoke-virtual {v5}, Lcom/hf/UI/SKView;->endQuery()V

    goto/16 :goto_0

    .line 163
    .end local v5           #mView:Lcom/hf/UI/SKView;
    :pswitch_b
    iget-object v11, p0, Lcom/hf/UI/WeatherGroupActivity$1;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    #calls: Lcom/hf/UI/WeatherGroupActivity;->initViews()V
    invoke-static {v11}, Lcom/hf/UI/WeatherGroupActivity;->access$10(Lcom/hf/UI/WeatherGroupActivity;)V

    .line 164
    iget-object v11, p0, Lcom/hf/UI/WeatherGroupActivity$1;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    #getter for: Lcom/hf/UI/WeatherGroupActivity;->mSKViewPager:Lcom/hf/UI/HFViewPager;
    invoke-static {v11}, Lcom/hf/UI/WeatherGroupActivity;->access$5(Lcom/hf/UI/WeatherGroupActivity;)Lcom/hf/UI/HFViewPager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/hf/UI/HFViewPager;->removeAllViews()V

    .line 165
    iget-object v11, p0, Lcom/hf/UI/WeatherGroupActivity$1;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    #getter for: Lcom/hf/UI/WeatherGroupActivity;->mSKViewPager:Lcom/hf/UI/HFViewPager;
    invoke-static {v11}, Lcom/hf/UI/WeatherGroupActivity;->access$5(Lcom/hf/UI/WeatherGroupActivity;)Lcom/hf/UI/HFViewPager;

    move-result-object v11

    iget-object v12, p0, Lcom/hf/UI/WeatherGroupActivity$1;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    #getter for: Lcom/hf/UI/WeatherGroupActivity;->mSKAdapter:Lcom/hf/UI/WeatherGroupActivity$SKPagerAdapter;
    invoke-static {v12}, Lcom/hf/UI/WeatherGroupActivity;->access$6(Lcom/hf/UI/WeatherGroupActivity;)Lcom/hf/UI/WeatherGroupActivity$SKPagerAdapter;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/hf/UI/HFViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 166
    iget-object v11, p0, Lcom/hf/UI/WeatherGroupActivity$1;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    const/4 v12, 0x0

    #setter for: Lcom/hf/UI/WeatherGroupActivity;->mSelectIndex:I
    invoke-static {v11, v12}, Lcom/hf/UI/WeatherGroupActivity;->access$4(Lcom/hf/UI/WeatherGroupActivity;I)V

    sput v12, Lcom/hf/UI/WeatherGroupActivity;->sIndex:I

    .line 167
    iget-object v11, p0, Lcom/hf/UI/WeatherGroupActivity$1;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    #getter for: Lcom/hf/UI/WeatherGroupActivity;->mSKViewPager:Lcom/hf/UI/HFViewPager;
    invoke-static {v11}, Lcom/hf/UI/WeatherGroupActivity;->access$5(Lcom/hf/UI/WeatherGroupActivity;)Lcom/hf/UI/HFViewPager;

    move-result-object v11

    sget v12, Lcom/hf/UI/WeatherGroupActivity;->sIndex:I

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/hf/UI/HFViewPager;->setCurrentItem(IZ)V

    .line 169
    iget-object v11, p0, Lcom/hf/UI/WeatherGroupActivity$1;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    invoke-virtual {v11}, Lcom/hf/UI/WeatherGroupActivity;->getParent()Landroid/app/Activity;

    move-result-object v11

    check-cast v11, Lcom/hf/UI/MainActivity;

    invoke-virtual {v11}, Lcom/hf/UI/MainActivity;->closeLoadingWeatherDialog()V

    goto/16 :goto_0

    .line 96
    .restart local v3       #deleteView:Lcom/hf/UI/SKView;
    .restart local v4       #index:I
    .restart local v7       #tag:Ljava/lang/String;
    :catch_0
    move-exception v11

    goto/16 :goto_1

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
