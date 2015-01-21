.class public Lcom/itextpdf/text/html/simpleparser/HTMLWorker;
.super Ljava/lang/Object;
.source "HTMLWorker.java"

# interfaces
.implements Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;
.implements Lcom/itextpdf/text/DocListener;


# static fields
.field public static final FONT_PROVIDER:Ljava/lang/String; = "font_factory"

.field public static final IMG_BASEURL:Ljava/lang/String; = "img_baseurl"

.field public static final IMG_PROCESSOR:Ljava/lang/String; = "img_interface"

.field public static final IMG_PROVIDER:Ljava/lang/String; = "img_provider"

.field public static final IMG_STORE:Ljava/lang/String; = "img_static"

.field public static final LINK_PROVIDER:Ljava/lang/String; = "alink_interface"

.field private static LOGGER:Lcom/itextpdf/text/log/Logger;


# instance fields
.field private final chain:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

.field protected currentParagraph:Lcom/itextpdf/text/Paragraph;

.field protected document:Lcom/itextpdf/text/DocListener;

.field private final factory:Lcom/itextpdf/text/html/simpleparser/ElementFactory;

.field private insidePRE:Z

.field protected objectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/itextpdf/text/Element;",
            ">;"
        }
    .end annotation
.end field

.field private pendingLI:Z

.field private pendingTD:Z

.field private pendingTR:Z

.field private providers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected skipText:Z

.field protected stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/itextpdf/text/Element;",
            ">;"
        }
    .end annotation
.end field

.field private style:Lcom/itextpdf/text/html/simpleparser/StyleSheet;

.field private final tableState:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<[Z>;"
        }
    .end annotation
.end field

.field protected tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/html/simpleparser/HTMLTagProcessor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const-class v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;

    invoke-static {v0}, Lcom/itextpdf/text/log/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/itextpdf/text/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->LOGGER:Lcom/itextpdf/text/log/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/DocListener;)V
    .locals 1
    .parameter "document"

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, p1, v0, v0}, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;-><init>(Lcom/itextpdf/text/DocListener;Ljava/util/Map;Lcom/itextpdf/text/html/simpleparser/StyleSheet;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/DocListener;Ljava/util/Map;Lcom/itextpdf/text/html/simpleparser/StyleSheet;)V
    .locals 2
    .parameter "document"
    .parameter
    .parameter "style"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/text/DocListener;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/html/simpleparser/HTMLTagProcessor;",
            ">;",
            "Lcom/itextpdf/text/html/simpleparser/StyleSheet;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, tags:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/itextpdf/text/html/simpleparser/HTMLTagProcessor;>;"
    const/4 v1, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Lcom/itextpdf/text/html/simpleparser/StyleSheet;

    invoke-direct {v0}, Lcom/itextpdf/text/html/simpleparser/StyleSheet;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->style:Lcom/itextpdf/text/html/simpleparser/StyleSheet;

    .line 162
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->stack:Ljava/util/Stack;

    .line 174
    new-instance v0, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    invoke-direct {v0}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->chain:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    .line 377
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->providers:Ljava/util/Map;

    .line 402
    new-instance v0, Lcom/itextpdf/text/html/simpleparser/ElementFactory;

    invoke-direct {v0}, Lcom/itextpdf/text/html/simpleparser/ElementFactory;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->factory:Lcom/itextpdf/text/html/simpleparser/ElementFactory;

    .line 659
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->tableState:Ljava/util/Stack;

    .line 662
    iput-boolean v1, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->pendingTR:Z

    .line 665
    iput-boolean v1, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->pendingTD:Z

    .line 668
    iput-boolean v1, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->pendingLI:Z

    .line 674
    iput-boolean v1, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->insidePRE:Z

    .line 680
    iput-boolean v1, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->skipText:Z

    .line 120
    iput-object p1, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->document:Lcom/itextpdf/text/DocListener;

    .line 121
    invoke-virtual {p0, p2}, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->setSupportedTags(Ljava/util/Map;)V

    .line 122
    invoke-virtual {p0, p3}, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->setStyleSheet(Lcom/itextpdf/text/html/simpleparser/StyleSheet;)V

    .line 123
    return-void
.end method

