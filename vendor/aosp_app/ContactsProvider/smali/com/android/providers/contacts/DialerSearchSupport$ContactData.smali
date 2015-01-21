.class public Lcom/android/providers/contacts/DialerSearchSupport$ContactData;
.super Ljava/lang/Object;
.source "DialerSearchSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/DialerSearchSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactData"
.end annotation


# instance fields
.field mContactId:J

.field mDisplayName:Ljava/lang/String;

.field mLookup:Ljava/lang/String;

.field mNumberMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/DialerSearchSupport$PhoneNumber;",
            ">;"
        }
    .end annotation
.end field

.field mPhotoId:J

.field mRawId:J

.field mSimIndicate:I


# direct methods
.method constructor <init>(JJLjava/lang/String;IJLjava/lang/String;)V
    .locals 1
    .parameter "rId"
    .parameter "rContactId"
    .parameter "rName"
    .parameter "rIndicate"
    .parameter "rPhotoId"
    .parameter "rLookup"

    .prologue
    .line 912
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 913
    iput-wide p1, p0, Lcom/android/providers/contacts/DialerSearchSupport$ContactData;->mRawId:J

    .line 914
    iput-wide p3, p0, Lcom/android/providers/contacts/DialerSearchSupport$ContactData;->mContactId:J

    .line 915
    iput-object p5, p0, Lcom/android/providers/contacts/DialerSearchSupport$ContactData;->mDisplayName:Ljava/lang/String;

    .line 916
    iput p6, p0, Lcom/android/providers/contacts/DialerSearchSupport$ContactData;->mSimIndicate:I

    .line 917
    iput-wide p7, p0, Lcom/android/providers/contacts/DialerSearchSupport$ContactData;->mPhotoId:J

    .line 918
    iput-object p9, p0, Lcom/android/providers/contacts/DialerSearchSupport$ContactData;->mLookup:Ljava/lang/String;

    .line 919
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/DialerSearchSupport$ContactData;->mNumberMap:Ljava/util/ArrayList;

    .line 920
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 924
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/android/providers/contacts/DialerSearchSupport$ContactData;->mRawId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/providers/contacts/DialerSearchSupport$ContactData;->mContactId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/DialerSearchSupport$ContactData;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "||"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/DialerSearchSupport$ContactData;->mNumberMap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
