.class public Lcom/itextpdf/text/Meta;
.super Ljava/lang/Object;
.source "Meta.java"

# interfaces
.implements Lcom/itextpdf/text/Element;


# static fields
.field public static final AUTHOR:Ljava/lang/String; = "author"

.field public static final CREATIONDATE:Ljava/lang/String; = "creationdate"

.field public static final KEYWORDS:Ljava/lang/String; = "keywords"

.field public static final PRODUCER:Ljava/lang/String; = "producer"

.field public static final SUBJECT:Ljava/lang/String; = "subject"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final UNKNOWN:Ljava/lang/String; = "unknown"


# instance fields
.field private final content:Ljava/lang/StringBuffer;

.field private final type:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "type"
    .parameter "content"

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput p1, p0, Lcom/itextpdf/text/Meta;->type:I

    .line 124
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/text/Meta;->content:Ljava/lang/StringBuffer;

    .line 125
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "content"

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    invoke-static {p1}, Lcom/itextpdf/text/Meta;->getType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/Meta;->type:I

    .line 135
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/text/Meta;->content:Ljava/lang/StringBuffer;

    .line 136
    return-void
.end method

.method public static getType(Ljava/lang/String;)I
    .locals 1
    .parameter "tag"

    .prologue
    .line 245
    const-string v0, "subject"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    const/4 v0, 0x2

    .line 263
    :goto_0
    return v0

    .line 248
    :cond_0
    const-string v0, "keywords"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    const/4 v0, 0x3

    goto :goto_0

    .line 251
    :cond_1
    const-string v0, "author"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 252
    const/4 v0, 0x4

    goto :goto_0

    .line 254
    :cond_2
    const-string v0, "title"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 255
    const/4 v0, 0x1

    goto :goto_0

    .line 257
    :cond_3
    const-string v0, "producer"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 258
    const/4 v0, 0x5

    goto :goto_0

    .line 260
    :cond_4
    const-string v0, "creationdate"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 261
    const/4 v0, 0x6

    goto :goto_0

    .line 263
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 1
    .parameter "string"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/itextpdf/text/Meta;->content:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getChunks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/itextpdf/text/Chunk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/itextpdf/text/Meta;->content:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/itextpdf/text/Meta;->type:I

    packed-switch v0, :pswitch_data_0

    .line 234
    const-string v0, "unknown"

    :goto_0
    return-object v0

    .line 222
    :pswitch_0
    const-string v0, "subject"

    goto :goto_0

    .line 224
    :pswitch_1
    const-string v0, "keywords"

    goto :goto_0

    .line 226
    :pswitch_2
    const-string v0, "author"

    goto :goto_0

    .line 228
    :pswitch_3
    const-string v0, "title"

    goto :goto_0

    .line 230
    :pswitch_4
    const-string v0, "producer"

    goto :goto_0

    .line 232
    :pswitch_5
    const-string v0, "creationdate"

    goto :goto_0

    .line 220
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public isContent()Z
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public isNestable()Z
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public process(Lcom/itextpdf/text/ElementListener;)Z
    .locals 2
    .parameter "listener"

    .prologue
    .line 149
    :try_start_0
    invoke-interface {p1, p0}, Lcom/itextpdf/text/ElementListener;->add(Lcom/itextpdf/text/Element;)Z
    :try_end_0
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 152
    :goto_0
    return v1

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, de:Lcom/itextpdf/text/DocumentException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public type()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/itextpdf/text/Meta;->type:I

    return v0
.end method
