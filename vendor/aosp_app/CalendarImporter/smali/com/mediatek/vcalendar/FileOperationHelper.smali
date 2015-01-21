.class public Lcom/mediatek/vcalendar/FileOperationHelper;
.super Ljava/lang/Object;
.source "FileOperationHelper.java"


# static fields
.field private static final READ_MODE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FileOperationHelper"

.field private static final WRITE_MODE:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDstFile:Ljava/io/File;

.field private mIsClosed:Z

.field private final mMode:I

.field private mReader:Lcom/mediatek/vcalendar/VCalFileReader;

.field private final mSrcUri:Landroid/net/Uri;

.field private mVEventCount:I

.field private mWriter:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/content/Context;)V
    .locals 3
    .parameter "srcUri"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-boolean v1, p0, Lcom/mediatek/vcalendar/FileOperationHelper;->mIsClosed:Z

    .line 69
    iput-object p1, p0, Lcom/mediatek/vcalendar/FileOperationHelper;->mSrcUri:Landroid/net/Uri;

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/vcalendar/FileOperationHelper;->mDstFile:Ljava/io/File;

    .line 71
    iput v1, p0, Lcom/mediatek/vcalendar/FileOperationHelper;->mMode:I

    .line 72
    iput-object p2, p0, Lcom/mediatek/vcalendar/FileOperationHelper;->mContext:Landroid/content/Context;

    .line 73
    new-instance v0, Lcom/mediatek/vcalendar/VCalFileReader;

    iget-object v1, p0, Lcom/mediatek/vcalendar/FileOperationHelper;->mSrcUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/mediatek/vcalendar/FileOperationHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/mediatek/vcalendar/VCalFileReader;-><init>(Landroid/net/Uri;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/vcalendar/FileOperationHelper;->mReader:Lcom/mediatek/vcalendar/VCalFileReader;

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Landroid/content/Context;)V
    .locals 3
    .parameter "dstFile"
    .parameter "context"

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/vcalendar/FileOperationHelper;->mIsClosed:Z

    .line 83
    iput-object p1, p0, Lcom/mediatek/vcalendar/FileOperationHelper;->mDstFile:Ljava/io/File;

    .line 84
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/vcalendar/FileOperationHelper;->mSrcUri:Landroid/net/Uri;

    .line 85
    const/4 v1, 0x1

    iput v1, p0, Lcom/mediatek/vcalendar/FileOperationHelper;->mMode:I

    .line 86
    iput-object p2, p0, Lcom/mediatek/vcalendar/FileOperationHelper;->mContext:Landroid/content/Context;

    .line 88
    iget-object v1, p0, Lcom/mediatek/vcalendar/FileOperationHelper;->mWriter:Ljava/io/PrintWriter;

    if-nez v1, :cond_0

    .line 90
    :try_start_0
    new-instance v1, Ljava/io/PrintWriter;

    iget-object v2, p0, Lcom/mediatek/vcalendar/FileOperationHelper;->mDstFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/mediatek/vcalendar/FileOperationHelper;->mWriter:Ljava/io/PrintWriter;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 93
    const-string v1, "FileOperationHelper"

    const-string v2, ": FileNotFoundException!"

    invoke-static {v1, v2}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private writeVEvent(Ljava/lang/String;)V
    .locals 2
    .parameter "str"

    .prologue
    .line 180
    const-string v0, "BEGIN:VEVENT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "END:VEVENT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    :cond_0
    const-string v0, "FileOperationHelper"

    const-string v1, "writeVEvent: the given str is not a VEvent String"

    invoke-static {v0, v1}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/mediatek/vcalendar/FileOperationHelper;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/mediatek/vcalendar/FileOperationHelper;->mWriter:Ljava/io/PrintWriter;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 186
    const-string v0, "FileOperationHelper"

    const-string v1, "writeVEvent: The event is not exsited in the given str."

    invoke-static {v0, v1}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void
.end method


