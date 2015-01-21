.class public Lcom/mediatek/mms/ext/MissedSmsReceiverImpl;
.super Landroid/content/ContextWrapper;
.source "MissedSmsReceiverImpl.java"

# interfaces
.implements Lcom/mediatek/mms/ext/IMissedSmsReceiver;


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/MissedSmsReceiverImp"


# instance fields
.field private mHost:Lcom/mediatek/mms/ext/IMissedSmsReceiverHost;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/mms/ext/MissedSmsReceiverImpl;->mHost:Lcom/mediatek/mms/ext/IMissedSmsReceiverHost;

    .line 51
    return-void
.end method


# virtual methods
.method protected getHost()Lcom/mediatek/mms/ext/IMissedSmsReceiverHost;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mediatek/mms/ext/MissedSmsReceiverImpl;->mHost:Lcom/mediatek/mms/ext/IMissedSmsReceiverHost;

    return-object v0
.end method

.method public init(Lcom/mediatek/mms/ext/IMissedSmsReceiverHost;)V
    .locals 0
    .parameter "host"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/mediatek/mms/ext/MissedSmsReceiverImpl;->mHost:Lcom/mediatek/mms/ext/IMissedSmsReceiverHost;

    .line 55
    return-void
.end method

.method public isEnableMissedSmsReceiver()Z
    .locals 2

    .prologue
    .line 59
    const-string v0, "Mms/MissedSmsReceiverImp"

    const-string v1, "isEnableMissedSmsReceiver(): false"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public updateMissedSms(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;
    .locals 2
    .parameter "context"
    .parameter "msgs"
    .parameter "error"

    .prologue
    .line 68
    const-string v0, "Mms/MissedSmsReceiverImp"

    const-string v1, "MissedSmsReceiverImp.updateMissedSms()"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/mediatek/mms/ext/MissedSmsReceiverImpl;->mHost:Lcom/mediatek/mms/ext/IMissedSmsReceiverHost;

    invoke-interface {v0, p1, p2, p3}, Lcom/mediatek/mms/ext/IMissedSmsReceiverHost;->callStoreMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
