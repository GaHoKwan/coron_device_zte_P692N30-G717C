.class Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;


# instance fields
.field private mBaseUrl:Ljava/lang/String;

.field private mBuilder:Ljava/lang/StringBuilder;

.field private mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/citydata/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCityItem:Lcom/autonavi/xmgd/citydata/DataItem;

.field private mDataItem:Lcom/autonavi/xmgd/citydata/DataItem;

.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/citydata/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field private mIsRequired:Z

.field private mIsUpdate:Z

.field final synthetic this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;


# direct methods
.method private constructor <init>(Lcom/autonavi/xmgd/citydata/DataUpdateService;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mIsRequired:Z

    iput-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mIsUpdate:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/autonavi/xmgd/citydata/DataUpdateService;Lcom/autonavi/xmgd/citydata/DataUpdateService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdateService;)V

    return-void
.end method

.method private checkProperty(Lcom/autonavi/xmgd/citydata/DataItem;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget v0, p1, Lcom/autonavi/xmgd/citydata/DataItem;->id:I

    iget-object v1, p1, Lcom/autonavi/xmgd/citydata/DataItem;->children:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/autonavi/xmgd/citydata/DataItem;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_5

    :cond_0
    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->isCityDataDownloaded(I)Z

    move-result v0

    iput-boolean v0, p1, Lcom/autonavi/xmgd/citydata/DataItem;->isDownloaded:Z

    iget-boolean v0, p1, Lcom/autonavi/xmgd/citydata/DataItem;->isRequired:Z

    if-nez v0, :cond_4

    iget-boolean v0, p1, Lcom/autonavi/xmgd/citydata/DataItem;->isDownloaded:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    iget v1, p1, Lcom/autonavi/xmgd/citydata/DataItem;->id:I

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->isInDownloadingList(I)Z
    invoke-static {v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$2700(Lcom/autonavi/xmgd/citydata/DataUpdateService;I)Z

    move-result v0

    iput-boolean v0, p1, Lcom/autonavi/xmgd/citydata/DataItem;->isDownloading:Z

    :cond_1
    :goto_0
    iget-boolean v0, p1, Lcom/autonavi/xmgd/citydata/DataItem;->isRequired:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lcom/autonavi/xmgd/citydata/DataItem;->isDownloaded:Z

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lcom/autonavi/xmgd/citydata/DataItem;->isDownloading:Z

    if-nez v0, :cond_2

    move v2, v4

    :cond_2
    iput-boolean v2, p1, Lcom/autonavi/xmgd/citydata/DataItem;->isSelected:Z

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateService;

    iget v1, p1, Lcom/autonavi/xmgd/citydata/DataItem;->id:I

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateService;->isInDownloadingList(I)Z
    invoke-static {v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->access$2700(Lcom/autonavi/xmgd/citydata/DataUpdateService;I)Z

    move-result v0

    iput-boolean v0, p1, Lcom/autonavi/xmgd/citydata/DataItem;->isDownloading:Z

    goto :goto_0

    :cond_5
    iput-boolean v2, p1, Lcom/autonavi/xmgd/citydata/DataItem;->isDownloaded:Z

    iput-boolean v2, p1, Lcom/autonavi/xmgd/citydata/DataItem;->isDownloading:Z

    iget-object v0, p1, Lcom/autonavi/xmgd/citydata/DataItem;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    move v3, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->checkProperty(Lcom/autonavi/xmgd/citydata/DataItem;)V

    iget-boolean v6, v0, Lcom/autonavi/xmgd/citydata/DataItem;->isDownloaded:Z

    if-eqz v6, :cond_6

    add-int/lit8 v3, v3, 0x1

    move v0, v1

    move v1, v3

    :goto_2
    move v3, v1

    move v1, v0

    goto :goto_1

    :cond_6
    iget-boolean v0, v0, Lcom/autonavi/xmgd/citydata/DataItem;->isDownloading:Z

    if-eqz v0, :cond_b

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    move v1, v3

    goto :goto_2

    :cond_7
    iget-object v0, p1, Lcom/autonavi/xmgd/citydata/DataItem;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v1, v0, :cond_8

    if-lez v1, :cond_9

    add-int v0, v3, v1

    iget-object v5, p1, Lcom/autonavi/xmgd/citydata/DataItem;->children:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v0, v5, :cond_9

    :cond_8
    iput-boolean v4, p1, Lcom/autonavi/xmgd/citydata/DataItem;->isDownloading:Z

    goto :goto_0

    :cond_9
    iget-object v0, p1, Lcom/autonavi/xmgd/citydata/DataItem;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v3, v0, :cond_a

    if-lez v3, :cond_1

    add-int v0, v3, v1

    iget-object v1, p1, Lcom/autonavi/xmgd/citydata/DataItem;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_a
    iput-boolean v4, p1, Lcom/autonavi/xmgd/citydata/DataItem;->isDownloaded:Z

    goto :goto_0

    :cond_b
    move v0, v1

    move v1, v3

    goto :goto_2
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-void
.end method

.method public endDocument()V
    .locals 0

    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->endDocument()V

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v0, "required"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mIsRequired:Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void

    :cond_1
    const-string v0, "update"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mIsRequired:Z

    iput-boolean v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mIsUpdate:Z

    goto :goto_0

    :cond_2
    const-string v0, "baseurl"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mBaseUrl:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v0, "suburl"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mCityItem:Lcom/autonavi/xmgd/citydata/DataItem;

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mCityItem:Lcom/autonavi/xmgd/citydata/DataItem;

    :cond_4
    :goto_1
    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mBaseUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/autonavi/xmgd/citydata/DataItem;->sourceUrl:Ljava/lang/String;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mDataItem:Lcom/autonavi/xmgd/citydata/DataItem;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mDataItem:Lcom/autonavi/xmgd/citydata/DataItem;

    goto :goto_1

    :cond_6
    const-string v0, "size"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mCityItem:Lcom/autonavi/xmgd/citydata/DataItem;

    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mCityItem:Lcom/autonavi/xmgd/citydata/DataItem;

    :cond_7
    :goto_2
    if-eqz v3, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, v3, Lcom/autonavi/xmgd/citydata/DataItem;->supposeSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iput-wide v4, v3, Lcom/autonavi/xmgd/citydata/DataItem;->supposeSize:J

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mDataItem:Lcom/autonavi/xmgd/citydata/DataItem;

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mDataItem:Lcom/autonavi/xmgd/citydata/DataItem;

    goto :goto_2

    :cond_9
    const-string v0, "unzip_size"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mCityItem:Lcom/autonavi/xmgd/citydata/DataItem;

    if-eqz v0, :cond_b

    iget-object v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mCityItem:Lcom/autonavi/xmgd/citydata/DataItem;

    :cond_a
    :goto_3
    if-eqz v3, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, v3, Lcom/autonavi/xmgd/citydata/DataItem;->unzipSize:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    iput-wide v4, v3, Lcom/autonavi/xmgd/citydata/DataItem;->unzipSize:J

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mDataItem:Lcom/autonavi/xmgd/citydata/DataItem;

    if-eqz v0, :cond_a

    iget-object v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mDataItem:Lcom/autonavi/xmgd/citydata/DataItem;

    goto :goto_3

    :cond_c
    const-string v0, "adcode"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mCityItem:Lcom/autonavi/xmgd/citydata/DataItem;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mCityItem:Lcom/autonavi/xmgd/citydata/DataItem;

    :goto_4
    if-eqz v0, :cond_0

    :try_start_2
    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/autonavi/xmgd/citydata/DataItem;->id:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v1

    iput v2, v0, Lcom/autonavi/xmgd/citydata/DataItem;->id:I

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mDataItem:Lcom/autonavi/xmgd/citydata/DataItem;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mDataItem:Lcom/autonavi/xmgd/citydata/DataItem;

    goto :goto_4

    :cond_e
    const-string v0, "city"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mCityItem:Lcom/autonavi/xmgd/citydata/DataItem;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mCityItem:Lcom/autonavi/xmgd/citydata/DataItem;

    goto/16 :goto_0

    :cond_f
    const-string v0, "item"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mDataItem:Lcom/autonavi/xmgd/citydata/DataItem;

    iget-boolean v0, v0, Lcom/autonavi/xmgd/citydata/DataItem;->isUpdate:Z

    if-ne v0, v6, :cond_12

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mDataList:Ljava/util/ArrayList;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_10

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v2

    :goto_5
    if-ge v1, v4, :cond_10

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    iget v0, v0, Lcom/autonavi/xmgd/citydata/DataItem;->id:I

    iget-object v5, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mDataItem:Lcom/autonavi/xmgd/citydata/DataItem;

    iget v5, v5, Lcom/autonavi/xmgd/citydata/DataItem;->id:I

    if-ne v0, v5, :cond_11

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    iput-boolean v6, v0, Lcom/autonavi/xmgd/citydata/DataItem;->isUpdate:Z

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    iget-boolean v0, v0, Lcom/autonavi/xmgd/citydata/DataItem;->isDownloading:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    iput-boolean v6, v0, Lcom/autonavi/xmgd/citydata/DataItem;->isSelected:Z

    :cond_10
    :goto_6
    iput-object v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mDataItem:Lcom/autonavi/xmgd/citydata/DataItem;

    iput-object v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mChildren:Ljava/util/ArrayList;

    goto/16 :goto_0

    :cond_11
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_12
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mDataItem:Lcom/autonavi/xmgd/citydata/DataItem;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mChildren:Ljava/util/ArrayList;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mChildren:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/autonavi/xmgd/citydata/DataItem;->children:Ljava/util/ArrayList;

    :cond_13
    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_14
    move-object v0, v3

    goto/16 :goto_4
.end method

.method getDataList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/citydata/DataItem;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mDataList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->checkProperty(Lcom/autonavi/xmgd/citydata/DataItem;)V

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataItem;->clone()Lcom/autonavi/xmgd/citydata/DataItem;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public startDocument()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mDataList:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mBuilder:Ljava/lang/StringBuilder;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "required"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mIsRequired:Z

    :cond_0
    const-string v0, "update"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mIsRequired:Z

    iput-boolean v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mIsUpdate:Z

    :cond_1
    const-string v0, "item"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/autonavi/xmgd/citydata/DataItem;

    invoke-direct {v0}, Lcom/autonavi/xmgd/citydata/DataItem;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mDataItem:Lcom/autonavi/xmgd/citydata/DataItem;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mDataItem:Lcom/autonavi/xmgd/citydata/DataItem;

    const-string v1, "name"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xmgd/citydata/DataItem;->name:Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mDataItem:Lcom/autonavi/xmgd/citydata/DataItem;

    const-string v1, "type"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/autonavi/xmgd/citydata/DataItem;->id:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mDataItem:Lcom/autonavi/xmgd/citydata/DataItem;

    iget-boolean v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mIsRequired:Z

    iput-boolean v1, v0, Lcom/autonavi/xmgd/citydata/DataItem;->isRequired:Z

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mDataItem:Lcom/autonavi/xmgd/citydata/DataItem;

    iget-boolean v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mIsUpdate:Z

    iput-boolean v1, v0, Lcom/autonavi/xmgd/citydata/DataItem;->isUpdate:Z

    :cond_2
    const-string v0, "city"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mChildren:Ljava/util/ArrayList;

    :cond_3
    new-instance v0, Lcom/autonavi/xmgd/citydata/DataItem;

    invoke-direct {v0}, Lcom/autonavi/xmgd/citydata/DataItem;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mCityItem:Lcom/autonavi/xmgd/citydata/DataItem;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mCityItem:Lcom/autonavi/xmgd/citydata/DataItem;

    const-string v1, "name"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xmgd/citydata/DataItem;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mCityItem:Lcom/autonavi/xmgd/citydata/DataItem;

    iget-boolean v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mIsRequired:Z

    iput-boolean v1, v0, Lcom/autonavi/xmgd/citydata/DataItem;->isRequired:Z

    :cond_4
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->mDataItem:Lcom/autonavi/xmgd/citydata/DataItem;

    const/4 v1, 0x0

    iput v1, v0, Lcom/autonavi/xmgd/citydata/DataItem;->id:I

    goto :goto_0
.end method