.method public static parseToList(Ljava/io/Reader;Lcom/itextpdf/text/html/simpleparser/StyleSheet;)Ljava/util/List;
    .locals 1
    .parameter "reader"
    .parameter "style"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            "Lcom/itextpdf/text/html/simpleparser/StyleSheet;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/itextpdf/text/Element;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 796
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->parseToList(Ljava/io/Reader;Lcom/itextpdf/text/html/simpleparser/StyleSheet;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static parseToList(Ljava/io/Reader;Lcom/itextpdf/text/html/simpleparser/StyleSheet;Ljava/util/HashMap;)Ljava/util/List;
    .locals 1
    .parameter "reader"
    .parameter "style"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            "Lcom/itextpdf/text/html/simpleparser/StyleSheet;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/itextpdf/text/Element;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 809
    .local p2, providers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->parseToList(Ljava/io/Reader;Lcom/itextpdf/text/html/simpleparser/StyleSheet;Ljava/util/Map;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static parseToList(Ljava/io/Reader;Lcom/itextpdf/text/html/simpleparser/StyleSheet;Ljava/util/Map;Ljava/util/HashMap;)Ljava/util/List;
    .locals 2
    .parameter "reader"
    .parameter "style"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            "Lcom/itextpdf/text/html/simpleparser/StyleSheet;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/html/simpleparser/HTMLTagProcessor;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/itextpdf/text/Element;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 824
    .local p2, tags:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/itextpdf/text/html/simpleparser/HTMLTagProcessor;>;"
    .local p3, providers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, p1}, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;-><init>(Lcom/itextpdf/text/DocListener;Ljava/util/Map;Lcom/itextpdf/text/html/simpleparser/StyleSheet;)V

    .line 825
    .local v0, worker:Lcom/itextpdf/text/html/simpleparser/HTMLWorker;
    iput-object v0, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->document:Lcom/itextpdf/text/DocListener;

    .line 826
    invoke-virtual {v0, p3}, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->setProviders(Ljava/util/Map;)V

    .line 827
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->objectList:Ljava/util/List;

    .line 828
    invoke-virtual {v0, p0}, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->parse(Ljava/io/Reader;)V

    .line 829
    iget-object v1, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->objectList:Ljava/util/List;

    return-object v1
.end method


# virtual methods
.method public add(Lcom/itextpdf/text/Element;)Z
    .locals 1
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 838
    iget-object v0, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->objectList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 839
    const/4 v0, 0x1

    return v0
.end method

.method public carriageReturn()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 281
    iget-object v2, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    if-nez v2, :cond_0

    .line 294
    :goto_0
    return-void

    .line 283
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 284
    iget-object v2, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->document:Lcom/itextpdf/text/DocListener;

    iget-object v3, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    invoke-interface {v2, v3}, Lcom/itextpdf/text/DocListener;->add(Lcom/itextpdf/text/Element;)Z

    .line 293
    :goto_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    goto :goto_0

    .line 286
    :cond_1
    iget-object v2, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/Element;

    .line 287
    .local v1, obj:Lcom/itextpdf/text/Element;
    instance-of v2, v1, Lcom/itextpdf/text/TextElementArray;

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 288
    check-cast v0, Lcom/itextpdf/text/TextElementArray;

    .line 289
    .local v0, current:Lcom/itextpdf/text/TextElementArray;
    iget-object v2, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    invoke-interface {v0, v2}, Lcom/itextpdf/text/TextElementArray;->add(Lcom/itextpdf/text/Element;)Z

    .line 291
    .end local v0           #current:Lcom/itextpdf/text/TextElementArray;
    :cond_2
    iget-object v2, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->stack:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public close()V
    .locals 0

    .prologue
    .line 846
    return-void
.end method

.method public createCell(Ljava/lang/String;)Lcom/itextpdf/text/html/simpleparser/CellWrapper;
    .locals 2
    .parameter "tag"

    .prologue
    .line 475
    new-instance v0, Lcom/itextpdf/text/html/simpleparser/CellWrapper;

    iget-object v1, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->chain:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    invoke-direct {v0, p1, v1}, Lcom/itextpdf/text/html/simpleparser/CellWrapper;-><init>(Ljava/lang/String;Lcom/itextpdf/text/html/simpleparser/ChainedProperties;)V

    return-object v0
.end method

.method public createChunk(Ljava/lang/String;)Lcom/itextpdf/text/Chunk;
    .locals 2
    .parameter "content"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->factory:Lcom/itextpdf/text/html/simpleparser/ElementFactory;

    iget-object v1, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->chain:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    invoke-virtual {v0, p1, v1}, Lcom/itextpdf/text/html/simpleparser/ElementFactory;->createChunk(Ljava/lang/String;Lcom/itextpdf/text/html/simpleparser/ChainedProperties;)Lcom/itextpdf/text/Chunk;

    move-result-object v0

    return-object v0
.end method

.method public createImage(Ljava/util/Map;)Lcom/itextpdf/text/Image;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/itextpdf/text/Image;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 457
    .local p1, attrs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "src"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 458
    .local v1, src:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 459
    const/4 v8, 0x0

    .line 465
    :goto_0
    return-object v8

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->factory:Lcom/itextpdf/text/html/simpleparser/ElementFactory;

    iget-object v3, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->chain:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    iget-object v4, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->document:Lcom/itextpdf/text/DocListener;

    iget-object v2, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->providers:Ljava/util/Map;

    const-string v5, "img_provider"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/text/html/simpleparser/ImageProvider;

    iget-object v2, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->providers:Ljava/util/Map;

    const-string v6, "img_static"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/text/html/simpleparser/ImageStore;

    iget-object v2, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->providers:Ljava/util/Map;

    const-string v7, "img_baseurl"

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/itextpdf/text/html/simpleparser/ElementFactory;->createImage(Ljava/lang/String;Ljava/util/Map;Lcom/itextpdf/text/html/simpleparser/ChainedProperties;Lcom/itextpdf/text/DocListener;Lcom/itextpdf/text/html/simpleparser/ImageProvider;Ljava/util/HashMap;Ljava/lang/String;)Lcom/itextpdf/text/Image;

    move-result-object v8

    .line 465
    .local v8, img:Lcom/itextpdf/text/Image;
    goto :goto_0
.end method

.method public createLineSeparator(Ljava/util/Map;)Lcom/itextpdf/text/pdf/draw/LineSeparator;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/itextpdf/text/pdf/draw/LineSeparator;"
        }
    .end annotation

    .prologue
    .line 445
    .local p1, attrs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->factory:Lcom/itextpdf/text/html/simpleparser/ElementFactory;

    iget-object v1, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    invoke-virtual {v1}, Lcom/itextpdf/text/Paragraph;->getLeading()F

    move-result v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/itextpdf/text/html/simpleparser/ElementFactory;->createLineSeparator(Ljava/util/Map;F)Lcom/itextpdf/text/pdf/draw/LineSeparator;

    move-result-object v0

    return-object v0
