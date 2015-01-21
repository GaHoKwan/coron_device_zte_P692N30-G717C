.class public Lcom/hf/UI/IndicesLayout;
.super Landroid/widget/RelativeLayout;
.source "IndicesLayout.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hf/UI/IndicesLayout$IndicesAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/RelativeLayout;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# static fields
.field static final INDICES_TYPE_KEY:Ljava/lang/String; = "indices_%s"


# instance fields
.field private mCity:Lcom/hf/model/CityModel;

.field private mCityNameTv:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mGridView:Landroid/widget/GridView;

.field private mIndicesAdatper:Lcom/hf/UI/IndicesLayout$IndicesAdapter;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mNoDataLayout:Landroid/widget/LinearLayout;

.field private mSpinner:Landroid/widget/Spinner;

.field private mView:Landroid/view/View;

.field private mWeatherModel:Lcom/hf/model/WeatherModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 53
    iput-object p1, p0, Lcom/hf/UI/IndicesLayout;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/hf/model/CityModel;)V
    .locals 0
    .parameter "context"
    .parameter "city"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 58
    iput-object p1, p0, Lcom/hf/UI/IndicesLayout;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/hf/UI/IndicesLayout;->mCity:Lcom/hf/model/CityModel;

    .line 60
    invoke-direct {p0}, Lcom/hf/UI/IndicesLayout;->initResource()V

    .line 61
    return-void
.end method

.method static synthetic access$0(Lcom/hf/UI/IndicesLayout;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/hf/UI/IndicesLayout;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/hf/UI/IndicesLayout;)Lcom/hf/model/CityModel;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/hf/UI/IndicesLayout;->mCity:Lcom/hf/model/CityModel;

    return-object v0
.end method

