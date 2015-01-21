.class public Lcom/zte/backup/composer/calendar/CalendarRestoreCpmposer;
.super Lcom/zte/backup/composer/Composer;
.source "CalendarRestoreCpmposer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "backupPath"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/zte/backup/composer/Composer;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {p0, p2}, Lcom/zte/backup/composer/calendar/CalendarRestoreCpmposer;->setInPath(Ljava/lang/String;)V

    .line 42
    sget-object v0, Lcom/zte/backup/composer/DataType;->CALENDAR:Lcom/zte/backup/composer/DataType;

    iput-object v0, p0, Lcom/zte/backup/composer/calendar/CalendarRestoreCpmposer;->type:Lcom/zte/backup/composer/DataType;

    .line 43
    const-string v0, "Calendar"

    iput-object v0, p0, Lcom/zte/backup/composer/calendar/CalendarRestoreCpmposer;->name:Ljava/lang/String;

    .line 44
    invoke-static {}, Lcom/zte/backup/utils/VersionInfo3G;->getInstance()Lcom/zte/backup/utils/VersionInfo3G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/backup/utils/VersionInfo3G;->getCalendarNum()I

    move-result v0

    iput v0, p0, Lcom/zte/backup/composer/calendar/CalendarRestoreCpmposer;->totalNum:I

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/backup/composer/calendar/CalendarRestoreCpmposer;->curNum:I

    .line 46
    return-void
.end method

.method private importCalendarByVcs(Ljava/io/BufferedReader;)I
    .locals 6
    .parameter "reader"

    .prologue
    .line 87
    const/16 v3, 0x2001

    .line 88
    .local v3, result:I
    const/4 v0, -0x1

    .line 90
    .local v0, VCS_VERSION:I
    iget-object v5, p0, Lcom/zte/backup/composer/calendar/CalendarRestoreCpmposer;->reporter:Lcom/zte/backup/reporter/IProgressReporter;

    invoke-interface {v5, p0}, Lcom/zte/backup/reporter/IProgressReporter;->updateProcessStatus(Lcom/zte/backup/composer/Composer;)V

    .line 92
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 93
    .local v4, str:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/zte/backup/composer/calendar/CalendarRestoreCpmposer;->isCancel()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_0

    const/16 v5, 0x2001

    if-ne v3, v5, :cond_0

    if-nez v4, :cond_2

    .line 120
    .end local v4           #str:Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/zte/backup/composer/calendar/CalendarRestoreCpmposer;->isCancel()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 121
    const/16 v3, 0x2003

    .line 124
    :cond_1
    return v3

    .line 94
    .restart local v4       #str:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v5, "VERSION:2.0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 95
    const/4 v0, 0x2

    .line 113
    :cond_3
    :goto_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 96
    :cond_4
    const-string v5, "VERSION:1.0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 97
    const/4 v0, 0x1

    goto :goto_2

    .line 98
    :cond_5
    if-lez v0, :cond_3

    const-string v5, "BEGIN:VEVENT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 99
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 100
    .local v2, oneVcs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 101
    :goto_3
    invoke-virtual {p0}, Lcom/zte/backup/composer/calendar/CalendarRestoreCpmposer;->isCancel()Z

    move-result v5

    if-nez v5, :cond_6

    if-eqz v4, :cond_6

    const-string v5, "END:VEVENT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 105
    :cond_6
    const/4 v5, 0x2

    if-ne v0, v5, :cond_8

    .line 106
    iget-object v5, p0, Lcom/zte/backup/composer/calendar/CalendarRestoreCpmposer;->context:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->import1Calendar2Dot0(Ljava/util/List;Landroid/content/Context;)I

    move-result v3

    .line 110
    :goto_4
    iget v5, p0, Lcom/zte/backup/composer/calendar/CalendarRestoreCpmposer;->curNum:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/zte/backup/composer/calendar/CalendarRestoreCpmposer;->curNum:I

    .line 111
    iget-object v5, p0, Lcom/zte/backup/composer/calendar/CalendarRestoreCpmposer;->reporter:Lcom/zte/backup/reporter/IProgressReporter;

    invoke-interface {v5, p0}, Lcom/zte/backup/reporter/IProgressReporter;->updateProcessStatus(Lcom/zte/backup/composer/Composer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 115
    .end local v2           #oneVcs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v4           #str:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 116
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zte/backup/common/Logging;->e(Ljava/lang/String;)V

    .line 117
    const/16 v3, 0x2002

    goto :goto_1

    .line 102
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #oneVcs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4       #str:Ljava/lang/String;
    :cond_7
    :try_start_2
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 108
    :cond_8
    iget-object v5, p0, Lcom/zte/backup/composer/calendar/CalendarRestoreCpmposer;->context:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->import1Calendar(Ljava/util/List;Landroid/content/Context;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    goto :goto_4
.end method


# virtual methods
.method public compose()I
    .locals 9

    .prologue
    .line 55
    new-instance v2, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zte/backup/composer/calendar/CalendarRestoreCpmposer;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "calendar.vcs"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 57
    new-instance v2, Ljava/io/File;

    .end local v2           #file:Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zte/backup/composer/calendar/CalendarRestoreCpmposer;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "event_bak.vcal"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .restart local v2       #file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 60
    const/16 v6, 0x2005

    .line 83
    :goto_0
    return v6

    .line 64
    :cond_0
    const/4 v5, 0x0

    .line 66
    .local v5, reader:Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/zte/backup/common/CommonFunctions;->getCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, enc:Ljava/lang/String;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 68
    .local v3, fis:Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 69
    .local v4, is:Ljava/io/InputStreamReader;
    new-instance v5, Ljava/io/BufferedReader;

    .end local v5           #reader:Ljava/io/BufferedReader;
    invoke-direct {v5, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 75
    .restart local v5       #reader:Ljava/io/BufferedReader;
    invoke-direct {p0, v5}, Lcom/zte/backup/composer/calendar/CalendarRestoreCpmposer;->importCalendarByVcs(Ljava/io/BufferedReader;)I

    move-result v6

    .line 78
    .local v6, result:I
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 70
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #enc:Ljava/lang/String;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v4           #is:Ljava/io/InputStreamReader;
    .end local v5           #reader:Ljava/io/BufferedReader;
    .end local v6           #result:I
    :catch_1
    move-exception v0

    .line 71
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/zte/backup/common/Logging;->e(Ljava/lang/String;)V

    .line 72
    const/16 v6, 0x2002

    goto :goto_0
.end method

.method public getFolderDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    const-string v0, "Calendar"

    return-object v0
.end method

.method public init()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method