.end method

.method public createList(Ljava/lang/String;)Lcom/itextpdf/text/List;
    .locals 2
    .parameter "tag"

    .prologue
    .line 428
    iget-object v0, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->factory:Lcom/itextpdf/text/html/simpleparser/ElementFactory;

    iget-object v1, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->chain:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    invoke-virtual {v0, p1, v1}, Lcom/itextpdf/text/html/simpleparser/ElementFactory;->createList(Ljava/lang/String;Lcom/itextpdf/text/html/simpleparser/ChainedProperties;)Lcom/itextpdf/text/List;

    move-result-object v0

    return-object v0
.end method

.method public createListItem()Lcom/itextpdf/text/ListItem;
    .locals 2

    .prologue
    .line 436
    iget-object v0, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->factory:Lcom/itextpdf/text/html/simpleparser/ElementFactory;

    iget-object v1, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->chain:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/html/simpleparser/ElementFactory;->createListItem(Lcom/itextpdf/text/html/simpleparser/ChainedProperties;)Lcom/itextpdf/text/ListItem;

    move-result-object v0

    return-object v0
.end method

.method public createParagraph()Lcom/itextpdf/text/Paragraph;
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->factory:Lcom/itextpdf/text/html/simpleparser/ElementFactory;

    iget-object v1, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->chain:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/html/simpleparser/ElementFactory;->createParagraph(Lcom/itextpdf/text/html/simpleparser/ChainedProperties;)Lcom/itextpdf/text/Paragraph;

    move-result-object v0

    return-object v0
.end method

