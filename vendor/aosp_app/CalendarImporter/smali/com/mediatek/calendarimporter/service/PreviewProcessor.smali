.class public Lcom/mediatek/calendarimporter/service/PreviewProcessor;
.super Lcom/mediatek/calendarimporter/service/BaseProcessor;
.source "PreviewProcessor.java"

# interfaces
.implements Lcom/mediatek/vcalendar/VCalStatusChangeOperator;


# static fields
.field private static final TAG:Ljava/lang/String; = "PreviewProcessor"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mParser:Lcom/mediatek/vcalendar/VCalParser;

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter "fileUri"
    .parameter "uiHandler"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mediatek/calendarimporter/service/BaseProcessor;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/mediatek/calendarimporter/service/PreviewProcessor;->mContext:Landroid/content/Context;

    .line 63
    new-instance v0, Lcom/mediatek/vcalendar/VCalParser;

    invoke-direct {v0, p2, p1, p0}, Lcom/mediatek/vcalendar/VCalParser;-><init>(Landroid/net/Uri;Landroid/content/Context;Lcom/mediatek/vcalendar/VCalStatusChangeOperator;)V

    iput-object v0, p0, Lcom/mediatek/calendarimporter/service/PreviewProcessor;->mParser:Lcom/mediatek/vcalendar/VCalParser;

    .line 64
    iput-object p3, p0, Lcom/mediatek/calendarimporter/service/PreviewProcessor;->mUiHandler:Landroid/os/Handler;

    .line 65
    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 3
    .parameter "mayInterruptIfRunning"

    .prologue
    .line 76
    const-string v0, "PreviewProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel,mayInterruptIfRunning="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/calendarimporter/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/mediatek/calendarimporter/service/PreviewProcessor;->mParser:Lcom/mediatek/vcalendar/VCalParser;

    invoke-virtual {v0}, Lcom/mediatek/vcalendar/VCalParser;->close()V

    .line 78
    invoke-super {p0, p1}, Lcom/mediatek/calendarimporter/service/BaseProcessor;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 69
    const-string v0, "PreviewProcessor"

    const-string v1, "PreviewProcessor.run()"

    invoke-static {v0, v1}, Lcom/mediatek/calendarimporter/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-super {p0}, Lcom/mediatek/calendarimporter/service/BaseProcessor;->run()V

    .line 71
    iget-object v0, p0, Lcom/mediatek/calendarimporter/service/PreviewProcessor;->mParser:Lcom/mediatek/vcalendar/VCalParser;

    invoke-virtual {v0}, Lcom/mediatek/vcalendar/VCalParser;->startParsePreview()V

    .line 72
    return-void
.end method

.method public vCalOperationCanceled(II)V
    .locals 3
    .parameter "finishedCnt"
    .parameter "totalCnt"

    .prologue
    .line 83
    const-string v0, "PreviewProcessor"

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

    .line 84
    iget-object v0, p0, Lcom/mediatek/calendarimporter/service/PreviewProcessor;->mParser:Lcom/mediatek/vcalendar/VCalParser;

    invoke-virtual {v0}, Lcom/mediatek/vcalendar/VCalParser;->close()V

    .line 85
    return-void
.end method

.method public vCalOperationExceptionOccured(III)V
    .locals 4
    .parameter "finishedCnt"
    .parameter "totalCnt"
    .parameter "type"

    .prologue
    .line 89
    const-string v1, "PreviewProcessor"

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

    .line 91
    iget-object v1, p0, Lcom/mediatek/calendarimporter/service/PreviewProcessor;->mParser:Lcom/mediatek/vcalendar/VCalParser;

    invoke-virtual {v1}, Lcom/mediatek/vcalendar/VCalParser;->close()V

    .line 92
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 93
    .local v0, msg:Landroid/os/Message;
    const/4 v1, -0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 94
    iget-object v1, p0, Lcom/mediatek/calendarimporter/service/PreviewProcessor;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 95
    return-void
.end method

.method public vCalOperationFinished(IILjava/lang/Object;)V
    .locals 10
    .parameter "successCnt"
    .parameter "totalCnt"
    .parameter "obj"

    .prologue
    .line 109
    const-string v7, "PreviewProcessor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "vCarOperationStarted: successCnt: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",totalCnt:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/calendarimporter/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v7, p0, Lcom/mediatek/calendarimporter/service/PreviewProcessor;->mParser:Lcom/mediatek/vcalendar/VCalParser;

    invoke-virtual {v7}, Lcom/mediatek/vcalendar/VCalParser;->close()V

    move-object v5, p3

    .line 112
    check-cast v5, Lcom/mediatek/vcalendar/VCalParser$PreviewInfo;

    .line 113
    .local v5, previewInfo:Lcom/mediatek/vcalendar/VCalParser$PreviewInfo;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Lcom/mediatek/vcalendar/VCalParser$PreviewInfo;->getEventsCnt()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 140
    const-string v7, "Events Count:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/mediatek/vcalendar/VCalParser$PreviewInfo;->getEventsCnt()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 145
    .local v2, msg:Landroid/os/Message;
    const/4 v7, 0x1

    iput v7, v2, Landroid/os/Message;->what:I

    .line 146
    iput p1, v2, Landroid/os/Message;->arg1:I

    .line 147
    iput p2, v2, Landroid/os/Message;->arg2:I

    .line 148
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 150
    iget-object v7, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v7, :cond_0

    .line 152
    const/4 v7, -0x1

    iput v7, v2, Landroid/os/Message;->what:I

    .line 154
    :cond_0
    iget-object v7, p0, Lcom/mediatek/calendarimporter/service/PreviewProcessor;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v7, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 155
    return-void

    .line 117
    .end local v2           #msg:Landroid/os/Message;
    :pswitch_0
    const-string v7, "PreviewProcessor"

    const-string v8, "startParsePreview: No VEvent exsits in the file."

    invoke-static {v7, v8}, Lcom/mediatek/calendarimporter/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :pswitch_1
    invoke-virtual {v5}, Lcom/mediatek/vcalendar/VCalParser$PreviewInfo;->getFirstEventSummary()Ljava/lang/String;

    move-result-object v6

    .line 121
    .local v6, title:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/mediatek/vcalendar/VCalParser$PreviewInfo;->getFirstEventOrganizer()Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, owner:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/mediatek/vcalendar/VCalParser$PreviewInfo;->getFirstEventDuration()Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, period:Ljava/lang/String;
    iget-object v7, p0, Lcom/mediatek/calendarimporter/service/PreviewProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f040004

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, emptyString:Ljava/lang/String;
    invoke-static {v6}, Lcom/mediatek/calendarimporter/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v6, v1

    .line 126
    :cond_1
    invoke-static {v3}, Lcom/mediatek/calendarimporter/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v3, v1

    .line 127
    :cond_2
    invoke-static {v4}, Lcom/mediatek/calendarimporter/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v4, v1

    .line 129
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/mediatek/calendarimporter/service/PreviewProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f040010

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/mediatek/calendarimporter/service/PreviewProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f040006

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/mediatek/calendarimporter/service/PreviewProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f040007

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public vCalOperationStarted(I)V
    .locals 3
    .parameter "totalCnt"

    .prologue
    .line 104
    const-string v0, "PreviewProcessor"

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

    .line 105
    return-void
.end method

.method public vCalProcessStatusUpdate(II)V
    .locals 0
    .parameter "currentCnt"
    .parameter "totalCnt"

    .prologue
    .line 100
    return-void
.end method
