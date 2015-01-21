.class public Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSmsMessageEx;
.super Ljava/lang/Object;
.source "EncapsulatedSmsMessageEx.java"


# static fields
.field private static sSlotId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateLength(Ljava/lang/CharSequence;ZI)[I
    .locals 1
    .parameter "msgBody"
    .parameter "use7bitOnly"
    .parameter "encodingType"

    .prologue
    .line 43
    invoke-static {p0, p1, p2}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v0

    return-object v0
.end method

.method public static getMessageSimId(Landroid/telephony/SmsMessage;)I
    .locals 1
    .parameter "sms"

    .prologue
    .line 34
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getMessageSimId()I

    move-result v0

    return v0
.end method

.method public static getSmsc(Landroid/telephony/SmsMessage;I)[B
    .locals 1
    .parameter "msg"
    .parameter "slotId"

    .prologue
    .line 26
    invoke-static {}, Lcom/mediatek/telephony/SmsMessageEx;->getDefault()Lcom/mediatek/telephony/SmsMessageEx;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mediatek/telephony/SmsMessageEx;->getSmsc(Landroid/telephony/SmsMessage;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static getTpdu(Landroid/telephony/SmsMessage;I)[B
    .locals 1
    .parameter "msg"
    .parameter "slotId"

    .prologue
    .line 18
    invoke-static {}, Lcom/mediatek/telephony/SmsMessageEx;->getDefault()Lcom/mediatek/telephony/SmsMessageEx;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mediatek/telephony/SmsMessageEx;->getTpdu(Landroid/telephony/SmsMessage;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static setSmsSlotId(I)V
    .locals 0
    .parameter "slot"

    .prologue
    .line 13
    sput p0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSmsMessageEx;->sSlotId:I

    .line 14
    return-void
.end method
