.class public Lcom/mediatek/encapsulation/android/telephony/gemini/EncapsulatedGeminiSmsManager;
.super Ljava/lang/Object;
.source "EncapsulatedGeminiSmsManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteMessageFromIccGemini(II)Z
    .locals 1
    .parameter "messageIndex"
    .parameter "simId"

    .prologue
    .line 31
    invoke-static {}, Lcom/mediatek/telephony/SmsManagerEx;->getDefault()Lcom/mediatek/telephony/SmsManagerEx;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mediatek/telephony/SmsManagerEx;->deleteMessageFromIcc(II)Z

    move-result v0

    return v0
.end method

.method public static getAllMessagesFromIccGemini(I)Ljava/util/ArrayList;
    .locals 1
    .parameter "simId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    invoke-static {}, Lcom/mediatek/telephony/SmsManagerEx;->getDefault()Lcom/mediatek/telephony/SmsManagerEx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mediatek/telephony/SmsManagerEx;->getAllMessagesFromIcc(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
