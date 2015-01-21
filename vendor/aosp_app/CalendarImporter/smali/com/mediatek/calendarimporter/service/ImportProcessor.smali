.class public Lcom/mediatek/calendarimporter/service/ImportProcessor;
.super Lcom/mediatek/calendarimporter/service/BaseProcessor;
.source "ImportProcessor.java"

# interfaces
.implements Lcom/mediatek/vcalendar/VCalStatusChangeOperator;


# static fields
.field static final TAG:Ljava/lang/String; = "ImportProcessor"


# instance fields
.field private mIsBytesMode:Z

.field private mParser:Lcom/mediatek/vcalendar/VCalParser;

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 2
    .parameter "context"
    .parameter "vcsContent"
    .parameter "uiHandler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/mediatek/calendarimporter/service/BaseProcessor;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/calendarimporter/service/ImportProcessor;->mIsBytesMode:Z

    .line 90
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 91
    const-string v0, "ImportProcessor"

    const-string v1, "Constructor: the given vcsContent is empty."

    invoke-static {v0, v1}, Lcom/mediatek/calendarimporter/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    .line 95
    :cond_0
    iput-object p3, p0, Lcom/mediatek/calendarimporter/service/ImportProcessor;->mUiHandler:Landroid/os/Handler;

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/calendarimporter/service/ImportProcessor;->mIsBytesMode:Z

    .line 97
    new-instance v0, Lcom/mediatek/vcalendar/VCalParser;

    invoke-direct {v0, p2, p1, p0}, Lcom/mediatek/vcalendar/VCalParser;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/mediatek/vcalendar/VCalStatusChangeOperator;)V

    iput-object v0, p0, Lcom/mediatek/calendarimporter/service/ImportProcessor;->mParser:Lcom/mediatek/vcalendar/VCalParser;

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Landroid/net/Uri;)V
    .locals 3
    .parameter "context"
    .parameter "accountName"
    .parameter "uiHandler"
    .parameter "uri"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/mediatek/calendarimporter/service/BaseProcessor;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/calendarimporter/service/ImportProcessor;->mIsBytesMode:Z

    .line 66
    iput-object p3, p0, Lcom/mediatek/calendarimporter/service/ImportProcessor;->mUiHandler:Landroid/os/Handler;

    .line 67
    invoke-static {p2}, Lcom/mediatek/calendarimporter/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Lcom/mediatek/vcalendar/VCalParser;

    invoke-direct {v0, p4, p1, p0}, Lcom/mediatek/vcalendar/VCalParser;-><init>(Landroid/net/Uri;Landroid/content/Context;Lcom/mediatek/vcalendar/VCalStatusChangeOperator;)V

    iput-object v0, p0, Lcom/mediatek/calendarimporter/service/ImportProcessor;->mParser:Lcom/mediatek/vcalendar/VCalParser;

    .line 73
    :goto_0
    return-void

    .line 70
    :cond_0
    const-string v0, "ImportProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The dst accountName :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/calendarimporter/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v0, Lcom/mediatek/vcalendar/VCalParser;

    invoke-direct {v0, p4, p2, p1, p0}, Lcom/mediatek/vcalendar/VCalParser;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroid/content/Context;Lcom/mediatek/vcalendar/VCalStatusChangeOperator;)V

    iput-object v0, p0, Lcom/mediatek/calendarimporter/service/ImportProcessor;->mParser:Lcom/mediatek/vcalendar/VCalParser;

    goto :goto_0
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1
    .parameter "mayInterruptIfRunning"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/mediatek/calendarimporter/service/ImportProcessor;->mParser:Lcom/mediatek/vcalendar/VCalParser;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/mediatek/calendarimporter/service/ImportProcessor;->mParser:Lcom/mediatek/vcalendar/VCalParser;

    invoke-virtual {v0}, Lcom/mediatek/vcalendar/VCalParser;->cancelCurrentParse()V

    .line 116
    iget-object v0, p0, Lcom/mediatek/calendarimporter/service/ImportProcessor;->mParser:Lcom/mediatek/vcalendar/VCalParser;

    invoke-virtual {v0}, Lcom/mediatek/vcalendar/VCalParser;->close()V

    .line 118
    :cond_0
    invoke-super {p0, p1}, Lcom/mediatek/calendarimporter/service/BaseProcessor;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 102
    invoke-super {p0}, Lcom/mediatek/calendarimporter/service/BaseProcessor;->run()V

    .line 103
    iget-boolean v0, p0, Lcom/mediatek/calendarimporter/service/ImportProcessor;->mIsBytesMode:Z

    if-eqz v0, :cond_0

    .line 104
    const-string v0, "ImportProcessor"

    const-string v1, "run: startParseVcsContent()"

    invoke-static {v0, v1}, Lcom/mediatek/calendarimporter/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/mediatek/calendarimporter/service/ImportProcessor;->mParser:Lcom/mediatek/vcalendar/VCalParser;

    invoke-virtual {v0}, Lcom/mediatek/vcalendar/VCalParser;->startParseVcsContent()V

    .line 110
    :goto_0
    return-void

    .line 107
    :cond_0
    const-string v0, "ImportProcessor"

    const-string v1, "run: mParser.startParse()"

    invoke-static {v0, v1}, Lcom/mediatek/calendarimporter/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/mediatek/calendarimporter/service/ImportProcessor;->mParser:Lcom/mediatek/vcalendar/VCalParser;

    invoke-virtual {v0}, Lcom/mediatek/vcalendar/VCalParser;->startParse()V

    goto :goto_0