# virtual methods
.method public addNextVEventString(Ljava/lang/String;Z)V
    .locals 3
    .parameter "str"
    .parameter "isEnd"

    .prologue
    .line 145
    iget v1, p0, Lcom/mediatek/vcalendar/FileOperationHelper;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 146
    const-string v1, "FileOperationHelper"

    const-string v2, "Current File operate mode is READ_MODE, Must not call WriteMode method"

    invoke-static {v1, v2}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v1, p0, Lcom/mediatek/vcalendar/FileOperationHelper;->mWriter:Ljava/io/PrintWriter;

    if-nez v1, :cond_2

    .line 152
    :try_start_0
    new-instance v1, Ljava/io/PrintWriter;

    iget-object v2, p0, Lcom/mediatek/vcalendar/FileOperationHelper;->mDstFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/mediatek/vcalendar/FileOperationHelper;->mWriter:Ljava/io/PrintWriter;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :cond_2
    invoke-static {p1}, Lcom/mediatek/vcalendar/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 160
    invoke-direct {p0, p1}, Lcom/mediatek/vcalendar/FileOperationHelper;->writeVEvent(Ljava/lang/String;)V

    .line 163
    :cond_3
    if-eqz p2, :cond_0

    .line 164
    const-string v1, "FileOperationHelper"

    const-string v2, "addNextVEventString: the flow ended!"

    invoke-static {v1, v2}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/mediatek/vcalendar/FileOperationHelper;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 155
    const-string v1, "FileOperationHelper"

    const-string v2, ": FileNotFoundException!"

    invoke-static {v1, v2}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public close()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 195
    iget v1, p0, Lcom/mediatek/vcalendar/FileOperationHelper;->mMode:I

    if-ne v1, v3, :cond_1

    .line 197
    iget-object v1, p0, Lcom/mediatek/vcalendar/FileOperationHelper;->mWriter:Ljava/io/PrintWriter;

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/mediatek/vcalendar/FileOperationHelper;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 199
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/vcalendar/FileOperationHelper;->mWriter:Ljava/io/PrintWriter;

    .line 209
    :cond_0
    :goto_0
    iput-boolean v3, p0, Lcom/mediatek/vcalendar/FileOperationHelper;->mIsClosed:Z

    .line 210
    return-void

    .line 203
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/vcalendar/FileOperationHelper;->mReader:Lcom/mediatek/vcalendar/VCalFileReader;

    invoke-virtual {v1}, Lcom/mediatek/vcalendar/VCalFileReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 206
    const-string v1, "FileOperationHelper"

    const-string v2, "Close File failed, IOException."

    invoke-static {v1, v2}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getFirstEventStr()Ljava/lang/String;
    .locals 4

    .prologue
    .line 222
    const-string v2, "FileOperationHelper"

    const-string v3, "getFirstEventStr started."

    invoke-static {v2, v3}, Lcom/mediatek/vcalendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const/4 v1, 0x0

    .line 225
    .local v1, firstEventStr:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/vcalendar/FileOperationHelper;->mReader:Lcom/mediatek/vcalendar/VCalFileReader;

    invoke-virtual {v2}, Lcom/mediatek/vcalendar/VCalFileReader;->getFirstComponentInfo()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 230
    :goto_0
    return-object v1

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getNextVEventString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 118
    iget v4, p0, Lcom/mediatek/vcalendar/FileOperationHelper;->mMode:I

    if-eqz v4, :cond_0

    .line 119
    const-string v4, "FileOperationHelper"

    const-string v5, ":Current File operate mode is WRITE_MODE, Must not call ReadMode method"

    invoke-static {v4, v5}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :goto_0
    return-object v3

    .line 122
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 125
    .local v2, vcal:Ljava/lang/StringBuffer;
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/vcalendar/FileOperationHelper;->mReader:Lcom/mediatek/vcalendar/VCalFileReader;

    invoke-virtual {v4}, Lcom/mediatek/vcalendar/VCalFileReader;->readNextComponent()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 131
    .local v1, nextVEventString:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 126
    .end local v1           #nextVEventString:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 127
    .local v0, e:Ljava/io/IOException;
    const-string v4, "FileOperationHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ":IOException when read nextVEvent, File: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/vcalendar/FileOperationHelper;->mSrcUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getVEventsCount()I
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/mediatek/vcalendar/FileOperationHelper;->mReader:Lcom/mediatek/vcalendar/VCalFileReader;

    invoke-virtual {v0}, Lcom/mediatek/vcalendar/VCalFileReader;->getComponentsCount()I

    move-result v0

    iput v0, p0, Lcom/mediatek/vcalendar/FileOperationHelper;->mVEventCount:I

    .line 102
    iget v0, p0, Lcom/mediatek/vcalendar/FileOperationHelper;->mVEventCount:I

    return v0
.end method

.method public hasNextVEvent()Z
    .locals 5

    .prologue
    .line 108
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/vcalendar/FileOperationHelper;->mReader:Lcom/mediatek/vcalendar/VCalFileReader;

    invoke-virtual {v2}, Lcom/mediatek/vcalendar/VCalFileReader;->hasNextComponent()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 114
    :goto_0
    return v1

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, e:Ljava/io/IOException;
    const-string v2, "FileOperationHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException when judge whether has nextVEvent, File: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/vcalendar/FileOperationHelper;->mSrcUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/vcalendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 112
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/mediatek/vcalendar/FileOperationHelper;->mIsClosed:Z

    return v0
.end method

.method public setVEventsCount(I)V
    .locals 0
    .parameter "eventCount"

    .prologue
    .line 170
    iput p1, p0, Lcom/mediatek/vcalendar/FileOperationHelper;->mVEventCount:I

    .line 171
    return-void
.end method

.method protected writeVCalendarHead()V
    .locals 3

    .prologue
    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/mediatek/vcalendar/component/VCalendar;->getVCalendarHead()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget-object v1, p0, Lcom/mediatek/vcalendar/FileOperationHelper;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method protected writeVCalendarTrail()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/mediatek/vcalendar/FileOperationHelper;->mWriter:Ljava/io/PrintWriter;

    invoke-static {}, Lcom/mediatek/vcalendar/component/VCalendar;->getVCalendarTrail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/mediatek/vcalendar/FileOperationHelper;->mWriter:Ljava/io/PrintWriter;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 192
    return-void
.end method
