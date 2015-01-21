.class Lcom/android/mms/ui/MessageContent;
.super Ljava/lang/Object;
.source "ClassZeroActivity.java"


# instance fields
.field public mAutoSaveTime:J

.field public mMessages:[Landroid/telephony/SmsMessage;

.field public mSimId:I


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 540
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessageContent;->mMessages:[Landroid/telephony/SmsMessage;

    .line 541
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/ui/MessageContent;->mAutoSaveTime:J

    .line 542
    iput v2, p0, Lcom/android/mms/ui/MessageContent;->mSimId:I

    .line 550
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageContent;->mMessages:[Landroid/telephony/SmsMessage;

    .line 551
    const-string v0, "simId"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MessageContent;->mSimId:I

    .line 552
    return-void
.end method

.method public constructor <init>([Landroid/telephony/SmsMessage;I)V
    .locals 2
    .parameter "messages"
    .parameter "simId"

    .prologue
    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 540
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessageContent;->mMessages:[Landroid/telephony/SmsMessage;

    .line 541
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/ui/MessageContent;->mAutoSaveTime:J

    .line 542
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/MessageContent;->mSimId:I

    .line 545
    iput-object p1, p0, Lcom/android/mms/ui/MessageContent;->mMessages:[Landroid/telephony/SmsMessage;

    .line 546
    iput p2, p0, Lcom/android/mms/ui/MessageContent;->mSimId:I

    .line 547
    return-void
.end method
