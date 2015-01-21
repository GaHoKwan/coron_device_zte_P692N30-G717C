.class public Lcom/android/providers/contacts/DialerSearchSupport$PhoneNumber;
.super Ljava/lang/Object;
.source "DialerSearchSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/DialerSearchSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneNumber"
.end annotation


# instance fields
.field mCallDate:Ljava/lang/String;

.field mCallLogId:J

.field mCallSimId:I

.field mCallType:I

.field mGeoLocation:Ljava/lang/String;

.field mId:J

.field mNumber:Ljava/lang/String;

.field mNumberLabel:I

.field mVtCall:I


# direct methods
.method constructor <init>(JIJLjava/lang/String;ILjava/lang/String;IILjava/lang/String;)V
    .locals 0
    .parameter "phoneId"
    .parameter "numberLabel"
    .parameter "callLogId"
    .parameter "callDate"
    .parameter "callType"
    .parameter "geo"
    .parameter "callSimId"
    .parameter "vtCall"
    .parameter "phoneNumber"

    .prologue
    .line 884
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 885
    iput-wide p1, p0, Lcom/android/providers/contacts/DialerSearchSupport$PhoneNumber;->mId:J

    .line 886
    iput p3, p0, Lcom/android/providers/contacts/DialerSearchSupport$PhoneNumber;->mNumberLabel:I

    .line 887
    iput-wide p4, p0, Lcom/android/providers/contacts/DialerSearchSupport$PhoneNumber;->mCallLogId:J

    .line 888
    iput-object p6, p0, Lcom/android/providers/contacts/DialerSearchSupport$PhoneNumber;->mCallDate:Ljava/lang/String;

    .line 889
    iput p7, p0, Lcom/android/providers/contacts/DialerSearchSupport$PhoneNumber;->mCallType:I

    .line 890
    iput-object p8, p0, Lcom/android/providers/contacts/DialerSearchSupport$PhoneNumber;->mGeoLocation:Ljava/lang/String;

    .line 891
    iput p9, p0, Lcom/android/providers/contacts/DialerSearchSupport$PhoneNumber;->mCallSimId:I

    .line 892
    iput p10, p0, Lcom/android/providers/contacts/DialerSearchSupport$PhoneNumber;->mVtCall:I

    .line 893
    iput-object p11, p0, Lcom/android/providers/contacts/DialerSearchSupport$PhoneNumber;->mNumber:Ljava/lang/String;

    .line 894
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/android/providers/contacts/DialerSearchSupport$PhoneNumber;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/DialerSearchSupport$PhoneNumber;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
