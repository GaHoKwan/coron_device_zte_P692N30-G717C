.class public Lcom/autonavi/xm/navigation/engine/PoiManager;
.super Ljava/lang/Object;


# static fields
.field private static final MIN_AROUND_RANGE:I = 0x2710

.field private static instance:Lcom/autonavi/xm/navigation/engine/PoiManager;


# instance fields
.field private mSearchAdmincode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/autonavi/xm/navigation/engine/PoiManager;->instance:Lcom/autonavi/xm/navigation/engine/PoiManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/xm/navigation/engine/PoiManager;Lcom/autonavi/xm/navigation/server/GCoord;Lcom/autonavi/xm/navigation/server/GCoord;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/autonavi/xm/navigation/engine/PoiManager;->calDistance(Lcom/autonavi/xm/navigation/server/GCoord;Lcom/autonavi/xm/navigation/server/GCoord;)I

    move-result v0

    return v0
.end method

.method private calDistance(IIII)I
    .locals 2

    new-instance v0, Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-direct {v0, p1, p2}, Lcom/autonavi/xm/navigation/server/GCoord;-><init>(II)V

    new-instance v1, Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-direct {v1, p3, p4}, Lcom/autonavi/xm/navigation/server/GCoord;-><init>(II)V

    invoke-direct {p0, v0, v1}, Lcom/autonavi/xm/navigation/engine/PoiManager;->calDistance(Lcom/autonavi/xm/navigation/server/GCoord;Lcom/autonavi/xm/navigation/server/GCoord;)I

    move-result v0

    return v0
.end method

