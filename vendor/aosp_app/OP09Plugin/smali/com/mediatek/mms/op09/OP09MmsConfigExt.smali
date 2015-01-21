.class public Lcom/mediatek/mms/op09/OP09MmsConfigExt;
.super Lcom/mediatek/mms/ext/MmsConfigImpl;
.source "OP09MmsConfigExt.java"


# static fields
.field private static final OP09_DEFAULT_RETRY_SCHEME:[I = null

.field private static final TAG:Ljava/lang/String; = "OP09MmsConfigExt"

.field private static sSmsToMmsTextThreshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/16 v0, 0xb

    sput v0, Lcom/mediatek/mms/op09/OP09MmsConfigExt;->sSmsToMmsTextThreshold:I

    .line 47
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/mms/op09/OP09MmsConfigExt;->OP09_DEFAULT_RETRY_SCHEME:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xe0t 0x93t 0x4t 0x0t
        0xe0t 0x93t 0x4t 0x0t
        0xe0t 0x93t 0x4t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/mediatek/mms/ext/MmsConfigImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getMmsRetryScheme()[I
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/mediatek/mms/op09/OP09MmsConfigExt;->OP09_DEFAULT_RETRY_SCHEME:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public getSmsToMmsTextThreshold()I
    .locals 1

    .prologue
    .line 51
    sget v0, Lcom/mediatek/mms/op09/OP09MmsConfigExt;->sSmsToMmsTextThreshold:I

    return v0
.end method

.method public isAllowDRWhenRoaming(Landroid/content/Context;I)Z
    .locals 4
    .parameter "context"
    .parameter "slotId"

    .prologue
    const/4 v0, 0x1

    .line 76
    const-string v1, "OP09MmsConfigExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAllowDRWhenRoaming() slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {p1, p2}, Lcom/mediatek/mms/op09/MessageUtils;->isCDMAType(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1, p2}, Lcom/mediatek/mms/op09/MessageUtils;->isInternationalRoamingStatus(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAllowRetryForPermanentFail()Z
    .locals 2

    .prologue
    .line 71
    const-string v0, "OP09MmsConfigExt"

    const-string v1, "isAllowRetryForPermanentFail: true"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportCBMessage(Landroid/content/Context;I)Z
    .locals 1
    .parameter "context"
    .parameter "simId"

    .prologue
    .line 63
    invoke-static {p1, p2}, Lcom/mediatek/mms/op09/MessageUtils;->isCDMAType(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportCTFeature()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportTabSetting()Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportVCardPreview()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method
