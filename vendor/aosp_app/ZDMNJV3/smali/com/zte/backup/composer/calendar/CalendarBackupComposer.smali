.class public Lcom/zte/backup/composer/calendar/CalendarBackupComposer;
.super Lcom/zte/backup/composer/Composer;
.source "CalendarBackupComposer.java"


# instance fields
.field calender:Lcom/zte/backup/format/vxx/vcs/CalendarInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "backupPath"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/zte/backup/composer/Composer;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/backup/composer/calendar/CalendarBackupComposer;->calender:Lcom/zte/backup/format/vxx/vcs/CalendarInterface;

    .line 39
    invoke-virtual {p0, p2}, Lcom/zte/backup/composer/calendar/CalendarBackupComposer;->setOutPath(Ljava/lang/String;)V

    .line 40
    sget-object v0, Lcom/zte/backup/composer/DataType;->CALENDAR:Lcom/zte/backup/composer/DataType;

    iput-object v0, p0, Lcom/zte/backup/composer/calendar/CalendarBackupComposer;->type:Lcom/zte/backup/composer/DataType;

    .line 41
    const-string v0, "Calendar"

    iput-object v0, p0, Lcom/zte/backup/composer/calendar/CalendarBackupComposer;->name:Ljava/lang/String;

    .line 42
    new-instance v0, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;

    invoke-direct {v0, p1}, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/backup/composer/calendar/CalendarBackupComposer;->calender:Lcom/zte/backup/format/vxx/vcs/CalendarInterface;

    .line 43
    iget-object v0, p0, Lcom/zte/backup/composer/calendar/CalendarBackupComposer;->calender:Lcom/zte/backup/format/vxx/vcs/CalendarInterface;

    invoke-virtual {v0}, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->getBackupCount()I

    move-result v0

    iput v0, p0, Lcom/zte/backup/composer/calendar/CalendarBackupComposer;->totalNum:I

    .line 44
    iget-object v0, p0, Lcom/zte/backup/composer/calendar/CalendarBackupComposer;->calender:Lcom/zte/backup/format/vxx/vcs/CalendarInterface;

    invoke-virtual {v0}, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->getBackupDataSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zte/backup/composer/calendar/CalendarBackupComposer;->size:J

    .line 45
    return-void
.end method


# virtual methods
.method public compose()I
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 54
    iget v7, p0, Lcom/zte/backup/composer/calendar/CalendarBackupComposer;->totalNum:I

    const/4 v8, 0x1

    if-ge v7, v8, :cond_1

    .line 55
    const/16 v4, 0x2005

    .line 102
    :cond_0
    :goto_0
    return v4

    .line 58
    :cond_1
    const/16 v4, 0x2001

    .line 59
    .local v4, result:I
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v7, ""

    invoke-direct {v0, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, calendarBuffer:Ljava/lang/StringBuffer;
    iget-object v7, p0, Lcom/zte/backup/composer/calendar/CalendarBackupComposer;->calender:Lcom/zte/backup/format/vxx/vcs/CalendarInterface;

    invoke-virtual {v7}, Lcom/zte/backup/format/vxx/vcs/CalendarInterface;->GetEventsIDArray()I

    move-result v5

    .line 62
    .local v5, size:I
    const-string v7, "BEGIN:VCALENDAR\r\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "PRODID:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    const-string v7, "VERSION:2.0\r\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    iput v9, p0, Lcom/zte/backup/composer/calendar/CalendarBackupComposer;->curNum:I

    :goto_1
    iget v7, p0, Lcom/zte/backup/composer/calendar/CalendarBackupComposer;->curNum:I

    if-lt v7, v5, :cond_2

    .line 88
    :goto_2
    const-string v7, "END:VCALENDAR\r\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    const/16 v7, 0x2001

    if-ne v4, v7, :cond_0

    .line 90
    iget-object v7, p0, Lcom/zte/backup/composer/calendar/CalendarBackupComposer;->reporter:Lcom/zte/backup/reporter/IProgressReporter;

    invoke-interface {v7, p0}, Lcom/zte/backup/reporter/IProgressReporter;->updateProcessStatus(Lcom/zte/backup/composer/Composer;)V

    .line 91
    new-instance v2, Lcom/zte/backup/cloudbackup/utils/FileHelper;

    iget-object v7, p0, Lcom/zte/backup/composer/calendar/CalendarBackupComposer;->context:Landroid/content/Context;

    invoke-direct {v2, v7}, Lcom/zte/backup/cloudbackup/utils/FileHelper;-><init>(Landroid/content/Context;)V

    .line 94
    .local v2, fh:Lcom/zte/backup/cloudbackup/utils/FileHelper;
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zte/backup/composer/calendar/CalendarBackupComposer;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "calendar.vcs"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/zte/backup/cloudbackup/utils/FileHelper;->creatFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 95
    .local v3, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v2, v3, v7, v8}, Lcom/zte/backup/cloudbackup/utils/FileHelper;->writeStrToFile(Ljava/io/File;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    .end local v3           #file:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 97
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/zte/backup/common/Logging;->e(Ljava/lang/String;)V

    .line 98
    const/16 v4, 0x2002

    goto :goto_0

    .line 67
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #fh:Lcom/zte/backup/cloudbackup/utils/FileHelper;
    :cond_2
    iget-object v7, p0, Lcom/zte/backup/composer/calendar/CalendarBackupComposer;->reporter:Lcom/zte/backup/reporter/IProgressReporter;

    invoke-interface {v7, p0}, Lcom/zte/backup/reporter/IProgressReporter;->updateProcessStatus(Lcom/zte/backup/composer/Composer;)V

    .line 68
    invoke-virtual {p0}, Lcom/zte/backup/composer/calendar/CalendarBackupComposer;->isCancel()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 69
    iget-object v7, p0, Lcom/zte/backup/composer/calendar/CalendarBackupComposer;->path:Ljava/lang/String;

    invoke-static {v7}, Lcom/zte/backup/common/CommonFunctions;->deleteDirRecursion(Ljava/lang/String;)Z

    .line 70
    const/16 v4, 0x2003

    .line 71
    goto :goto_2

    .line 74
    :cond_3
    const/4 v6, 0x0

    .line 76
    .local v6, str:Ljava/lang/String;
    :try_start_1
    iget-object v7, p0, Lcom/zte/backup/composer/calendar/CalendarBackupComposer;->calender:Lcom/zte/backup/format/vxx/vcs/CalendarInterface;

    iget v8, p0, Lcom/zte/backup/composer/calendar/CalendarBackupComposer;->curNum:I

    invoke-static {v7, v8}, Lcom/zte/backup/format/vxx/vcs/VCalendar;->export1VcsStr2Dot0(Lcom/zte/backup/format/vxx/vcs/CalendarInterface;I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 81
    :goto_3
    if-nez v6, :cond_4

    .line 82
    const/16 v4, 0x2002

    .line 83
    goto :goto_2

    .line 77
    :catch_1
    move-exception v1

    .line 78
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/zte/backup/common/Logging;->e(Ljava/lang/String;)V

    goto :goto_3

    .line 85
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    iget v7, p0, Lcom/zte/backup/composer/calendar/CalendarBackupComposer;->curNum:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/zte/backup/composer/calendar/CalendarBackupComposer;->curNum:I

    goto :goto_1
.end method

.method public getFolderDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    const-string v0, "Calendar"

    return-object v0
.end method

.method public init()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method
