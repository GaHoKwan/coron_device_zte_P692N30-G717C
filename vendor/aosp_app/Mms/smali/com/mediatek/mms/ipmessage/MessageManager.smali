.class public Lcom/mediatek/mms/ipmessage/MessageManager;
.super Landroid/content/ContextWrapper;
.source "MessageManager.java"


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/mms/ipmessage/MessageManager;->mContext:Landroid/content/Context;

    .line 53
    iput-object p1, p0, Lcom/mediatek/mms/ipmessage/MessageManager;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method


# virtual methods
.method public addMessageToImportantList([J)Z
    .locals 1
    .parameter "msgIds"

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public cancelDownloading(J)V
    .locals 0
    .parameter "msgId"

    .prologue
    .line 125
    return-void
.end method

.method public deleteIpMsg([JZZ)V
    .locals 0
    .parameter "ids"
    .parameter "delImportant"
    .parameter "delLocked"

    .prologue
    .line 101
    return-void
.end method

.method public deleteMessageFromImportantList([J)Z
    .locals 1
    .parameter "msgIds"

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public downloadAttach(J)V
    .locals 0
    .parameter "msgId"

    .prologue
    .line 117
    return-void
.end method

.method public getDownloadProcess(J)I
    .locals 1
    .parameter "msgId"

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public getFrom(J)Ljava/lang/String;
    .locals 1
    .parameter "msgId"

    .prologue
    .line 93
    const-string v0, ""

    return-object v0
.end method

.method public getIpDatabaseId(J)I
    .locals 1
    .parameter "msgId"

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public getIpMessageFromIntent(Landroid/content/Intent;)Lcom/mediatek/mms/ipmessage/message/IpMessage;
    .locals 1
    .parameter "intent"

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIpMessageStatusString(J)Ljava/lang/String;
    .locals 1
    .parameter "msgId"

    .prologue
    .line 161
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIpMsgInfo(J)Lcom/mediatek/mms/ipmessage/message/IpMessage;
    .locals 1
    .parameter "msgId"

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSimId(J)I
    .locals 1
    .parameter "msgId"

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public getStatus(J)I
    .locals 1
    .parameter "msgId"

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public getTime(J)I
    .locals 1
    .parameter "msgId"

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public getTo(J)Ljava/lang/String;
    .locals 1
    .parameter "msgId"

    .prologue
    .line 89
    const-string v0, ""

    return-object v0
.end method

.method public getType(J)I
    .locals 1
    .parameter "msgId"

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public handleIpMessage(JI)V
    .locals 0
    .parameter "msgId"
    .parameter "action"

    .prologue
    .line 157
    return-void
.end method

.method public isDownloading(J)Z
    .locals 1
    .parameter "msgId"

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public isReaded(J)Z
    .locals 1
    .parameter "msgId"

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public resendMessage(J)V
    .locals 0
    .parameter "msgId"

    .prologue
    .line 145
    return-void
.end method

.method public resendMessage(JI)V
    .locals 0
    .parameter "msgId"
    .parameter "simId"

    .prologue
    .line 149
    return-void
.end method

.method public saveIpMsg(Lcom/mediatek/mms/ipmessage/message/IpMessage;I)I
    .locals 1
    .parameter "msg"
    .parameter "sendMsgMode"

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public setIpMessageStatus(JI)V
    .locals 0
    .parameter "msgId"
    .parameter "msgStatus"

    .prologue
    .line 153
    return-void
.end method

.method public setIpMsgAsViewed(J)V
    .locals 0
    .parameter "msgId"

    .prologue
    .line 105
    return-void
.end method

.method public setThreadAsViewed(J)V
    .locals 0
    .parameter "threadId"

    .prologue
    .line 109
    return-void
.end method
