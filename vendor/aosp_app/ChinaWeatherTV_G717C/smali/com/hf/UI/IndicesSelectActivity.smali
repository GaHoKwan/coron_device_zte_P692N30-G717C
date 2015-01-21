.class public Lcom/hf/UI/IndicesSelectActivity;
.super Landroid/app/Activity;
.source "IndicesSelectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hf/UI/IndicesSelectActivity$IndicesItemAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field public static final DEFAULT:Ljava/lang/String; = "CL;CY;GM;SSD;JT;XC;ZWX;KQWR;"

.field static final INDICES_SPLIT_CHAR:C = ';'

.field private static final MAX_SIZE:I = 0x9

.field private static final TAG:Ljava/lang/String; = "IndicesSelectActivity"


# instance fields
.field private mAdapter:Lcom/hf/UI/IndicesSelectActivity$IndicesItemAdapter;

.field private mCityId:Ljava/lang/String;

.field private mGridView:Landroid/widget/GridView;

.field private mIndices:Ljava/lang/String;

.field private mIndicesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectList:[Ljava/lang/String;

.field private mWeatherModel:Lcom/hf/model/WeatherModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/hf/UI/IndicesSelectActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/hf/UI/IndicesSelectActivity;->mIndicesList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/hf/UI/IndicesSelectActivity;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/hf/UI/IndicesSelectActivity;->mSelectList:[Ljava/lang/String;

    return-object v0
.end method

.method private initIndices()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 110
    iget-object v1, p0, Lcom/hf/UI/IndicesSelectActivity;->mIndicesList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/hf/UI/IndicesSelectActivity;->mIndicesList:Ljava/util/List;

    .line 112
    iget-object v1, p0, Lcom/hf/UI/IndicesSelectActivity;->mIndicesList:Ljava/util/List;

    const-string v2, "CL"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v1, p0, Lcom/hf/UI/IndicesSelectActivity;->mIndicesList:Ljava/util/List;

    const-string v2, "CY"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v1, p0, Lcom/hf/UI/IndicesSelectActivity;->mIndicesList:Ljava/util/List;

    const-string v2, "DY"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v1, p0, Lcom/hf/UI/IndicesSelectActivity;->mIndicesList:Ljava/util/List;

    const-string v2, "FFZ"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v1, p0, Lcom/hf/UI/IndicesSelectActivity;->mIndicesList:Ljava/util/List;

    const-string v2, "FS"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v1, p0, Lcom/hf/UI/IndicesSelectActivity;->mIndicesList:Ljava/util/List;

    const-string v2, "FH"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v1, p0, Lcom/hf/UI/IndicesSelectActivity;->mIndicesList:Ljava/util/List;

    const-string v2, "GM"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v1, p0, Lcom/hf/UI/IndicesSelectActivity;->mIndicesList:Ljava/util/List;

    const-string v2, "GJ"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v1, p0, Lcom/hf/UI/IndicesSelectActivity;->mIndicesList:Ljava/util/List;

    const-string v2, "HC"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v1, p0, Lcom/hf/UI/IndicesSelectActivity;->mIndicesList:Ljava/util/List;

    const-string v2, "HZ"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v1, p0, Lcom/hf/UI/IndicesSelectActivity;->mIndicesList:Ljava/util/List;

    const-string v2, "JT"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v1, p0, Lcom/hf/UI/IndicesSelectActivity;->mIndicesList:Ljava/util/List;

    const-string v2, "KQWR"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v1, p0, Lcom/hf/UI/IndicesSelectActivity;->mIndicesList:Ljava/util/List;

    const-string v2, "KT"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v1, p0, Lcom/hf/UI/IndicesSelectActivity;->mIndicesList:Ljava/util/List;

    const-string v2, "LS"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v1, p0, Lcom/hf/UI/IndicesSelectActivity;->mIndicesList:Ljava/util/List;

    const-string v2, "LK"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v1, p0, Lcom/hf/UI/IndicesSelectActivity;->mIndicesList:Ljava/util/List;

    const-string v2, "LY"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v1, p0, Lcom/hf/UI/IndicesSelectActivity;->mIndicesList:Ljava/util/List;

    const-string v2, "MF"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v1, p0, Lcom/hf/UI/IndicesSelectActivity;->mIndicesList:Ljava/util/List;

    const-string v2, "PJ"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v1, p0, Lcom/hf/UI/IndicesSelectActivity;->mIndicesList:Ljava/util/List;

    const-string v2, "SSD"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v1, p0, Lcom/hf/UI/IndicesSelectActivity;->mIndicesList:Ljava/util/List;

    const-string v2, "XC"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v1, p0, Lcom/hf/UI/IndicesSelectActivity;->mIndicesList:Ljava/util/List;

    const-string v2, "XQ"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v1, p0, Lcom/hf/UI/IndicesSelectActivity;->mIndicesList:Ljava/util/List;

    const-string v2, "YSH"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v1, p0, Lcom/hf/UI/IndicesSelectActivity;->mIndicesList:Ljava/util/List;

    const-string v2, "YS"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v1, p0, Lcom/hf/UI/IndicesSelectActivity;->mIndicesList:Ljava/util/List;

    const-string v2, "YH"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v1, p0, Lcom/hf/UI/IndicesSelectActivity;->mIndicesList:Ljava/util/List;

    const-string v2, "YD"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v1, p0, Lcom/hf/UI/IndicesSelectActivity;->mIndicesList:Ljava/util/List;

    const-string v2, "ZS"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v1, p0, Lcom/hf/UI/IndicesSelectActivity;->mIndicesList:Ljava/util/List;

    const-string v2, "ZWX"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_0
    sget-object v1, Lcom/hf/HFWeatherApp;->mWeathersMap:Ljava/util/Map;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/hf/HFWeatherApp;->mWeathersMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 163
    :cond_1
    :goto_0
    return-void

    .line 144
    :cond_2
    sget-object v1, Lcom/hf/HFWeatherApp;->mWeathersMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/hf/UI/IndicesSelectActivity;->mCityId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hf/model/WeatherModel;

    iput-object v1, p0, Lcom/hf/UI/IndicesSelectActivity;->mWeatherModel:Lcom/hf/model/WeatherModel;

    .line 145
    iget-object v1, p0, Lcom/hf/UI/IndicesSelectActivity;->mWeatherModel:Lcom/hf/model/WeatherModel;

    if-eqz v1, :cond_1

    .line 155
    const-string v1, "indices"

    invoke-virtual {p0, v1, v4}, Lcom/hf/UI/IndicesSelectActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 156
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v1, "%s_custom_indices"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/hf/UI/IndicesSelectActivity;->mCityId:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CL;CY;GM;SSD;JT;XC;ZWX;KQWR;"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hf/UI/IndicesSelectActivity;->mIndices:Ljava/lang/String;

    .line 158
    :try_start_0
    iget-object v1, p0, Lcom/hf/UI/IndicesSelectActivity;->mIndices:Ljava/lang/String;

    const/16 v2, 0x3b

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hf/UI/IndicesSelectActivity;->mSelectList:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_1
    const-string v1, "IndicesSelectActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hf/UI/IndicesSelectActivity;->mIndices:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "; mSelectList = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/hf/UI/IndicesSelectActivity;->mSelectList:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 159
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private initResource()V
    .locals 2

    .prologue
    .line 189
    const v0, 0x7f0b0065

    invoke-virtual {p0, v0}, Lcom/hf/UI/IndicesSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/hf/UI/IndicesSelectActivity;->mGridView:Landroid/widget/GridView;

    .line 190
    new-instance v0, Lcom/hf/UI/IndicesSelectActivity$IndicesItemAdapter;

    invoke-direct {v0, p0}, Lcom/hf/UI/IndicesSelectActivity$IndicesItemAdapter;-><init>(Lcom/hf/UI/IndicesSelectActivity;)V

    iput-object v0, p0, Lcom/hf/UI/IndicesSelectActivity;->mAdapter:Lcom/hf/UI/IndicesSelectActivity$IndicesItemAdapter;

    .line 191
    iget-object v0, p0, Lcom/hf/UI/IndicesSelectActivity;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/hf/UI/IndicesSelectActivity;->mAdapter:Lcom/hf/UI/IndicesSelectActivity$IndicesItemAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 192
    iget-object v0, p0, Lcom/hf/UI/IndicesSelectActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 197
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, 0x0

    .line 279
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 280
    .local v1, id:I
    const v4, 0x7f0b0001

    if-ne v1, v4, :cond_0

    .line 281
    const-string v4, "indices"

    invoke-virtual {p0, v4, v7}, Lcom/hf/UI/IndicesSelectActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 282
    .local v3, preference:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 283
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "%s_custom_indices"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/hf/UI/IndicesSelectActivity;->mCityId:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 284
    .local v2, key:Ljava/lang/String;
    iget-object v4, p0, Lcom/hf/UI/IndicesSelectActivity;->mIndices:Ljava/lang/String;

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 285
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 287
    invoke-virtual {p0}, Lcom/hf/UI/IndicesSelectActivity;->finish()V

    .line 289
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #preference:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x7

    const/4 v9, -0x1

    const v8, 0x7f0a004b

    const/4 v7, 0x0

    .line 64
    invoke-virtual {p0, v6}, Lcom/hf/UI/IndicesSelectActivity;->requestWindowFeature(I)Z

    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$Umeng;->onError(Landroid/content/Context;)V

    .line 67
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$BaiDu;->onError(Landroid/content/Context;)V

    .line 68
    const v5, 0x7f030015

    invoke-virtual {p0, v5}, Lcom/hf/UI/IndicesSelectActivity;->setContentView(I)V

    .line 70
    invoke-virtual {p0}, Lcom/hf/UI/IndicesSelectActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 71
    .local v4, window:Landroid/view/Window;
    const v5, 0x7f03000b

    invoke-virtual {v4, v6, v5}, Landroid/view/Window;->setFeatureInt(II)V

    .line 72
    const v5, 0x7f0b0032

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 73
    .local v3, title:Landroid/widget/TextView;
    const v5, 0x7f0800c0

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 75
    const v5, 0x7f0b0033

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 76
    .local v1, mLayout:Landroid/widget/LinearLayout;
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 77
    .local v0, mBtn:Landroid/widget/Button;
    const v5, 0x7f080099

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    .line 78
    const v5, 0x7f0200c1

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 79
    const v5, 0x7f0b0001

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setId(I)V

    .line 80
    invoke-virtual {v0, v9}, Landroid/widget/Button;->setTextColor(I)V

    .line 81
    invoke-virtual {p0}, Lcom/hf/UI/IndicesSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p0}, Lcom/hf/UI/IndicesSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v0, v5, v7, v6, v7}, Landroid/widget/Button;->setPadding(IIII)V

    .line 82
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v2, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 84
    .local v2, params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/hf/UI/IndicesSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p0}, Lcom/hf/UI/IndicesSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v2, v7, v5, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 85
    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    invoke-virtual {p0}, Lcom/hf/UI/IndicesSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "cityID"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/hf/UI/IndicesSelectActivity;->mCityId:Ljava/lang/String;

    .line 88
    invoke-direct {p0}, Lcom/hf/UI/IndicesSelectActivity;->initIndices()V

    .line 89
    invoke-direct {p0}, Lcom/hf/UI/IndicesSelectActivity;->initResource()V

    .line 91
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .parameter
    .parameter "convertView"
    .parameter "position"
    .parameter "id"
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
    .local p1, parentView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v8, 0x1

    const/high16 v6, 0x7f0b

    const/4 v5, 0x0

    const/16 v7, 0x3b

    .line 292
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hf/UI/IndicesSelectActivity$IndicesItemAdapter$ViewHolder;

    .line 293
    .local v1, holder:Lcom/hf/UI/IndicesSelectActivity$IndicesItemAdapter$ViewHolder;
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 296
    .local v3, name:Ljava/lang/String;
    iget-object v4, p0, Lcom/hf/UI/IndicesSelectActivity;->mWeatherModel:Lcom/hf/model/WeatherModel;

    if-nez v4, :cond_0

    .line 359
    :goto_0
    return-void

    .line 300
    :cond_0
    invoke-virtual {p2, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 306
    .local v0, flag:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 307
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p2, v6, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 308
    #calls: Lcom/hf/UI/IndicesSelectActivity$IndicesItemAdapter$ViewHolder;->setSelected(Z)V
    invoke-static {v1, v5}, Lcom/hf/UI/IndicesSelectActivity$IndicesItemAdapter$ViewHolder;->access$0(Lcom/hf/UI/IndicesSelectActivity$IndicesItemAdapter$ViewHolder;Z)V

    .line 312
    iget-object v4, p0, Lcom/hf/UI/IndicesSelectActivity;->mIndices:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 313
    iget-object v4, p0, Lcom/hf/UI/IndicesSelectActivity;->mIndices:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/hf/UI/IndicesSelectActivity;->mIndices:Ljava/lang/String;

    .line 317
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/hf/UI/IndicesSelectActivity;->mIndices:Ljava/lang/String;

    const/16 v5, 0x3b

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/hf/UI/IndicesSelectActivity;->mSelectList:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 318
    :catch_0
    move-exception v4

    goto :goto_0

    .line 328
    :cond_2
    iget-object v4, p0, Lcom/hf/UI/IndicesSelectActivity;->mSelectList:[Ljava/lang/String;

    array-length v2, v4

    .line 329
    .local v2, len:I
    const/16 v4, 0x9

    if-lt v2, v4, :cond_3

    .line 330
    #calls: Lcom/hf/UI/IndicesSelectActivity$IndicesItemAdapter$ViewHolder;->setSelected(Z)V
    invoke-static {v1, v5}, Lcom/hf/UI/IndicesSelectActivity$IndicesItemAdapter$ViewHolder;->access$0(Lcom/hf/UI/IndicesSelectActivity$IndicesItemAdapter$ViewHolder;Z)V

    .line 331
    const v4, 0x7f08009a

    invoke-static {p0, v4}, Lcom/hf/utils/ToastUtil;->getToast(Landroid/content/Context;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 335
    :cond_3
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p2, v6, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 339
    #calls: Lcom/hf/UI/IndicesSelectActivity$IndicesItemAdapter$ViewHolder;->setSelected(Z)V
    invoke-static {v1, v8}, Lcom/hf/UI/IndicesSelectActivity$IndicesItemAdapter$ViewHolder;->access$0(Lcom/hf/UI/IndicesSelectActivity$IndicesItemAdapter$ViewHolder;Z)V

    .line 343
    iget-object v4, p0, Lcom/hf/UI/IndicesSelectActivity;->mIndices:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 344
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/hf/UI/IndicesSelectActivity;->mIndices:Ljava/lang/String;

    .line 350
    :goto_1
    :try_start_1
    iget-object v4, p0, Lcom/hf/UI/IndicesSelectActivity;->mIndices:Ljava/lang/String;

    const/16 v5, 0x3b

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/hf/UI/IndicesSelectActivity;->mSelectList:[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 351
    :catch_1
    move-exception v4

    goto/16 :goto_0

    .line 346
    :cond_4
    iget-object v4, p0, Lcom/hf/UI/IndicesSelectActivity;->mIndices:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/hf/UI/IndicesSelectActivity;->mIndices:Ljava/lang/String;

    goto :goto_1
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 102
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 103
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$Umeng;->onPause(Landroid/content/Context;)V

    .line 104
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$BaiDu;->onPause(Landroid/content/Context;)V

    .line 105
    return-void
.end method

.method protected onRestart()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 168
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 169
    const-string v1, "indices"

    invoke-virtual {p0, v1, v4}, Lcom/hf/UI/IndicesSelectActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 170
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v1, "%s_custom_indices"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/hf/UI/IndicesSelectActivity;->mCityId:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CL;CY;GM;SSD;JT;XC;ZWX;KQWR;"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hf/UI/IndicesSelectActivity;->mIndices:Ljava/lang/String;

    .line 172
    :try_start_0
    iget-object v1, p0, Lcom/hf/UI/IndicesSelectActivity;->mIndices:Ljava/lang/String;

    const/16 v2, 0x3b

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hf/UI/IndicesSelectActivity;->mSelectList:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_0
    iget-object v1, p0, Lcom/hf/UI/IndicesSelectActivity;->mAdapter:Lcom/hf/UI/IndicesSelectActivity$IndicesItemAdapter;

    if-eqz v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/hf/UI/IndicesSelectActivity;->mAdapter:Lcom/hf/UI/IndicesSelectActivity$IndicesItemAdapter;

    invoke-virtual {v1}, Lcom/hf/UI/IndicesSelectActivity$IndicesItemAdapter;->notifyDataSetChanged()V

    .line 181
    :cond_0
    return-void

    .line 173
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 95
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 96
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$Umeng;->onResume(Landroid/content/Context;)V

    .line 97
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$BaiDu;->onResume(Landroid/content/Context;)V

    .line 98
    return-void
.end method
