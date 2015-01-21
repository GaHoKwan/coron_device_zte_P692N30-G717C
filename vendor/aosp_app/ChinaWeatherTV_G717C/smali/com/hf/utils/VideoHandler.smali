.class public Lcom/hf/utils/VideoHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "VideoHandler.java"


# static fields
.field private static final IMAGE:Ljava/lang/String; = "Image"

.field private static final TITLE:Ljava/lang/String; = "Title"

.field private static final URL_STR:Ljava/lang/String; = "URL"

.field private static final VIDEO_ENGLISH_NAME:Ljava/lang/String; = "En"

.field private static final VIDEO_FILE:Ljava/lang/String; = "VideoFile"

.field private static final VIDEO_SIZE:Ljava/lang/String; = "Size"


# instance fields
.field private isEn:Z

.field private isImage:Z

.field private isSize:Z

.field private isTitle:Z

.field private isURL:Z

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hf/model/VideoModel;",
            ">;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/String;

.field private video:Lcom/hf/model/VideoModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 25
    iput-boolean v0, p0, Lcom/hf/utils/VideoHandler;->isImage:Z

    .line 26
    iput-boolean v0, p0, Lcom/hf/utils/VideoHandler;->isTitle:Z

    .line 27
    iput-boolean v0, p0, Lcom/hf/utils/VideoHandler;->isURL:Z

    .line 28
    iput-boolean v0, p0, Lcom/hf/utils/VideoHandler;->isEn:Z

    .line 29
    iput-boolean v0, p0, Lcom/hf/utils/VideoHandler;->isSize:Z

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hf/utils/VideoHandler;->mList:Ljava/util/List;

    .line 37
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 3
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    .line 71
    iget-boolean v0, p0, Lcom/hf/utils/VideoHandler;->isTitle:Z

    if-eqz v0, :cond_1

    .line 72
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/hf/utils/VideoHandler;->value:Ljava/lang/String;

    .line 73
    sget-boolean v0, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v0, :cond_0

    .line 74
    const-string v0, "VideoHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "title = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hf/utils/VideoHandler;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    iget-boolean v0, p0, Lcom/hf/utils/VideoHandler;->isImage:Z

    if-eqz v0, :cond_2

    .line 77
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/hf/utils/VideoHandler;->value:Ljava/lang/String;

    .line 78
    sget-boolean v0, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v0, :cond_0

    .line 79
    const-string v0, "characters"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isImage = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hf/utils/VideoHandler;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";\n length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hf/utils/VideoHandler;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 81
    :cond_2
    iget-boolean v0, p0, Lcom/hf/utils/VideoHandler;->isURL:Z

    if-eqz v0, :cond_3

    .line 82
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/hf/utils/VideoHandler;->value:Ljava/lang/String;

    .line 83
    sget-boolean v0, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v0, :cond_0

    .line 84
    const-string v0, "VideoHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "url_str = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hf/utils/VideoHandler;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 86
    :cond_3
    iget-boolean v0, p0, Lcom/hf/utils/VideoHandler;->isEn:Z

    if-eqz v0, :cond_4

    .line 87
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/hf/utils/VideoHandler;->value:Ljava/lang/String;

    goto :goto_0

    .line 88
    :cond_4
    iget-boolean v0, p0, Lcom/hf/utils/VideoHandler;->isSize:Z

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/hf/utils/VideoHandler;->value:Ljava/lang/String;

    .line 90
    sget-boolean v0, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v0, :cond_0

    .line 91
    const-string v0, "VideoHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "video_size = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hf/utils/VideoHandler;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/hf/utils/VideoHandler;->video:Lcom/hf/model/VideoModel;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/hf/model/VideoModel;

    invoke-direct {v0}, Lcom/hf/model/VideoModel;-><init>()V

    iput-object v0, p0, Lcom/hf/utils/VideoHandler;->video:Lcom/hf/model/VideoModel;

    .line 105
    :cond_0
    const-string v0, "VideoFile"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 106
    iget-object v0, p0, Lcom/hf/utils/VideoHandler;->mList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hf/utils/VideoHandler;->mList:Ljava/util/List;

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/hf/utils/VideoHandler;->mList:Ljava/util/List;

    iget-object v1, p0, Lcom/hf/utils/VideoHandler;->video:Lcom/hf/model/VideoModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_2
    :goto_0
    return-void

    .line 110
    :cond_3
    const-string v0, "Title"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 111
    iput-boolean v1, p0, Lcom/hf/utils/VideoHandler;->isTitle:Z

    .line 112
    iget-object v0, p0, Lcom/hf/utils/VideoHandler;->video:Lcom/hf/model/VideoModel;

    iget-object v1, p0, Lcom/hf/utils/VideoHandler;->value:Ljava/lang/String;

    iput-object v1, v0, Lcom/hf/model/VideoModel;->title:Ljava/lang/String;

    goto :goto_0

    .line 114
    :cond_4
    const-string v0, "Image"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 115
    iput-boolean v1, p0, Lcom/hf/utils/VideoHandler;->isImage:Z

    .line 116
    iget-object v0, p0, Lcom/hf/utils/VideoHandler;->video:Lcom/hf/model/VideoModel;

    iget-object v1, p0, Lcom/hf/utils/VideoHandler;->value:Ljava/lang/String;

    iput-object v1, v0, Lcom/hf/model/VideoModel;->image:Ljava/lang/String;

    goto :goto_0

    .line 119
    :cond_5
    const-string v0, "URL"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 120
    iput-boolean v1, p0, Lcom/hf/utils/VideoHandler;->isURL:Z

    .line 121
    iget-object v0, p0, Lcom/hf/utils/VideoHandler;->video:Lcom/hf/model/VideoModel;

    iget-object v1, p0, Lcom/hf/utils/VideoHandler;->value:Ljava/lang/String;

    iput-object v1, v0, Lcom/hf/model/VideoModel;->url:Ljava/lang/String;

    goto :goto_0

    .line 125
    :cond_6
    const-string v0, "En"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 126
    iput-boolean v1, p0, Lcom/hf/utils/VideoHandler;->isEn:Z

    .line 127
    iget-object v0, p0, Lcom/hf/utils/VideoHandler;->video:Lcom/hf/model/VideoModel;

    iget-object v1, p0, Lcom/hf/utils/VideoHandler;->value:Ljava/lang/String;

    iput-object v1, v0, Lcom/hf/model/VideoModel;->englishName:Ljava/lang/String;

    goto :goto_0

    .line 128
    :cond_7
    const-string v0, "Size"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    iput-boolean v1, p0, Lcom/hf/utils/VideoHandler;->isSize:Z

    .line 130
    iget-object v0, p0, Lcom/hf/utils/VideoHandler;->video:Lcom/hf/model/VideoModel;

    iget-object v1, p0, Lcom/hf/utils/VideoHandler;->value:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/hf/model/VideoModel;->size:I

    goto :goto_0
