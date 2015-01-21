.class public Lcom/hf/UI/SearchCityAdapter;
.super Landroid/widget/CursorAdapter;
.source "SearchCityAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hf/UI/SearchCityAdapter$CityItem;
    }
.end annotation


# static fields
.field public static final COLUMN_CITY_ENGLISH_NAME:I = 0x6

.field public static final COLUMN_CITY_NAME:I = 0x5

.field public static final COLUMN_ENGLISH_NAME:I = 0x4

.field public static final COLUMN_ID:I = 0x1

.field public static final COLUMN_NAME:I = 0x2

.field public static final COLUMN_NATION_ENGLISH_NAME:I = 0xa

.field public static final COLUMN_NATION_NAME:I = 0x9

.field public static final COLUMN_PINYIN:I = 0x3

.field public static final COLUMN_PROVINCE_ENGLISH_NAME:I = 0x8

.field public static final COLUMN_PROVINCE_NAME:I = 0x7

.field public static final QUERY_CITY_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 20
    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 21
    const-string v2, "pinyin"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 22
    const-string v2, "englishName"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 24
    const-string v2, "city_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 25
    const-string v2, "city_englishName"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 27
    const-string v2, "province_name"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 28
    const-string v2, "province_englishName"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 30
    const-string v2, "nation_name"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 31
    const-string v2, "nation_englishName"

    aput-object v2, v0, v1

    .line 19
    sput-object v0, Lcom/hf/UI/SearchCityAdapter;->QUERY_CITY_PROJECTION:[Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "context"
    .parameter "c"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 46
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/hf/UI/SearchCityAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 47
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 19
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 51
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/RelativeLayout;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 52
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hf/UI/SearchCityAdapter$CityItem;

    .line 53
    .local v4, cityItem:Lcom/hf/UI/SearchCityAdapter$CityItem;
    new-instance v17, Lcom/hf/model/CityModel;

    invoke-direct/range {v17 .. v17}, Lcom/hf/model/CityModel;-><init>()V

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/hf/UI/SearchCityAdapter$CityItem;->city:Lcom/hf/model/CityModel;

    .line 54
    iget-object v0, v4, Lcom/hf/UI/SearchCityAdapter$CityItem;->city:Lcom/hf/model/CityModel;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    .line 55
    iget-object v0, v4, Lcom/hf/UI/SearchCityAdapter$CityItem;->city:Lcom/hf/model/CityModel;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/hf/model/CityModel;->cityName:Ljava/lang/String;

    .line 56
    iget-object v0, v4, Lcom/hf/UI/SearchCityAdapter$CityItem;->city:Lcom/hf/model/CityModel;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/hf/model/CityModel;->cityPinyin:Ljava/lang/String;

    .line 57
    iget-object v0, v4, Lcom/hf/UI/SearchCityAdapter$CityItem;->city:Lcom/hf/model/CityModel;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/hf/model/CityModel;->englishName:Ljava/lang/String;

    .line 59
    const/16 v17, 0x5

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 60
    .local v5, cityName:Ljava/lang/String;
    const/16 v17, 0x6

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, cityEnglishName:Ljava/lang/String;
    const/16 v17, 0x7

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 62
    .local v16, provinceName:Ljava/lang/String;
    const/16 v17, 0x8

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 63
    .local v15, provinceEnglishName:Ljava/lang/String;
    const/16 v17, 0x9

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 64
    .local v13, nationName:Ljava/lang/String;
    const/16 v17, 0xa

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 66
    .local v12, nationEnglishName:Ljava/lang/String;
    const-string v7, ""

    .local v7, name1:Ljava/lang/String;
    const-string v8, ""

    .local v8, name2:Ljava/lang/String;
    const-string v9, ""

    .local v9, name3:Ljava/lang/String;
    const-string v10, ""

    .line 67
    .local v10, name4:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/hf/utils/Util;->isChinese(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 68
    iget-object v0, v4, Lcom/hf/UI/SearchCityAdapter$CityItem;->city:Lcom/hf/model/CityModel;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/hf/model/CityModel;->cityName:Ljava/lang/String;

    .line 69
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_1

    const-string v8, ""

    .line 70
    :goto_0
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_2

    const-string v9, ""

    .line 71
    :goto_1
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_4

    const-string v10, ""

    .line 79
    :goto_2
    const v17, 0x7f0b009c

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 80
    .local v6, county:Landroid/widget/TextView;
    const v17, 0x7f0b009d

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 81
    .local v2, city:Landroid/widget/TextView;
    const v17, 0x7f0b009e

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 82
    .local v14, province:Landroid/widget/TextView;
    const v17, 0x7f0b009f

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 84
    .local v11, nation:Landroid/widget/TextView;
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {v14, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    .end local v2           #city:Landroid/widget/TextView;
    .end local v3           #cityEnglishName:Ljava/lang/String;
    .end local v4           #cityItem:Lcom/hf/UI/SearchCityAdapter$CityItem;
    .end local v5           #cityName:Ljava/lang/String;
    .end local v6           #county:Landroid/widget/TextView;
    .end local v7           #name1:Ljava/lang/String;
    .end local v8           #name2:Ljava/lang/String;
    .end local v9           #name3:Ljava/lang/String;
    .end local v10           #name4:Ljava/lang/String;
    .end local v11           #nation:Landroid/widget/TextView;
    .end local v12           #nationEnglishName:Ljava/lang/String;
    .end local v13           #nationName:Ljava/lang/String;
    .end local v14           #province:Landroid/widget/TextView;
    .end local v15           #provinceEnglishName:Ljava/lang/String;
    .end local v16           #provinceName:Ljava/lang/String;
    :cond_0
    return-void

    .line 69
    .restart local v3       #cityEnglishName:Ljava/lang/String;
    .restart local v4       #cityItem:Lcom/hf/UI/SearchCityAdapter$CityItem;
    .restart local v5       #cityName:Ljava/lang/String;
    .restart local v7       #name1:Ljava/lang/String;
    .restart local v8       #name2:Ljava/lang/String;
    .restart local v9       #name3:Ljava/lang/String;
    .restart local v10       #name4:Ljava/lang/String;
    .restart local v12       #nationEnglishName:Ljava/lang/String;
    .restart local v13       #nationName:Ljava/lang/String;
    .restart local v15       #provinceEnglishName:Ljava/lang/String;
    .restart local v16       #provinceName:Ljava/lang/String;
    :cond_1
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "-"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 70
    :cond_2
    move-object/from16 v0, v16

    invoke-static {v7, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_3

    const-string v9, ""

    goto :goto_1

    :cond_3
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "-"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 71
    :cond_4
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "-"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    .line 73
    :cond_5
    iget-object v0, v4, Lcom/hf/UI/SearchCityAdapter$CityItem;->city:Lcom/hf/model/CityModel;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/hf/model/CityModel;->englishName:Ljava/lang/String;

    .line 74
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_6

    const-string v8, ""

    .line 75
    :goto_3
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_7

    const-string v9, ""

    .line 76
    :goto_4
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_9

    const-string v10, ""

    :goto_5
    goto/16 :goto_2

    .line 74
    :cond_6
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "-"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 75
    :cond_7
    invoke-static {v7, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_8

    const-string v9, ""

    goto :goto_4

    :cond_8
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "-"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    .line 76
    :cond_9
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "-"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_5
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 93
    iget-object v2, p0, Lcom/hf/UI/SearchCityAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030023

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 94
    .local v1, view:Landroid/view/View;
    new-instance v0, Lcom/hf/UI/SearchCityAdapter$CityItem;

    invoke-direct {v0, p0}, Lcom/hf/UI/SearchCityAdapter$CityItem;-><init>(Lcom/hf/UI/SearchCityAdapter;)V

    .line 95
    .local v0, cityItem:Lcom/hf/UI/SearchCityAdapter$CityItem;
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 96
    return-object v1
.end method
