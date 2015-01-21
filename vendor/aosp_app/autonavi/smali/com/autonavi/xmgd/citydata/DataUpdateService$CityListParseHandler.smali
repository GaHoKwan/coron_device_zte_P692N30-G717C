.class Lcom/autonavi/xmgd/citydata/DataUpdateService$CityListParseHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;


# instance fields
.field private info:Lcom/autonavi/xmgd/citydata/DataUpdateService$CityDataInfo;

.field private mBuilder:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;


# direct methods
.method private constructor <init>(Lcom/autonavi/xmgd/citydata/DataUpdateService;)V
    .locals 1

    iput-object p1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$CityListParseHandler;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$CityListParseHandler;->mBuilder:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$CityListParseHandler;->info:Lcom/autonavi/xmgd/citydata/DataUpdateService$CityDataInfo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/autonavi/xmgd/citydata/DataUpdateService;Lcom/autonavi/xmgd/citydata/DataUpdateService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService$CityListParseHandler;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdateService;)V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$CityListParseHandler;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-void
.end method

.method public endDocument()V
    .locals 0

    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->endDocument()V

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "adcode"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$CityListParseHandler;->info:Lcom/autonavi/xmgd/citydata/DataUpdateService$CityDataInfo;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$CityListParseHandler;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/autonavi/xmgd/citydata/DataUpdateService$CityDataInfo;->adcode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$CityListParseHandler;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$CityListParseHandler;->info:Lcom/autonavi/xmgd/citydata/DataUpdateService$CityDataInfo;

    iput v3, v0, Lcom/autonavi/xmgd/citydata/DataUpdateService$CityDataInfo;->adcode:I

    goto :goto_0

    :cond_1
    const-string v0, "name"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$CityListParseHandler;->info:Lcom/autonavi/xmgd/citydata/DataUpdateService$CityDataInfo;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$CityListParseHandler;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xmgd/citydata/DataUpdateService$CityDataInfo;->name:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "path"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$CityListParseHandler;->info:Lcom/autonavi/xmgd/citydata/DataUpdateService$CityDataInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$CityListParseHandler;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mNaviDataPath:Ljava/lang/String;
    invoke-static {v2}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$8700(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$CityListParseHandler;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mMapDataPath:Ljava/lang/String;
    invoke-static {v2}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$8800(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$CityListParseHandler;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xmgd/citydata/DataUpdateService$CityDataInfo;->path:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v0, "item"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$CityListParseHandler;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdateService;->mCityDataList:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$8900(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$CityListParseHandler;->info:Lcom/autonavi/xmgd/citydata/DataUpdateService$CityDataInfo;

    iget v1, v1, Lcom/autonavi/xmgd/citydata/DataUpdateService$CityDataInfo;->adcode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$CityListParseHandler;->info:Lcom/autonavi/xmgd/citydata/DataUpdateService$CityDataInfo;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public startDocument()V
    .locals 0

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3

    const-string v0, "item"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/autonavi/xmgd/citydata/DataUpdateService$CityDataInfo;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$CityListParseHandler;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/autonavi/xmgd/citydata/DataUpdateService$CityDataInfo;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdateService;Lcom/autonavi/xmgd/citydata/DataUpdateService$1;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$CityListParseHandler;->info:Lcom/autonavi/xmgd/citydata/DataUpdateService$CityDataInfo;

    :cond_0
    return-void
.end method
