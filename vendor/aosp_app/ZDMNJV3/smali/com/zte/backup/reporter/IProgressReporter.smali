.class public interface abstract Lcom/zte/backup/reporter/IProgressReporter;
.super Ljava/lang/Object;
.source "IProgressReporter.java"


# static fields
.field public static final REPORT_CLOUDBACKUP_FINISH:I = 0x6

.field public static final REPORT_CLOUDDOWNLOAD_STATUS:I = 0x8

.field public static final REPORT_CLOUDRESTORE_FINISH:I = 0x7

.field public static final REPORT_CLOUD_RESTORE_START:I = 0x9

.field public static final REPORT_COMPLETED:I = 0x4

.field public static final REPORT_COMPOSER_COUNTS:I = 0x3

.field public static final REPORT_CRYPT_STATUS:I = 0x9

.field public static final REPORT_END:I = 0x2

.field public static final REPORT_PROCESS:I = 0x1

.field public static final REPORT_START:I = 0x0

.field public static final REPORT_ZIPPED:I = 0x5


# virtual methods
.method public abstract cloudRestoreStart()V
.end method

.method public abstract cryptStatus(I)V
.end method

.method public abstract postMsgAllComposerCompleted()V
.end method

.method public abstract postMsgAllComposerDataCount(I)V
.end method

.method public abstract postMsgComposerZipedCompleted(I)V
.end method

.method public abstract updateCloudBackupFinish(I)V
.end method

.method public abstract updateCloudDownloadStatus(I)V
.end method

.method public abstract updateCloudRestoreFinish(I)V
.end method

.method public abstract updateEndStatus(II)V
.end method

.method public abstract updateProcessStatus(Lcom/zte/backup/composer/Composer;)V
.end method

.method public abstract updateStartStauts(Lcom/zte/backup/composer/Composer;)V
.end method
