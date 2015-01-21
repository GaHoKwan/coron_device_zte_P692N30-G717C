.class public Lcom/mediatek/mms/ext/MmsComposeImpl;
.super Landroid/content/ContextWrapper;
.source "MmsComposeImpl.java"

# interfaces
.implements Lcom/mediatek/mms/ext/IMmsCompose;


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/MmsComposeImpl"


# instance fields
.field private mHost:Lcom/mediatek/mms/ext/IMmsComposeHost;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/mms/ext/MmsComposeImpl;->mHost:Lcom/mediatek/mms/ext/IMmsComposeHost;

    .line 63
    return-void
.end method


# virtual methods
.method public addAttachmentViewSendButton(Landroid/widget/LinearLayout;)Z
    .locals 1
    .parameter "btnPanel"

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public addContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 77
    return-void
.end method

.method public addContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"
    .parameter "text"

    .prologue
    .line 72
    return-void
.end method

.method public addSendButtonLayout(Landroid/widget/LinearLayout;)Z
    .locals 1
    .parameter "btnPanel"

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public addSplitMessageContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;Landroid/app/Activity;JI)V
    .locals 0
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"
    .parameter "activity"
    .parameter "messageGroupId"
    .parameter "messagesCount"

    .prologue
    .line 82
    return-void
.end method

.method public addSplitThreadOptionMenu(Landroid/view/Menu;Landroid/app/Activity;J)V
    .locals 0
    .parameter "menu"
    .parameter "activity"
    .parameter "threadId"

    .prologue
    .line 85
    return-void
.end method

.method public configSubjectEditor(Landroid/widget/EditText;)V
    .locals 0
    .parameter "subjectEditor"

    .prologue
    .line 100
    return-void
.end method

.method public deleteMassTextMsg(JJ)Z
    .locals 1
    .parameter "msgId"
    .parameter "timeStamp"

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public enableDRWarningDialog(Landroid/content/Context;ZI)V
    .locals 0
    .parameter "context"
    .parameter "isEnable"
    .parameter "simId"

    .prologue
    .line 231
    return-void
.end method

.method public getCapturePicMode()I
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method public getConverationUri(Landroid/net/Uri;J)Landroid/net/Uri;
    .locals 0
    .parameter "uriSrc"
    .parameter "threadId"

    .prologue
    .line 123
    return-object p1
.end method

.method protected getHost()Lcom/mediatek/mms/ext/IMmsComposeHost;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/mediatek/mms/ext/MmsComposeImpl;->mHost:Lcom/mediatek/mms/ext/IMmsComposeHost;

    return-object v0
.end method

.method public getNumberLocation(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "context"
    .parameter "number"

    .prologue
    .line 119
    return-object p2
.end method

.method public getNumbersFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 12
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 171
    if-nez p1, :cond_1

    move-object v4, v8

    .line 211
    :cond_0
    :goto_0
    return-object v4

    .line 174
    :cond_1
    const-string v9, "USE_COLON"

    invoke-virtual {p1, v9, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 175
    .local v7, usingColon:Z
    const-string v9, "contactId"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 176
    .local v4, selectContactsNumbers:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 177
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    if-ge v9, v10, :cond_3

    :cond_2
    move-object v4, v8

    .line 178
    goto :goto_0

    .line 180
    :cond_3
    const-string v8, ":"

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, numberArray:[Ljava/lang/String;
    const-string v3, ""

    .line 182
    .local v3, numberTempl:Ljava/lang/String;
    const/4 v6, -0x1

    .line 183
    .local v6, simcolonIndex:I
    const/4 v0, -0x1

    .line 184
    .local v0, colonIndex:I
    const/4 v5, -0x1

    .line 185
    .local v5, separatorIndex:I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_1
    array-length v8, v2

    if-ge v1, v8, :cond_9

    .line 186
    aget-object v3, v2, v1

    .line 187
    const-string v8, ";"

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 188
    const-string v8, ","

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 189
    if-lez v6, :cond_8

    .line 190
    if-gez v0, :cond_6

    .line 191
    move v5, v6

    .line 202
    :cond_4
    :goto_2
    if-lez v5, :cond_5

    .line 203
    invoke-virtual {v3, v11, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v1

    .line 205
    :cond_5
    const/4 v6, -0x1

    .line 206
    const/4 v0, -0x1

    .line 207
    const/4 v5, -0x1

    .line 185
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 192
    :cond_6
    if-ge v6, v0, :cond_7

    .line 193
    move v5, v6

    goto :goto_2

    .line 194
    :cond_7
    if-lez v0, :cond_4

    .line 195
    move v5, v0

    goto :goto_2

    .line 198
    :cond_8
    if-lez v0, :cond_4

    .line 199
    move v5, v0

    goto :goto_2

    .line 209
    :cond_9
    const-string v8, ";"

    invoke-static {v8, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public getSendParameter(Landroid/os/Message;I)I
    .locals 0
    .parameter "msg"
    .parameter "sendSimId"

    .prologue
    .line 215
    return p2
.end method

.method public getSmsMessageAndSaveToSim([Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;IJII)I
    .locals 0
    .parameter "numbers"
    .parameter "scAddress"
    .parameter
    .parameter "smsStatus"
    .parameter "timeStamp"
    .parameter "slotId"
    .parameter "srcResult"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;IJII)I"
        }
    .end annotation

    .prologue
    .line 259
    .local p3, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    return p8
.end method

.method public hideCTButtonPanel()Z
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public hideCtSendPanel()Z
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method public init(Lcom/mediatek/mms/ext/IMmsComposeHost;)V
    .locals 0
    .parameter "host"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/mediatek/mms/ext/MmsComposeImpl;->mHost:Lcom/mediatek/mms/ext/IMmsComposeHost;

    .line 67
    return-void
.end method

.method public initCTSendButton()Z
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public isAddMmsUrlToBookMark()Z
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public isAppendSender()Z
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public isDualSendButtonEnable()Z
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public isEnableLengthRequiredMmsToSms()Z
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    return v0
.end method

.method public isMassTextEnable()Z
    .locals 2

    .prologue
    .line 235
    const-string v0, "Mms/MmsComposeImpl"

    const-string v1, "isMassTextEnable: false"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const/4 v0, 0x0

    return v0
.end method

.method public isMultiCompose()Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public lockMassTextMsg(Landroid/content/Context;JJZ)Z
    .locals 1
    .parameter "context"
    .parameter "msgId"
    .parameter "timeStamp"
    .parameter "lock"

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public needConfirmMmsToSms()Z
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public setCTSendButtonType()Z
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public setConfirmMmsToSms(Z)V
    .locals 0
    .parameter "needConfirm"

    .prologue
    .line 248
    return-void
.end method

.method public showCTButtonPanel()Z
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public showDisableDRDialog(Landroid/app/Activity;I)V
    .locals 0
    .parameter "activity"
    .parameter "simId"

    .prologue
    .line 227
    return-void
.end method

.method public showMassTextMsgDetail(Landroid/content/Context;J)Z
    .locals 1
    .parameter "context"
    .parameter "timeStamp"

    .prologue
    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public updateCTSendButtonStatue(ZZ)Z
    .locals 1
    .parameter "enable"
    .parameter "isMms"

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public updateCTTextCounter(II)Z
    .locals 1
    .parameter "remainingInCurrentMessage"
    .parameter "msgCount"

    .prologue
    .line 167
    const/4 v0, 0x0

    return v0
.end method
