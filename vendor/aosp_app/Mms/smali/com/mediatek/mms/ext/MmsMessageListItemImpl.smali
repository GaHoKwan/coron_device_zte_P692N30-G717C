.class public Lcom/mediatek/mms/ext/MmsMessageListItemImpl;
.super Landroid/content/ContextWrapper;
.source "MmsMessageListItemImpl.java"

# interfaces
.implements Lcom/mediatek/mms/ext/IMmsMessageListItem;


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/MmsMessageListItemImpl"


# instance fields
.field private mHost:Lcom/mediatek/mms/ext/IMmsMessageListItemHost;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/mms/ext/MmsMessageListItemImpl;->mHost:Lcom/mediatek/mms/ext/IMmsMessageListItemHost;

    .line 51
    return-void
.end method


# virtual methods
.method public drawMassTextMsgStatus(Landroid/content/Context;ZJ)V
    .locals 0
    .parameter "context"
    .parameter "isSms"
    .parameter "timestamp"

    .prologue
    .line 100
    return-void
.end method

.method protected getHost()Lcom/mediatek/mms/ext/IMmsMessageListItemHost;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mediatek/mms/ext/MmsMessageListItemImpl;->mHost:Lcom/mediatek/mms/ext/IMmsMessageListItemHost;

    return-object v0
.end method

.method public getSentDateStr(Landroid/content/Context;Ljava/lang/String;JIJI)Ljava/lang/String;
    .locals 0
    .parameter "context"
    .parameter "srcTxt"
    .parameter "msgId"
    .parameter "msgType"
    .parameter "smsSentDate"
    .parameter "boxId"

    .prologue
    .line 96
    return-object p2
.end method

.method public hideAllButton()Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public hideDownloadButton()Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public init(Lcom/mediatek/mms/ext/IMmsMessageListItemHost;)V
    .locals 0
    .parameter "host"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/mediatek/mms/ext/MmsMessageListItemImpl;->mHost:Lcom/mediatek/mms/ext/IMmsMessageListItemHost;

    .line 55
    return-void
.end method

.method public isEnableShowDualTime()Z
    .locals 2

    .prologue
    .line 112
    const-string v0, "Mms/MmsMessageListItemImpl"

    const-string v1, "isEnableShowDualTime: false"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public needEditFailedMessge(Landroid/content/Context;JJ)Z
    .locals 1
    .parameter "context"
    .parameter "msgId"
    .parameter "timeStamp"

    .prologue
    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public setDualTime(Landroid/content/Context;ZILandroid/widget/TextView;Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "isRecievedMsg"
    .parameter "simdId"
    .parameter "dateView"
    .parameter "linearLayout"
    .parameter "timeDate"

    .prologue
    .line 119
    return-void
.end method

.method public setNotifyContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;)Z
    .locals 1
    .parameter "address"
    .parameter "subject"
    .parameter "msgSizeText"
    .parameter "expireText"
    .parameter "expireTextView"

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public showDownloadButton()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public showSimType(Landroid/content/Context;ILandroid/widget/TextView;)V
    .locals 2
    .parameter "context"
    .parameter "simId"
    .parameter "textView"

    .prologue
    .line 63
    const-string v0, "Mms/MmsMessageListItemImpl"

    const-string v1, "showSimType default"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method
