.class public final Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$SmsCb$Intents;
.super Ljava/lang/Object;
.source "EncapsulatedTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$SmsCb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intents"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsCbMessage;
    .locals 1
    .parameter "intent"

    .prologue
    .line 266
    invoke-static {p0}, Landroid/provider/Telephony$SmsCb$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsCbMessage;

    move-result-object v0

    return-object v0
.end method
