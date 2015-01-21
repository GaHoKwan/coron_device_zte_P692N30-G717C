.class public final Lcom/zte/backup/format/vxx/vmsg/Telephony$Sms$Intents;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/backup/format/vxx/vmsg/Telephony$Sms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intents"
.end annotation


# static fields
.field public static final CBS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.CBS_RECEIVED"

.field public static final DATA_SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.intent.action.DATA_SMS_RECEIVED"

.field public static final RESULT_SMS_GENERIC_ERROR:I = 0x2

.field public static final RESULT_SMS_HANDLED:I = 0x1

.field public static final RESULT_SMS_OUT_OF_MEMORY:I = 0x3

.field public static final RESULT_SMS_UNSUPPORTED:I = 0x4

.field public static final SIM_FULL_ACTION:Ljava/lang/String; = "android.provider.Telephony.SIM_FULL"

.field public static final SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field public static final SMS_REJECTED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_REJECTED"

.field public static final WAP_PUSH_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_RECEIVED"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 7
    .parameter "intent"

    .prologue
    .line 638
    const-string v6, "pdus"

    invoke-virtual {p0, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 639
    .local v1, messages:[Ljava/lang/Object;
    array-length v6, v1

    new-array v4, v6, [[B

    .line 641
    .local v4, pduObjs:[[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v6, v1

    if-lt v0, v6, :cond_0

    .line 644
    array-length v6, v4

    new-array v5, v6, [[B

    .line 645
    .local v5, pdus:[[B
    array-length v3, v5

    .line 646
    .local v3, pduCount:I
    new-array v2, v3, [Landroid/telephony/SmsMessage;

    .line 647
    .local v2, msgs:[Landroid/telephony/SmsMessage;
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v3, :cond_1

    .line 651
    return-object v2

    .line 642
    .end local v2           #msgs:[Landroid/telephony/SmsMessage;
    .end local v3           #pduCount:I
    .end local v5           #pdus:[[B
    :cond_0
    aget-object v6, v1, v0

    check-cast v6, [B

    aput-object v6, v4, v0

    .line 641
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 648
    .restart local v2       #msgs:[Landroid/telephony/SmsMessage;
    .restart local v3       #pduCount:I
    .restart local v5       #pdus:[[B
    :cond_1
    aget-object v6, v4, v0

    aput-object v6, v5, v0

    .line 649
    aget-object v6, v5, v0

    invoke-static {v6}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v6

    aput-object v6, v2, v0

    .line 647
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
