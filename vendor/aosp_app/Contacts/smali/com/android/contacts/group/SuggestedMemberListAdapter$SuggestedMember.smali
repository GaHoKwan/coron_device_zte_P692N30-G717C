.class public Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;
.super Ljava/lang/Object;
.source "SuggestedMemberListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/SuggestedMemberListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SuggestedMember"
.end annotation


# instance fields
.field private mContactId:J

.field private mDisplayName:Ljava/lang/String;

.field private mExtraInfo:Ljava/lang/String;

.field private mFixExtraInfo:Z

.field private mIsSdnContact:I

.field private mPhoto:[B

.field private mRawContactId:J

.field private mSimId:I

.field private mSimType:I

.field private mSlotId:I

.field final synthetic this$0:Lcom/android/contacts/group/SuggestedMemberListAdapter;


# direct methods
.method public constructor <init>(Lcom/android/contacts/group/SuggestedMemberListAdapter;JLjava/lang/String;J)V
    .locals 2
    .parameter
    .parameter "rawContactId"
    .parameter "displayName"
    .parameter "contactId"

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 545
    iput-object p1, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->this$0:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 538
    iput v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mSimId:I

    .line 539
    iput v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mSimType:I

    .line 540
    iput v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mSlotId:I

    .line 541
    iput v1, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mIsSdnContact:I

    .line 542
    iput-boolean v1, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mFixExtraInfo:Z

    .line 546
    iput-wide p2, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mRawContactId:J

    .line 547
    iput-object p4, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mDisplayName:Ljava/lang/String;

    .line 548
    iput-wide p5, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mContactId:J

    .line 549
    return-void
.end method

.method public constructor <init>(Lcom/android/contacts/group/SuggestedMemberListAdapter;Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;)V
    .locals 2
    .parameter
    .parameter "member"

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 552
    iput-object p1, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->this$0:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 538
    iput v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mSimId:I

    .line 539
    iput v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mSimType:I

    .line 540
    iput v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mSlotId:I

    .line 541
    iput v1, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mIsSdnContact:I

    .line 542
    iput-boolean v1, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mFixExtraInfo:Z

    .line 553
    invoke-virtual {p2}, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->getRawContactId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mRawContactId:J

    .line 554
    invoke-virtual {p2}, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mDisplayName:Ljava/lang/String;

    .line 555
    invoke-virtual {p2}, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->getContactId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mContactId:J

    .line 556
    invoke-virtual {p2}, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->getPhotoByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mPhoto:[B

    .line 557
    invoke-virtual {p2}, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->getSimId()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mSimId:I

    .line 558
    invoke-virtual {p2}, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->getSimType()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mSimType:I

    .line 559
    invoke-virtual {p2}, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->getSlotId()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mSlotId:I

    .line 560
    invoke-virtual {p2}, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->getIsSdnContact()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mIsSdnContact:I

    .line 561
    return-void
.end method


# virtual methods
.method public getContactId()J
    .locals 2

    .prologue
    .line 578
    iget-wide v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mContactId:J

    return-wide v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mExtraInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getIsSdnContact()I
    .locals 1

    .prologue
    .line 641
    iget v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mIsSdnContact:I

    return v0
.end method

.method public getPhotoByteArray()[B
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mPhoto:[B

    return-object v0
.end method

.method public getRawContactId()J
    .locals 2

    .prologue
    .line 574
    iget-wide v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mRawContactId:J

    return-wide v0
.end method

.method public getSimId()I
    .locals 1

    .prologue
    .line 621
    iget v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mSimId:I

    return v0
.end method

.method public getSimType()I
    .locals 1

    .prologue
    .line 625
    iget v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mSimType:I

    return v0
.end method

.method public getSlotId()I
    .locals 1

    .prologue
    .line 629
    iget v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mSlotId:I

    return v0
.end method

.method public hasExtraInfo()Z
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mExtraInfo:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFixedExtrasInfo()Z
    .locals 1

    .prologue
    .line 649
    iget-boolean v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mFixExtraInfo:Z

    return v0
.end method

.method public setExtraInfo(Ljava/lang/String;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 599
    iput-object p1, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mExtraInfo:Ljava/lang/String;

    .line 600
    return-void
.end method

.method public setFixExtrasInfo(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 645
    iput-boolean p1, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mFixExtraInfo:Z

    .line 646
    return-void
.end method

.method public setIsSdnContact(I)V
    .locals 0
    .parameter "isSdnContact"

    .prologue
    .line 637
    iput p1, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mIsSdnContact:I

    .line 638
    return-void
.end method

.method public setPhotoByteArray([B)V
    .locals 0
    .parameter "photo"

    .prologue
    .line 603
    iput-object p1, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mPhoto:[B

    .line 604
    return-void
.end method

.method public setRawContactId(J)V
    .locals 0
    .parameter "rawContactId"

    .prologue
    .line 591
    iput-wide p1, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mRawContactId:J

    .line 592
    return-void
.end method

.method public setSimId(I)V
    .locals 0
    .parameter "simId"

    .prologue
    .line 613
    iput p1, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mSimId:I

    .line 614
    return-void
.end method

.method public setSimType(I)V
    .locals 0
    .parameter "simType"

    .prologue
    .line 617
    iput p1, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mSimType:I

    .line 618
    return-void
.end method

.method public setSlotId(I)V
    .locals 0
    .parameter "slotId"

    .prologue
    .line 633
    iput p1, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mSlotId:I

    .line 634
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 608
    invoke-virtual {p0}, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
