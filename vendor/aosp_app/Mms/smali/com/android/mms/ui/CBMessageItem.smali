.class public Lcom/android/mms/ui/CBMessageItem;
.super Ljava/lang/Object;
.source "CBMessageItem.java"


# instance fields
.field mCachedFormattedMessage:Ljava/lang/CharSequence;

.field private mChannelId:I

.field private mDate:Ljava/lang/String;

.field private mFrom:Ljava/lang/String;

.field private mId:J

.field mItemSelected:Z

.field private mMessage:Lcom/android/mms/data/CBMessage;

.field private mPresenceResId:I

.field mSimId:I

.field private mSubject:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/data/CBMessage;)V
    .locals 5
    .parameter "context"
    .parameter "message"

    .prologue
    const/4 v4, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-boolean v4, p0, Lcom/android/mms/ui/CBMessageItem;->mItemSelected:Z

    .line 81
    iput-object p2, p0, Lcom/android/mms/ui/CBMessageItem;->mMessage:Lcom/android/mms/data/CBMessage;

    .line 82
    invoke-virtual {p2}, Lcom/android/mms/data/CBMessage;->getMessageId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/ui/CBMessageItem;->mId:J

    .line 83
    iput v4, p0, Lcom/android/mms/ui/CBMessageItem;->mPresenceResId:I

    .line 84
    invoke-virtual {p2}, Lcom/android/mms/data/CBMessage;->getBody()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/CBMessageItem;->mSubject:Ljava/lang/String;

    .line 85
    invoke-virtual {p2}, Lcom/android/mms/data/CBMessage;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/CBMessageItem;->mFrom:Ljava/lang/String;

    .line 86
    const v0, 0x7f0b0037

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/android/mms/data/CBMessage;->getDate()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/CBMessageItem;->mDate:Ljava/lang/String;

    .line 88
    invoke-virtual {p2}, Lcom/android/mms/data/CBMessage;->getChannelId()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/CBMessageItem;->mChannelId:I

    .line 89
    invoke-virtual {p2}, Lcom/android/mms/data/CBMessage;->getSimId()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/CBMessageItem;->mSimId:I

    .line 90
    return-void
.end method


# virtual methods
.method public getCachedFormattedMessage()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageItem;->mCachedFormattedMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getChannelId()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/android/mms/ui/CBMessageItem;->mChannelId:I

    return v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageItem;->mDate:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageItem;->mFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()J
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/android/mms/ui/CBMessageItem;->mId:J

    return-wide v0
.end method

.method public getPresenceResourceId()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/android/mms/ui/CBMessageItem;->mPresenceResId:I

    return v0
.end method

.method public getSimId()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/android/mms/ui/CBMessageItem;->mSimId:I

    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageItem;->mSubject:Ljava/lang/String;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/mms/ui/CBMessageItem;->mItemSelected:Z

    return v0
.end method

.method public setCachedFormattedMessage(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "formattedMessage"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/mms/ui/CBMessageItem;->mCachedFormattedMessage:Ljava/lang/CharSequence;

    .line 130
    return-void
.end method

.method public setSelectedState(Z)V
    .locals 0
    .parameter "isSelected"

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/android/mms/ui/CBMessageItem;->mItemSelected:Z

    .line 143
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CBMessageHeader from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/CBMessageItem;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " subject:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/CBMessageItem;->getSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
