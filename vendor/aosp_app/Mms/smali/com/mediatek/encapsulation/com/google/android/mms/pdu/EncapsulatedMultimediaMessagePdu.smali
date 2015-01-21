.class public Lcom/mediatek/encapsulation/com/google/android/mms/pdu/EncapsulatedMultimediaMessagePdu;
.super Ljava/lang/Object;
.source "EncapsulatedMultimediaMessagePdu.java"


# instance fields
.field private mMsgPdu:Lcom/google/android/mms/pdu/MultimediaMessagePdu;


# direct methods
.method public constructor <init>(Lcom/google/android/mms/pdu/MultimediaMessagePdu;)V
    .locals 0
    .parameter "pdu"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/mediatek/encapsulation/com/google/android/mms/pdu/EncapsulatedMultimediaMessagePdu;->mMsgPdu:Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .line 12
    return-void
.end method


# virtual methods
.method public getDateSent()J
    .locals 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/mediatek/encapsulation/com/google/android/mms/pdu/EncapsulatedMultimediaMessagePdu;->mMsgPdu:Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getDateSent()J

    move-result-wide v0

    return-wide v0
.end method
