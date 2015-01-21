.class public Lcom/autonavi/xmgd/controls/ac;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;

.field private b:Landroid/view/LayoutInflater;

.field private c:[Landroid/graphics/Bitmap;

.field private d:[F

.field private e:[I

.field private f:[Ljava/lang/String;

.field private g:[Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object v1, p0, Lcom/autonavi/xmgd/controls/ac;->a:Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;

    const-string v0, "km"

    iput-object v0, p0, Lcom/autonavi/xmgd/controls/ac;->h:Ljava/lang/String;

    iput-object v1, p0, Lcom/autonavi/xmgd/controls/ac;->i:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/controls/ac;->b:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/autonavi/xmgd/controls/ac;->a:Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;

    iput-object p1, p0, Lcom/autonavi/xmgd/controls/ac;->i:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/controls/ac;->a()V

    return-void
.end method

.method static synthetic a(Lcom/autonavi/xmgd/controls/ac;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ac;->i:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 9

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ac;->a:Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ac;->a:Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;

    iget v3, v0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;->nNumberOfRoad:I

    new-array v0, v3, [F

    iput-object v0, p0, Lcom/autonavi/xmgd/controls/ac;->d:[F

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/autonavi/xmgd/controls/ac;->e:[I

    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/autonavi/xmgd/controls/ac;->f:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/autonavi/xmgd/controls/ac;->g:[Ljava/lang/String;

    new-array v0, v3, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/autonavi/xmgd/controls/ac;->c:[Landroid/graphics/Bitmap;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_6

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ac;->a:Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;->pGuideRoadInfo:[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadInfo;

    aget-object v0, v0, v2

    iget v5, v0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadInfo;->nTurnID:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v6, "image/dir/sou"

    if-nez v0, :cond_5

    sget-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    iget-object v7, p0, Lcom/autonavi/xmgd/controls/ac;->i:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v7, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v7}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "_f"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v7, p0, Lcom/autonavi/xmgd/controls/ac;->i:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ".png"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/autonavi/xmgd/utility/Tool;->loadAssetsImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/autonavi/xmgd/controls/ac;->i:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ".png"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/autonavi/xmgd/utility/Tool;->loadAssetsImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/autonavi/xmgd/controls/ac;->c:[Landroid/graphics/Bitmap;

    aput-object v0, v6, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    :cond_3
    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    iget-object v7, p0, Lcom/autonavi/xmgd/controls/ac;->i:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v7, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v7}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/autonavi/xmgd/controls/ac;->i:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ".png"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/autonavi/xmgd/utility/Tool;->loadAssetsImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "_e"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v7, p0, Lcom/autonavi/xmgd/controls/ac;->i:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ".png"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/autonavi/xmgd/utility/Tool;->loadAssetsImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/autonavi/xmgd/controls/ac;->i:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ".png"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/autonavi/xmgd/utility/Tool;->loadAssetsImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_1

    :cond_5
    iget-object v5, p0, Lcom/autonavi/xmgd/controls/ac;->c:[Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/autonavi/xmgd/controls/ac;->c:[Landroid/graphics/Bitmap;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v6, v0

    aput-object v0, v5, v2

    goto/16 :goto_2

    :cond_6
    move v0, v1

    :goto_3
    if-ge v0, v3, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/controls/ac;->a:Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;->pGuideRoadInfo:[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadInfo;

    aget-object v1, v1, v0

    const/4 v2, 0x2

    if-lt v3, v2, :cond_7

    add-int/lit8 v2, v3, -0x1

    if-ne v0, v2, :cond_7

    iget-object v2, p0, Lcom/autonavi/xmgd/controls/ac;->d:[F

    iget-object v4, p0, Lcom/autonavi/xmgd/controls/ac;->a:Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;

    iget-object v4, v4, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;->pGuideRoadInfo:[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadInfo;

    add-int/lit8 v5, v0, -0x1

    aget-object v4, v4, v5

    iget v4, v4, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadInfo;->nNextDis:I

    int-to-float v4, v4

    aput v4, v2, v0

    :goto_4
    iget-object v2, p0, Lcom/autonavi/xmgd/controls/ac;->f:[Ljava/lang/String;

    iget-object v4, v1, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadInfo;->szNextRoadName:Ljava/lang/String;

    aput-object v4, v2, v0

    iget-object v2, p0, Lcom/autonavi/xmgd/controls/ac;->e:[I

    iget v1, v1, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadInfo;->nTurnID:I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lcom/autonavi/xmgd/controls/ac;->d:[F

    iget v4, v1, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadInfo;->nNextDis:I

    int-to-float v4, v4

    aput v4, v2, v0

    goto :goto_4
.end method

.method public a(Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/controls/ac;->a:Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/controls/ac;->a()V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ac;->a:Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ac;->a:Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;

    iget v0, v0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;->nNumberOfRoad:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const v8, -0x777778

    const/high16 v5, 0x447a

    const/4 v1, 0x0

    if-nez p2, :cond_5

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ac;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f030049

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/autonavi/xmgd/controls/ae;

    invoke-direct {v2, p0}, Lcom/autonavi/xmgd/controls/ae;-><init>(Lcom/autonavi/xmgd/controls/ac;)V

    const v0, 0x7f0c0120

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/autonavi/xmgd/controls/ae;->a:Landroid/widget/ImageView;

    const v0, 0x7f0c0122

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/autonavi/xmgd/controls/ae;->b:Landroid/widget/TextView;

    const v0, 0x7f0c0123

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/autonavi/xmgd/controls/ae;->c:Landroid/widget/TextView;

    const v0, 0x7f0c0124

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/autonavi/xmgd/controls/ae;->d:Landroid/widget/TextView;

    const v0, 0x7f0c0121

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/autonavi/xmgd/controls/ae;->e:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    if-nez p1, :cond_6

    iget-object v0, v2, Lcom/autonavi/xmgd/controls/ae;->b:Landroid/widget/TextView;

    const v3, 0x7f07008d

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    iget-object v0, v2, Lcom/autonavi/xmgd/controls/ae;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    if-nez p1, :cond_8

    iget-object v0, v2, Lcom/autonavi/xmgd/controls/ae;->c:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ac;->g:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ac;->a:Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;->pGuideRoadInfo:[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadInfo;

    aget-object v0, v0, p1

    iget v3, v0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadInfo;->lLon:I

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ac;->a:Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;->pGuideRoadInfo:[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadInfo;

    aget-object v0, v0, p1

    iget v4, v0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadInfo;->lLat:I

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/autonavi/xmgd/naviservice/q;->c(II)I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/autonavi/xmgd/naviservice/q;->c(II)I

    move-result v0

    :cond_1
    iget-object v3, p0, Lcom/autonavi/xmgd/controls/ac;->g:[Ljava/lang/String;

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/autonavi/xmgd/naviservice/q;->b(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    :goto_3
    iget-object v3, v2, Lcom/autonavi/xmgd/controls/ae;->a:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/autonavi/xmgd/controls/ac;->c:[Landroid/graphics/Bitmap;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-boolean v3, Lcom/autonavi/xmgd/application/NaviApplication;->openHMTData:Z

    if-eqz v3, :cond_3

    div-int/lit16 v3, v0, 0x2710

    const/16 v4, 0x51

    if-eq v3, v4, :cond_2

    div-int/lit16 v0, v0, 0x2710

    const/16 v3, 0x52

    if-ne v0, v3, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ac;->a:Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;->pGuideRoadInfo:[Lcom/autonavi/xm/navigation/server/guide/GGuideRoadInfo;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadInfo;->nTurnID:I

    const/16 v3, 0x33

    if-gt v3, v0, :cond_3

    const/16 v3, 0x3a

    if-lt v3, v0, :cond_3

    const-string v3, "image/dir/sou"

    iget-object v4, v2, Lcom/autonavi/xmgd/controls/ae;->a:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/autonavi/xmgd/controls/ac;->i:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_hmt.png"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/autonavi/xmgd/utility/Tool;->loadAssetsImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_3
    iget-object v0, v2, Lcom/autonavi/xmgd/controls/ae;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v2, Lcom/autonavi/xmgd/controls/ae;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/autonavi/xmgd/controls/ac;->g:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v2, Lcom/autonavi/xmgd/controls/ae;->e:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/autonavi/xmgd/controls/ae;->e:Landroid/widget/TextView;

    new-instance v3, Lcom/autonavi/xmgd/controls/ad;

    invoke-direct {v3, p0}, Lcom/autonavi/xmgd/controls/ad;-><init>(Lcom/autonavi/xmgd/controls/ac;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ac;->a:Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;

    iget v0, v0, Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;->nNumberOfRoad:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_b

    :cond_4
    iget-object v0, v2, Lcom/autonavi/xmgd/controls/ae;->e:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    return-object p2

    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/controls/ae;

    move-object v2, v0

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ac;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f06000e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/autonavi/xmgd/controls/ac;->e:[I

    aget v3, v3, p1

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    iget-object v3, v2, Lcom/autonavi/xmgd/controls/ae;->b:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/autonavi/xmgd/controls/ac;->f:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/autonavi/xmgd/controls/ac;->d:[F

    aget v0, v0, p1

    const v3, 0x4cbebc20

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_9

    const-string v0, "km"

    iput-object v0, p0, Lcom/autonavi/xmgd/controls/ac;->h:Ljava/lang/String;

    iget-object v0, v2, Lcom/autonavi/xmgd/controls/ae;->c:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x47c34f80

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/autonavi/xmgd/controls/ac;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_9
    cmpl-float v3, v0, v5

    if-ltz v3, :cond_a

    div-float/2addr v0, v5

    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "####"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-string v4, "km"

    iput-object v4, p0, Lcom/autonavi/xmgd/controls/ac;->h:Ljava/lang/String;

    iget-object v4, v2, Lcom/autonavi/xmgd/controls/ae;->c:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v6, v0

    invoke-virtual {v3, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/autonavi/xmgd/controls/ac;->h:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_a
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_0

    const-string v3, "m"

    iput-object v3, p0, Lcom/autonavi/xmgd/controls/ac;->h:Ljava/lang/String;

    iget-object v3, v2, Lcom/autonavi/xmgd/controls/ae;->c:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    float-to-int v0, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/autonavi/xmgd/controls/ac;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_b
    iget-object v0, v2, Lcom/autonavi/xmgd/controls/ae;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_c
    move v0, v1

    goto/16 :goto_3
.end method