.method public endDocument()V
    .locals 4

    .prologue
    .line 249
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 250
    iget-object v3, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->document:Lcom/itextpdf/text/DocListener;

    iget-object v2, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->stack:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/Element;

    invoke-interface {v3, v2}, Lcom/itextpdf/text/DocListener;->add(Lcom/itextpdf/text/Element;)Z

    .line 249
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 252
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    if-eqz v2, :cond_1

    .line 253
    iget-object v2, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->document:Lcom/itextpdf/text/DocListener;

    iget-object v3, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    invoke-interface {v2, v3}, Lcom/itextpdf/text/DocListener;->add(Lcom/itextpdf/text/Element;)Z

    .line 254
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v2, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 3
    .parameter "tag"

    .prologue
    .line 231
    iget-object v2, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->tags:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/html/simpleparser/HTMLTagProcessor;

    .line 232
    .local v1, htmlTag:Lcom/itextpdf/text/html/simpleparser/HTMLTagProcessor;
    if-nez v1, :cond_0

    .line 241
    :goto_0
    return-void

    .line 237
    :cond_0
    :try_start_0
    invoke-interface {v1, p0, p1}, Lcom/itextpdf/text/html/simpleparser/HTMLTagProcessor;->endElement(Lcom/itextpdf/text/html/simpleparser/HTMLWorker;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, e:Lcom/itextpdf/text/DocumentException;
    new-instance v2, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v2, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public flushContent()V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->pushToStack(Lcom/itextpdf/text/Element;)V

    .line 303
    new-instance v0, Lcom/itextpdf/text/Paragraph;

    invoke-direct {v0}, Lcom/itextpdf/text/Paragraph;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    .line 304
    return-void
.end method

.method public getInterfaceProps()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 919
    iget-object v0, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->providers:Ljava/util/Map;

    return-object v0
.end method

.method public isInsidePRE()Z
    .locals 1

    .prologue
    .line 755
    iget-boolean v0, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->insidePRE:Z

    return v0
.end method

.method public isPendingLI()Z
    .locals 1

    .prologue
    .line 739
    iget-boolean v0, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->pendingLI:Z

    return v0
.end method

.method public isPendingTD()Z
    .locals 1

    .prologue
    .line 723
    iget-boolean v0, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->pendingTD:Z

    return v0
.end method

.method public isPendingTR()Z
    .locals 1

    .prologue
    .line 707
    iget-boolean v0, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->pendingTR:Z

    return v0
.end method

.method public isSkipText()Z
    .locals 1

    .prologue
    .line 771
    iget-boolean v0, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->skipText:Z

    return v0
.end method

.method public newLine()V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    if-nez v0, :cond_0

    .line 268
    new-instance v0, Lcom/itextpdf/text/Paragraph;

    invoke-direct {v0}, Lcom/itextpdf/text/Paragraph;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    const-string v1, "\n"

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->createChunk(Ljava/lang/String;)Lcom/itextpdf/text/Chunk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/Paragraph;->add(Lcom/itextpdf/text/Element;)Z

    .line 271
    return-void
.end method

.method public newPage()Z
    .locals 1

    .prologue
    .line 852
    const/4 v0, 0x1

    return v0
.end method

.method public open()V
    .locals 0

    .prologue
    .line 859
    return-void
.end method

.method public parse(Ljava/io/Reader;)V
    .locals 2
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    sget-object v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->LOGGER:Lcom/itextpdf/text/log/Logger;

    const-string v1, "Please note, there is a more extended version of the HTMLWorker available in the iText XMLWorker"

    invoke-interface {v0, v1}, Lcom/itextpdf/text/log/Logger;->info(Ljava/lang/String;)V

    .line 153
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->parse(Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandlerComment;Ljava/io/Reader;Z)V

    .line 154
    return-void
.end method

.method public popTableState()V
    .locals 2

    .prologue
    .line 697
    iget-object v1, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->tableState:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    .line 698
    .local v0, state:[Z
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->pendingTR:Z

    .line 699
    const/4 v1, 0x1

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->pendingTD:Z

    .line 700
    return-void
.end method

.method public processImage(Lcom/itextpdf/text/Image;Ljava/util/Map;)V
    .locals 6
    .parameter "img"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/text/Image;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .local p2, attrs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 569
    iget-object v2, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->providers:Ljava/util/Map;

    const-string v3, "img_interface"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/html/simpleparser/ImageProcessor;

    .line 570
    .local v1, processor:Lcom/itextpdf/text/html/simpleparser/ImageProcessor;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->chain:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    iget-object v3, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->document:Lcom/itextpdf/text/DocListener;

    invoke-interface {v1, p1, p2, v2, v3}, Lcom/itextpdf/text/html/simpleparser/ImageProcessor;->process(Lcom/itextpdf/text/Image;Ljava/util/Map;Lcom/itextpdf/text/html/simpleparser/ChainedProperties;Lcom/itextpdf/text/DocListener;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 571
    :cond_0
    const-string v2, "align"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 572
    .local v0, align:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 573
    invoke-virtual {p0}, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->carriageReturn()V

    .line 575
    :cond_1
    iget-object v2, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    if-nez v2, :cond_2

    .line 576
    invoke-virtual {p0}, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->createParagraph()Lcom/itextpdf/text/Paragraph;

    move-result-object v2

    iput-object v2, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    .line 578
    :cond_2
    iget-object v2, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    new-instance v3, Lcom/itextpdf/text/Chunk;

    const/4 v4, 0x1

    invoke-direct {v3, p1, v5, v5, v4}, Lcom/itextpdf/text/Chunk;-><init>(Lcom/itextpdf/text/Image;FFZ)V

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/Paragraph;->add(Lcom/itextpdf/text/Element;)Z

    .line 579
    iget-object v2, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    invoke-static {v0}, Lcom/itextpdf/text/html/HtmlUtilities;->alignmentValue(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/Paragraph;->setAlignment(I)V

    .line 580
    if-eqz v0, :cond_3

    .line 581
    invoke-virtual {p0}, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->carriageReturn()V

    .line 584
    .end local v0           #align:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public processLink()V
    .locals 7

    .prologue
    .line 485
    iget-object v5, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    if-nez v5, :cond_0

    .line 486
    new-instance v5, Lcom/itextpdf/text/Paragraph;

    invoke-direct {v5}, Lcom/itextpdf/text/Paragraph;-><init>()V

    iput-object v5, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    .line 489
    :cond_0
    iget-object v5, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->providers:Ljava/util/Map;

    const-string v6, "alink_interface"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/html/simpleparser/LinkProcessor;

    .line 490
    .local v2, i:Lcom/itextpdf/text/html/simpleparser/LinkProcessor;
    if-eqz v2, :cond_1

    iget-object v5, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    iget-object v6, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->chain:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    invoke-interface {v2, v5, v6}, Lcom/itextpdf/text/html/simpleparser/LinkProcessor;->process(Lcom/itextpdf/text/Paragraph;Lcom/itextpdf/text/html/simpleparser/ChainedProperties;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 492
    :cond_1
    iget-object v5, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->chain:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    const-string v6, "href"

    invoke-virtual {v5, v6}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 493
    .local v1, href:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 494
    iget-object v5, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    invoke-virtual {v5}, Lcom/itextpdf/text/Paragraph;->getChunks()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/Chunk;

    .line 495
    .local v0, ck:Lcom/itextpdf/text/Chunk;
    invoke-virtual {v0, v1}, Lcom/itextpdf/text/Chunk;->setAnchor(Ljava/lang/String;)Lcom/itextpdf/text/Chunk;

    goto :goto_0

    .line 500
    .end local v0           #ck:Lcom/itextpdf/text/Chunk;
    .end local v1           #href:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v5, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->stack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 502
    new-instance v4, Lcom/itextpdf/text/Paragraph;

    new-instance v5, Lcom/itextpdf/text/Phrase;

    iget-object v6, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    invoke-direct {v5, v6}, Lcom/itextpdf/text/Phrase;-><init>(Lcom/itextpdf/text/Phrase;)V

    invoke-direct {v4, v5}, Lcom/itextpdf/text/Paragraph;-><init>(Lcom/itextpdf/text/Phrase;)V

    .line 503
    .local v4, tmp:Lcom/itextpdf/text/Paragraph;
    iput-object v4, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    .line 509
    :goto_1
    return-void

    .line 505
    .end local v4           #tmp:Lcom/itextpdf/text/Paragraph;
    :cond_3
    iget-object v5, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->stack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/Paragraph;

    .line 506
    .restart local v4       #tmp:Lcom/itextpdf/text/Paragraph;
    new-instance v5, Lcom/itextpdf/text/Phrase;

    iget-object v6, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    invoke-direct {v5, v6}, Lcom/itextpdf/text/Phrase;-><init>(Lcom/itextpdf/text/Phrase;)V

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/Paragraph;->add(Lcom/itextpdf/text/Element;)Z

    .line 507
    iput-object v4, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    goto :goto_1
.end method

.method public processList()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 519
    iget-object v1, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 530
    :goto_0
    return-void

    .line 521
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/Element;

    .line 522
    .local v0, obj:Lcom/itextpdf/text/Element;
    instance-of v1, v0, Lcom/itextpdf/text/List;

    if-nez v1, :cond_1

    .line 523
    iget-object v1, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->stack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 526
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 527
    iget-object v1, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->document:Lcom/itextpdf/text/DocListener;

    invoke-interface {v1, v0}, Lcom/itextpdf/text/DocListener;->add(Lcom/itextpdf/text/Element;)Z

    goto :goto_0

    .line 529
    :cond_2
    iget-object v1, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/TextElementArray;

    invoke-interface {v1, v0}, Lcom/itextpdf/text/TextElementArray;->add(Lcom/itextpdf/text/Element;)Z

    goto :goto_0
.end method

.method public processListItem()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 539
    iget-object v3, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->stack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 559
    :goto_0
    return-void

    .line 541
    :cond_0
    iget-object v3, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->stack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/Element;

    .line 542
    .local v2, obj:Lcom/itextpdf/text/Element;
    instance-of v3, v2, Lcom/itextpdf/text/ListItem;

    if-nez v3, :cond_1

    .line 543
    iget-object v3, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->stack:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 546
    :cond_1
    iget-object v3, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->stack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 547
    iget-object v3, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->document:Lcom/itextpdf/text/DocListener;

    invoke-interface {v3, v2}, Lcom/itextpdf/text/DocListener;->add(Lcom/itextpdf/text/Element;)Z

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 550
    check-cast v0, Lcom/itextpdf/text/ListItem;

    .line 551
    .local v0, item:Lcom/itextpdf/text/ListItem;
    iget-object v3, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->stack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/Element;

    .line 552
    .local v1, list:Lcom/itextpdf/text/Element;
    instance-of v3, v1, Lcom/itextpdf/text/List;

    if-nez v3, :cond_3

    .line 553
    iget-object v3, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->stack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    move-object v3, v1

    .line 556
    check-cast v3, Lcom/itextpdf/text/List;

    invoke-virtual {v3, v0}, Lcom/itextpdf/text/List;->add(Lcom/itextpdf/text/Element;)Z

    .line 557
    invoke-virtual {v0}, Lcom/itextpdf/text/ListItem;->adjustListSymbolFont()V

    .line 558
    iget-object v3, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->stack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public processRow()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 606
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 607
    .local v6, row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfPCell;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 608
    .local v1, cellWidths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Float;>;"
    const/4 v5, 0x0

    .line 610
    .local v5, percentage:Z
    const/4 v8, 0x0

    .line 611
    .local v8, totalWidth:F
    const/4 v11, 0x0

    .line 612
    .local v11, zeroWidth:I
    const/4 v7, 0x0

    .line 614
    .local v7, table:Lcom/itextpdf/text/html/simpleparser/TableWrapper;
    :cond_0
    iget-object v12, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->stack:Ljava/util/Stack;

    invoke-virtual {v12}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/Element;

    .line 615
    .local v4, obj:Lcom/itextpdf/text/Element;
    instance-of v12, v4, Lcom/itextpdf/text/html/simpleparser/CellWrapper;

    if-eqz v12, :cond_1

    move-object v0, v4

    .line 616
    check-cast v0, Lcom/itextpdf/text/html/simpleparser/CellWrapper;

    .line 617
    .local v0, cell:Lcom/itextpdf/text/html/simpleparser/CellWrapper;
    invoke-virtual {v0}, Lcom/itextpdf/text/html/simpleparser/CellWrapper;->getWidth()F

    move-result v9

    .line 618
    .local v9, width:F
    new-instance v12, Ljava/lang/Float;

    invoke-direct {v12, v9}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    invoke-virtual {v0}, Lcom/itextpdf/text/html/simpleparser/CellWrapper;->isPercentage()Z

    move-result v12

    or-int/2addr v5, v12

    .line 620
    cmpl-float v12, v9, v13

    if-nez v12, :cond_5

    .line 621
    add-int/lit8 v11, v11, 0x1

    .line 626
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/text/html/simpleparser/CellWrapper;->getCell()Lcom/itextpdf/text/pdf/PdfPCell;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    .end local v0           #cell:Lcom/itextpdf/text/html/simpleparser/CellWrapper;
    .end local v9           #width:F
    :cond_1
    instance-of v12, v4, Lcom/itextpdf/text/html/simpleparser/TableWrapper;

    if-eqz v12, :cond_0

    move-object v7, v4

    .line 629
    check-cast v7, Lcom/itextpdf/text/html/simpleparser/TableWrapper;

    .line 633
    invoke-virtual {v7, v6}, Lcom/itextpdf/text/html/simpleparser/TableWrapper;->addRow(Ljava/util/List;)V

    .line 634
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_4

    .line 636
    const/high16 v12, 0x42c8

    sub-float v8, v12, v8

    .line 637
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 638
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v10, v12, [F

    .line 639
    .local v10, widths:[F
    const/4 v2, 0x0

    .line 640
    .local v2, hasZero:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v12, v10

    if-ge v3, v12, :cond_3

    .line 641
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    aput v12, v10, v3

    .line 642
    aget v12, v10, v3

    cmpl-float v12, v12, v13

    if-nez v12, :cond_2

    if-eqz v5, :cond_2

    if-lez v11, :cond_2

    .line 643
    int-to-float v12, v11

    div-float v12, v8, v12

    aput v12, v10, v3

    .line 645
    :cond_2
    aget v12, v10, v3

    cmpl-float v12, v12, v13

    if-nez v12, :cond_6

    .line 646
    const/4 v2, 0x1

    .line 650
    :cond_3
    if-nez v2, :cond_4

    .line 651
    invoke-virtual {v7, v10}, Lcom/itextpdf/text/html/simpleparser/TableWrapper;->setColWidths([F)V

    .line 653
    .end local v2           #hasZero:Z
    .end local v3           #i:I
    .end local v10           #widths:[F
    :cond_4
    iget-object v12, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->stack:Ljava/util/Stack;

    invoke-virtual {v12, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    return-void

    .line 624
    .restart local v0       #cell:Lcom/itextpdf/text/html/simpleparser/CellWrapper;
    .restart local v9       #width:F
    :cond_5
    add-float/2addr v8, v9

    goto :goto_0

    .line 640
    .end local v0           #cell:Lcom/itextpdf/text/html/simpleparser/CellWrapper;
    .end local v9           #width:F
    .restart local v2       #hasZero:Z
    .restart local v3       #i:I
    .restart local v10       #widths:[F
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public processTable()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 592
    iget-object v2, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/html/simpleparser/TableWrapper;

    .line 593
    .local v0, table:Lcom/itextpdf/text/html/simpleparser/TableWrapper;
    invoke-virtual {v0}, Lcom/itextpdf/text/html/simpleparser/TableWrapper;->createTable()Lcom/itextpdf/text/pdf/PdfPTable;

    move-result-object v1

    .line 594
    .local v1, tb:Lcom/itextpdf/text/pdf/PdfPTable;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfPTable;->setSplitRows(Z)V

    .line 595
    iget-object v2, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 596
    iget-object v2, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->document:Lcom/itextpdf/text/DocListener;

    invoke-interface {v2, v1}, Lcom/itextpdf/text/DocListener;->add(Lcom/itextpdf/text/Element;)Z

    .line 599
    :goto_0
    return-void

    .line 598
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/TextElementArray;

    invoke-interface {v2, v1}, Lcom/itextpdf/text/TextElementArray;->add(Lcom/itextpdf/text/Element;)Z

    goto :goto_0
.end method

.method public pushTableState()V
    .locals 4

    .prologue
    .line 688
    iget-object v0, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->tableState:Ljava/util/Stack;

    const/4 v1, 0x2

    new-array v1, v1, [Z

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->pendingTR:Z

    aput-boolean v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->pendingTD:Z

    aput-boolean v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    return-void
.end method

.method public pushToStack(Lcom/itextpdf/text/Element;)V
    .locals 1
    .parameter "element"

    .prologue
    .line 312
    if-eqz p1, :cond_0

    .line 313
    iget-object v0, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    :cond_0
    return-void
.end method

.method public resetPageCount()V
    .locals 0

    .prologue
    .line 865
    return-void
.end method

.method public setInsidePRE(Z)V
    .locals 0
    .parameter "insidePRE"

    .prologue
    .line 763
    iput-boolean p1, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->insidePRE:Z

    .line 764
    return-void
.end method

.method public setInterfaceProps(Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 911
    .local p1, providers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->setProviders(Ljava/util/Map;)V

    .line 912
    return-void
.end method

.method public setMarginMirroring(Z)Z
    .locals 1
    .parameter "marginMirroring"

    .prologue
    .line 871
    const/4 v0, 0x0

    return v0
.end method

.method public setMarginMirroringTopBottom(Z)Z
    .locals 1
    .parameter "marginMirroring"

    .prologue
    .line 879
    const/4 v0, 0x0

    return v0
.end method

.method public setMargins(FFFF)Z
    .locals 1
    .parameter "marginLeft"
    .parameter "marginRight"
    .parameter "marginTop"
    .parameter "marginBottom"

    .prologue
    .line 887
    const/4 v0, 0x1

    return v0
.end method

.method public setPageCount(I)V
    .locals 0
    .parameter "pageN"

    .prologue
    .line 894
    return-void
.end method

.method public setPageSize(Lcom/itextpdf/text/Rectangle;)Z
    .locals 1
    .parameter "pageSize"

    .prologue
    .line 900
    const/4 v0, 0x1

    return v0
.end method

.method public setPendingLI(Z)V
    .locals 0
    .parameter "pendingLI"

    .prologue
    .line 747
    iput-boolean p1, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->pendingLI:Z

    .line 748
    return-void
.end method

.method public setPendingTD(Z)V
    .locals 0
    .parameter "pendingTD"

    .prologue
    .line 731
    iput-boolean p1, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->pendingTD:Z

    .line 732
    return-void
.end method

.method public setPendingTR(Z)V
    .locals 0
    .parameter "pendingTR"

    .prologue
    .line 715
    iput-boolean p1, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->pendingTR:Z

    .line 716
    return-void
.end method

.method public setProviders(Ljava/util/Map;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 386
    .local p1, providers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_1

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    iput-object p1, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->providers:Ljava/util/Map;

    .line 389
    const/4 v0, 0x0

    .line 390
    .local v0, ff:Lcom/itextpdf/text/FontProvider;
    if-eqz p1, :cond_2

    .line 391
    const-string v1, "font_factory"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #ff:Lcom/itextpdf/text/FontProvider;
    check-cast v0, Lcom/itextpdf/text/FontProvider;

    .line 392
    .restart local v0       #ff:Lcom/itextpdf/text/FontProvider;
    :cond_2
    if-eqz v0, :cond_0

    .line 393
    iget-object v1, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->factory:Lcom/itextpdf/text/html/simpleparser/ElementFactory;

    invoke-virtual {v1, v0}, Lcom/itextpdf/text/html/simpleparser/ElementFactory;->setFontProvider(Lcom/itextpdf/text/FontProvider;)V

    goto :goto_0
.end method

.method public setSkipText(Z)V
    .locals 0
    .parameter "skipText"

    .prologue
    .line 779
    iput-boolean p1, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->skipText:Z

    .line 780
    return-void
.end method

.method public setStyleSheet(Lcom/itextpdf/text/html/simpleparser/StyleSheet;)V
    .locals 0
    .parameter "style"

    .prologue
    .line 141
    if-nez p1, :cond_0

    .line 142
    new-instance p1, Lcom/itextpdf/text/html/simpleparser/StyleSheet;

    .end local p1
    invoke-direct {p1}, Lcom/itextpdf/text/html/simpleparser/StyleSheet;-><init>()V

    .line 143
    .restart local p1
    :cond_0
    iput-object p1, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->style:Lcom/itextpdf/text/html/simpleparser/StyleSheet;

    .line 144
    return-void
.end method

.method public setSupportedTags(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/html/simpleparser/HTMLTagProcessor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, tags:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/itextpdf/text/html/simpleparser/HTMLTagProcessor;>;"
    if-nez p1, :cond_0

    .line 132
    new-instance p1, Lcom/itextpdf/text/html/simpleparser/HTMLTagProcessors;

    .end local p1           #tags:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/itextpdf/text/html/simpleparser/HTMLTagProcessor;>;"
    invoke-direct {p1}, Lcom/itextpdf/text/html/simpleparser/HTMLTagProcessors;-><init>()V

    .line 133
    .restart local p1       #tags:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/itextpdf/text/html/simpleparser/HTMLTagProcessor;>;"
    :cond_0
    iput-object p1, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->tags:Ljava/util/Map;

    .line 134
    return-void
.end method

.method public startDocument()V
    .locals 3

    .prologue
    .line 180
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 181
    .local v0, attrs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->style:Lcom/itextpdf/text/html/simpleparser/StyleSheet;

    const-string v2, "body"

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/text/html/simpleparser/StyleSheet;->applyStyle(Ljava/lang/String;Ljava/util/Map;)V

    .line 182
    iget-object v1, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->chain:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    const-string v2, "body"

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->addToChain(Ljava/lang/String;Ljava/util/Map;)V

    .line 183
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .parameter "tag"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 189
    .local p2, attrs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->tags:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/html/simpleparser/HTMLTagProcessor;

    .line 190
    .local v1, htmlTag:Lcom/itextpdf/text/html/simpleparser/HTMLTagProcessor;
    if-nez v1, :cond_0

    .line 205
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->style:Lcom/itextpdf/text/html/simpleparser/StyleSheet;

    invoke-virtual {v2, p1, p2}, Lcom/itextpdf/text/html/simpleparser/StyleSheet;->applyStyle(Ljava/lang/String;Ljava/util/Map;)V

    .line 196
    iget-object v2, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->chain:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    invoke-static {p2, v2}, Lcom/itextpdf/text/html/simpleparser/StyleSheet;->resolveStyleAttribute(Ljava/util/Map;Lcom/itextpdf/text/html/simpleparser/ChainedProperties;)V

    .line 199
    :try_start_0
    invoke-interface {v1, p0, p1, p2}, Lcom/itextpdf/text/html/simpleparser/HTMLTagProcessor;->startElement(Lcom/itextpdf/text/html/simpleparser/HTMLWorker;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, e:Lcom/itextpdf/text/DocumentException;
    new-instance v2, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v2, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 202
    .end local v0           #e:Lcom/itextpdf/text/DocumentException;
    :catch_1
    move-exception v0

    .line 203
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v2, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public text(Ljava/lang/String;)V
    .locals 2
    .parameter "content"

    .prologue
    .line 211
    iget-boolean v1, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->skipText:Z

    if-eqz v1, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    if-nez v1, :cond_2

    .line 214
    invoke-virtual {p0}, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->createParagraph()Lcom/itextpdf/text/Paragraph;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    .line 216
    :cond_2
    iget-boolean v1, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->insidePRE:Z

    if-nez v1, :cond_4

    .line 218
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 221
    :cond_3
    invoke-static {p1}, Lcom/itextpdf/text/html/HtmlUtilities;->eliminateWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 223
    :cond_4
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->createChunk(Ljava/lang/String;)Lcom/itextpdf/text/Chunk;

    move-result-object v0

    .line 224
    .local v0, chunk:Lcom/itextpdf/text/Chunk;
    iget-object v1, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    invoke-virtual {v1, v0}, Lcom/itextpdf/text/Paragraph;->add(Lcom/itextpdf/text/Element;)Z

    goto :goto_0
.end method

.method public updateChain(Ljava/lang/String;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 332
    iget-object v0, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->chain:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->removeChain(Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method public updateChain(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .parameter "tag"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 323
    .local p2, attrs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->chain:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->addToChain(Ljava/lang/String;Ljava/util/Map;)V

    .line 324
    return-void
.end method
