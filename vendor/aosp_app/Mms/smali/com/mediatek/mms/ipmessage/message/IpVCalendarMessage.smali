.class public Lcom/mediatek/mms/ipmessage/message/IpVCalendarMessage;
.super Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;
.source "IpVCalendarMessage.java"


# instance fields
.field private mSummary:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mediatek/mms/ipmessage/message/IpVCalendarMessage;->mSummary:Ljava/lang/String;

    return-object v0
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0
    .parameter "summary"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/mediatek/mms/ipmessage/message/IpVCalendarMessage;->mSummary:Ljava/lang/String;

    .line 49
    return-void
.end method
