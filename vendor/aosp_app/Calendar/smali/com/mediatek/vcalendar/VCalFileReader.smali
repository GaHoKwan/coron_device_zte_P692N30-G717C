.class public Lcom/mediatek/vcalendar/VCalFileReader;
.super Ljava/lang/Object;
.source "VCalFileReader.java"


# static fields
.field private static final LINE_END_LENGTH:I = 0x2

.field private static final MARK_LENGTH:I = 0x2004

.field private static final MART_LINE_LENGTH:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "VCalFileReader"


# instance fields
.field private mBufferReader:Ljava/io/BufferedReader;

.field private final mComponentBeginLineList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mComponentCount:I

.field private final mComponentEndLineList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentCompnentType:Ljava/lang/String;

.field private mFirstComponentString:Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/content/Context;)V
    .locals 3
    .parameter "uri"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/vcalendar/VCalFileReader;->mComponentCount:I

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/vcalendar/VCalFileReader;->mComponentBeginLineList:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/vcalendar/VCalFileReader;->mComponentEndLineList:Ljava/util/ArrayList;

    .line 78
    iput-object p1, p0, Lcom/mediatek/vcalendar/VCalFileReader;->mUri:Landroid/net/Uri;

    .line 79
    iput-object p2, p0, Lcom/mediatek/vcalendar/VCalFileReader;->mContext:Landroid/content/Context;

    .line 80
    const-string v0, "VCalFileReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructor: srcUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/vcalendar/VCalFileReader;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/vcalendar/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-direct {p0}, Lcom/mediatek/vcalendar/VCalFileReader;->createBufferReader()V

    .line 82
    sget-object v0, Lcom/mediatek/vcalendar/component/VCalendar;->TIMEZONE_LIST:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 83
    const-string v0, ""

    sput-object v0, Lcom/mediatek/vcalendar/component/VCalendar;->sVersion:Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/mediatek/vcalendar/VCalFileReader;->mComponentBeginLineList:Ljava/util/ArrayList;

    const-string v1, "BEGIN:VEVENT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, Lcom/mediatek/vcalendar/VCalFileReader;->mComponentBeginLineList:Ljava/util/ArrayList;

    const-string v1, "BEGIN:VTODO"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, Lcom/mediatek/vcalendar/VCalFileReader;->mComponentEndLineList:Ljava/util/ArrayList;

    const-string v1, "END:VEVENT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Lcom/mediatek/vcalendar/VCalFileReader;->mComponentEndLineList:Ljava/util/ArrayList;

    const-string v1, "END:VTODO"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-direct {p0}, Lcom/mediatek/vcalendar/VCalFileReader;->initSummaryAndTz()V

    .line 92
    iget-object v0, p0, Lcom/mediatek/vcalendar/VCalFileReader;->mBufferReader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 93
    invoke-direct {p0}, Lcom/mediatek/vcalendar/VCalFileReader;->createBufferReader()V

    .line 94
    return-void
.end method