.end method

.method public getVideoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/hf/model/VideoModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/hf/utils/VideoHandler;->mList:Ljava/util/List;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
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
    const/4 v1, 0x1

    .line 46
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 47
    const-string v0, "VideoFile"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    new-instance v0, Lcom/hf/model/VideoModel;

    invoke-direct {v0}, Lcom/hf/model/VideoModel;-><init>()V

    iput-object v0, p0, Lcom/hf/utils/VideoHandler;->video:Lcom/hf/model/VideoModel;

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    const-string v0, "Title"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/hf/utils/VideoHandler;->value:Ljava/lang/String;

    .line 51
    iput-boolean v1, p0, Lcom/hf/utils/VideoHandler;->isTitle:Z

    goto :goto_0

    .line 52
    :cond_2
    const-string v0, "Image"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/hf/utils/VideoHandler;->value:Ljava/lang/String;

    .line 54
    iput-boolean v1, p0, Lcom/hf/utils/VideoHandler;->isImage:Z

    goto :goto_0

    .line 55
    :cond_3
    const-string v0, "URL"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/hf/utils/VideoHandler;->value:Ljava/lang/String;

    .line 57
    iput-boolean v1, p0, Lcom/hf/utils/VideoHandler;->isURL:Z

    goto :goto_0

    .line 58
    :cond_4
    const-string v0, "En"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/hf/utils/VideoHandler;->value:Ljava/lang/String;

    .line 60
    iput-boolean v1, p0, Lcom/hf/utils/VideoHandler;->isEn:Z

    goto :goto_0

    .line 61
    :cond_5
    const-string v0, "Size"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/hf/utils/VideoHandler;->value:Ljava/lang/String;

    .line 63
    iput-boolean v1, p0, Lcom/hf/utils/VideoHandler;->isSize:Z

    goto :goto_0
.end method
