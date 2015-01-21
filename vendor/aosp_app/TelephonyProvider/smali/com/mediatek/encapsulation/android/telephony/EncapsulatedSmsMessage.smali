.class public Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSmsMessage;
.super Ljava/lang/Object;
.source "EncapsulatedSmsMessage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDestinationAddress(Landroid/telephony/SmsMessage;)Ljava/lang/String;
    .locals 1
    .parameter "sms"

    .prologue
    .line 20
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getDestinationAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserDataHeader(Landroid/telephony/SmsMessage;)Lcom/android/internal/telephony/SmsHeader;
    .locals 1
    .parameter "sms"

    .prologue
    .line 12
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v0

    return-object v0
.end method