.method private createBufferReader()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 287
    iget-object v2, p0, Lcom/mediatek/vcalendar/VCalFileReader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/vcalendar/VCalFileReader;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 288
    .local v0, inputStream:Ljava/io/InputStream;
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 289
    .local v1, streamReader:Ljava/io/InputStreamReader;
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v2, p0, Lcom/mediatek/vcalendar/VCalFileReader;->mBufferReader:Ljava/io/BufferedReader;

    .line 290
    const-string v2, "VCalFileReader"

    const-string v3, "createBufferReader succeed."

    invoke-static {v2, v3}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method private findNextComponent()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x2004

    .line 271
    iget-object v2, p0, Lcom/mediatek/vcalendar/VCalFileReader;->mBufferReader:Ljava/io/BufferedReader;

    invoke-virtual {v2, v3}, Ljava/io/BufferedReader;->mark(I)V

    .line 274
    :goto_0
    iget-object v2, p0, Lcom/mediatek/vcalendar/VCalFileReader;->mBufferReader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, lineString:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 275
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 276
    .local v1, upperLineString:Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/vcalendar/VCalFileReader;->mComponentBeginLineList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 277
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/vcalendar/VCalFileReader;->mCurrentCompnentType:Ljava/lang/String;

    .line 278
    iget-object v2, p0, Lcom/mediatek/vcalendar/VCalFileReader;->mBufferReader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->reset()V

    .line 279
    const/4 v2, 0x1

    .line 283
    .end local v1           #upperLineString:Ljava/lang/String;
    :goto_1
    return v2

    .line 281
    .restart local v1       #upperLineString:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/mediatek/vcalendar/VCalFileReader;->mBufferReader:Ljava/io/BufferedReader;

    invoke-virtual {v2, v3}, Ljava/io/BufferedReader;->mark(I)V

    goto :goto_0

    .line 283
    .end local v1           #upperLineString:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private initSummaryAndTz()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    const/4 v3, 0x1

    .line 195
    .local v3, isFirstLine:Z
    const/4 v2, 0x0

    .line 196
    .local v2, isFirstComponent:Z
    const/4 v4, 0x0

    .line 197
    .local v4, isTimezone:Z
    const/4 v0, 0x0

    .line 199
    .local v0, builder:Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    iget-object v9, p0, Lcom/mediatek/vcalendar/VCalFileReader;->mBufferReader:Ljava/io/BufferedReader;

    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, lineString:Ljava/lang/String;
    if-eqz v5, :cond_9

    .line 200
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    .line 201
    .local v8, upperLineString:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 202
    const/4 v3, 0x0

    .line 203
    const-string v9, "BEGIN:VCALENDAR"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 204
    const/4 v9, 0x0

    iput v9, p0, Lcom/mediatek/vcalendar/VCalFileReader;->mComponentCount:I

    .line 210
    :cond_1
    const-string v9, "VERSION"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 211
    sput-object v8, Lcom/mediatek/vcalendar/component/VCalendar;->sVersion:Ljava/lang/String;

    .line 213
    :cond_2
    const-string v7, "TZ:"

    .line 214
    .local v7, tzPrefix:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 215
    const-string v9, ""

    invoke-virtual {v8, v7, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/mediatek/vcalendar/component/VCalendar;->sTz:Ljava/lang/String;

    .line 216
    const-string v9, "VCalFileReader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "initSummaryAndTz: sTz="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/mediatek/vcalendar/component/VCalendar;->sTz:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/vcalendar/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_3
    iget-object v9, p0, Lcom/mediatek/vcalendar/VCalFileReader;->mComponentBeginLineList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 220
    iget v9, p0, Lcom/mediatek/vcalendar/VCalFileReader;->mComponentCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/mediatek/vcalendar/VCalFileReader;->mComponentCount:I

    .line 221
    iget v9, p0, Lcom/mediatek/vcalendar/VCalFileReader;->mComponentCount:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    .line 222
    const/4 v2, 0x1

    .line 223
    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/mediatek/vcalendar/VCalFileReader;->mCurrentCompnentType:Ljava/lang/String;

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #builder:Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .restart local v0       #builder:Ljava/lang/StringBuilder;
    :cond_4
    const-string v9, "BEGIN:VTIMEZONE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 229
    const/4 v4, 0x1

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #builder:Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .restart local v0       #builder:Ljava/lang/StringBuilder;
    :cond_5
    if-eqz v4, :cond_7

    .line 235
    if-nez v0, :cond_6

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #builder:Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .restart local v0       #builder:Ljava/lang/StringBuilder;
    :cond_6
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    const-string v9, "END:VTIMEZONE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 240
    const/4 v6, 0x0

    .line 242
    .local v6, tz:Lcom/mediatek/vcalendar/component/VTimezone;
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/vcalendar/component/VComponentBuilder;->buildTimezone(Ljava/lang/String;)Lcom/mediatek/vcalendar/component/VTimezone;
    :try_end_0
    .catch Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 247
    :goto_1
    sget-object v9, Lcom/mediatek/vcalendar/component/VCalendar;->TIMEZONE_LIST:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    const/4 v0, 0x0

    .line 249
    const/4 v4, 0x0

    .line 253
    .end local v6           #tz:Lcom/mediatek/vcalendar/component/VTimezone;
    :cond_7
    if-eqz v2, :cond_0

    .line 255
    if-nez v0, :cond_8

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #builder:Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    .restart local v0       #builder:Ljava/lang/StringBuilder;
    :cond_8
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    iget-object v9, p0, Lcom/mediatek/vcalendar/VCalFileReader;->mComponentEndLineList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/mediatek/vcalendar/VCalFileReader;->mCurrentCompnentType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 260
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/mediatek/vcalendar/VCalFileReader;->mFirstComponentString:Ljava/lang/String;

    .line 261
    const/4 v0, 0x0

    .line 262
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 243
    .restart local v6       #tz:Lcom/mediatek/vcalendar/component/VTimezone;
    :catch_0
    move-exception v1

    .line 244
    .local v1, e:Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
    const-string v9, "VCalFileReader"

    const-string v10, "initSummaryAndTz: parse one timezone failed, but do not stop parse"

    invoke-static {v9, v10}, Lcom/mediatek/vcalendar/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 266
    .end local v1           #e:Lcom/mediatek/vcalendar/component/VComponentBuilder$FormatException;
    .end local v6           #tz:Lcom/mediatek/vcalendar/component/VTimezone;
    .end local v7           #tzPrefix:Ljava/lang/String;
    .end local v8           #upperLineString:Ljava/lang/String;
    :cond_9
    const-string v9, "VCalFileReader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "initSummaryAndTz end. the Events Count: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/mediatek/vcalendar/VCalFileReader;->mComponentCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/vcalendar/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v9, "VCalFileReader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "initSummaryAndTz end. the Timezone Count: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/mediatek/vcalendar/component/VCalendar;->TIMEZONE_LIST:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/vcalendar/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lcom/mediatek/vcalendar/VCalFileReader;->mBufferReader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 170
    const-string v0, "VCalFileReader"

    const-string v1, "closeBufferReader succeed."

    invoke-static {v0, v1}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public getComponentsCount()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/mediatek/vcalendar/VCalFileReader;->mComponentCount:I

    return v0
.end method

.method public getFirstComponentInfo()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lcom/mediatek/vcalendar/VCalFileReader;->mFirstComponentString:Ljava/lang/String;

    return-object v0
.end method

.method public hasNextComponent()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    iget-object v2, p0, Lcom/mediatek/vcalendar/VCalFileReader;->mBufferReader:Ljava/io/BufferedReader;

    const/16 v3, 0x2004

    invoke-virtual {v2, v3}, Ljava/io/BufferedReader;->mark(I)V

    .line 106
    :cond_0
    iget-object v2, p0, Lcom/mediatek/vcalendar/VCalFileReader;->mBufferReader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, lineString:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 107
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, upperLineString:Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/vcalendar/VCalFileReader;->mComponentBeginLineList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    iget-object v2, p0, Lcom/mediatek/vcalendar/VCalFileReader;->mBufferReader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->reset()V

    .line 110
    const/4 v2, 0x1

    .line 115
    .end local v1           #upperLineString:Ljava/lang/String;
    :goto_0
    return v2

    .line 114
    :cond_1
    iget-object v2, p0, Lcom/mediatek/vcalendar/VCalFileReader;->mBufferReader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->reset()V

    .line 115
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public readNextComponent()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 119
    const-string v4, "VCalFileReader"

    const-string v5, "readNextComponent: started."

    invoke-static {v4, v5}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-direct {p0}, Lcom/mediatek/vcalendar/VCalFileReader;->findNextComponent()Z

    move-result v4

    if-nez v4, :cond_1

    .line 121
    const-string v4, "VCalFileReader"

    const-string v5, "readNextComponent: findNextComponent = false, has no component yet."

    invoke-static {v4, v5}, Lcom/mediatek/vcalendar/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_0
    :goto_0
    return-object v3

    .line 127
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 128
    .local v0, buffer:Ljava/lang/StringBuffer;
    iget-object v4, p0, Lcom/mediatek/vcalendar/VCalFileReader;->mBufferReader:Ljava/io/BufferedReader;

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, lineString:Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/vcalendar/VCalFileReader;->mBufferReader:Ljava/io/BufferedReader;

    const/16 v5, 0xc8

    invoke-virtual {v4, v5}, Ljava/io/BufferedReader;->mark(I)V

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    :goto_1
    iget-object v4, p0, Lcom/mediatek/vcalendar/VCalFileReader;->mBufferReader:Ljava/io/BufferedReader;

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 146
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, upperLineString:Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/vcalendar/VCalFileReader;->mComponentEndLineList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 148
    iget-object v3, p0, Lcom/mediatek/vcalendar/VCalFileReader;->mCurrentCompnentType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 150
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "invalid format: begin with VEVENT, but end with VTODO etc."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 152
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 154
    :cond_3
    iget-object v4, p0, Lcom/mediatek/vcalendar/VCalFileReader;->mComponentBeginLineList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 156
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "invalid format: embeded VEVENTS etc."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 158
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method