.method private calDistance(Lcom/autonavi/xm/navigation/server/GCoord;Lcom/autonavi/xm/navigation/server/GCoord;)I
    .locals 3

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Main;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    invoke-virtual {v0, p1, p2, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->GDBL_CalcDistance(Lcom/autonavi/xm/navigation/server/GCoord;Lcom/autonavi/xm/navigation/server/GCoord;[I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    aget v0, v1, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static destroy()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/autonavi/xm/navigation/engine/PoiManager;->instance:Lcom/autonavi/xm/navigation/engine/PoiManager;

    return-void
.end method

.method private doSearch(Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;I)[Lcom/autonavi/xm/navigation/server/poi/GPoi;
    .locals 2

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_InitSearchCondition(Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;)Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_StartSearchPOI(Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p2}, Lcom/autonavi/xm/navigation/engine/PoiManager;->getGPoiResult(I)[Lcom/autonavi/xm/navigation/server/poi/GPoi;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getGPoiResult(I)[Lcom/autonavi/xm/navigation/server/poi/GPoi;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/autonavi/xm/navigation/server/poi/GGetPoiInput;

    int-to-short v1, p1

    invoke-direct {v0, v3, v1}, Lcom/autonavi/xm/navigation/server/poi/GGetPoiInput;-><init>(SS)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/autonavi/xm/navigation/server/poi/GPoiResult;

    invoke-static {v0, v1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_GetPOIResult(Lcom/autonavi/xm/navigation/server/poi/GGetPoiInput;[Lcom/autonavi/xm/navigation/server/poi/GPoiResult;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    aget-object v0, v1, v3

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/poi/GPoiResult;->pPOI:[Lcom/autonavi/xm/navigation/server/poi/GPoi;

    goto :goto_0
.end method

.method public static getInstance()Lcom/autonavi/xm/navigation/engine/PoiManager;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/engine/PoiManager;->instance:Lcom/autonavi/xm/navigation/engine/PoiManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xm/navigation/engine/PoiManager;

    invoke-direct {v0}, Lcom/autonavi/xm/navigation/engine/PoiManager;-><init>()V

    sput-object v0, Lcom/autonavi/xm/navigation/engine/PoiManager;->instance:Lcom/autonavi/xm/navigation/engine/PoiManager;

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/engine/PoiManager;->instance:Lcom/autonavi/xm/navigation/engine/PoiManager;

    return-object v0
.end method

.method private getSearchString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_1

    const/4 p1, 0x0

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getSystemLanguage()Lcom/autonavi/xm/navigation/server/map/GLanguage;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GLanguage;->GLANGUAGE_ENGLISH:Lcom/autonavi/xm/navigation/server/map/GLanguage;

    if-eq v0, v1, :cond_0

    invoke-static {p1}, Lcom/autonavi/xmgd/utility/Tool;->convertToSBC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private parseCNAdminCode(Ljava/lang/String;)I
    .locals 11

    const/4 v4, 0x0

    const/4 v9, 0x2

    const/4 v2, -0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    new-array v7, v0, [Lcom/autonavi/xm/navigation/server/poi/GAdareaList;

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Main;

    move-result-object v0

    invoke-virtual {v0, v1, v7}, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->GDBL_GetAdareaList(I[Lcom/autonavi/xm/navigation/server/poi/GAdareaList;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v3, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_1
    aget-object v3, v7, v1

    iget v3, v3, Lcom/autonavi/xm/navigation/server/poi/GAdareaList;->lNumberOfAdarea:I

    if-ge v0, v3, :cond_a

    aget-object v3, v7, v1

    iget-object v3, v3, Lcom/autonavi/xm/navigation/server/poi/GAdareaList;->pAdarea:[Lcom/autonavi/xm/navigation/server/poi/GAdarea;

    aget-object v3, v3, v0

    iget-object v5, v3, Lcom/autonavi/xm/navigation/server/poi/GAdarea;->szAdminName:Ljava/lang/String;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, v9, :cond_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v5, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget v0, v3, Lcom/autonavi/xm/navigation/server/poi/GAdarea;->lAdminCode:I

    move-object v4, v5

    move-object v10, v3

    move v3, v0

    move-object v0, v10

    :goto_2
    const/16 v5, 0x2710

    if-ge v3, v5, :cond_4

    move v2, v3

    goto :goto_0

    :cond_4
    iget-object v5, v0, Lcom/autonavi/xm/navigation/server/poi/GAdarea;->pSubAdarea:[Lcom/autonavi/xm/navigation/server/poi/GAdarea;

    if-eqz v5, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ")|("

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "[\u7701\u5e02]"

    const-string v8, ""

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ")|("

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v6, v0, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, ",\uff0c"

    const-string v6, ""

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    array-length v0, v5

    :goto_3
    if-ge v1, v0, :cond_9

    aget-object v6, v5, v1

    iget-object v7, v6, Lcom/autonavi/xm/navigation/server/poi/GAdarea;->szAdminName:Ljava/lang/String;

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, v9, :cond_6

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {v7, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_7
    iget v0, v6, Lcom/autonavi/xm/navigation/server/poi/GAdarea;->lAdminCode:I

    :goto_4
    if-ne v0, v3, :cond_8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_8

    array-length v1, v5

    if-eqz v1, :cond_8

    move v0, v2

    :cond_8
    move v2, v0

    goto/16 :goto_0

    :cond_9
    move v0, v3

    goto :goto_4

    :cond_a
    move-object v0, v4

    move v3, v2

    goto/16 :goto_2
.end method

.method private parseENAdminCode(Ljava/lang/String;)I
    .locals 11

    const/4 v4, 0x0

    const/4 v9, 0x5

    const/4 v2, -0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    new-array v7, v0, [Lcom/autonavi/xm/navigation/server/poi/GAdareaList;

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Main;

    move-result-object v0

    invoke-virtual {v0, v1, v7}, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->GDBL_GetAdareaList(I[Lcom/autonavi/xm/navigation/server/poi/GAdareaList;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v3, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_1
    aget-object v3, v7, v1

    iget v3, v3, Lcom/autonavi/xm/navigation/server/poi/GAdareaList;->lNumberOfAdarea:I

    if-ge v0, v3, :cond_a

    aget-object v3, v7, v1

    iget-object v3, v3, Lcom/autonavi/xm/navigation/server/poi/GAdareaList;->pAdarea:[Lcom/autonavi/xm/navigation/server/poi/GAdarea;

    aget-object v3, v3, v0

    iget-object v5, v3, Lcom/autonavi/xm/navigation/server/poi/GAdarea;->szAdminName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, v9, :cond_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v5, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget v0, v3, Lcom/autonavi/xm/navigation/server/poi/GAdarea;->lAdminCode:I

    move-object v4, v5

    move-object v10, v3

    move v3, v0

    move-object v0, v10

    :goto_2
    const/16 v5, 0x2710

    if-ge v3, v5, :cond_4

    move v2, v3

    goto :goto_0

    :cond_4
    iget-object v5, v0, Lcom/autonavi/xm/navigation/server/poi/GAdarea;->pSubAdarea:[Lcom/autonavi/xm/navigation/server/poi/GAdarea;

    if-eqz v5, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ")|("

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v6, v0, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, ",\uff0c"

    const-string v6, ""

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    array-length v0, v5

    :goto_3
    if-ge v1, v0, :cond_9

    aget-object v6, v5, v1

    iget-object v7, v6, Lcom/autonavi/xm/navigation/server/poi/GAdarea;->szAdminName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x2

    if-ge v8, v9, :cond_6

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {v7, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_7
    iget v0, v6, Lcom/autonavi/xm/navigation/server/poi/GAdarea;->lAdminCode:I

    :goto_4
    if-ne v0, v3, :cond_8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_8

    array-length v1, v5

    if-eqz v1, :cond_8

    move v0, v2

    :cond_8
    move v2, v0

    goto/16 :goto_0

    :cond_9
    move v0, v3

    goto :goto_4

    :cond_a
    move-object v0, v4

    move v3, v2

    goto/16 :goto_2
.end method

.method private searchByAround(Lcom/autonavi/xm/navigation/server/GCoord;I)[Lcom/autonavi/xm/navigation/server/poi/GPoi;
    .locals 2

    new-instance v0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;

    invoke-direct {v0}, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;-><init>()V

    sget-object v1, Lcom/autonavi/xm/navigation/server/poi/GSearchType;->GSEARCH_TYPE_AROUND:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    iput-object v1, v0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;->eSearchType:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    iput-object p1, v0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iput p2, v0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;->lCategoryID:I

    const/16 v1, 0x2710

    iput v1, v0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;->lAroundRange:I

    invoke-direct {p0, v0, p2}, Lcom/autonavi/xm/navigation/engine/PoiManager;->doSearch(Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;I)[Lcom/autonavi/xm/navigation/server/poi/GPoi;

    move-result-object v0

    return-object v0
.end method

.method private searchByCross(Ljava/lang/String;I)[Lcom/autonavi/xm/navigation/server/poi/GPoi;
    .locals 2

    new-instance v0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;

    invoke-direct {v0}, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;-><init>()V

    sget-object v1, Lcom/autonavi/xm/navigation/server/poi/GSearchType;->GSEARCH_TYPE_CROSS:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    iput-object v1, v0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;->eSearchType:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    invoke-direct {p0, p1}, Lcom/autonavi/xm/navigation/engine/PoiManager;->getSearchString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;->szKeyword:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/autonavi/xm/navigation/engine/PoiManager;->doSearch(Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;I)[Lcom/autonavi/xm/navigation/server/poi/GPoi;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAdmincode(I)I
    .locals 3

    new-instance v0, Lcom/autonavi/xm/navigation/server/poi/GCoordTel;

    sget-object v1, Lcom/autonavi/xm/navigation/server/poi/GCoordTelType;->COORDTEL_TYPE_TEL:Lcom/autonavi/xm/navigation/server/poi/GCoordTelType;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Lcom/autonavi/xm/navigation/server/poi/GCoordTel;-><init>(Lcom/autonavi/xm/navigation/server/poi/GCoordTelType;Lcom/autonavi/xm/navigation/server/GCoord;I)V

    const/4 v1, 0x1

    new-array v1, v1, [I

    invoke-static {v0, v1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_GetAdminCode(Lcom/autonavi/xm/navigation/server/poi/GCoordTel;[I)Lcom/autonavi/xm/navigation/server/GStatus;

    const/4 v0, 0x0

    aget v0, v1, v0

    return v0
.end method

.method public getAdmincode(II)I
    .locals 1

    new-instance v0, Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-direct {v0, p1, p2}, Lcom/autonavi/xm/navigation/server/GCoord;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navigation/engine/PoiManager;->getAdmincode(Lcom/autonavi/xm/navigation/server/GCoord;)I

    move-result v0

    return v0
.end method

.method public getAdmincode(Lcom/autonavi/xm/navigation/server/GCoord;)I
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/autonavi/xm/navigation/server/poi/GCoordTel;

    sget-object v1, Lcom/autonavi/xm/navigation/server/poi/GCoordTelType;->COORDTEL_TYPE_COORD:Lcom/autonavi/xm/navigation/server/poi/GCoordTelType;

    invoke-direct {v0, v1, p1, v2}, Lcom/autonavi/xm/navigation/server/poi/GCoordTel;-><init>(Lcom/autonavi/xm/navigation/server/poi/GCoordTelType;Lcom/autonavi/xm/navigation/server/GCoord;I)V

    const/4 v1, 0x1

    new-array v1, v1, [I

    invoke-static {v0, v1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_GetAdminCode(Lcom/autonavi/xm/navigation/server/poi/GCoordTel;[I)Lcom/autonavi/xm/navigation/server/GStatus;

    aget v0, v1, v2

    return v0
.end method

.method public getCountryAreaCode(II)Lcom/autonavi/xm/navigation/server/GCountryAreaACode;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/GCountryAreaACode;

    invoke-static {p1, p2, v0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_GetCountryAreaCode(II[Lcom/autonavi/xm/navigation/server/GCountryAreaACode;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGPoiCategoryList(I)Lcom/autonavi/xm/navigation/server/poi/GPoiCategoryList;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/poi/GPoiCategoryList;

    invoke-static {p1, v0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_GetPOICategoryList(I[Lcom/autonavi/xm/navigation/server/poi/GPoiCategoryList;)Lcom/autonavi/xm/navigation/server/GStatus;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getNameFromAdmincode(II)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, ""

    new-array v1, v5, [Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Main;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Main;->GDBL_GetAdareaInfoEx(I[Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;)Lcom/autonavi/xm/navigation/server/GStatus;

    aget-object v2, v1, v4

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/xmgd/utility/Tool;->getSystemLanguage()Lcom/autonavi/xm/navigation/server/map/GLanguage;

    move-result-object v2

    sget-object v3, Lcom/autonavi/xm/navigation/server/map/GLanguage;->GLANGUAGE_SIMPLE_CHINESE:Lcom/autonavi/xm/navigation/server/map/GLanguage;

    if-eq v2, v3, :cond_0

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/xmgd/utility/Tool;->getSystemLanguage()Lcom/autonavi/xm/navigation/server/map/GLanguage;

    move-result-object v2

    sget-object v3, Lcom/autonavi/xm/navigation/server/map/GLanguage;->GLANGUAGE_TRADITIONAL_CHINESE:Lcom/autonavi/xm/navigation/server/map/GLanguage;

    if-ne v2, v3, :cond_4

    :cond_0
    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v1, v4

    iget-object v2, v2, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szProvName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, v1, v4

    iget-object v2, v2, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szCityName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v1, v4

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szTownName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    if-ne p2, v5, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v1, v4

    iget-object v2, v2, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szProvName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v1, v4

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szCityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    if-ne p2, v6, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v1, v4

    iget-object v2, v2, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szCityName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v1, v4

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szTownName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    if-nez p2, :cond_7

    aget-object v2, v1, v4

    iget-object v2, v2, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szTownName:Ljava/lang/String;

    if-eqz v2, :cond_5

    aget-object v2, v1, v4

    iget-object v2, v2, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szTownName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, v1, v4

    iget-object v2, v2, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szCityName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v1, v4

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szProvName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, v1, v4

    iget-object v2, v2, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szTownName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, v1, v4

    iget-object v2, v2, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szCityName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v1, v4

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szProvName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    if-ne p2, v5, :cond_a

    aget-object v0, v1, v4

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szCityName:Ljava/lang/String;

    if-eqz v0, :cond_8

    aget-object v0, v1, v4

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szCityName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    aget-object v0, v1, v4

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szProvName:Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v1, v4

    iget-object v2, v2, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szCityName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v1, v4

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szProvName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    if-ne p2, v6, :cond_1

    aget-object v0, v1, v4

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szTownName:Ljava/lang/String;

    if-eqz v0, :cond_b

    aget-object v0, v1, v4

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szTownName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    :cond_b
    aget-object v0, v1, v4

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szCityName:Ljava/lang/String;

    goto/16 :goto_0

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v1, v4

    iget-object v2, v2, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szTownName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v1, v4

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->szCityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public getSearchAdmincode()I
    .locals 1

    iget v0, p0, Lcom/autonavi/xm/navigation/engine/PoiManager;->mSearchAdmincode:I

    return v0
.end method

.method public parseAdminCode(Ljava/lang/String;Ljava/util/Locale;)I
    .locals 1

    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/autonavi/xm/navigation/engine/PoiManager;->parseCNAdminCode(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/autonavi/xm/navigation/engine/PoiManager;->parseENAdminCode(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public reCalDis([Lcom/autonavi/xm/navigation/server/poi/GPoi;II)[Lcom/autonavi/xm/navigation/server/poi/GPoi;
    .locals 5

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    iget-object v3, v2, Lcom/autonavi/xm/navigation/server/poi/GPoi;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v3, v3, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iget-object v4, v2, Lcom/autonavi/xm/navigation/server/poi/GPoi;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v4, v4, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    invoke-direct {p0, p2, p3, v3, v4}, Lcom/autonavi/xm/navigation/engine/PoiManager;->calDistance(IIII)I

    move-result v3

    iput v3, v2, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lDistance:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public searchByAddress(Ljava/lang/String;I)[Lcom/autonavi/xm/navigation/server/poi/GPoi;
    .locals 2

    new-instance v0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;

    invoke-direct {v0}, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;-><init>()V

    sget-object v1, Lcom/autonavi/xm/navigation/server/poi/GSearchType;->GSEARCH_TYPE_ADDRESS:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    iput-object v1, v0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;->eSearchType:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    invoke-direct {p0, p1}, Lcom/autonavi/xm/navigation/engine/PoiManager;->getSearchString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;->szKeyword:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/autonavi/xm/navigation/engine/PoiManager;->doSearch(Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;I)[Lcom/autonavi/xm/navigation/server/poi/GPoi;

    move-result-object v0

    return-object v0
.end method

.method public searchByAround(IIIIILjava/lang/String;)[Lcom/autonavi/xm/navigation/server/poi/GPoi;
    .locals 2

    new-instance v0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;

    invoke-direct {v0}, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;-><init>()V

    sget-object v1, Lcom/autonavi/xm/navigation/server/poi/GSearchType;->GSEARCH_TYPE_AROUND:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    iput-object v1, v0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;->eSearchType:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    new-instance v1, Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-direct {v1, p1, p2}, Lcom/autonavi/xm/navigation/server/GCoord;-><init>(II)V

    iput-object v1, v0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iput p3, v0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;->lCategoryID:I

    iput p5, v0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;->lAroundRange:I

    invoke-direct {p0, p6}, Lcom/autonavi/xm/navigation/engine/PoiManager;->getSearchString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;->szKeyword:Ljava/lang/String;

    invoke-direct {p0, v0, p4}, Lcom/autonavi/xm/navigation/engine/PoiManager;->doSearch(Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;I)[Lcom/autonavi/xm/navigation/server/poi/GPoi;

    move-result-object v0

    return-object v0
.end method

.method public searchByKeyword(Ljava/lang/String;I)[Lcom/autonavi/xm/navigation/server/poi/GPoi;
    .locals 2

    new-instance v0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;

    invoke-direct {v0}, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;-><init>()V

    sget-object v1, Lcom/autonavi/xm/navigation/server/poi/GSearchType;->GSEARCH_TYPE_NAME:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    iput-object v1, v0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;->eSearchType:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    invoke-direct {p0, p1}, Lcom/autonavi/xm/navigation/engine/PoiManager;->getSearchString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;->szKeyword:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/autonavi/xm/navigation/engine/PoiManager;->doSearch(Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;I)[Lcom/autonavi/xm/navigation/server/poi/GPoi;

    move-result-object v0

    return-object v0
.end method

.method public setSearchAdmincode(I)V
    .locals 1

    iput p1, p0, Lcom/autonavi/xm/navigation/engine/PoiManager;->mSearchAdmincode:I

    sget-object v0, Lcom/autonavi/xm/navigation/server/poi/GAdareaType;->ADAREA_TYPE_PROVINCE:Lcom/autonavi/xm/navigation/server/poi/GAdareaType;

    invoke-static {v0, p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_SetCurAdarea(Lcom/autonavi/xm/navigation/server/poi/GAdareaType;I)Lcom/autonavi/xm/navigation/server/GStatus;

    return-void
.end method

.method public sortByAlphabet([Lcom/autonavi/xm/navigation/server/poi/GPoi;Ljava/util/Locale;)[Lcom/autonavi/xm/navigation/server/poi/GPoi;
    .locals 1

    new-instance v0, Lcom/autonavi/xm/navigation/engine/PoiManager$4;

    invoke-direct {v0, p0, p2}, Lcom/autonavi/xm/navigation/engine/PoiManager$4;-><init>(Lcom/autonavi/xm/navigation/engine/PoiManager;Ljava/util/Locale;)V

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object p1
.end method

.method public sortByDistance([Lcom/autonavi/xm/navigation/server/poi/GPoi;Lcom/autonavi/xm/navigation/server/GCoord;)[Lcom/autonavi/xm/navigation/server/poi/GPoi;
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    new-instance v0, Lcom/autonavi/xm/navigation/engine/PoiManager$1;

    invoke-direct {v0, p0, p2}, Lcom/autonavi/xm/navigation/engine/PoiManager$1;-><init>(Lcom/autonavi/xm/navigation/engine/PoiManager;Lcom/autonavi/xm/navigation/server/GCoord;)V

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public sortByName([Lcom/autonavi/xm/navigation/server/poi/GPoi;)[Lcom/autonavi/xm/navigation/server/poi/GPoi;
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    new-instance v0, Lcom/autonavi/xm/navigation/engine/PoiManager$2;

    invoke-direct {v0, p0}, Lcom/autonavi/xm/navigation/engine/PoiManager$2;-><init>(Lcom/autonavi/xm/navigation/engine/PoiManager;)V

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public sortByNameThenDistance([Lcom/autonavi/xm/navigation/server/poi/GPoi;II)[Lcom/autonavi/xm/navigation/server/poi/GPoi;
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/autonavi/xm/navigation/engine/PoiManager;->reCalDis([Lcom/autonavi/xm/navigation/server/poi/GPoi;II)[Lcom/autonavi/xm/navigation/server/poi/GPoi;

    move-result-object p1

    new-instance v0, Lcom/autonavi/xm/navigation/engine/PoiManager$3;

    invoke-direct {v0, p0}, Lcom/autonavi/xm/navigation/engine/PoiManager$3;-><init>(Lcom/autonavi/xm/navigation/engine/PoiManager;)V

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_0
.end method
