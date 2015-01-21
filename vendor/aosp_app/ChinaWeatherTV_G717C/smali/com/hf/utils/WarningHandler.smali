.class public Lcom/hf/utils/WarningHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "WarningHandler.java"


# static fields
.field private static final ALERT_ID:Ljava/lang/String; = "alert_id"

.field private static final CHANGE:Ljava/lang/String; = "change"

.field private static final CITY:Ljava/lang/String; = "city"

.field private static final EN:Ljava/lang/String; = "en"

.field private static final EXPLAIN:Ljava/lang/String; = "explain"

.field private static final FU_HAO:Ljava/lang/String; = "fuhao"

.field private static final PUBLISH_DATE:Ljava/lang/String; = "pubdate"

.field private static final TITLE:Ljava/lang/String; = "title"


# instance fields
.field private isCity:Z

.field private isEn:Z

.field private isExplain:Z

.field private isImage:Z

.field private isTitle:Z

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hf/model/WarningModel;",
            ">;"
        }
    .end annotation
.end field

.field mWarning:Lcom/hf/model/WarningModel;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 29
    iput-boolean v0, p0, Lcom/hf/utils/WarningHandler;->isCity:Z

    .line 30
    iput-boolean v0, p0, Lcom/hf/utils/WarningHandler;->isTitle:Z

    .line 31
    iput-boolean v0, p0, Lcom/hf/utils/WarningHandler;->isImage:Z

    .line 32
    iput-boolean v0, p0, Lcom/hf/utils/WarningHandler;->isExplain:Z

    .line 33
    iput-boolean v0, p0, Lcom/hf/utils/WarningHandler;->isEn:Z

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hf/utils/WarningHandler;->mList:Ljava/util/List;

    .line 39
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 106
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/hf/utils/WarningHandler;->value:Ljava/lang/String;

    .line 107
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    .line 108
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 72
    iget-object v0, p0, Lcom/hf/utils/WarningHandler;->mWarning:Lcom/hf/model/WarningModel;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/hf/model/WarningModel;

    invoke-direct {v0}, Lcom/hf/model/WarningModel;-><init>()V

    iput-object v0, p0, Lcom/hf/utils/WarningHandler;->mWarning:Lcom/hf/model/WarningModel;

    .line 76
    :cond_0
    iget-boolean v0, p0, Lcom/hf/utils/WarningHandler;->isTitle:Z

    if-eqz v0, :cond_2

    .line 77
    iget-object v0, p0, Lcom/hf/utils/WarningHandler;->mWarning:Lcom/hf/model/WarningModel;

    iget-object v1, p0, Lcom/hf/utils/WarningHandler;->value:Ljava/lang/String;

    iput-object v1, v0, Lcom/hf/model/WarningModel;->title:Ljava/lang/String;

    .line 78
    iput-boolean v3, p0, Lcom/hf/utils/WarningHandler;->isTitle:Z

    .line 100
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void

    .line 79
    :cond_2
    iget-boolean v0, p0, Lcom/hf/utils/WarningHandler;->isImage:Z

    if-eqz v0, :cond_3

    .line 80
    iget-object v0, p0, Lcom/hf/utils/WarningHandler;->mWarning:Lcom/hf/model/WarningModel;

    iget-object v1, p0, Lcom/hf/utils/WarningHandler;->value:Ljava/lang/String;

    invoke-static {v1}, Lcom/hf/utils/Util;->getWarningImageId(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/hf/model/WarningModel;->bigImageId:I

    .line 81
    iget-object v0, p0, Lcom/hf/utils/WarningHandler;->mWarning:Lcom/hf/model/WarningModel;

    iget-object v1, p0, Lcom/hf/utils/WarningHandler;->value:Ljava/lang/String;

    iget-object v2, p0, Lcom/hf/utils/WarningHandler;->mWarning:Lcom/hf/model/WarningModel;

    iget-object v2, v2, Lcom/hf/model/WarningModel;->change:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/hf/utils/Util;->getPreventiveId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/hf/model/WarningModel;->priventiveId:I

    .line 82
    iput-boolean v3, p0, Lcom/hf/utils/WarningHandler;->isImage:Z

    goto :goto_0

    .line 83
    :cond_3
    iget-boolean v0, p0, Lcom/hf/utils/WarningHandler;->isExplain:Z

    if-eqz v0, :cond_4

    .line 84
    iget-object v0, p0, Lcom/hf/utils/WarningHandler;->mWarning:Lcom/hf/model/WarningModel;

    iget-object v1, p0, Lcom/hf/utils/WarningHandler;->value:Ljava/lang/String;

    iput-object v1, v0, Lcom/hf/model/WarningModel;->decription:Ljava/lang/String;

    .line 85
    iput-boolean v3, p0, Lcom/hf/utils/WarningHandler;->isExplain:Z

    goto :goto_0

    .line 86
    :cond_4
    iget-boolean v0, p0, Lcom/hf/utils/WarningHandler;->isCity:Z

    if-eqz v0, :cond_7

    .line 87
    iget-object v0, p0, Lcom/hf/utils/WarningHandler;->mList:Ljava/util/List;

    if-nez v0, :cond_5

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hf/utils/WarningHandler;->mList:Ljava/util/List;

    .line 90
    :cond_5
    iget-object v0, p0, Lcom/hf/utils/WarningHandler;->mList:Ljava/util/List;

    iget-object v1, p0, Lcom/hf/utils/WarningHandler;->mWarning:Lcom/hf/model/WarningModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    sget-boolean v0, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v0, :cond_6

    .line 92
    const-string v0, "endElement"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hf/utils/WarningHandler;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; title = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hf/utils/WarningHandler;->mWarning:Lcom/hf/model/WarningModel;

    iget-object v2, v2, Lcom/hf/model/WarningModel;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_6
    iput-boolean v3, p0, Lcom/hf/utils/WarningHandler;->isCity:Z

    goto :goto_0

    .line 95
    :cond_7
    iget-boolean v0, p0, Lcom/hf/utils/WarningHandler;->isEn:Z

    if-eqz v0, :cond_1

    .line 96
    iput-boolean v3, p0, Lcom/hf/utils/WarningHandler;->isEn:Z

    .line 97
    iget-object v0, p0, Lcom/hf/utils/WarningHandler;->mWarning:Lcom/hf/model/WarningModel;

    iget-object v1, p0, Lcom/hf/utils/WarningHandler;->value:Ljava/lang/String;

    iput-object v1, v0, Lcom/hf/model/WarningModel;->englishTitle:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/hf/model/WarningModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/hf/utils/WarningHandler;->mList:Ljava/util/List;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 48
    const-string v3, "city"

    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 49
    iput-boolean v4, p0, Lcom/hf/utils/WarningHandler;->isCity:Z

    .line 50
    new-instance v3, Lcom/hf/model/WarningModel;

    invoke-direct {v3}, Lcom/hf/model/WarningModel;-><init>()V

    iput-object v3, p0, Lcom/hf/utils/WarningHandler;->mWarning:Lcom/hf/model/WarningModel;

    .line 51
    const-string v3, "pubdate"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, reportTime:Ljava/lang/String;
    iget-object v3, p0, Lcom/hf/utils/WarningHandler;->mWarning:Lcom/hf/model/WarningModel;

    iput-object v2, v3, Lcom/hf/model/WarningModel;->reportTime:Ljava/lang/String;

    .line 53
    const-string v3, "alert_id"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, alert_id:Ljava/lang/String;
    iget-object v3, p0, Lcom/hf/utils/WarningHandler;->mWarning:Lcom/hf/model/WarningModel;

    iput-object v0, v3, Lcom/hf/model/WarningModel;->alertId:Ljava/lang/String;

    .line 55
    const-string v3, "change"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, change:Ljava/lang/String;
    iget-object v3, p0, Lcom/hf/utils/WarningHandler;->mWarning:Lcom/hf/model/WarningModel;

    iput-object v1, v3, Lcom/hf/model/WarningModel;->change:Ljava/lang/String;

    .line 66
    .end local v0           #alert_id:Ljava/lang/String;
    .end local v1           #change:Ljava/lang/String;
    .end local v2           #reportTime:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    const-string v3, "title"

    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 58
    iput-boolean v4, p0, Lcom/hf/utils/WarningHandler;->isTitle:Z

    goto :goto_0

    .line 59
    :cond_2
    const-string v3, "fuhao"

    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 60
    iput-boolean v4, p0, Lcom/hf/utils/WarningHandler;->isImage:Z

    goto :goto_0

    .line 61
    :cond_3
    const-string v3, "explain"

    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 62
    iput-boolean v4, p0, Lcom/hf/utils/WarningHandler;->isExplain:Z

    goto :goto_0

    .line 63
    :cond_4
    const-string v3, "en"

    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    iput-boolean v4, p0, Lcom/hf/utils/WarningHandler;->isEn:Z

    goto :goto_0
.end method
