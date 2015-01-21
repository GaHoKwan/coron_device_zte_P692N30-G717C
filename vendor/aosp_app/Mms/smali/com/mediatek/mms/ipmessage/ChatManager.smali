.class public Lcom/mediatek/mms/ipmessage/ChatManager;
.super Landroid/content/ContextWrapper;
.source "ChatManager.java"


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/mms/ipmessage/ChatManager;->mContext:Landroid/content/Context;

    .line 50
    iput-object p1, p0, Lcom/mediatek/mms/ipmessage/ChatManager;->mContext:Landroid/content/Context;

    .line 51
    return-void
.end method


# virtual methods
.method public addActivatePromptStatistics(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 111
    return-void
.end method

.method public deleteDraftMessageInThread(J)Z
    .locals 1
    .parameter "threadId"

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public enterChatMode(Ljava/lang/String;)V
    .locals 0
    .parameter "number"

    .prologue
    .line 81
    return-void
.end method

.method public exitFromChatMode(Ljava/lang/String;)V
    .locals 0
    .parameter "number"

    .prologue
    .line 89
    return-void
.end method

.method public getIpMessageCountOfTypeInThread(JI)I
    .locals 1
    .parameter "threadId"
    .parameter "typeFlag"

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public handleInviteDlg(J)Z
    .locals 1
    .parameter "threadId"

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public handleInviteDlgLater(J)Z
    .locals 1
    .parameter "threadId"

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public needShowInviteDlg(J)Z
    .locals 1
    .parameter "threadId"

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public needShowReminderDlg(J)I
    .locals 1
    .parameter "threadId"

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public needShowSwitchAcctDlg(J)Z
    .locals 1
    .parameter "threadId"

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public saveChatHistory([J)V
    .locals 0
    .parameter "threadIds"

    .prologue
    .line 93
    return-void
.end method

.method public sendChatMode(Ljava/lang/String;I)V
    .locals 0
    .parameter "number"
    .parameter "status"

    .prologue
    .line 85
    return-void
.end method
