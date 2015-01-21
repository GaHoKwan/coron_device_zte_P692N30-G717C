.class public Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;
.super Lcom/android/emailcommon/mail/Address;
.source "MessageViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/email/emailvip/utils/MessageViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TempAddress"
.end annotation


# static fields
.field public static final FLAG_BCC_LAYOUT:I = 0x3

.field public static final FLAG_CC_LAYOUT:I = 0x2

.field public static final FLAG_TO_LAYOUT:I = 0x1


# instance fields
.field public mIsVipMember:Z

.field public mParentLayoutFlag:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "address"
    .parameter "personal"
    .parameter "parentLayoutFlag"

    .prologue
    .line 409
    invoke-direct {p0, p1, p2}, Lcom/android/emailcommon/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iput p3, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;->mParentLayoutFlag:I

    .line 411
    return-void
.end method

.method public static unpack(Ljava/lang/String;I)[Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;
    .locals 6
    .parameter "addressList"
    .parameter "parentLayoutFlag"

    .prologue
    .line 418
    invoke-static {p0}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v1

    .line 419
    .local v1, addresses:[Lcom/android/emailcommon/mail/Address;
    array-length v5, v1

    if-nez v5, :cond_1

    .line 420
    const/4 v5, 0x0

    new-array v4, v5, [Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;

    .line 433
    :cond_0
    return-object v4

    .line 422
    :cond_1
    array-length v5, v1

    new-array v4, v5, [Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;

    .line 423
    .local v4, vipAddresses:[Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;
    const/4 v0, 0x0

    .line 424
    .local v0, address:Ljava/lang/String;
    const/4 v3, 0x0

    .line 425
    .local v3, personal:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v1

    if-ge v2, v5, :cond_0

    .line 426
    aget-object v5, v1, v2

    invoke-virtual {v5}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 427
    aget-object v5, v1, v2

    invoke-virtual {v5}, Lcom/android/emailcommon/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v3

    .line 428
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 429
    move-object v3, v0

    .line 431
    :cond_2
    new-instance v5, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;

    invoke-direct {v5, v0, v3, p1}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v5, v4, v2

    .line 425
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public setVip(Z)V
    .locals 0
    .parameter "isVip"

    .prologue
    .line 414
    iput-boolean p1, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;->mIsVipMember:Z

    .line 415
    return-void
.end method
