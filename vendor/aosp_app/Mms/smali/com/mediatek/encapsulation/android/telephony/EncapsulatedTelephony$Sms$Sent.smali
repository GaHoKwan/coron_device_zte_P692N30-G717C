.class public final Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$Sms$Sent;
.super Ljava/lang/Object;
.source "EncapsulatedTelephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$TextBasedSmsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$Sms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Sent"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;I)Landroid/net/Uri;
    .locals 12
    .parameter "resolver"
    .parameter "address"
    .parameter "body"
    .parameter "subject"
    .parameter "sc"
    .parameter "date"
    .parameter "simId"

    .prologue
    .line 425
    sget-object v1, Landroid/provider/Telephony$Sms$Sent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-wide/16 v9, -0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v11, p6

    invoke-static/range {v0 .. v11}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$Sms;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJI)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
