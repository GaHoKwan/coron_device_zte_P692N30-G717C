.class public Lcom/mediatek/calendarimporter/service/ExportProcessor;
.super Lcom/mediatek/calendarimporter/service/BaseProcessor;
.source "ExportProcessor.java"

# interfaces
.implements Lcom/mediatek/vcalendar/VCalStatusChangeOperator;


# static fields
.field public static final FILE_MODE:I = 0x0

.field public static final MEMORY_FILE_MODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ExportProcessor"


# instance fields
.field private final mComposer:Lcom/mediatek/vcalendar/VCalComposer;

.field private final mMode:I

.field private final mService:Lcom/mediatek/calendarimporter/service/VCalService;

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/mediatek/calendarimporter/service/VCalService;Landroid/os/Handler;Landroid/accounts/Account;Landroid/net/Uri;)V
    .locals 4
    .parameter "service"
    .parameter "uiHandler"
    .parameter "srcAccount"
    .parameter "dstFileUri"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/mediatek/calendarimporter/service/BaseProcessor;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/mediatek/calendarimporter/service/ExportProcessor;->mService:Lcom/mediatek/calendarimporter/service/VCalService;

    .line 100
    iput-object p2, p0, Lcom/mediatek/calendarimporter/service/ExportProcessor;->mUiHandler:Landroid/os/Handler;

    .line 101
    new-instance v0, Lcom/mediatek/vcalendar/VCalComposer;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p3, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/calendarimporter/service/ExportProcessor;->mService:Lcom/mediatek/calendarimporter/service/VCalService;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/mediatek/vcalendar/VCalComposer;-><init>(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;Lcom/mediatek/vcalendar/VCalStatusChangeOperator;)V

    iput-object v0, p0, Lcom/mediatek/calendarimporter/service/ExportProcessor;->mComposer:Lcom/mediatek/vcalendar/VCalComposer;

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/calendarimporter/service/ExportProcessor;->mMode:I

    .line 103
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/calendarimporter/service/VCalService;Landroid/os/Handler;Landroid/net/Uri;)V
    .locals 6
    .parameter "service"
    .parameter "uiHandler"
    .parameter "eventsUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/mediatek/calendarimporter/service/BaseProcessor;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/mediatek/calendarimporter/service/ExportProcessor;->mService:Lcom/mediatek/calendarimporter/service/VCalService;

    .line 73
    const-wide/16 v0, -0x1

    .line 74
    .local v0, eventId:J
    invoke-static {p3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 75
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gez v3, :cond_0

    .line 76
    const-string v3, "ExportProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Constructor,The given eventId is inlegal or empty, eventId :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/calendarimporter/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 79
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "deleted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!=1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, selection:Ljava/lang/String;
    const-string v3, "ExportProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Constructor: the going query selection = \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/calendarimporter/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iput-object p2, p0, Lcom/mediatek/calendarimporter/service/ExportProcessor;->mUiHandler:Landroid/os/Handler;

    .line 82
    new-instance v3, Lcom/mediatek/vcalendar/VCalComposer;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mediatek/calendarimporter/service/ExportProcessor;->mService:Lcom/mediatek/calendarimporter/service/VCalService;

    invoke-direct {v3, v4, v5, v2, p0}, Lcom/mediatek/vcalendar/VCalComposer;-><init>(Ljava/io/File;Landroid/content/Context;Ljava/lang/String;Lcom/mediatek/vcalendar/VCalStatusChangeOperator;)V

    iput-object v3, p0, Lcom/mediatek/calendarimporter/service/ExportProcessor;->mComposer:Lcom/mediatek/vcalendar/VCalComposer;

    .line 83
    const/4 v3, 0x1

    iput v3, p0, Lcom/mediatek/calendarimporter/service/ExportProcessor;->mMode:I

    .line 84
    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 3
    .parameter "mayInterruptIfRunning"

    .prologue
    .line 120
    const-string v0, "ExportProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel,mayInterruptIfRunning:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/calendarimporter/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/mediatek/calendarimporter/service/ExportProcessor;->mComposer:Lcom/mediatek/vcalendar/VCalComposer;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/mediatek/calendarimporter/service/ExportProcessor;->mComposer:Lcom/mediatek/vcalendar/VCalComposer;

    invoke-virtual {v0}, Lcom/mediatek/vcalendar/VCalComposer;->cancelCurrentCompose()V

    .line 124
    :cond_0
    invoke-super {p0, p1}, Lcom/mediatek/calendarimporter/service/BaseProcessor;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 107
    invoke-super {p0}, Lcom/mediatek/calendarimporter/service/BaseProcessor;->run()V

    .line 108
    const-string v0, "ExportProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExportProcessor.run() has been called,mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/calendarimporter/service/ExportProcessor;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/calendarimporter/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget v0, p0, Lcom/mediatek/calendarimporter/service/ExportProcessor;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 111
    const-string v0, "ExportProcessor"

    const-string v1, "ExportProcessor.run() MEMORY_FILE_MODE should not be called."

    invoke-static {v0, v1}, Lcom/mediatek/calendarimporter/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/mediatek/calendarimporter/service/ExportProcessor;->mComposer:Lcom/mediatek/vcalendar/VCalComposer;

    invoke-virtual {v0}, Lcom/mediatek/vcalendar/VCalComposer;->startAccountsCompose()V

    goto :goto_0
.end method

.method public vCalOperationCanceled(II)V
    .locals 4
    .parameter "finishedCnt"
    .parameter "totalCnt"

    .prologue
    .line 129
    const-string v1, "ExportProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vCalOperationCanceled,finishedCnt:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",totalCnt:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/calendarimporter/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 131
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 132
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 133
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 135
    iget-object v1, p0, Lcom/mediatek/calendarimporter/service/ExportProcessor;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 136
    return-void
.end method

.method public vCalOperationExceptionOccured(III)V
    .locals 4
    .parameter "finishedCnt"
    .parameter "totalCnt"
    .parameter "type"

    .prologue
    .line 140
    const-string v1, "ExportProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vCalOperationExceptionOccured,finishedCnt:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",totalCnt:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/calendarimporter/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 143
    .local v0, msg:Landroid/os/Message;
    const/4 v1, -0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 144
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 145
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 147
    iget-object v1, p0, Lcom/mediatek/calendarimporter/service/ExportProcessor;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 148
    return-void
.end method

.method public vCalOperationFinished(IILjava/lang/Object;)V
    .locals 4
    .parameter "successCnt"
    .parameter "totalCnt"
    .parameter "obj"

    .prologue
    .line 166
    const-string v1, "ExportProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vCalOperationFinished: successCnt:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",totalCnt:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/calendarimporter/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 168
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 169
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 170
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 171
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 172
    iget-object v1, p0, Lcom/mediatek/calendarimporter/service/ExportProcessor;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 173
    return-void
.end method

.method public vCalOperationStarted(I)V
    .locals 3
    .parameter "totalCnt"

    .prologue
    .line 161
    const-string v0, "ExportProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vCarOperationStarted: totalCnt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/calendarimporter/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public vCalProcessStatusUpdate(II)V
    .locals 2
    .parameter "currentCnt"
    .parameter "totalCnt"

    .prologue
    .line 152
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 153
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 154
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 155
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 156
    iget-object v1, p0, Lcom/mediatek/calendarimporter/service/ExportProcessor;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 157
    return-void
.end method
