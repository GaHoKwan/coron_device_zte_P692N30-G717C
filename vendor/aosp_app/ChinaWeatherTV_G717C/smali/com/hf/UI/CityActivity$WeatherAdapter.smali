.class Lcom/hf/UI/CityActivity$WeatherAdapter;
.super Landroid/widget/BaseAdapter;
.source "CityActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hf/UI/CityActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeatherAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hf/UI/CityActivity$WeatherAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/hf/UI/CityActivity;


# direct methods
.method public constructor <init>(Lcom/hf/UI/CityActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 621
    iput-object p1, p0, Lcom/hf/UI/CityActivity$WeatherAdapter;->this$0:Lcom/hf/UI/CityActivity;

    .line 622
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 623
    iput-object p2, p0, Lcom/hf/UI/CityActivity$WeatherAdapter;->mContext:Landroid/content/Context;

    .line 624
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 627
    const/4 v0, 0x0

    .line 628
    .local v0, count:I
    sget-object v1, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    invoke-virtual {v1}, Lcom/hf/UI/CityList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 629
    sget-object v1, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    invoke-virtual {v1}, Lcom/hf/UI/CityList;->size()I

    move-result v0

    .line 631
    :cond_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 635
    sget-object v1, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    invoke-virtual {v1}, Lcom/hf/UI/CityList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 636
    :cond_0
    const/4 v1, 0x0

    .line 644
    :goto_0
    return-object v1

    .line 638
    :cond_1
    sget-object v1, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    invoke-virtual {v1}, Lcom/hf/UI/CityList;->size()I

    move-result v0

    .line 639
    .local v0, len:I
    if-lt p1, v0, :cond_3

    .line 640
    add-int/lit8 p1, v0, -0x1

    .line 644
    :cond_2
    :goto_1
    sget-object v1, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    invoke-virtual {v1, p1}, Lcom/hf/UI/CityList;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 641
    :cond_3
    if-gez p1, :cond_2

    .line 642
    const/4 p1, 0x0

    goto :goto_1
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 648
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 652
    sget-object v14, Lcom/hf/HFWeatherApp;->mWeathersMap:Ljava/util/Map;

    if-eqz v14, :cond_0

    sget-object v14, Lcom/hf/HFWeatherApp;->mWeathersMap:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_1

    :cond_0
    move-object/from16 v3, p2

    .line 728
    .end local p2
    .local v3, convertView:Landroid/view/View;
    :goto_0
    return-object v3

    .line 655
    .end local v3           #convertView:Landroid/view/View;
    .restart local p2
    :cond_1
    const/4 v4, 0x0

    .line 656
    .local v4, holder:Lcom/hf/UI/CityActivity$WeatherAdapter$ViewHolder;
    if-nez p2, :cond_3

    .line 657
    new-instance v4, Lcom/hf/UI/CityActivity$WeatherAdapter$ViewHolder;

    .end local v4           #holder:Lcom/hf/UI/CityActivity$WeatherAdapter$ViewHolder;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v14}, Lcom/hf/UI/CityActivity$WeatherAdapter$ViewHolder;-><init>(Lcom/hf/UI/CityActivity$WeatherAdapter;Lcom/hf/UI/CityActivity$WeatherAdapter$ViewHolder;)V

    .line 658
    .restart local v4       #holder:Lcom/hf/UI/CityActivity$WeatherAdapter$ViewHolder;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/hf/UI/CityActivity$WeatherAdapter;->mContext:Landroid/content/Context;

    invoke-static {v14}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    const v15, 0x7f030006

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 659
    const v14, 0x7f0b0020

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    iput-object v14, v4, Lcom/hf/UI/CityActivity$WeatherAdapter$ViewHolder;->warningImage:Landroid/widget/ImageView;

    .line 660
    const v14, 0x7f0b0022

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    iput-object v14, v4, Lcom/hf/UI/CityActivity$WeatherAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 661
    const v14, 0x7f0b0023

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v4, Lcom/hf/UI/CityActivity$WeatherAdapter$ViewHolder;->temText:Landroid/widget/TextView;

    .line 662
    const v14, 0x7f0b0024

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v4, Lcom/hf/UI/CityActivity$WeatherAdapter$ViewHolder;->wind:Landroid/widget/TextView;

    .line 663
    const v14, 0x7f0b0021

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v4, Lcom/hf/UI/CityActivity$WeatherAdapter$ViewHolder;->cityName:Landroid/widget/TextView;

    .line 664
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 668
    :goto_1
    sget-object v14, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    if-eqz v14, :cond_2

    sget-object v14, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    invoke-virtual {v14}, Lcom/hf/UI/CityList;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_4

    :cond_2
    move-object/from16 v3, p2

    .line 669
    .end local p2
    .restart local v3       #convertView:Landroid/view/View;
    goto :goto_0

    .line 666
    .end local v3           #convertView:Landroid/view/View;
    .restart local p2
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #holder:Lcom/hf/UI/CityActivity$WeatherAdapter$ViewHolder;
    check-cast v4, Lcom/hf/UI/CityActivity$WeatherAdapter$ViewHolder;

    .restart local v4       #holder:Lcom/hf/UI/CityActivity$WeatherAdapter$ViewHolder;
    goto :goto_1

    .line 672
    :cond_4
    sget-object v14, Lcom/hf/HFWeatherApp;->mCityModel:Lcom/hf/UI/CityList;

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/hf/UI/CityList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hf/model/CityModel;

    .line 673
    .local v2, city:Lcom/hf/model/CityModel;
    if-nez v2, :cond_5

    move-object/from16 v3, p2

    .line 674
    .end local p2
    .restart local v3       #convertView:Landroid/view/View;
    goto/16 :goto_0

    .line 676
    .end local v3           #convertView:Landroid/view/View;
    .restart local p2
    :cond_5
    sget-object v14, Lcom/hf/HFWeatherApp;->mWeathersMap:Ljava/util/Map;

    iget-object v15, v2, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/hf/model/WeatherModel;

    .line 678
    .local v12, weatherModel:Lcom/hf/model/WeatherModel;
    if-nez v12, :cond_6

    move-object/from16 v3, p2

    .line 679
    .end local p2
    .restart local v3       #convertView:Landroid/view/View;
    goto/16 :goto_0

    .line 682
    .end local v3           #convertView:Landroid/view/View;
    .restart local p2
    :cond_6
    sget-object v14, Lcom/hf/HFWeatherApp;->mWarningMap:Ljava/util/Map;

    if-nez v14, :cond_b

    .line 683
    iget-object v14, v4, Lcom/hf/UI/CityActivity$WeatherAdapter$ViewHolder;->warningImage:Landroid/widget/ImageView;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 694
    :goto_2
    iget-object v9, v12, Lcom/hf/model/WeatherModel;->skWeather:Lcom/hf/model/SKWeather;

    .line 695
    .local v9, skWeather:Lcom/hf/model/SKWeather;
    const/4 v1, 0x0

    .line 696
    .local v1, cfweather:Lcom/hf/model/CFWeather;
    iget-object v14, v12, Lcom/hf/model/WeatherModel;->weatherList:Ljava/util/List;

    if-eqz v14, :cond_7

    iget-object v14, v12, Lcom/hf/model/WeatherModel;->weatherList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_7

    .line 697
    iget-object v14, v12, Lcom/hf/model/WeatherModel;->weatherList:Ljava/util/List;

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #cfweather:Lcom/hf/model/CFWeather;
    check-cast v1, Lcom/hf/model/CFWeather;

    .line 700
    .restart local v1       #cfweather:Lcom/hf/model/CFWeather;
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/hf/UI/CityActivity$WeatherAdapter;->this$0:Lcom/hf/UI/CityActivity;

    #getter for: Lcom/hf/UI/CityActivity;->mTemperatureType:I
    invoke-static {v14}, Lcom/hf/UI/CityActivity;->access$13(Lcom/hf/UI/CityActivity;)I

    move-result v14

    if-nez v14, :cond_d

    const/4 v6, 0x1

    .line 701
    .local v6, isC:Z
    :goto_3
    const/4 v5, 0x0

    .line 702
    .local v5, imageId:I
    const/4 v10, 0x0

    .line 703
    .local v10, temperature:Ljava/lang/String;
    const/4 v13, 0x0

    .line 705
    .local v13, wind:Ljava/lang/String;
    invoke-static {v9}, Lcom/hf/utils/WeatherUtils;->getSkWeatherImageId(Lcom/hf/model/SKWeather;)I

    move-result v5

    .line 706
    if-nez v5, :cond_8

    .line 707
    invoke-static {v1}, Lcom/hf/utils/WeatherUtils;->getCfWeatherImageId(Lcom/hf/model/CFWeather;)I

    move-result v5

    .line 710
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/hf/UI/CityActivity$WeatherAdapter;->mContext:Landroid/content/Context;

    invoke-static {v14, v9, v6}, Lcom/hf/utils/WeatherUtils;->getSKTemperatureString(Landroid/content/Context;Lcom/hf/model/SKWeather;Z)Ljava/lang/String;

    move-result-object v10

    .line 711
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 712
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/hf/UI/CityActivity$WeatherAdapter;->mContext:Landroid/content/Context;

    invoke-static {v14, v1, v6}, Lcom/hf/utils/WeatherUtils;->getCFTemperatureString(Landroid/content/Context;Lcom/hf/model/CFWeather;Z)Ljava/lang/String;

    move-result-object v10

    .line 715
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/hf/UI/CityActivity$WeatherAdapter;->mContext:Landroid/content/Context;

    invoke-static {v14, v9}, Lcom/hf/utils/WeatherUtils;->getSkWindString(Landroid/content/Context;Lcom/hf/model/SKWeather;)Ljava/lang/String;

    move-result-object v13

    .line 716
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 717
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/hf/UI/CityActivity$WeatherAdapter;->mContext:Landroid/content/Context;

    invoke-static {v14, v1}, Lcom/hf/utils/WeatherUtils;->getCFWindString(Landroid/content/Context;Lcom/hf/model/CFWeather;)Ljava/lang/String;

    move-result-object v13

    .line 720
    :cond_a
    iget-object v14, v4, Lcom/hf/UI/CityActivity$WeatherAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v14, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 721
    iget-object v14, v4, Lcom/hf/UI/CityActivity$WeatherAdapter$ViewHolder;->temText:Landroid/widget/TextView;

    invoke-virtual {v14, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 722
    iget-object v14, v4, Lcom/hf/UI/CityActivity$WeatherAdapter$ViewHolder;->wind:Landroid/widget/TextView;

    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 723
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/hf/UI/CityActivity$WeatherAdapter;->mContext:Landroid/content/Context;

    invoke-static {v14, v2}, Lcom/hf/utils/Util;->getDiaplayName(Landroid/content/Context;Lcom/hf/model/CityModel;)Ljava/lang/String;

    move-result-object v7

    .line 724
    .local v7, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/hf/UI/CityActivity$WeatherAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hf/UI/CityActivity$WeatherAdapter;->this$0:Lcom/hf/UI/CityActivity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/hf/UI/CityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0a001a

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v16

    invoke-static/range {v14 .. v16}, Lcom/hf/utils/Util;->getCityNameSize(Landroid/content/Context;IF)F

    move-result v8

    .line 725
    .local v8, size:F
    iget-object v14, v4, Lcom/hf/UI/CityActivity$WeatherAdapter$ViewHolder;->cityName:Landroid/widget/TextView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 726
    iget-object v14, v4, Lcom/hf/UI/CityActivity$WeatherAdapter$ViewHolder;->cityName:Landroid/widget/TextView;

    invoke-virtual {v14, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v3, p2

    .line 728
    .end local p2
    .restart local v3       #convertView:Landroid/view/View;
    goto/16 :goto_0

    .line 685
    .end local v1           #cfweather:Lcom/hf/model/CFWeather;
    .end local v3           #convertView:Landroid/view/View;
    .end local v5           #imageId:I
    .end local v6           #isC:Z
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #size:F
    .end local v9           #skWeather:Lcom/hf/model/SKWeather;
    .end local v10           #temperature:Ljava/lang/String;
    .end local v13           #wind:Ljava/lang/String;
    .restart local p2
    :cond_b
    sget-object v14, Lcom/hf/HFWeatherApp;->mWarningMap:Ljava/util/Map;

    iget-object v15, v2, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 686
    .local v11, warningList:Ljava/util/List;,"Ljava/util/List<Lcom/hf/model/WarningModel;>;"
    if-eqz v11, :cond_c

    .line 687
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_c

    .line 688
    iget-object v14, v4, Lcom/hf/UI/CityActivity$WeatherAdapter$ViewHolder;->warningImage:Landroid/widget/ImageView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 690
    :cond_c
    iget-object v14, v4, Lcom/hf/UI/CityActivity$WeatherAdapter$ViewHolder;->warningImage:Landroid/widget/ImageView;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 700
    .end local v11           #warningList:Ljava/util/List;,"Ljava/util/List<Lcom/hf/model/WarningModel;>;"
    .restart local v1       #cfweather:Lcom/hf/model/CFWeather;
    .restart local v9       #skWeather:Lcom/hf/model/SKWeather;
    :cond_d
    const/4 v6, 0x0

    goto/16 :goto_3
.end method
