.class public Lcom/mediatek/bluetooth/map/mime/MimeParser;
.super Ljava/lang/Object;
.source "MimeParser.java"

# interfaces
.implements Lcom/mediatek/bluetooth/map/mime/MimeListener;


# static fields
.field private static final DATE_FORMAT:Ljava/text/SimpleDateFormat; = null

.field private static final TAG:Ljava/lang/String; = "MimeParser"


# instance fields
.field private attachList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;",
            ">;"
        }
    .end annotation
.end field

.field private bodyCache:Ljava/lang/StringBuilder;

.field private isMessageHeaderEnd:Z

.field private mAttachment:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;

.field private mBody:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeBody;

.field private mBoundary:Ljava/lang/String;

.field private mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

.field private mMime:Lcom/mediatek/bluetooth/map/mime/MimeBase;

.field private mSeparator:Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;

.field private mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/mediatek/bluetooth/map/mime/MimeParser;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/mediatek/bluetooth/map/mime/MimeBase;)V
    .locals 1
    .parameter "in"
    .parameter "mime"

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeParser;->mSize:I

    .line 74
    iput-boolean v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeParser;->isMessageHeaderEnd:Z

    .line 79
    new-instance v0, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;

    invoke-direct {v0, p1, p0}, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;-><init>(Ljava/io/InputStream;Lcom/mediatek/bluetooth/map/mime/MimeListener;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeParser;->mSeparator:Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;

    .line 80
    iput-object p2, p0, Lcom/mediatek/bluetooth/map/mime/MimeParser;->mMime:Lcom/mediatek/bluetooth/map/mime/MimeBase;

    .line 81
    invoke-virtual {p2}, Lcom/mediatek/bluetooth/map/mime/MimeBase;->getHeader()Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeParser;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    .line 82
    invoke-virtual {p2}, Lcom/mediatek/bluetooth/map/mime/MimeBase;->getBody()Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeBody;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeParser;->mBody:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeBody;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeParser;->attachList:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeParser;->bodyCache:Ljava/lang/StringBuilder;

    .line 86
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 292
    if-eqz p1, :cond_0

    .line 293
    const-string v0, "MimeParser"

    invoke-static {v0, p1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_0
    return-void
.end method

.method private processAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 193
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetooth/map/Address;->getFormatAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private processContentDisposition(Ljava/lang/String;)V
    .locals 9
    .parameter "value"

    .prologue
    const/4 v8, -0x1

    .line 245
    const/4 v0, 0x0

    .line 246
    .local v0, disposition:Ljava/lang/String;
    const/4 v3, 0x0

    .line 247
    .local v3, fileName:Ljava/lang/String;
    iget-object v6, p0, Lcom/mediatek/bluetooth/map/mime/MimeParser;->mAttachment:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;

    if-nez v6, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    const-string v6, ";"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, elements:[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v6, v1, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 253
    const/4 v2, 0x1

    .local v2, elementsindex:I
    :goto_1
    array-length v6, v1

    if-ge v2, v6, :cond_5

    .line 255
    aget-object v6, v1, v2

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 256
    .local v5, sub:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, index:I
    :goto_2
    if-eqz v5, :cond_4

    array-length v6, v5

    if-ge v4, v6, :cond_4

    .line 257
    aget-object v6, v5, v4

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "filename"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v8, :cond_3

    .line 258
    add-int/lit8 v6, v4, 0x1

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 256
    :cond_2
    :goto_3
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 259
    :cond_3
    aget-object v6, v5, v4

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "size"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v8, :cond_2

    .line 260
    add-int/lit8 v6, v4, 0x1

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/mediatek/bluetooth/map/mime/MimeParser;->mSize:I

    .line 261
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mSize is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/mediatek/bluetooth/map/mime/MimeParser;->mSize:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/bluetooth/map/mime/MimeParser;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 253
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 267
    .end local v4           #index:I
    .end local v5           #sub:[Ljava/lang/String;
    :cond_5
    iget-boolean v6, p0, Lcom/mediatek/bluetooth/map/mime/MimeParser;->isMessageHeaderEnd:Z

    if-nez v6, :cond_0

    .line 269
    iget-object v6, p0, Lcom/mediatek/bluetooth/map/mime/MimeParser;->mAttachment:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;

    iput-object v0, v6, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mLocation:Ljava/lang/String;

    .line 270
    iget-object v6, p0, Lcom/mediatek/bluetooth/map/mime/MimeParser;->mAttachment:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;

    iput-object v3, v6, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mFileName:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private processContentEncoding(Ljava/lang/String;)V
    .locals 1
    .parameter "encoding"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeParser;->mAttachment:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;

    if-nez v0, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    iget-boolean v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeParser;->isMessageHeaderEnd:Z

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeParser;->mAttachment:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;

    iput-object p1, v0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mEncoding:Ljava/lang/String;

    goto :goto_0
.end method

.method private processContentID(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeParser;->mAttachment:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;

    if-nez v0, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    iget-boolean v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeParser;->isMessageHeaderEnd:Z

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeParser;->mAttachment:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;

    iput-object p1, v0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mContentId:Ljava/lang/String;

    goto :goto_0
.end method

.method private processContentLocation(Ljava/lang/String;)V
    .locals 1
    .parameter "location"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeParser;->mAttachment:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;

    if-nez v0, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    iget-boolean v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeParser;->isMessageHeaderEnd:Z

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeParser;->mAttachment:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;

    iput-object p1, v0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mContentLocation:Ljava/lang/String;

    goto :goto_0
.end method

.method private processContentType(Ljava/lang/String;)V
    .locals 12
    .parameter "value"

    .prologue
    const/4 v11, -0x1

    .line 196
    const/4 v3, 0x0

    .line 197
    .local v3, contentType:Ljava/lang/String;
    const/4 v8, 0x0

    .line 198
    .local v8, type:Ljava/lang/String;
    const/4 v7, 0x0

    .line 199
    .local v7, name:Ljava/lang/String;
    const/4 v2, 0x0

    .line 200
    .local v2, charset:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 233
    :goto_0
    return-void

    .line 203
    :cond_0
    const-string v9, ";"

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 204
    .local v4, elements:[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v3, v4, v9

    .line 205
    const/4 v5, 0x1

    .local v5, elementsindex:I
    :goto_1
    array-length v9, v4

    if-ge v5, v9, :cond_6

    .line 207
    aget-object v9, v4, v5

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, boundary:[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, index:I
    :goto_2
    if-eqz v1, :cond_5

    array-length v9, v1

    if-ge v6, v9, :cond_5

    .line 209
    aget-object v9, v1, v6

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, "boundary"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v11, :cond_2

    .line 211
    add-int/lit8 v9, v6, 0x1

    aget-object v0, v1, v9

    .line 212
    .local v0, bnd:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x2

    if-le v9, v10, :cond_1

    .line 213
    const/4 v9, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/mediatek/bluetooth/map/mime/MimeParser;->mBoundary:Ljava/lang/String;

    .line 208
    .end local v0           #bnd:Ljava/lang/String;
    :cond_1
    :goto_3
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 215
    :cond_2
    aget-object v9, v1, v6

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, "name"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v11, :cond_3

    .line 216
    add-int/lit8 v9, v6, 0x1

    aget-object v9, v1, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 217
    :cond_3
    aget-object v9, v1, v6

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "charset"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v11, :cond_4

    .line 218
    add-int/lit8 v9, v6, 0x1

    aget-object v9, v1, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 220
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unknown type:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v1, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/mediatek/bluetooth/map/mime/MimeParser;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 205
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 226
    .end local v1           #boundary:[Ljava/lang/String;
    .end local v6           #index:I
    :cond_6
    iget-boolean v9, p0, Lcom/mediatek/bluetooth/map/mime/MimeParser;->isMessageHeaderEnd:Z

    if-nez v9, :cond_7

    .line 227
    iget-object v9, p0, Lcom/mediatek/bluetooth/map/mime/MimeParser;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    iput-object v3, v9, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mMiltipartType:Ljava/lang/String;

    goto/16 :goto_0

    .line 229
    :cond_7
    iget-object v9, p0, Lcom/mediatek/bluetooth/map/mime/MimeParser;->mAttachment:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;

    iput-object v3, v9, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mMimeType:Ljava/lang/String;

    .line 230
    iget-object v9, p0, Lcom/mediatek/bluetooth/map/mime/MimeParser;->mAttachment:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;

    iput-object v7, v9, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mName:Ljava/lang/String;

    .line 231
    iget-object v9, p0, Lcom/mediatek/bluetooth/map/mime/MimeParser;->mAttachment:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;

    iput-object v2, v9, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mCharset:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private processTimeStamp(Ljava/lang/String;)J
    .locals 5
    .parameter "time"

    .prologue
    const-wide/16 v2, 0x0

    .line 178
    if-nez p1, :cond_0

    .line 189
    :goto_0
    return-wide v2

    .line 182
    :cond_0
    :try_start_0
    sget-object v4, Lcom/mediatek/bluetooth/map/mime/MimeParser;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 183
    .local v0, date:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    goto :goto_0

    .line 184
    .end local v0           #date:Ljava/util/Date;
    :catch_0
    move-exception v1

    .line 185
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/bluetooth/map/mime/MimeParser;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 186
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 187
    .local v1, e:Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/bluetooth/map/mime/MimeParser;->log(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onBodyEnd()V
    .locals 2

    .prologue
    .line 165
    const-string v0, "onBodyEnd"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/mime/MimeParser;->log(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeParser;->attachList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mediatek/bluetooth/map/mime/MimeParser;->mAttachment:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeParser;->mAttachment:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;

    .line 168
    return-void
.end method

.method public onBodyFail()V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method public onBodyStart()V
    .locals 2

    .prologue
    .line 160
    const-string v0, "onBodyStart"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/mime/MimeParser;->log(Ljava/lang/String;)V

    .line 161
    new-instance v0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;

    iget-object v1, p0, Lcom/mediatek/bluetooth/map/mime/MimeParser;->mMime:Lcom/mediatek/bluetooth/map/mime/MimeBase;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;-><init>(Lcom/mediatek/bluetooth/map/mime/MimeBase;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeParser;->mAttachment:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;

    .line 162
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeParser;->mSize:I

    .line 163
    return-void
.end method

.method public onContentAdd([B)V
    .locals 2
    .parameter "value"

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onContentAdd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/mime/MimeParser;->log(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeParser;->mAttachment:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;

    iput-object p1, v0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mContentBytes:[B

    .line 174
    return-void

    .line 172
    :cond_0
    array-length v0, p1

    goto :goto_0
.end method

.method public onHeaderEnd()V
    .locals 1

    .prologue
    .line 113
    const-string v0, "onHeaderEnd"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/mime/MimeParser;->log(Ljava/lang/String;)V

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeParser;->isMessageHeaderEnd:Z

    .line 115
    return-void
.end method

.method public onHeaderFail()V
    .locals 1

    .prologue
    .line 117
    const-string v0, "onHeaderFail"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/mime/MimeParser;->log(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public onHeaderFieldAdd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "name"
    .parameter "value"

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHeaderFieldAdd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/mime/MimeParser;->log(Ljava/lang/String;)V

    .line 121
    if-nez p1, :cond_0

    .line 122
    const-string v0, "error, the header name is null"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/mime/MimeParser;->log(Ljava/lang/String;)V

    .line 157
    :goto_0
    return-void

    .line 125
    :cond_0
    const-string v0, "Date"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeParser;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    invoke-direct {p0, p2}, Lcom/mediatek/bluetooth/map/mime/MimeParser;->processTimeStamp(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mTimeStamp:J

    goto :goto_0

    .line 127
    :cond_1
    const-string v0, "Subject"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeParser;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    iput-object p2, v0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mSubject:Ljava/lang/String;

    goto :goto_0

    .line 129
    :cond_2
    const-string v0, "Message-ID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 130
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeParser;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    iput-object p2, v0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mMsgId:Ljava/lang/String;

    goto :goto_0

    .line 131
    :cond_3
    const-string v0, "From"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 132
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeParser;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    invoke-direct {p0, p2}, Lcom/mediatek/bluetooth/map/mime/MimeParser;->processAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mFrom:Ljava/lang/String;

    goto :goto_0

    .line 133
    :cond_4
    const-string v0, "Cc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 134
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeParser;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    invoke-direct {p0, p2}, Lcom/mediatek/bluetooth/map/mime/MimeParser;->processAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mCc:Ljava/lang/String;

    goto :goto_0

    .line 135
    :cond_5
    const-string v0, "To"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 136
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeParser;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    invoke-direct {p0, p2}, Lcom/mediatek/bluetooth/map/mime/MimeParser;->processAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mTo:Ljava/lang/String;

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", to is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/bluetooth/map/mime/MimeParser;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    iget-object v1, v1, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mTo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/mime/MimeParser;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 138
    :cond_6
    const-string v0, "Bcc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 139
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeParser;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    invoke-direct {p0, p2}, Lcom/mediatek/bluetooth/map/mime/MimeParser;->processAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mBcc:Ljava/lang/String;

    goto/16 :goto_0

    .line 140
    :cond_7
    const-string v0, "Reply-To"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 141
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeParser;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    invoke-direct {p0, p2}, Lcom/mediatek/bluetooth/map/mime/MimeParser;->processAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mReplyTo:Ljava/lang/String;

    goto/16 :goto_0

    .line 142
    :cond_8
    const-string v0, "MIME-Version"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 143
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeParser;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    iput-object p2, v0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mVersion:Ljava/lang/String;

    goto/16 :goto_0

    .line 144
    :cond_9
    const-string v0, "Content-Type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 145
    invoke-direct {p0, p2}, Lcom/mediatek/bluetooth/map/mime/MimeParser;->processContentType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 146
    :cond_a
    const-string v0, "Content-ID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 147
    invoke-direct {p0, p2}, Lcom/mediatek/bluetooth/map/mime/MimeParser;->processContentID(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 148
    :cond_b
    const-string v0, "Content-Disposition"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 149
    invoke-direct {p0, p2}, Lcom/mediatek/bluetooth/map/mime/MimeParser;->processContentDisposition(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 150
    :cond_c
    const-string v0, "Content-Transfer-Encoding"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 151
    invoke-direct {p0, p2}, Lcom/mediatek/bluetooth/map/mime/MimeParser;->processContentEncoding(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 152
    :cond_d
    const-string v0, "Content-Location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 153
    invoke-direct {p0, p2}, Lcom/mediatek/bluetooth/map/mime/MimeParser;->processContentLocation(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 155
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsupported header field:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/mime/MimeParser;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onHeaderStart()V
    .locals 1

    .prologue
    .line 110
    const-string v0, "onHeaderStart"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/mime/MimeParser;->log(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public onMessageEnd()V
    .locals 3

    .prologue
    .line 96
    const-string v0, "onMessageEnd"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/mime/MimeParser;->log(Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/mime/MimeParser;->mMime:Lcom/mediatek/bluetooth/map/mime/MimeBase;

    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeParser;->attachList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;

    iput-object v0, v1, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mAttachment:[Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;

    .line 98
    return-void
.end method

.method public onMessageStart()V
    .locals 1

    .prologue
    .line 93
    const-string v0, "onMessageStart"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/mime/MimeParser;->log(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public onRequestBoundary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    const-string v0, "onRequestBoundary"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/mime/MimeParser;->log(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeParser;->mBoundary:Ljava/lang/String;

    return-object v0
.end method

.method public onRequestSize()I
    .locals 2

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRequestSize():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/bluetooth/map/mime/MimeParser;->mSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/mime/MimeParser;->log(Ljava/lang/String;)V

    .line 105
    iget v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeParser;->mSize:I

    return v0
.end method

.method public parse()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeParser;->mSeparator:Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/map/mime/MimeInputSeparator;->separate()V

    .line 90
    return-void
.end method
