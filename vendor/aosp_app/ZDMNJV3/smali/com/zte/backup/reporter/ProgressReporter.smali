.class public Lcom/zte/backup/reporter/ProgressReporter;
.super Ljava/lang/Object;
.source "ProgressReporter.java"

# interfaces
.implements Lcom/zte/backup/reporter/IProgressReporter;


# instance fields
.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/backup/reporter/ProgressReporter;->handler:Landroid/os/Handler;

    .line 25
    iput-object p1, p0, Lcom/zte/backup/reporter/ProgressReporter;->handler:Landroid/os/Handler;

    .line 26
    iget-object v0, p0, Lcom/zte/backup/reporter/ProgressReporter;->handler:Landroid/os/Handler;

    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 27
    return-void
.end method


# virtual methods
.method public cloudRestoreStart()V
    .locals 2

    .prologue
    .line 114
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 115
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 116
    iget-object v1, p0, Lcom/zte/backup/reporter/ProgressReporter;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 117
    return-void
.end method

.method public cryptStatus(I)V
    .locals 2
    .parameter "resultCode"

    .prologue
    .line 121
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 122
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 123
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 124
    iget-object v1, p0, Lcom/zte/backup/reporter/ProgressReporter;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 125
    return-void
.end method

.method public postMsgAllComposerCompleted()V
    .locals 2

    .prologue
    .line 73
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 74
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 75
    iget-object v1, p0, Lcom/zte/backup/reporter/ProgressReporter;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 76
    return-void
.end method

.method public postMsgAllComposerDataCount(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 59
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 60
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 61
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 62
    iget-object v1, p0, Lcom/zte/backup/reporter/ProgressReporter;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 63
    return-void
.end method

.method public postMsgComposerZipedCompleted(I)V
    .locals 2
    .parameter "resultCode"

    .prologue
    .line 80
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 81
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 82
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 83
    iget-object v1, p0, Lcom/zte/backup/reporter/ProgressReporter;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 85
    return-void
.end method

.method public updateCloudBackupFinish(I)V
    .locals 2
    .parameter "resultCode"

    .prologue
    .line 89
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 90
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 91
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 92
    iget-object v1, p0, Lcom/zte/backup/reporter/ProgressReporter;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 93
    return-void
.end method

.method public updateCloudDownloadStatus(I)V
    .locals 2
    .parameter "resultCode"

    .prologue
    .line 105
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 106
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 107
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 108
    iget-object v1, p0, Lcom/zte/backup/reporter/ProgressReporter;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 110
    return-void
.end method

.method public updateCloudRestoreFinish(I)V
    .locals 2
    .parameter "resultCode"

    .prologue
    .line 97
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 98
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 99
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 100
    iget-object v1, p0, Lcom/zte/backup/reporter/ProgressReporter;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 101
    return-void
.end method

.method public updateEndStatus(II)V
    .locals 2
    .parameter "type"
    .parameter "result"

    .prologue
    .line 50
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 51
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 52
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 53
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 54
    iget-object v1, p0, Lcom/zte/backup/reporter/ProgressReporter;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 55
    return-void
.end method

.method public updateProcessStatus(Lcom/zte/backup/composer/Composer;)V
    .locals 2
    .parameter "composer"

    .prologue
    .line 40
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 41
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 42
    invoke-virtual {p1}, Lcom/zte/backup/composer/Composer;->getType()Lcom/zte/backup/composer/DataType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/backup/composer/DataType;->ordinal()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 43
    invoke-virtual {p1}, Lcom/zte/backup/composer/Composer;->getCurNum()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 44
    invoke-virtual {p1}, Lcom/zte/backup/composer/Composer;->getAttached()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 45
    iget-object v1, p0, Lcom/zte/backup/reporter/ProgressReporter;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 46
    return-void
.end method

.method public updateStartStauts(Lcom/zte/backup/composer/Composer;)V
    .locals 2
    .parameter "composer"

    .prologue
    .line 31
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 32
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 33
    invoke-virtual {p1}, Lcom/zte/backup/composer/Composer;->getType()Lcom/zte/backup/composer/DataType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/backup/composer/DataType;->ordinal()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 34
    invoke-virtual {p1}, Lcom/zte/backup/composer/Composer;->getTotalNum()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 35
    iget-object v1, p0, Lcom/zte/backup/reporter/ProgressReporter;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 36
    return-void
.end method
