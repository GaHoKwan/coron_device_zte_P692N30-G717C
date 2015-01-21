.class public Lcom/mediatek/mms/ipmessage/ContactManager;
.super Landroid/content/ContextWrapper;
.source "ContactManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Mms/ipmsgContactManagerImpl"


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

    iput-object v0, p0, Lcom/mediatek/mms/ipmessage/ContactManager;->mContext:Landroid/content/Context;

    .line 53
    iput-object p1, p0, Lcom/mediatek/mms/ipmessage/ContactManager;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method


# virtual methods
.method public addContactToSpamList([I)Z
    .locals 2
    .parameter "contactIds"

    .prologue
    .line 122
    const-string v0, "Mms/ipmsgContactManagerImpl"

    const-string v1, "addContactToSpamList called"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public deleteContactFromSpamList([I)Z
    .locals 2
    .parameter "contactIds"

    .prologue
    .line 127
    const-string v0, "Mms/ipmsgContactManagerImpl"

    const-string v1, "deleteContactFromSpamList called"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public getAvatarByNumber(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "number"

    .prologue
    .line 107
    const-string v0, "Mms/ipmsgContactManagerImpl"

    const-string v1, "getAvatarByNumber called"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAvatarByThreadId(J)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "threadId"

    .prologue
    .line 112
    const-string v0, "Mms/ipmsgContactManagerImpl"

    const-string v1, "getAvatarByThreadId called"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContactIdByNumber(Ljava/lang/String;)S
    .locals 2
    .parameter "number"

    .prologue
    .line 72
    const-string v0, "Mms/ipmsgContactManagerImpl"

    const-string v1, "getContactIdByNumber called"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public getNameByNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "number"

    .prologue
    .line 92
    const-string v0, "Mms/ipmsgContactManagerImpl"

    const-string v1, "getNameByNumber called"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v0, ""

    return-object v0
.end method

.method public getNameByThreadId(J)Ljava/lang/String;
    .locals 2
    .parameter "threadId"

    .prologue
    .line 97
    const-string v0, "Mms/ipmsgContactManagerImpl"

    const-string v1, "getNameByThreadId called"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v0, ""

    return-object v0
.end method

.method public getNumberByEngineId(S)Ljava/lang/String;
    .locals 2
    .parameter "engineId"

    .prologue
    .line 57
    const-string v0, "Mms/ipmsgContactManagerImpl"

    const-string v1, "getNumberByEngineId called"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v0, ""

    return-object v0
.end method

.method public getNumberByMessageId(J)Ljava/lang/String;
    .locals 2
    .parameter "messageId"

    .prologue
    .line 62
    const-string v0, "Mms/ipmsgContactManagerImpl"

    const-string v1, "getNumberByMessageId called"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v0, ""

    return-object v0
.end method

.method public getNumberByThreadId(J)Ljava/lang/String;
    .locals 2
    .parameter "threadId"

    .prologue
    .line 67
    const-string v0, "Mms/ipmsgContactManagerImpl"

    const-string v1, "getNumberByThreadId called"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v0, ""

    return-object v0
.end method

.method public getOnlineTimeByNumber(Ljava/lang/String;)I
    .locals 2
    .parameter "number"

    .prologue
    .line 87
    const-string v0, "Mms/ipmsgContactManagerImpl"

    const-string v1, "getOnlineTimeByNumber called"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public getSignatureByNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "number"

    .prologue
    .line 102
    const-string v0, "Mms/ipmsgContactManagerImpl"

    const-string v1, "getSignatureByNumber called"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v0, ""

    return-object v0
.end method

.method public getStatusByNumber(Ljava/lang/String;)I
    .locals 2
    .parameter "number"

    .prologue
    .line 82
    const-string v0, "Mms/ipmsgContactManagerImpl"

    const-string v1, "getStatusByNumber called"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public getTypeByNumber(Ljava/lang/String;)I
    .locals 2
    .parameter "number"

    .prologue
    .line 77
    const-string v0, "Mms/ipmsgContactManagerImpl"

    const-string v1, "getTypeByNumber called"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public isIpMessageNumber(Ljava/lang/String;)Z
    .locals 2
    .parameter "number"

    .prologue
    .line 117
    const-string v0, "Mms/ipmsgContactManagerImpl"

    const-string v1, "isIpMessageNumber called"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const/4 v0, 0x0

    return v0
.end method
