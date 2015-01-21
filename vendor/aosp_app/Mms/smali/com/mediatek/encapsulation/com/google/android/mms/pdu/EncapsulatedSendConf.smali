.class public Lcom/mediatek/encapsulation/com/google/android/mms/pdu/EncapsulatedSendConf;
.super Ljava/lang/Object;
.source "EncapsulatedSendConf.java"


# instance fields
.field private mSendConf:Lcom/google/android/mms/pdu/SendConf;


# direct methods
.method public constructor <init>(Lcom/google/android/mms/pdu/SendConf;)V
    .locals 0
    .parameter "sendConf"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/mediatek/encapsulation/com/google/android/mms/pdu/EncapsulatedSendConf;->mSendConf:Lcom/google/android/mms/pdu/SendConf;

    .line 13
    return-void
.end method


# virtual methods
.method public getResponseText()Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/mediatek/encapsulation/com/google/android/mms/pdu/EncapsulatedSendConf;->mSendConf:Lcom/google/android/mms/pdu/SendConf;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/SendConf;->getResponseText()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    return-object v0
.end method