.method static synthetic access$2(Lcom/hf/UI/IndicesLayout;)Landroid/widget/Spinner;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/hf/UI/IndicesLayout;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method private getCustomList()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/hf/model/Indices;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 410
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 411
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Lcom/hf/model/Indices;>;"
    iget-object v7, p0, Lcom/hf/UI/IndicesLayout;->mContext:Landroid/content/Context;

    const-string v8, "indices"

    invoke-virtual {v7, v8, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 412
    .local v5, preferences:Landroid/content/SharedPreferences;
    const-string v7, "%s_custom_indices"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/hf/UI/IndicesLayout;->mCity:Lcom/hf/model/CityModel;

    iget-object v9, v9, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    aput-object v9, v8, v6

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "CL;CY;GM;SSD;JT;XC;ZWX;KQWR;"

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 414
    .local v2, indicesStr:Ljava/lang/String;
    sget-boolean v7, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v7, :cond_0

    .line 415
    const-string v7, "changeIndices"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "indicesStr = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_0
    iget-object v7, p0, Lcom/hf/UI/IndicesLayout;->mWeatherModel:Lcom/hf/model/WeatherModel;

    iget-object v7, v7, Lcom/hf/model/WeatherModel;->indicesMap:Ljava/util/Map;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/hf/UI/IndicesLayout;->mWeatherModel:Lcom/hf/model/WeatherModel;

    iget-object v7, v7, Lcom/hf/model/WeatherModel;->indicesMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 419
    :cond_1
    const/4 v4, 0x0

    .line 439
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<Lcom/hf/model/Indices;>;"
    :cond_2
    :goto_0
    return-object v4

    .line 422
    .restart local v4       #list:Ljava/util/List;,"Ljava/util/List<Lcom/hf/model/Indices;>;"
    :cond_3
    const/16 v7, 0x3b

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, customIndices:[Ljava/lang/String;
    array-length v8, v0

    move v7, v6

    :goto_1
    if-lt v7, v8, :cond_4

    .line 435
    sget-boolean v6, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v6, :cond_2

    .line 436
    const-string v6, "changeIndices"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "list.size = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 423
    :cond_4
    aget-object v3, v0, v7

    .line 424
    .local v3, item:Ljava/lang/String;
    sget-boolean v6, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v6, :cond_5

    .line 425
    const-string v6, "changeIndices"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "item = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 428
    iget-object v6, p0, Lcom/hf/UI/IndicesLayout;->mWeatherModel:Lcom/hf/model/WeatherModel;

    iget-object v6, v6, Lcom/hf/model/WeatherModel;->indicesMap:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hf/model/Indices;

    .line 429
    .local v1, indices:Lcom/hf/model/Indices;
    if-eqz v1, :cond_6

    .line 430
    iget-object v6, p0, Lcom/hf/UI/IndicesLayout;->mWeatherModel:Lcom/hf/model/WeatherModel;

    iget-object v6, v6, Lcom/hf/model/WeatherModel;->indicesMap:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/hf/model/Indices;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    .end local v1           #indices:Lcom/hf/model/Indices;
    :cond_6
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_1
.end method

.method private initResource()V
    .locals 4

    .prologue
    .line 65
    iget-object v1, p0, Lcom/hf/UI/IndicesLayout;->mCity:Lcom/hf/model/CityModel;

    if-nez v1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    sget-object v1, Lcom/hf/HFWeatherApp;->mWeathersMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/hf/UI/IndicesLayout;->mCity:Lcom/hf/model/CityModel;

    iget-object v2, v2, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hf/model/WeatherModel;

    iput-object v1, p0, Lcom/hf/UI/IndicesLayout;->mWeatherModel:Lcom/hf/model/WeatherModel;

    .line 69
    iget-object v1, p0, Lcom/hf/UI/IndicesLayout;->mWeatherModel:Lcom/hf/model/WeatherModel;

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/hf/UI/IndicesLayout;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/hf/UI/IndicesLayout;->mInflater:Landroid/view/LayoutInflater;

    .line 74
    iget-object v1, p0, Lcom/hf/UI/IndicesLayout;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030013

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/hf/UI/IndicesLayout;->mView:Landroid/view/View;

    .line 76
    iget-object v1, p0, Lcom/hf/UI/IndicesLayout;->mView:Landroid/view/View;

    const v2, 0x7f0b005e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/hf/UI/IndicesLayout;->mNoDataLayout:Landroid/widget/LinearLayout;

    .line 77
    iget-object v2, p0, Lcom/hf/UI/IndicesLayout;->mNoDataLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/hf/UI/IndicesLayout;->mWeatherModel:Lcom/hf/model/WeatherModel;

    iget-object v1, v1, Lcom/hf/model/WeatherModel;->indicesMap:Ljava/util/Map;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hf/UI/IndicesLayout;->mWeatherModel:Lcom/hf/model/WeatherModel;

    iget-object v1, v1, Lcom/hf/model/WeatherModel;->indicesMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 79
    iget-object v1, p0, Lcom/hf/UI/IndicesLayout;->mView:Landroid/view/View;

    const v2, 0x7f0b005b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/hf/UI/IndicesLayout;->mCityNameTv:Landroid/widget/TextView;

    .line 80
    invoke-virtual {p0}, Lcom/hf/UI/IndicesLayout;->setCityName()V

    .line 82
    iget-object v1, p0, Lcom/hf/UI/IndicesLayout;->mView:Landroid/view/View;

    const v2, 0x7f0b005d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/hf/UI/IndicesLayout;->mGridView:Landroid/widget/GridView;

    .line 83
    new-instance v1, Lcom/hf/UI/IndicesLayout$IndicesAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/hf/UI/IndicesLayout$IndicesAdapter;-><init>(Lcom/hf/UI/IndicesLayout;Lcom/hf/UI/IndicesLayout$IndicesAdapter;)V

    iput-object v1, p0, Lcom/hf/UI/IndicesLayout;->mIndicesAdatper:Lcom/hf/UI/IndicesLayout$IndicesAdapter;

    .line 84
    iget-object v1, p0, Lcom/hf/UI/IndicesLayout;->mGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/hf/UI/IndicesLayout;->mIndicesAdatper:Lcom/hf/UI/IndicesLayout$IndicesAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 85
    iget-object v1, p0, Lcom/hf/UI/IndicesLayout;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 86
    iget-object v1, p0, Lcom/hf/UI/IndicesLayout;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 88
    iget-object v1, p0, Lcom/hf/UI/IndicesLayout;->mView:Landroid/view/View;

    const v2, 0x7f0b005c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/hf/UI/IndicesLayout;->mSpinner:Landroid/widget/Spinner;

    .line 89
    iget-object v1, p0, Lcom/hf/UI/IndicesLayout;->mContext:Landroid/content/Context;

    const/high16 v2, 0x7f07

    const v3, 0x7f030016

    invoke-static {v1, v2, v3}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 90
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 91
    iget-object v1, p0, Lcom/hf/UI/IndicesLayout;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 92
    iget-object v1, p0, Lcom/hf/UI/IndicesLayout;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 93
    invoke-direct {p0}, Lcom/hf/UI/IndicesLayout;->spinerSetSelection()V

    .line 94
    invoke-virtual {p0}, Lcom/hf/UI/IndicesLayout;->changeIndices()V

    goto/16 :goto_0

    .line 77
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :cond_3
    const/16 v1, 0x8

    goto :goto_1
.end method

.method private showContentDialog(Lcom/hf/model/Indices;)V
    .locals 7
    .parameter "indice"

    .prologue
    .line 360
    new-instance v3, Lcom/hf/UI/HFDialog;

    iget-object v4, p0, Lcom/hf/UI/IndicesLayout;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/hf/UI/HFDialog;-><init>(Landroid/content/Context;)V

    .line 361
    .local v3, dialog:Lcom/hf/UI/HFDialog;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/hf/UI/HFDialog;->setCanceledOnTouchOutside(Z)V

    .line 363
    iget-object v4, p0, Lcom/hf/UI/IndicesLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget-object v4, Lcom/hf/UI/IndicesActivity;->mIndicesDesIds:Ljava/util/Map;

    iget-object v6, p1, Lcom/hf/model/Indices;->indicesName:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 364
    .local v2, descriptions:[Ljava/lang/String;
    array-length v0, v2

    .line 365
    .local v0, count:I
    iget v4, p1, Lcom/hf/model/Indices;->indicesCode:I

    add-int/lit8 v5, v0, -0x1

    if-le v4, v5, :cond_0

    iget-object v4, p0, Lcom/hf/UI/IndicesLayout;->mContext:Landroid/content/Context;

    const v5, 0x7f080113

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 367
    .local v1, description:Ljava/lang/String;
    :goto_0
    invoke-virtual {v3, v1}, Lcom/hf/UI/HFDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 368
    invoke-virtual {v3}, Lcom/hf/UI/HFDialog;->show()V

    .line 370
    return-void

    .line 365
    .end local v1           #description:Ljava/lang/String;
    :cond_0
    iget v4, p1, Lcom/hf/model/Indices;->indicesCode:I

    aget-object v1, v2, v4

    goto :goto_0
.end method

.method private showDeleteDialog(Lcom/hf/model/Indices;)V
    .locals 8
    .parameter "indice"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 308
    new-instance v0, Lcom/hf/UI/HFDialog;

    iget-object v1, p0, Lcom/hf/UI/IndicesLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/hf/UI/HFDialog;-><init>(Landroid/content/Context;)V

    .line 309
    .local v0, dialog:Lcom/hf/UI/HFDialog;
    new-array v1, v4, [I

    aput v4, v1, v7

    invoke-virtual {v0, v1}, Lcom/hf/UI/HFDialog;->setStyle([I)V

    .line 310
    invoke-virtual {v0, v4}, Lcom/hf/UI/HFDialog;->setCanceledOnTouchOutside(Z)V

    .line 311
    invoke-virtual {p0}, Lcom/hf/UI/IndicesLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080098

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/hf/UI/IndicesLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget-object v1, Lcom/hf/UI/IndicesActivity;->mIndicesMap:Ljava/util/Map;

    iget-object v6, p1, Lcom/hf/model/Indices;->indicesName:Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hf/UI/HFDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 312
    const v1, 0x104000a

    new-instance v2, Lcom/hf/UI/IndicesLayout$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/hf/UI/IndicesLayout$3;-><init>(Lcom/hf/UI/IndicesLayout;Lcom/hf/model/Indices;Lcom/hf/UI/HFDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/hf/UI/HFDialog;->setPositiveButton(ILandroid/view/View$OnClickListener;)V

    .line 339
    const/high16 v1, 0x104

    new-instance v2, Lcom/hf/UI/IndicesLayout$4;

    invoke-direct {v2, p0, v0}, Lcom/hf/UI/IndicesLayout$4;-><init>(Lcom/hf/UI/IndicesLayout;Lcom/hf/UI/HFDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/hf/UI/HFDialog;->setNegativeButton(ILandroid/view/View$OnClickListener;)V

    .line 349
    :try_start_0
    invoke-virtual {v0}, Lcom/hf/UI/HFDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :goto_0
    return-void

    .line 350
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private spinerSetSelection()V
    .locals 2

    .prologue
    .line 98
    new-instance v0, Lcom/hf/UI/IndicesLayout$1;

    invoke-direct {v0, p0}, Lcom/hf/UI/IndicesLayout$1;-><init>(Lcom/hf/UI/IndicesLayout;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 115
    invoke-virtual {v0, v1}, Lcom/hf/UI/IndicesLayout$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 116
    return-void
.end method


# virtual methods
.method public changeIndices()V
    .locals 3

    .prologue
    .line 377
    iget-object v1, p0, Lcom/hf/UI/IndicesLayout;->mWeatherModel:Lcom/hf/model/WeatherModel;

    if-nez v1, :cond_1

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    iget-object v1, p0, Lcom/hf/UI/IndicesLayout;->mWeatherModel:Lcom/hf/model/WeatherModel;

    iget-object v1, v1, Lcom/hf/model/WeatherModel;->indicesMap:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hf/UI/IndicesLayout;->mWeatherModel:Lcom/hf/model/WeatherModel;

    iget-object v1, v1, Lcom/hf/model/WeatherModel;->indicesMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 385
    iget-object v1, p0, Lcom/hf/UI/IndicesLayout;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 386
    .local v0, position:I
    packed-switch v0, :pswitch_data_0

    .line 402
    :goto_1
    iget-object v1, p0, Lcom/hf/UI/IndicesLayout;->mIndicesAdatper:Lcom/hf/UI/IndicesLayout$IndicesAdapter;

    invoke-virtual {v1}, Lcom/hf/UI/IndicesLayout$IndicesAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 388
    :pswitch_0
    iget-object v1, p0, Lcom/hf/UI/IndicesLayout;->mIndicesAdatper:Lcom/hf/UI/IndicesLayout$IndicesAdapter;

    invoke-direct {p0}, Lcom/hf/UI/IndicesLayout;->getCustomList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hf/UI/IndicesLayout$IndicesAdapter;->setList(Ljava/util/List;)V

    goto :goto_1

    .line 391
    :pswitch_1
    iget-object v1, p0, Lcom/hf/UI/IndicesLayout;->mIndicesAdatper:Lcom/hf/UI/IndicesLayout$IndicesAdapter;

    iget-object v2, p0, Lcom/hf/UI/IndicesLayout;->mWeatherModel:Lcom/hf/model/WeatherModel;

    iget-object v2, v2, Lcom/hf/model/WeatherModel;->healthIndices:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/hf/UI/IndicesLayout$IndicesAdapter;->setList(Ljava/util/List;)V

    goto :goto_1

    .line 394
    :pswitch_2
    iget-object v1, p0, Lcom/hf/UI/IndicesLayout;->mIndicesAdatper:Lcom/hf/UI/IndicesLayout$IndicesAdapter;

    iget-object v2, p0, Lcom/hf/UI/IndicesLayout;->mWeatherModel:Lcom/hf/model/WeatherModel;

    iget-object v2, v2, Lcom/hf/model/WeatherModel;->travelIndices:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/hf/UI/IndicesLayout$IndicesAdapter;->setList(Ljava/util/List;)V

    goto :goto_1

    .line 397
    :pswitch_3
    iget-object v1, p0, Lcom/hf/UI/IndicesLayout;->mIndicesAdatper:Lcom/hf/UI/IndicesLayout$IndicesAdapter;

    iget-object v2, p0, Lcom/hf/UI/IndicesLayout;->mWeatherModel:Lcom/hf/model/WeatherModel;

    iget-object v2, v2, Lcom/hf/model/WeatherModel;->outDoorIndices:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/hf/UI/IndicesLayout$IndicesAdapter;->setList(Ljava/util/List;)V

    goto :goto_1

    .line 386
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 246
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hf/UI/IndicesLayout$IndicesAdapter$ViewHolder;

    .line 248
    .local v0, holder:Lcom/hf/UI/IndicesLayout$IndicesAdapter$ViewHolder;
    if-eqz v0, :cond_1

    .line 249
    iget-object v1, v0, Lcom/hf/UI/IndicesLayout$IndicesAdapter$ViewHolder;->mIndices:Lcom/hf/model/Indices;

    .line 250
    .local v1, indice:Lcom/hf/model/Indices;
    if-eqz v1, :cond_1

    .line 251
    invoke-direct {p0, v1}, Lcom/hf/UI/IndicesLayout;->showContentDialog(Lcom/hf/model/Indices;)V

    .line 263
    .end local v1           #indice:Lcom/hf/model/Indices;
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    iget-object v3, p0, Lcom/hf/UI/IndicesLayout;->mCity:Lcom/hf/model/CityModel;

    if-eqz v3, :cond_0

    .line 257
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/hf/UI/IndicesLayout;->mContext:Landroid/content/Context;

    const-class v4, Lcom/hf/UI/IndicesSelectActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 258
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "cityID"

    iget-object v4, p0, Lcom/hf/UI/IndicesLayout;->mCity:Lcom/hf/model/CityModel;

    iget-object v4, v4, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    iget-object v3, p0, Lcom/hf/UI/IndicesLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 5
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x0

    .line 267
    iget-object v3, p0, Lcom/hf/UI/IndicesLayout;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    .line 268
    .local v2, position:I
    if-eqz v2, :cond_1

    .line 279
    :cond_0
    :goto_0
    return v4

    .line 271
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hf/UI/IndicesLayout$IndicesAdapter$ViewHolder;

    .line 273
    .local v0, holder:Lcom/hf/UI/IndicesLayout$IndicesAdapter$ViewHolder;
    if-eqz v0, :cond_0

    .line 274
    iget-object v1, v0, Lcom/hf/UI/IndicesLayout$IndicesAdapter$ViewHolder;->mIndices:Lcom/hf/model/Indices;

    .line 275
    .local v1, indice:Lcom/hf/model/Indices;
    if-eqz v1, :cond_0

    .line 276
    invoke-direct {p0, v1}, Lcom/hf/UI/IndicesLayout;->showDeleteDialog(Lcom/hf/model/Indices;)V

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "arg1"
    .parameter "position"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/hf/UI/IndicesLayout;->mWeatherModel:Lcom/hf/model/WeatherModel;

    if-nez v0, :cond_0

    .line 301
    :goto_0
    return-void

    .line 288
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hf/UI/IndicesLayout$2;

    invoke-direct {v1, p0, p3}, Lcom/hf/UI/IndicesLayout$2;-><init>(Lcom/hf/UI/IndicesLayout;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 297
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 300
    invoke-virtual {p0}, Lcom/hf/UI/IndicesLayout;->changeIndices()V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 304
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public setCityName()V
    .locals 6

    .prologue
    .line 131
    iget-object v2, p0, Lcom/hf/UI/IndicesLayout;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/hf/UI/IndicesLayout;->mCity:Lcom/hf/model/CityModel;

    invoke-static {v2, v3}, Lcom/hf/utils/Util;->getDiaplayName(Landroid/content/Context;Lcom/hf/model/CityModel;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, name:Ljava/lang/String;
    iget-object v2, p0, Lcom/hf/UI/IndicesLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/hf/UI/IndicesLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0027

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/hf/utils/Util;->getCityNameSize(Landroid/content/Context;IF)F

    move-result v1

    .line 133
    .local v1, size:F
    iget-object v2, p0, Lcom/hf/UI/IndicesLayout;->mCityNameTv:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 134
    iget-object v2, p0, Lcom/hf/UI/IndicesLayout;->mCityNameTv:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    return-void
.end method

.method public updateIndices()V
    .locals 0

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/hf/UI/IndicesLayout;->setCityName()V

    .line 123
    invoke-virtual {p0}, Lcom/hf/UI/IndicesLayout;->changeIndices()V

    .line 124
    return-void
.end method