.end method

.method public vCalOperationCanceled(II)V
    .locals 3
    .parameter "finishedCnt"
    .parameter "totalCnt"

    .prologue
    .line 123
    const-string v0, "ImportProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vCalOperationCanceled,finishedCnt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",totalCnt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/calendarimporter/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/mediatek/calendarimporter/service/ImportProcessor;->mParser:Lcom/mediatek/vcalendar/VCalParser;

    invoke-virtual {v0}, Lcom/mediatek/vcalendar/VCalParser;->close()V

    .line 125
    return-void
.end method

.method public vCalOperationExceptionOccured(III)V
    .locals 4
    .parameter "finishedCnt"
    .parameter "totalCnt"
    .parameter "type"

    .prologue
    .line 129
    const-string v1, "ImportProcessor"

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

    .line 131
    iget-object v1, p0, Lcom/mediatek/calendarimporter/service/ImportProcessor;->mParser:Lcom/mediatek/vcalendar/VCalParser;

    invoke-virtual {v1}, Lcom/mediatek/vcalendar/VCalParser;->close()V

    .line 132
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 133
    .local v0, msg:Landroid/os/Message;
    const/4 v1, -0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 134
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 135
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 137
    iget-object v1, p0, Lcom/mediatek/calendarimporter/service/ImportProcessor;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 138
    return-void
.end method

.method public vCalOperationFinished(IILjava/lang/Object;)V
    .locals 4
    .parameter "successCnt"
    .parameter "totalCnt"
    .parameter "obj"

    .prologue
    .line 156
    const-string v1, "ImportProcessor"

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

    .line 157
    iget-object v1, p0, Lcom/mediatek/calendarimporter/service/ImportProcessor;->mParser:Lcom/mediatek/vcalendar/VCalParser;

    invoke-virtual {v1}, Lcom/mediatek/vcalendar/VCalParser;->close()V

    .line 158
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 159
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 160
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 161
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 162
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 163
    iget-object v1, p0, Lcom/mediatek/calendarimporter/service/ImportProcessor;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 164
    return-void
.end method

.method public vCalOperationStarted(I)V
    .locals 3
    .parameter "totalCnt"

    .prologue
    .line 151
    const-string v0, "ImportProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vCalProcessStatusUpdate: totalCnt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/calendarimporter/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public vCalProcessStatusUpdate(II)V
    .locals 2
    .parameter "currentCnt"
    .parameter "totalCnt"

    .prologue
    .line 142
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 143
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 144
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 145
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 146
    iget-object v1, p0, Lcom/mediatek/calendarimporter/service/ImportProcessor;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 147
    return-void
.end method
