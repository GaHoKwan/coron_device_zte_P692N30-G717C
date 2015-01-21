.class Lcom/autonavi/xmgd/citydata/DownloadManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xmgd/citydata/FileDownloader$Callback;


# static fields
.field public static final INVALID_TASK_ID:I


# instance fields
.field private final mDownloaderMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/autonavi/xmgd/citydata/FileDownloader;",
            ">;"
        }
    .end annotation
.end field

.field private mFileDownloadListener:Lcom/autonavi/xmgd/citydata/DownloadInterface;

.field private mItemMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/autonavi/xmgd/citydata/DownloadItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLazyProgressNotifyEnabled:Z

.field private mMinNotifyDownloadSize:I

.field private final mStoreFile:Ljava/io/File;

.field private mTempDownSize:J


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x32000

    iput v0, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mMinNotifyDownloadSize:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mLazyProgressNotifyEnabled:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mTempDownSize:J

    iput-object p1, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mStoreFile:Ljava/io/File;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mDownloaderMap:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mItemMap:Ljava/util/LinkedHashMap;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DownloadManager;->loadTasks()Z

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/citydata/DownloadManager;-><init>(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$100(Lcom/autonavi/xmgd/citydata/DownloadManager;)Ljava/util/LinkedHashMap;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mItemMap:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method private addDownloader(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/autonavi/xmgd/citydata/DownloadManager;->addDownloader(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private addDownloader(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/autonavi/xmgd/citydata/DownloadManager;->addDownloader(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private addDownloader(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    if-eqz p2, :cond_2

    new-instance v0, Lcom/autonavi/xmgd/citydata/FileDownloader;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, p0}, Lcom/autonavi/xmgd/citydata/FileDownloader;-><init>(Ljava/io/File;Lcom/autonavi/xmgd/citydata/FileDownloader$Callback;)V

    :goto_1
    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/citydata/FileDownloader;->setId(I)V

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mDownloaderMap:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    if-eqz p4, :cond_3

    :try_start_0
    new-instance v0, Lcom/autonavi/xmgd/citydata/FileDownloader;

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2, p4, p0}, Lcom/autonavi/xmgd/citydata/FileDownloader;-><init>(Ljava/net/URL;Ljava/lang/String;Lcom/autonavi/xmgd/citydata/FileDownloader$Callback;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method private genUUID()I
    .locals 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    return v0
.end method

.method private getTaskNeedSize(I)J
    .locals 5

    const-wide/16 v3, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mDownloaderMap:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/FileDownloader;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/FileDownloader;->getTotalSize()I

    move-result v1

    int-to-long v1, v1

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/autonavi/xmgd/citydata/DownloadManager;->getTaskItem(I)Lcom/autonavi/xmgd/citydata/DownloadItem;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-wide v1, v0, Lcom/autonavi/xmgd/citydata/DownloadItem;->totalSize:J

    iget-wide v3, v0, Lcom/autonavi/xmgd/citydata/DownloadItem;->downloadedSize:J

    sub-long v0, v1, v3

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/FileDownloader;->getDownloadedSize()I

    move-result v0

    int-to-long v3, v0

    sub-long v0, v1, v3

    goto :goto_0

    :cond_1
    move-wide v0, v1

    goto :goto_0

    :cond_2
    move-wide v0, v3

    goto :goto_0
.end method

.method private loadTasks()Z
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mStoreFile:Ljava/io/File;

    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/FileUtils;->readFile(Ljava/io/File;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/GlobalCity;->getString([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    new-instance v3, Lcom/autonavi/xmgd/citydata/DownloadManager$DownloadItemParseHandler;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/autonavi/xmgd/citydata/DownloadManager$DownloadItemParseHandler;-><init>(Lcom/autonavi/xmgd/citydata/DownloadManager;Lcom/autonavi/xmgd/citydata/DownloadManager$1;)V

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v4, v3}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mItemMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mItemMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DownloadItem;

    iget-object v3, v0, Lcom/autonavi/xmgd/citydata/DownloadItem;->saveFilePath:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    iget v0, v0, Lcom/autonavi/xmgd/citydata/DownloadItem;->id:I

    invoke-direct {p0, v0, v3}, Lcom/autonavi/xmgd/citydata/DownloadManager;->addDownloader(ILjava/lang/String;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    sget-boolean v2, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DataUpdateService]DownloadItemParseHandler "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move v0, v1

    :goto_1
    return v0

    :cond_1
    :try_start_1
    iget v3, v0, Lcom/autonavi/xmgd/citydata/DownloadItem;->id:I

    iget-object v4, v0, Lcom/autonavi/xmgd/citydata/DownloadItem;->sourceUrl:Ljava/lang/String;

    iget-object v0, v0, Lcom/autonavi/xmgd/citydata/DownloadItem;->saveDirPath:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v0}, Lcom/autonavi/xmgd/citydata/DownloadManager;->addDownloader(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    sget-boolean v2, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DataUpdateService]DownloadItemParseHandler "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move v0, v1

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-boolean v2, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DataUpdateService]DownloadItemParseHandler "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private declared-synchronized storeItems()Z
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    const-string v2, "GBK"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v2, ""

    const-string v5, "opg"

    invoke-interface {v3, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mItemMap:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mItemMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mItemMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v5

    new-array v5, v5, [Lcom/autonavi/xmgd/citydata/DownloadItem;

    invoke-interface {v2, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    array-length v6, v5

    move v2, v1

    :goto_0
    if-ge v2, v6, :cond_4

    aget-object v7, v5, v2

    const-string v8, ""

    const-string v9, "item"

    invoke-interface {v3, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, ""

    const-string v9, "id"

    invoke-interface {v3, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v8, v7, Lcom/autonavi/xmgd/citydata/DownloadItem;->id:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, ""

    const-string v9, "id"

    invoke-interface {v3, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, ""

    const-string v9, "name"

    invoke-interface {v3, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v8, v7, Lcom/autonavi/xmgd/citydata/DownloadItem;->name:Ljava/lang/String;

    invoke-interface {v3, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, ""

    const-string v9, "name"

    invoke-interface {v3, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v8, v7, Lcom/autonavi/xmgd/citydata/DownloadItem;->sourceUrl:Ljava/lang/String;

    if-nez v8, :cond_0

    const-string v8, ""

    iput-object v8, v7, Lcom/autonavi/xmgd/citydata/DownloadItem;->sourceUrl:Ljava/lang/String;

    :cond_0
    const-string v8, ""

    const-string v9, "sourceurl"

    invoke-interface {v3, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v8, v7, Lcom/autonavi/xmgd/citydata/DownloadItem;->sourceUrl:Ljava/lang/String;

    invoke-interface {v3, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, ""

    const-string v9, "sourceurl"

    invoke-interface {v3, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v8, v7, Lcom/autonavi/xmgd/citydata/DownloadItem;->saveDirPath:Ljava/lang/String;

    if-nez v8, :cond_1

    const-string v8, ""

    iput-object v8, v7, Lcom/autonavi/xmgd/citydata/DownloadItem;->saveDirPath:Ljava/lang/String;

    :cond_1
    const-string v8, ""

    const-string v9, "savedirpath"

    invoke-interface {v3, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v8, v7, Lcom/autonavi/xmgd/citydata/DownloadItem;->saveDirPath:Ljava/lang/String;

    invoke-interface {v3, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, ""

    const-string v9, "savedirpath"

    invoke-interface {v3, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v8, v7, Lcom/autonavi/xmgd/citydata/DownloadItem;->saveFilePath:Ljava/lang/String;

    if-nez v8, :cond_2

    const-string v8, ""

    iput-object v8, v7, Lcom/autonavi/xmgd/citydata/DownloadItem;->saveFilePath:Ljava/lang/String;

    :cond_2
    const-string v8, ""

    const-string v9, "savefilepath"

    invoke-interface {v3, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v8, v7, Lcom/autonavi/xmgd/citydata/DownloadItem;->saveFilePath:Ljava/lang/String;

    invoke-interface {v3, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, ""

    const-string v9, "savefilepath"

    invoke-interface {v3, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, ""

    const-string v9, "downloadedsize"

    invoke-interface {v3, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v8, v7, Lcom/autonavi/xmgd/citydata/DownloadItem;->downloadedSize:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, ""

    const-string v9, "downloadedsize"

    invoke-interface {v3, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, ""

    const-string v9, "totalsize"

    invoke-interface {v3, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v8, v7, Lcom/autonavi/xmgd/citydata/DownloadItem;->totalSize:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, ""

    const-string v9, "totalsize"

    invoke-interface {v3, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, ""

    const-string v9, "unzipsize"

    invoke-interface {v3, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v8, v7, Lcom/autonavi/xmgd/citydata/DownloadItem;->unzipSize:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, ""

    const-string v9, "unzipsize"

    invoke-interface {v3, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v8, v7, Lcom/autonavi/xmgd/citydata/DownloadItem;->startDownloadTime:Ljava/lang/String;

    if-nez v8, :cond_3

    const-string v8, ""

    iput-object v8, v7, Lcom/autonavi/xmgd/citydata/DownloadItem;->startDownloadTime:Ljava/lang/String;

    :cond_3
    const-string v8, ""

    const-string v9, "startdownloadtime"

    invoke-interface {v3, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v7, v7, Lcom/autonavi/xmgd/citydata/DownloadItem;->startDownloadTime:Ljava/lang/String;

    invoke-interface {v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, ""

    const-string v8, "startdownloadtime"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, ""

    const-string v8, "item"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    const-string v2, ""

    const-string v5, "opg"

    invoke-interface {v3, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mStoreFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/autonavi/xmgd/citydata/FileUtils;->writeFile(Ljava/io/File;[B)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    monitor-exit p0

    return v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method declared-synchronized addTask(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)I
    .locals 9

    monitor-enter p0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DownloadManager;->genUUID()I

    move-result v1

    :goto_0
    new-instance v0, Lcom/autonavi/xmgd/citydata/DownloadItem;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/autonavi/xmgd/citydata/DownloadItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mItemMap:Ljava/util/LinkedHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v1, p3, p4}, Lcom/autonavi/xmgd/citydata/DownloadManager;->addDownloader(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    move v1, p1

    goto :goto_0
.end method

.method public declared-synchronized clearTasks()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DownloadManager;->shutdown()V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mItemMap:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mItemMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mItemMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DownloadItem;

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mDownloaderMap:Ljava/util/Hashtable;

    iget v0, v0, Lcom/autonavi/xmgd/citydata/DownloadItem;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/FileDownloader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/FileDownloader;->stop()V

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/FileDownloader;->removeUselessFiles()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mItemMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mDownloaderMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DownloadManager;->storeItems()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void
.end method

.method public getIsUseLazyProgressNotify()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mLazyProgressNotifyEnabled:Z

    return v0
.end method

.method public getMinNotifyDownloadSize()I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mMinNotifyDownloadSize:I

    div-int/lit16 v0, v0, 0x400

    return v0
.end method

.method public declared-synchronized getRunningTasks()[Lcom/autonavi/xmgd/citydata/DownloadItem;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mDownloaderMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/FileDownloader;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/FileDownloader;->isStarted()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mItemMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/FileDownloader;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    if-lez v1, :cond_1

    new-array v0, v1, [Lcom/autonavi/xmgd/citydata/DownloadItem;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public getTaskDownloadedSize(I)I
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mDownloaderMap:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/FileDownloader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/FileDownloader;->getDownloadedSize()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getTaskItem(I)Lcom/autonavi/xmgd/citydata/DownloadItem;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mItemMap:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DownloadItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTaskItemList()[Lcom/autonavi/xmgd/citydata/DownloadItem;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mItemMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Lcom/autonavi/xmgd/citydata/DownloadItem;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTaskItemListSize()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mItemMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTaskTotalSize(I)J
    .locals 4

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mDownloaderMap:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/FileDownloader;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/FileDownloader;->getTotalSize()I

    move-result v0

    int-to-long v0, v0

    :goto_0
    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/autonavi/xmgd/citydata/DownloadManager;->getTaskItem(I)Lcom/autonavi/xmgd/citydata/DownloadItem;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-wide v0, v2, Lcom/autonavi/xmgd/citydata/DownloadItem;->totalSize:J

    :cond_0
    return-wide v0

    :cond_1
    move-wide v0, v2

    goto :goto_0
.end method

.method getTaskTotalSizes(J)J
    .locals 7

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mDownloaderMap:Ljava/util/Hashtable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mDownloaderMap:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mDownloaderMap:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/FileDownloader;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/FileDownloader;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/citydata/DownloadManager;->getTaskItem(I)Lcom/autonavi/xmgd/citydata/DownloadItem;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-wide v5, v0, Lcom/autonavi/xmgd/citydata/DownloadItem;->unzipSize:J

    add-long v2, v1, v5

    iget-wide v0, v0, Lcom/autonavi/xmgd/citydata/DownloadItem;->totalSize:J

    cmp-long v5, p1, v0

    if-gez v5, :cond_3

    move-wide p1, v0

    move-wide v0, v2

    :goto_1
    move-wide v1, v0

    goto :goto_0

    :cond_0
    add-long v0, v1, p1

    :cond_1
    sget-boolean v2, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DataUpdateService] totalSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",maxZip = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-wide v0

    :cond_3
    move-wide v0, v2

    goto :goto_1

    :cond_4
    move-wide v0, v1

    goto :goto_1
.end method

.method public declared-synchronized insertTask(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJI)I
    .locals 10

    monitor-enter p0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_4

    :try_start_0
    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DownloadManager;->genUUID()I

    move-result v2

    :goto_0
    new-instance v1, Lcom/autonavi/xmgd/citydata/DownloadItem;

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    move-wide/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/autonavi/xmgd/citydata/DownloadItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    iget-object v6, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mItemMap:Ljava/util/LinkedHashMap;

    if-ltz p9, :cond_0

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    move/from16 v0, p9

    if-lt v0, v3, :cond_2

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-direct {p0, v2, p3, p4}, Lcom/autonavi/xmgd/citydata/DownloadManager;->addDownloader(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v2

    :cond_2
    :try_start_1
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->clear()V

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    const/4 v4, 0x0

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v5, v4

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    move/from16 v0, p9

    if-ne v5, v0, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v4, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_4
    move v2, p1

    goto :goto_0
.end method

.method public isTaskStarted(I)Z
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mDownloaderMap:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/FileDownloader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/FileDownloader;->isStarted()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCompletion(Lcom/autonavi/xmgd/citydata/FileDownloader;)V
    .locals 2

    invoke-virtual {p1}, Lcom/autonavi/xmgd/citydata/FileDownloader;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mFileDownloadListener:Lcom/autonavi/xmgd/citydata/DownloadInterface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mFileDownloadListener:Lcom/autonavi/xmgd/citydata/DownloadInterface;

    invoke-interface {v1, v0}, Lcom/autonavi/xmgd/citydata/DownloadInterface;->onCompletion(I)V

    :cond_0
    return-void
.end method

.method public onError(Lcom/autonavi/xmgd/citydata/FileDownloader;I)V
    .locals 2

    invoke-virtual {p1}, Lcom/autonavi/xmgd/citydata/FileDownloader;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mFileDownloadListener:Lcom/autonavi/xmgd/citydata/DownloadInterface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mFileDownloadListener:Lcom/autonavi/xmgd/citydata/DownloadInterface;

    invoke-interface {v1, v0, p2}, Lcom/autonavi/xmgd/citydata/DownloadInterface;->onError(II)V

    :cond_0
    return-void
.end method

.method public onPrepared(Lcom/autonavi/xmgd/citydata/FileDownloader;I)V
    .locals 4

    invoke-virtual {p1}, Lcom/autonavi/xmgd/citydata/FileDownloader;->getId()I

    move-result v1

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mItemMap:Ljava/util/LinkedHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DownloadItem;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/autonavi/xmgd/citydata/FileDownloader;->getSaveFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/autonavi/xmgd/citydata/DownloadItem;->saveFilePath:Ljava/lang/String;

    iget-object v3, v0, Lcom/autonavi/xmgd/citydata/DownloadItem;->name:Ljava/lang/String;

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/autonavi/xmgd/citydata/DownloadItem;->name:Ljava/lang/String;

    :cond_0
    invoke-virtual {p1}, Lcom/autonavi/xmgd/citydata/FileDownloader;->getTotalSize()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Lcom/autonavi/xmgd/citydata/DownloadItem;->totalSize:J

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DownloadManager;->storeItems()Z

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mFileDownloadListener:Lcom/autonavi/xmgd/citydata/DownloadInterface;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mFileDownloadListener:Lcom/autonavi/xmgd/citydata/DownloadInterface;

    invoke-interface {v0, v1, p2}, Lcom/autonavi/xmgd/citydata/DownloadInterface;->onPrepared(II)V

    :cond_2
    return-void
.end method

.method public onProgressUpdate(Lcom/autonavi/xmgd/citydata/FileDownloader;I)V
    .locals 7

    invoke-virtual {p1}, Lcom/autonavi/xmgd/citydata/FileDownloader;->getId()I

    move-result v1

    const/4 v0, -0x1

    invoke-virtual {p0, v1}, Lcom/autonavi/xmgd/citydata/DownloadManager;->getTaskItem(I)Lcom/autonavi/xmgd/citydata/DownloadItem;

    move-result-object v2

    if-eqz v2, :cond_0

    int-to-long v3, p2

    iput-wide v3, v2, Lcom/autonavi/xmgd/citydata/DownloadItem;->downloadedSize:J

    :cond_0
    iget-boolean v3, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mLazyProgressNotifyEnabled:Z

    if-eqz v3, :cond_4

    if-eqz v2, :cond_2

    if-eqz p2, :cond_1

    int-to-long v3, p2

    iget-wide v5, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mTempDownSize:J

    sub-long/2addr v3, v5

    iget v5, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mMinNotifyDownloadSize:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_1

    int-to-long v3, p2

    iget-wide v5, v2, Lcom/autonavi/xmgd/citydata/DownloadItem;->totalSize:J

    cmp-long v2, v3, v5

    if-ltz v2, :cond_2

    :cond_1
    int-to-long v2, p2

    iput-wide v2, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mTempDownSize:J

    move v0, p2

    :cond_2
    :goto_0
    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mFileDownloadListener:Lcom/autonavi/xmgd/citydata/DownloadInterface;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mFileDownloadListener:Lcom/autonavi/xmgd/citydata/DownloadInterface;

    invoke-interface {v0, v1, p2}, Lcom/autonavi/xmgd/citydata/DownloadInterface;->onProgressUpdate(II)V

    :cond_3
    return-void

    :cond_4
    move v0, p2

    goto :goto_0
.end method

.method public onStarted(Lcom/autonavi/xmgd/citydata/FileDownloader;)V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mTempDownSize:J

    invoke-virtual {p1}, Lcom/autonavi/xmgd/citydata/FileDownloader;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mFileDownloadListener:Lcom/autonavi/xmgd/citydata/DownloadInterface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mFileDownloadListener:Lcom/autonavi/xmgd/citydata/DownloadInterface;

    invoke-interface {v1, v0}, Lcom/autonavi/xmgd/citydata/DownloadInterface;->onStarted(I)V

    :cond_0
    return-void
.end method

.method public onStopped(Lcom/autonavi/xmgd/citydata/FileDownloader;)V
    .locals 2

    invoke-virtual {p1}, Lcom/autonavi/xmgd/citydata/FileDownloader;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mFileDownloadListener:Lcom/autonavi/xmgd/citydata/DownloadInterface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mFileDownloadListener:Lcom/autonavi/xmgd/citydata/DownloadInterface;

    invoke-interface {v1, v0}, Lcom/autonavi/xmgd/citydata/DownloadInterface;->onStopped(I)V

    :cond_0
    return-void
.end method

.method public declared-synchronized removeTask(I)Lcom/autonavi/xmgd/citydata/DownloadItem;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mDownloaderMap:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/FileDownloader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/FileDownloader;->stop()V

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/FileDownloader;->removeUselessFiles()V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mItemMap:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DownloadItem;

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DownloadManager;->storeItems()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeUselessFiles(I)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mDownloaderMap:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/FileDownloader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/FileDownloader;->removeUselessFiles()V

    :cond_0
    return-void
.end method

.method public setIsUseLazyProgressNotify(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mLazyProgressNotifyEnabled:Z

    return-void
.end method

.method public setListener(Lcom/autonavi/xmgd/citydata/DownloadInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mFileDownloadListener:Lcom/autonavi/xmgd/citydata/DownloadInterface;

    return-void
.end method

.method public setMinNotifyDownloadSize(I)Z
    .locals 1

    const/16 v0, 0x64

    if-lt p1, v0, :cond_0

    const/16 v0, 0x400

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    mul-int/lit16 v0, p1, 0x400

    iput v0, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mMinNotifyDownloadSize:I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public shutdown()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mDownloaderMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/citydata/DownloadManager;->stopTask(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public declared-synchronized sortTaskById(II)Z
    .locals 7

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mItemMap:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DownloadItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    if-ltz p2, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mItemMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt p2, v1, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mItemMap:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mItemMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashMap;

    iget-object v3, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mItemMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-ne v3, p2, :cond_3

    iget-object v5, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mItemMap:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v5, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mItemMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startTask(I)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mDownloaderMap:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/FileDownloader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/FileDownloader;->start()V

    :cond_0
    return-void
.end method

.method public stopTask(I)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DownloadManager;->mDownloaderMap:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/FileDownloader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/FileDownloader;->stop()V

    :cond_0
    return-void
.end method

.method store()Z
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DownloadManager;->storeItems()Z

    move-result v0

    return v0
.end method
