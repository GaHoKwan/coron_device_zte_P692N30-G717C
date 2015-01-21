.class Lcom/autonavi/xmgd/citydata/DownloadManager$DownloadItemParseHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;


# instance fields
.field private info:Lcom/autonavi/xmgd/citydata/DownloadItem;

.field private mBuilder:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lcom/autonavi/xmgd/citydata/DownloadManager;


# direct methods
.method private constructor <init>(Lcom/autonavi/xmgd/citydata/DownloadManager;)V
    .locals 1

    iput-object p1, p0, Lcom/autonavi/xmgd/citydata/DownloadManager$DownloadItemParseHandler;->this$0:Lcom/autonavi/xmgd/citydata/DownloadManager;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DownloadManager$DownloadItemParseHandler;->mBuilder:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DownloadManager$DownloadItemParseHandler;->info:Lcom/autonavi/xmgd/citydata/DownloadItem;

    return-void
.end method

.method synthetic constructor <init>(Lcom/autonavi/xmgd/citydata/DownloadManager;Lcom/autonavi/xmgd/citydata/DownloadManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/citydata/DownloadManager$DownloadItemParseHandler;-><init>(Lcom/autonavi/xmgd/citydata/DownloadManager;)V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DownloadManager$DownloadItemParseHandler;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-void
.end method

.method public endDocument()V
    .locals 0

    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->endDocument()V

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    const-wide/16 v3, 0x0

    const-string v0, "id"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DownloadManager$DownloadItemParseHandler;->info:Lcom/autonavi/xmgd/citydata/DownloadItem;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DownloadManager$DownloadItemParseHandler;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/autonavi/xmgd/citydata/DownloadItem;->id:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DownloadManager$DownloadItemParseHandler;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DownloadManager$DownloadItemParseHandler;->info:Lcom/autonavi/xmgd/citydata/DownloadItem;

    iput v5, v0, Lcom/autonavi/xmgd/citydata/DownloadItem;->id:I

    goto :goto_0

    :cond_1
    const-string v0, "name"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DownloadManager$DownloadItemParseHandler;->info:Lcom/autonavi/xmgd/citydata/DownloadItem;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DownloadManager$DownloadItemParseHandler;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xmgd/citydata/DownloadItem;->name:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "sourceurl"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DownloadManager$DownloadItemParseHandler;->info:Lcom/autonavi/xmgd/citydata/DownloadItem;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DownloadManager$DownloadItemParseHandler;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xmgd/citydata/DownloadItem;->sourceUrl:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v0, "savedirpath"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DownloadManager$DownloadItemParseHandler;->info:Lcom/autonavi/xmgd/citydata/DownloadItem;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DownloadManager$DownloadItemParseHandler;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xmgd/citydata/DownloadItem;->saveDirPath:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v0, "savefilepath"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DownloadManager$DownloadItemParseHandler;->info:Lcom/autonavi/xmgd/citydata/DownloadItem;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DownloadManager$DownloadItemParseHandler;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xmgd/citydata/DownloadItem;->saveFilePath:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string v0, "downloadedsize"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :try_start_1
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DownloadManager$DownloadItemParseHandler;->info:Lcom/autonavi/xmgd/citydata/DownloadItem;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DownloadManager$DownloadItemParseHandler;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/autonavi/xmgd/citydata/DownloadItem;->downloadedSize:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DownloadManager$DownloadItemParseHandler;->info:Lcom/autonavi/xmgd/citydata/DownloadItem;

    iput-wide v3, v0, Lcom/autonavi/xmgd/citydata/DownloadItem;->downloadedSize:J

    goto :goto_0

    :cond_6
    const-string v0, "totalsize"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :try_start_2
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DownloadManager$DownloadItemParseHandler;->info:Lcom/autonavi/xmgd/citydata/DownloadItem;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DownloadManager$DownloadItemParseHandler;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/autonavi/xmgd/citydata/DownloadItem;->totalSize:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DownloadManager$DownloadItemParseHandler;->info:Lcom/autonavi/xmgd/citydata/DownloadItem;

    iput-wide v3, v0, Lcom/autonavi/xmgd/citydata/DownloadItem;->totalSize:J

    goto/16 :goto_0

    :cond_7
    const-string v0, "unzipsize"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    :try_start_3
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DownloadManager$DownloadItemParseHandler;->info:Lcom/autonavi/xmgd/citydata/DownloadItem;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DownloadManager$DownloadItemParseHandler;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/autonavi/xmgd/citydata/DownloadItem;->unzipSize:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DownloadManager$DownloadItemParseHandler;->info:Lcom/autonavi/xmgd/citydata/DownloadItem;

    iput-wide v3, v0, Lcom/autonavi/xmgd/citydata/DownloadItem;->unzipSize:J

    goto/16 :goto_0

    :cond_8
    const-string v0, "startdownloadtime"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DownloadManager$DownloadItemParseHandler;->info:Lcom/autonavi/xmgd/citydata/DownloadItem;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DownloadManager$DownloadItemParseHandler;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xmgd/citydata/DownloadItem;->startDownloadTime:Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    const-string v0, "item"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DownloadManager$DownloadItemParseHandler;->this$0:Lcom/autonavi/xmgd/citydata/DownloadManager;

    #getter for: Lcom/autonavi/xmgd/citydata/DownloadManager;->mItemMap:Ljava/util/LinkedHashMap;
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DownloadManager;->access$100(Lcom/autonavi/xmgd/citydata/DownloadManager;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DownloadManager$DownloadItemParseHandler;->info:Lcom/autonavi/xmgd/citydata/DownloadItem;

    iget v1, v1, Lcom/autonavi/xmgd/citydata/DownloadItem;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DownloadManager$DownloadItemParseHandler;->info:Lcom/autonavi/xmgd/citydata/DownloadItem;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public startDocument()V
    .locals 0

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    const-string v0, "item"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/autonavi/xmgd/citydata/DownloadItem;

    invoke-direct {v0}, Lcom/autonavi/xmgd/citydata/DownloadItem;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DownloadManager$DownloadItemParseHandler;->info:Lcom/autonavi/xmgd/citydata/DownloadItem;

    :cond_0
    return-void
.end method
