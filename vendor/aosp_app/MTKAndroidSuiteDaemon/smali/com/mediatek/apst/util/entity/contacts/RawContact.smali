.class public Lcom/mediatek/apst/util/entity/contacts/RawContact;
.super Lcom/mediatek/apst/util/entity/contacts/BaseContact;
.source "RawContact.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/apst/util/entity/contacts/RawContact$UnknownContactDataTypeException;
    }
.end annotation


# static fields
.field public static final SOURCE_NONE:I = -0xff

.field public static final SOURCE_PHONE:I = -0x1

.field public static final SOURCE_SIM:I = 0x0

.field public static final SOURCE_SIM1:I = 0x1

.field public static final SOURCE_SIM2:I = 0x2

.field public static final SOURCE_SIM3:I = 0x3

.field public static final SOURCE_SIM4:I = 0x4

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private accountId:I

.field private contactId:J

.field private customRingtone:Ljava/lang/String;

.field private dirty:Z

.field private emails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/Email;",
            ">;"
        }
    .end annotation
.end field

.field private ims:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/Im;",
            ">;"
        }
    .end annotation
.end field

.field private lastTimeContacted:J

.field private names:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/StructuredName;",
            ">;"
        }
    .end annotation
.end field

.field private nicknames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/Nickname;",
            ">;"
        }
    .end annotation
.end field

.field private notes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/Note;",
            ">;"
        }
    .end annotation
.end field

.field private organizations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/Organization;",
            ">;"
        }
    .end annotation
.end field

.field private phones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/Phone;",
            ">;"
        }
    .end annotation
.end field

.field private photos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/Photo;",
            ">;"
        }
    .end annotation
.end field

.field private postals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;",
            ">;"
        }
    .end annotation
.end field

.field private sendToVoicemail:Z

.field private simId:I

.field private simIndex:I

.field private sourceLocation:I

.field private starred:Z

.field private timesContacted:I

.field private version:I

.field private websites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/Website;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 228
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/apst/util/entity/contacts/RawContact;-><init>(J)V

    .line 229
    return-void
.end method

.method public constructor <init>(J)V
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 200
    invoke-direct {p0, p1, p2}, Lcom/mediatek/apst/util/entity/contacts/BaseContact;-><init>(J)V

    .line 201
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->contactId:J

    .line 204
    iput v2, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->timesContacted:I

    .line 205
    iput-boolean v2, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->starred:Z

    .line 206
    iput-boolean v2, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->sendToVoicemail:Z

    .line 207
    iput v3, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->version:I

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->names:Ljava/util/List;

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->phones:Ljava/util/List;

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->photos:Ljava/util/List;

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->emails:Ljava/util/List;

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->ims:Ljava/util/List;

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->postals:Ljava/util/List;

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->organizations:Ljava/util/List;

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->notes:Ljava/util/List;

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->nicknames:Ljava/util/List;

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->websites:Ljava/util/List;

    .line 224
    iput v3, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->sourceLocation:I

    .line 225
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/apst/util/entity/contacts/BaseContact;)V
    .locals 2
    .parameter "baseContact"

    .prologue
    .line 238
    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/mediatek/apst/util/entity/contacts/RawContact;-><init>(J)V

    .line 239
    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->setDisplayName(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->getPrimaryNumber()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->setPrimaryNumber(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->getStoreLocation()I

    move-result v0

    invoke-super {p0, v0}, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->setStoreLocation(I)V

    .line 242
    invoke-super {p0}, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->getGroupMemberships()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->getGroupMemberships()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 243
    return-void
.end method


# virtual methods
.method public addContactData(Lcom/mediatek/apst/util/entity/contacts/ContactData;)V
    .locals 3
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/apst/util/entity/contacts/RawContact$UnknownContactDataTypeException;
        }
    .end annotation

    .prologue
    .line 822
    if-nez p1, :cond_0

    .line 851
    .end local p1
    :goto_0
    return-void

    .line 825
    .restart local p1
    :cond_0
    instance-of v0, p1, Lcom/mediatek/apst/util/entity/contacts/StructuredName;

    if-eqz v0, :cond_1

    .line 826
    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getNames()Ljava/util/List;

    move-result-object v0

    check-cast p1, Lcom/mediatek/apst/util/entity/contacts/StructuredName;

    .end local p1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 827
    .restart local p1
    :cond_1
    instance-of v0, p1, Lcom/mediatek/apst/util/entity/contacts/Phone;

    if-eqz v0, :cond_2

    .line 828
    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getPhones()Ljava/util/List;

    move-result-object v0

    check-cast p1, Lcom/mediatek/apst/util/entity/contacts/Phone;

    .end local p1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 829
    .restart local p1
    :cond_2
    instance-of v0, p1, Lcom/mediatek/apst/util/entity/contacts/Photo;

    if-eqz v0, :cond_3

    .line 830
    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getPhotos()Ljava/util/List;

    move-result-object v0

    check-cast p1, Lcom/mediatek/apst/util/entity/contacts/Photo;

    .end local p1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 831
    .restart local p1
    :cond_3
    instance-of v0, p1, Lcom/mediatek/apst/util/entity/contacts/Im;

    if-eqz v0, :cond_4

    .line 832
    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getIms()Ljava/util/List;

    move-result-object v0

    check-cast p1, Lcom/mediatek/apst/util/entity/contacts/Im;

    .end local p1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 833
    .restart local p1
    :cond_4
    instance-of v0, p1, Lcom/mediatek/apst/util/entity/contacts/Email;

    if-eqz v0, :cond_5

    .line 834
    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getEmails()Ljava/util/List;

    move-result-object v0

    check-cast p1, Lcom/mediatek/apst/util/entity/contacts/Email;

    .end local p1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 835
    .restart local p1
    :cond_5
    instance-of v0, p1, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;

    if-eqz v0, :cond_6

    .line 836
    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getPostals()Ljava/util/List;

    move-result-object v0

    check-cast p1, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;

    .end local p1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 837
    .restart local p1
    :cond_6
    instance-of v0, p1, Lcom/mediatek/apst/util/entity/contacts/Organization;

    if-eqz v0, :cond_7

    .line 838
    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getOrganizations()Ljava/util/List;

    move-result-object v0

    check-cast p1, Lcom/mediatek/apst/util/entity/contacts/Organization;

    .end local p1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 839
    .restart local p1
    :cond_7
    instance-of v0, p1, Lcom/mediatek/apst/util/entity/contacts/Nickname;

    if-eqz v0, :cond_8

    .line 840
    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getNicknames()Ljava/util/List;

    move-result-object v0

    check-cast p1, Lcom/mediatek/apst/util/entity/contacts/Nickname;

    .end local p1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 841
    .restart local p1
    :cond_8
    instance-of v0, p1, Lcom/mediatek/apst/util/entity/contacts/Website;

    if-eqz v0, :cond_9

    .line 842
    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getWebsites()Ljava/util/List;

    move-result-object v0

    check-cast p1, Lcom/mediatek/apst/util/entity/contacts/Website;

    .end local p1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 843
    .restart local p1
    :cond_9
    instance-of v0, p1, Lcom/mediatek/apst/util/entity/contacts/Note;

    if-eqz v0, :cond_a

    .line 844
    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getNotes()Ljava/util/List;

    move-result-object v0

    check-cast p1, Lcom/mediatek/apst/util/entity/contacts/Note;

    .end local p1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 845
    .restart local p1
    :cond_a
    instance-of v0, p1, Lcom/mediatek/apst/util/entity/contacts/GroupMembership;

    if-eqz v0, :cond_b

    .line 846
    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->getGroupMemberships()Ljava/util/List;

    move-result-object v0

    check-cast p1, Lcom/mediatek/apst/util/entity/contacts/GroupMembership;

    .end local p1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 848
    .restart local p1
    :cond_b
    new-instance v0, Lcom/mediatek/apst/util/entity/contacts/RawContact$UnknownContactDataTypeException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 849
    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/contacts/ContactData;->getMimeType()I

    move-result v2

    .line 848
    invoke-direct {v0, p0, v1, v2}, Lcom/mediatek/apst/util/entity/contacts/RawContact$UnknownContactDataTypeException;-><init>(Lcom/mediatek/apst/util/entity/contacts/RawContact;Ljava/lang/String;I)V

    throw v0
.end method

.method public clearAllData()V
    .locals 1

    .prologue
    .line 857
    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 858
    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getPhones()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 859
    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getPhotos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 860
    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getIms()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 861
    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getEmails()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 862
    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getPostals()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 863
    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getOrganizations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 864
    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getNicknames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 865
    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getWebsites()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 866
    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getNotes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 867
    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->getGroupMemberships()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 868
    return-void
.end method

.method public bridge synthetic clone()Lcom/mediatek/apst/util/entity/contacts/BaseContact;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->clone()Lcom/mediatek/apst/util/entity/contacts/RawContact;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mediatek/apst/util/entity/contacts/RawContact;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 645
    invoke-super {p0}, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->clone()Lcom/mediatek/apst/util/entity/contacts/BaseContact;

    move-result-object v0

    check-cast v0, Lcom/mediatek/apst/util/entity/contacts/RawContact;

    .line 647
    .local v0, copy:Lcom/mediatek/apst/util/entity/contacts/RawContact;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->names:Ljava/util/List;

    .line 648
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->phones:Ljava/util/List;

    .line 649
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->photos:Ljava/util/List;

    .line 650
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->emails:Ljava/util/List;

    .line 651
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->ims:Ljava/util/List;

    .line 652
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->postals:Ljava/util/List;

    .line 653
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->organizations:Ljava/util/List;

    .line 654
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->notes:Ljava/util/List;

    .line 655
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->nicknames:Ljava/util/List;

    .line 656
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->websites:Ljava/util/List;

    .line 658
    iget-object v11, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->names:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_0

    .line 662
    iget-object v11, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->phones:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_1

    .line 666
    iget-object v11, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->photos:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_2

    .line 670
    iget-object v11, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->emails:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_3

    .line 674
    iget-object v11, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->ims:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_4

    .line 678
    iget-object v11, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->postals:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_5

    .line 682
    iget-object v11, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->organizations:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_6

    .line 686
    iget-object v11, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->notes:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_7

    .line 690
    iget-object v11, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->nicknames:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_8

    .line 694
    iget-object v11, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->websites:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_9

    .line 698
    return-object v0

    .line 658
    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/apst/util/entity/contacts/StructuredName;

    .line 659
    .local v3, name:Lcom/mediatek/apst/util/entity/contacts/StructuredName;
    iget-object v12, v0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->names:Ljava/util/List;

    invoke-virtual {v3}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->clone()Lcom/mediatek/apst/util/entity/contacts/StructuredName;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 662
    .end local v3           #name:Lcom/mediatek/apst/util/entity/contacts/StructuredName;
    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/apst/util/entity/contacts/Phone;

    .line 663
    .local v7, phone:Lcom/mediatek/apst/util/entity/contacts/Phone;
    iget-object v12, v0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->phones:Ljava/util/List;

    invoke-virtual {v7}, Lcom/mediatek/apst/util/entity/contacts/Phone;->clone()Lcom/mediatek/apst/util/entity/contacts/Phone;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 666
    .end local v7           #phone:Lcom/mediatek/apst/util/entity/contacts/Phone;
    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/apst/util/entity/contacts/Photo;

    .line 667
    .local v8, photo:Lcom/mediatek/apst/util/entity/contacts/Photo;
    iget-object v12, v0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->photos:Ljava/util/List;

    invoke-virtual {v8}, Lcom/mediatek/apst/util/entity/contacts/Photo;->clone()Lcom/mediatek/apst/util/entity/contacts/Photo;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 670
    .end local v8           #photo:Lcom/mediatek/apst/util/entity/contacts/Photo;
    :cond_3
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/apst/util/entity/contacts/Email;

    .line 671
    .local v1, email:Lcom/mediatek/apst/util/entity/contacts/Email;
    iget-object v12, v0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->emails:Ljava/util/List;

    invoke-virtual {v1}, Lcom/mediatek/apst/util/entity/contacts/Email;->clone()Lcom/mediatek/apst/util/entity/contacts/Email;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 674
    .end local v1           #email:Lcom/mediatek/apst/util/entity/contacts/Email;
    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/apst/util/entity/contacts/Im;

    .line 675
    .local v2, im:Lcom/mediatek/apst/util/entity/contacts/Im;
    iget-object v12, v0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->ims:Ljava/util/List;

    invoke-virtual {v2}, Lcom/mediatek/apst/util/entity/contacts/Im;->clone()Lcom/mediatek/apst/util/entity/contacts/Im;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 678
    .end local v2           #im:Lcom/mediatek/apst/util/entity/contacts/Im;
    :cond_5
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;

    .line 679
    .local v9, postal:Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;
    iget-object v12, v0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->postals:Ljava/util/List;

    invoke-virtual {v9}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->clone()Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 682
    .end local v9           #postal:Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;
    :cond_6
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/apst/util/entity/contacts/Organization;

    .line 683
    .local v6, organization:Lcom/mediatek/apst/util/entity/contacts/Organization;
    iget-object v12, v0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->organizations:Ljava/util/List;

    invoke-virtual {v6}, Lcom/mediatek/apst/util/entity/contacts/Organization;->clone()Lcom/mediatek/apst/util/entity/contacts/Organization;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 686
    .end local v6           #organization:Lcom/mediatek/apst/util/entity/contacts/Organization;
    :cond_7
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/apst/util/entity/contacts/Note;

    .line 687
    .local v5, note:Lcom/mediatek/apst/util/entity/contacts/Note;
    iget-object v12, v0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->notes:Ljava/util/List;

    invoke-virtual {v5}, Lcom/mediatek/apst/util/entity/contacts/Note;->clone()Lcom/mediatek/apst/util/entity/contacts/Note;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 690
    .end local v5           #note:Lcom/mediatek/apst/util/entity/contacts/Note;
    :cond_8
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/apst/util/entity/contacts/Nickname;

    .line 691
    .local v4, nickname:Lcom/mediatek/apst/util/entity/contacts/Nickname;
    iget-object v12, v0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->nicknames:Ljava/util/List;

    invoke-virtual {v4}, Lcom/mediatek/apst/util/entity/contacts/Nickname;->clone()Lcom/mediatek/apst/util/entity/contacts/Nickname;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 694
    .end local v4           #nickname:Lcom/mediatek/apst/util/entity/contacts/Nickname;
    :cond_9
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mediatek/apst/util/entity/contacts/Website;

    .line 695
    .local v10, website:Lcom/mediatek/apst/util/entity/contacts/Website;
    iget-object v12, v0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->websites:Ljava/util/List;

    invoke-virtual {v10}, Lcom/mediatek/apst/util/entity/contacts/Website;->clone()Lcom/mediatek/apst/util/entity/contacts/Website;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9
.end method

.method public getAllContactData()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/ContactData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 782
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 783
    .local v0, data:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/apst/util/entity/contacts/ContactData;>;"
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->names:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 784
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->phones:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 785
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->photos:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 786
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->emails:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 787
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->ims:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 788
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->postals:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 789
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->organizations:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 790
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->notes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 791
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->nicknames:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 792
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->websites:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 793
    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->getGroupMemberships()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 795
    return-object v0
.end method

.method public getContactDataCount()I
    .locals 2

    .prologue
    .line 803
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->names:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 804
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->phones:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 803
    add-int/2addr v0, v1

    .line 805
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->photos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 803
    add-int/2addr v0, v1

    .line 806
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->emails:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 803
    add-int/2addr v0, v1

    .line 807
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->ims:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 803
    add-int/2addr v0, v1

    .line 808
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->postals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 803
    add-int/2addr v0, v1

    .line 809
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->organizations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 803
    add-int/2addr v0, v1

    .line 810
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->notes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 803
    add-int/2addr v0, v1

    .line 811
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->nicknames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 803
    add-int/2addr v0, v1

    .line 812
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->websites:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 803
    add-int/2addr v0, v1

    .line 813
    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->getGroupMemberships()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 803
    add-int/2addr v0, v1

    return v0
.end method

.method public getContactId()J
    .locals 2

    .prologue
    .line 250
    iget-wide v0, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->contactId:J

    return-wide v0
.end method

.method public getCustomRingtone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->customRingtone:Ljava/lang/String;

    return-object v0
.end method

.method public getEmails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/Email;",
            ">;"
        }
    .end annotation

    .prologue
    .line 324
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->emails:Ljava/util/List;

    return-object v0
.end method

.method public getIms()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/Im;",
            ">;"
        }
    .end annotation

    .prologue
    .line 328
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->ims:Ljava/util/List;

    return-object v0
.end method

.method public getLastTimeContacted()J
    .locals 2

    .prologue
    .line 270
    iget-wide v0, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->lastTimeContacted:J

    return-wide v0
.end method

.method public getNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/StructuredName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->names:Ljava/util/List;

    return-object v0
.end method

.method public getNicknames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/Nickname;",
            ">;"
        }
    .end annotation

    .prologue
    .line 344
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->nicknames:Ljava/util/List;

    return-object v0
.end method

.method public getNotes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/Note;",
            ">;"
        }
    .end annotation

    .prologue
    .line 340
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->notes:Ljava/util/List;

    return-object v0
.end method

.method public getOrganizations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/Organization;",
            ">;"
        }
    .end annotation

    .prologue
    .line 336
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->organizations:Ljava/util/List;

    return-object v0
.end method

.method public getPhones()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/Phone;",
            ">;"
        }
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->phones:Ljava/util/List;

    return-object v0
.end method

.method public getPhotos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/Photo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->photos:Ljava/util/List;

    return-object v0
.end method

.method public getPostals()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;",
            ">;"
        }
    .end annotation

    .prologue
    .line 332
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->postals:Ljava/util/List;

    return-object v0
.end method

.method public getSimId()I
    .locals 1

    .prologue
    .line 357
    iget v0, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->simId:I

    return v0
.end method

.method public getSimIndex()I
    .locals 1

    .prologue
    .line 361
    iget v0, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->simIndex:I

    return v0
.end method

.method public getSourceLocation()I
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->sourceLocation:I

    return v0
.end method

.method public getTimesContacted()I
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->timesContacted:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 304
    iget v0, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->version:I

    return v0
.end method

.method public getWebsites()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/Website;",
            ">;"
        }
    .end annotation

    .prologue
    .line 348
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->websites:Ljava/util/List;

    return-object v0
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 308
    iget-boolean v0, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->dirty:Z

    return v0
.end method

.method public isSendToVoicemail()Z
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->sendToVoicemail:Z

    return v0
.end method

.method public isStarred()Z
    .locals 1

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->starred:Z

    return v0
.end method

.method public readRaw(Ljava/nio/ByteBuffer;)V
    .locals 14
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 983
    invoke-super {p0, p1}, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 985
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getBoolean(Ljava/nio/ByteBuffer;)Z

    move-result v12

    iput-boolean v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->starred:Z

    .line 987
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getBoolean(Ljava/nio/ByteBuffer;)Z

    move-result v12

    iput-boolean v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->sendToVoicemail:Z

    .line 989
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v12

    iput v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->version:I

    .line 991
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    .line 992
    .local v10, size:I
    if-ltz v10, :cond_1

    .line 993
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v10}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->names:Ljava/util/List;

    .line 994
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v10, :cond_0

    .line 1003
    .end local v1           #i:I
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    .line 1004
    if-ltz v10, :cond_3

    .line 1005
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v10}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->phones:Ljava/util/List;

    .line 1006
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    if-lt v1, v10, :cond_2

    .line 1015
    .end local v1           #i:I
    :goto_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    .line 1016
    if-ltz v10, :cond_5

    .line 1017
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v10}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->photos:Ljava/util/List;

    .line 1018
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_4
    if-lt v1, v10, :cond_4

    .line 1027
    .end local v1           #i:I
    :goto_5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    .line 1028
    if-ltz v10, :cond_7

    .line 1029
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v10}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->emails:Ljava/util/List;

    .line 1030
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_6
    if-lt v1, v10, :cond_6

    .line 1039
    .end local v1           #i:I
    :goto_7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    .line 1040
    if-ltz v10, :cond_9

    .line 1041
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v10}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->ims:Ljava/util/List;

    .line 1042
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_8
    if-lt v1, v10, :cond_8

    .line 1051
    .end local v1           #i:I
    :goto_9
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    .line 1052
    if-ltz v10, :cond_b

    .line 1053
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v10}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->postals:Ljava/util/List;

    .line 1054
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_a
    if-lt v1, v10, :cond_a

    .line 1063
    .end local v1           #i:I
    :goto_b
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    .line 1064
    if-ltz v10, :cond_d

    .line 1065
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v10}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->organizations:Ljava/util/List;

    .line 1066
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_c
    if-lt v1, v10, :cond_c

    .line 1075
    .end local v1           #i:I
    :goto_d
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    .line 1076
    if-ltz v10, :cond_f

    .line 1077
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v10}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->notes:Ljava/util/List;

    .line 1078
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_e
    if-lt v1, v10, :cond_e

    .line 1087
    .end local v1           #i:I
    :goto_f
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    .line 1088
    if-ltz v10, :cond_11

    .line 1089
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v10}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->nicknames:Ljava/util/List;

    .line 1090
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_10
    if-lt v1, v10, :cond_10

    .line 1099
    .end local v1           #i:I
    :goto_11
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    .line 1100
    if-ltz v10, :cond_13

    .line 1101
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v10}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->websites:Ljava/util/List;

    .line 1102
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_12
    if-lt v1, v10, :cond_12

    .line 1113
    .end local v1           #i:I
    :goto_13
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v12

    iput v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->sourceLocation:I

    .line 1114
    return-void

    .line 995
    .restart local v1       #i:I
    :cond_0
    new-instance v3, Lcom/mediatek/apst/util/entity/contacts/StructuredName;

    invoke-direct {v3}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;-><init>()V

    .line 996
    .local v3, name:Lcom/mediatek/apst/util/entity/contacts/StructuredName;
    invoke-virtual {v3, p1}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 997
    iget-object v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->names:Ljava/util/List;

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 994
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1000
    .end local v1           #i:I
    .end local v3           #name:Lcom/mediatek/apst/util/entity/contacts/StructuredName;
    :cond_1
    iput-object v13, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->names:Ljava/util/List;

    goto/16 :goto_1

    .line 1007
    .restart local v1       #i:I
    :cond_2
    new-instance v7, Lcom/mediatek/apst/util/entity/contacts/Phone;

    invoke-direct {v7}, Lcom/mediatek/apst/util/entity/contacts/Phone;-><init>()V

    .line 1008
    .local v7, phone:Lcom/mediatek/apst/util/entity/contacts/Phone;
    invoke-virtual {v7, p1}, Lcom/mediatek/apst/util/entity/contacts/Phone;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 1009
    iget-object v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->phones:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1006
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 1012
    .end local v1           #i:I
    .end local v7           #phone:Lcom/mediatek/apst/util/entity/contacts/Phone;
    :cond_3
    iput-object v13, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->phones:Ljava/util/List;

    goto/16 :goto_3

    .line 1019
    .restart local v1       #i:I
    :cond_4
    new-instance v8, Lcom/mediatek/apst/util/entity/contacts/Photo;

    invoke-direct {v8}, Lcom/mediatek/apst/util/entity/contacts/Photo;-><init>()V

    .line 1020
    .local v8, photo:Lcom/mediatek/apst/util/entity/contacts/Photo;
    invoke-virtual {v8, p1}, Lcom/mediatek/apst/util/entity/contacts/Photo;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 1021
    iget-object v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->photos:Ljava/util/List;

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1018
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    .line 1024
    .end local v1           #i:I
    .end local v8           #photo:Lcom/mediatek/apst/util/entity/contacts/Photo;
    :cond_5
    iput-object v13, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->photos:Ljava/util/List;

    goto/16 :goto_5

    .line 1031
    .restart local v1       #i:I
    :cond_6
    new-instance v0, Lcom/mediatek/apst/util/entity/contacts/Email;

    invoke-direct {v0}, Lcom/mediatek/apst/util/entity/contacts/Email;-><init>()V

    .line 1032
    .local v0, email:Lcom/mediatek/apst/util/entity/contacts/Email;
    invoke-virtual {v0, p1}, Lcom/mediatek/apst/util/entity/contacts/Email;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 1033
    iget-object v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->emails:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1030
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 1036
    .end local v0           #email:Lcom/mediatek/apst/util/entity/contacts/Email;
    .end local v1           #i:I
    :cond_7
    iput-object v13, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->emails:Ljava/util/List;

    goto/16 :goto_7

    .line 1043
    .restart local v1       #i:I
    :cond_8
    new-instance v2, Lcom/mediatek/apst/util/entity/contacts/Im;

    invoke-direct {v2}, Lcom/mediatek/apst/util/entity/contacts/Im;-><init>()V

    .line 1044
    .local v2, im:Lcom/mediatek/apst/util/entity/contacts/Im;
    invoke-virtual {v2, p1}, Lcom/mediatek/apst/util/entity/contacts/Im;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 1045
    iget-object v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->ims:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1042
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_8

    .line 1048
    .end local v1           #i:I
    .end local v2           #im:Lcom/mediatek/apst/util/entity/contacts/Im;
    :cond_9
    iput-object v13, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->ims:Ljava/util/List;

    goto/16 :goto_9

    .line 1055
    .restart local v1       #i:I
    :cond_a
    new-instance v9, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;

    invoke-direct {v9}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;-><init>()V

    .line 1056
    .local v9, postal:Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;
    invoke-virtual {v9, p1}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 1057
    iget-object v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->postals:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1054
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_a

    .line 1060
    .end local v1           #i:I
    .end local v9           #postal:Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;
    :cond_b
    iput-object v13, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->postals:Ljava/util/List;

    goto/16 :goto_b

    .line 1067
    .restart local v1       #i:I
    :cond_c
    new-instance v6, Lcom/mediatek/apst/util/entity/contacts/Organization;

    invoke-direct {v6}, Lcom/mediatek/apst/util/entity/contacts/Organization;-><init>()V

    .line 1068
    .local v6, organization:Lcom/mediatek/apst/util/entity/contacts/Organization;
    invoke-virtual {v6, p1}, Lcom/mediatek/apst/util/entity/contacts/Organization;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 1069
    iget-object v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->organizations:Ljava/util/List;

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1066
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_c

    .line 1072
    .end local v1           #i:I
    .end local v6           #organization:Lcom/mediatek/apst/util/entity/contacts/Organization;
    :cond_d
    iput-object v13, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->organizations:Ljava/util/List;

    goto/16 :goto_d

    .line 1079
    .restart local v1       #i:I
    :cond_e
    new-instance v5, Lcom/mediatek/apst/util/entity/contacts/Note;

    invoke-direct {v5}, Lcom/mediatek/apst/util/entity/contacts/Note;-><init>()V

    .line 1080
    .local v5, note:Lcom/mediatek/apst/util/entity/contacts/Note;
    invoke-virtual {v5, p1}, Lcom/mediatek/apst/util/entity/contacts/Note;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 1081
    iget-object v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->notes:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1078
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_e

    .line 1084
    .end local v1           #i:I
    .end local v5           #note:Lcom/mediatek/apst/util/entity/contacts/Note;
    :cond_f
    iput-object v13, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->notes:Ljava/util/List;

    goto/16 :goto_f

    .line 1091
    .restart local v1       #i:I
    :cond_10
    new-instance v4, Lcom/mediatek/apst/util/entity/contacts/Nickname;

    invoke-direct {v4}, Lcom/mediatek/apst/util/entity/contacts/Nickname;-><init>()V

    .line 1092
    .local v4, nickname:Lcom/mediatek/apst/util/entity/contacts/Nickname;
    invoke-virtual {v4, p1}, Lcom/mediatek/apst/util/entity/contacts/Nickname;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 1093
    iget-object v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->nicknames:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1090
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_10

    .line 1096
    .end local v1           #i:I
    .end local v4           #nickname:Lcom/mediatek/apst/util/entity/contacts/Nickname;
    :cond_11
    iput-object v13, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->nicknames:Ljava/util/List;

    goto/16 :goto_11

    .line 1103
    .restart local v1       #i:I
    :cond_12
    new-instance v11, Lcom/mediatek/apst/util/entity/contacts/Website;

    invoke-direct {v11}, Lcom/mediatek/apst/util/entity/contacts/Website;-><init>()V

    .line 1104
    .local v11, website:Lcom/mediatek/apst/util/entity/contacts/Website;
    invoke-virtual {v11, p1}, Lcom/mediatek/apst/util/entity/contacts/Website;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 1105
    iget-object v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->websites:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1102
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_12

    .line 1108
    .end local v1           #i:I
    .end local v11           #website:Lcom/mediatek/apst/util/entity/contacts/Website;
    :cond_13
    iput-object v13, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->websites:Ljava/util/List;

    goto/16 :goto_13
.end method

.method public readRawWithVersion(Ljava/nio/ByteBuffer;I)V
    .locals 13
    .parameter "buffer"
    .parameter "versionCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/nio/BufferUnderflowException;
        }
    .end annotation

    .prologue
    .line 1245
    invoke-super {p0, p1, p2}, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->readRawWithVersion(Ljava/nio/ByteBuffer;I)V

    .line 1247
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getBoolean(Ljava/nio/ByteBuffer;)Z

    move-result v12

    iput-boolean v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->starred:Z

    .line 1251
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getBoolean(Ljava/nio/ByteBuffer;)Z

    move-result v12

    iput-boolean v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->sendToVoicemail:Z

    .line 1254
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v12

    iput v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->version:I

    .line 1256
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    .line 1257
    .local v10, size:I
    if-ltz v10, :cond_3

    .line 1258
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v10}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->names:Ljava/util/List;

    .line 1259
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v10, :cond_2

    .line 1268
    .end local v1           #i:I
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    .line 1269
    if-ltz v10, :cond_5

    .line 1270
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v10}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->phones:Ljava/util/List;

    .line 1271
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    if-lt v1, v10, :cond_4

    .line 1282
    .end local v1           #i:I
    :goto_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    .line 1283
    if-ltz v10, :cond_7

    .line 1284
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v10}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->photos:Ljava/util/List;

    .line 1285
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_4
    if-lt v1, v10, :cond_6

    .line 1294
    .end local v1           #i:I
    :goto_5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    .line 1295
    if-ltz v10, :cond_9

    .line 1296
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v10}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->emails:Ljava/util/List;

    .line 1297
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_6
    if-lt v1, v10, :cond_8

    .line 1306
    .end local v1           #i:I
    :goto_7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    .line 1307
    if-ltz v10, :cond_b

    .line 1308
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v10}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->ims:Ljava/util/List;

    .line 1309
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_8
    if-lt v1, v10, :cond_a

    .line 1318
    .end local v1           #i:I
    :goto_9
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    .line 1319
    if-ltz v10, :cond_d

    .line 1320
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v10}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->postals:Ljava/util/List;

    .line 1321
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_a
    if-lt v1, v10, :cond_c

    .line 1330
    .end local v1           #i:I
    :goto_b
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    .line 1331
    if-ltz v10, :cond_f

    .line 1332
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v10}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->organizations:Ljava/util/List;

    .line 1333
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_c
    if-lt v1, v10, :cond_e

    .line 1342
    .end local v1           #i:I
    :goto_d
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    .line 1343
    if-ltz v10, :cond_11

    .line 1344
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v10}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->notes:Ljava/util/List;

    .line 1345
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_e
    if-lt v1, v10, :cond_10

    .line 1354
    .end local v1           #i:I
    :goto_f
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    .line 1355
    if-ltz v10, :cond_13

    .line 1356
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v10}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->nicknames:Ljava/util/List;

    .line 1357
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_10
    if-lt v1, v10, :cond_12

    .line 1366
    .end local v1           #i:I
    :goto_11
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    .line 1367
    if-ltz v10, :cond_15

    .line 1368
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v10}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->websites:Ljava/util/List;

    .line 1369
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_12
    if-lt v1, v10, :cond_14

    .line 1380
    .end local v1           #i:I
    :goto_13
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v12

    iput v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->sourceLocation:I

    .line 1381
    const/4 v12, 0x2

    if-lt p2, v12, :cond_0

    .line 1383
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v12

    iput v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->simId:I

    .line 1387
    :cond_0
    sget v12, Lcom/mediatek/apst/util/FeatureOptionControl;->CONTACT_N_USIMGROUP:I

    if-eqz v12, :cond_1

    .line 1388
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v12

    iput v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->simIndex:I

    .line 1390
    :cond_1
    return-void

    .line 1260
    .restart local v1       #i:I
    :cond_2
    new-instance v3, Lcom/mediatek/apst/util/entity/contacts/StructuredName;

    invoke-direct {v3}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;-><init>()V

    .line 1261
    .local v3, name:Lcom/mediatek/apst/util/entity/contacts/StructuredName;
    invoke-virtual {v3, p1}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 1262
    iget-object v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->names:Ljava/util/List;

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1259
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1265
    .end local v1           #i:I
    .end local v3           #name:Lcom/mediatek/apst/util/entity/contacts/StructuredName;
    :cond_3
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->names:Ljava/util/List;

    goto/16 :goto_1

    .line 1272
    .restart local v1       #i:I
    :cond_4
    new-instance v7, Lcom/mediatek/apst/util/entity/contacts/Phone;

    invoke-direct {v7}, Lcom/mediatek/apst/util/entity/contacts/Phone;-><init>()V

    .line 1275
    .local v7, phone:Lcom/mediatek/apst/util/entity/contacts/Phone;
    invoke-virtual {v7, p1, p2}, Lcom/mediatek/apst/util/entity/contacts/Phone;->readRawWithVersion(Ljava/nio/ByteBuffer;I)V

    .line 1276
    iget-object v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->phones:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1271
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 1279
    .end local v1           #i:I
    .end local v7           #phone:Lcom/mediatek/apst/util/entity/contacts/Phone;
    :cond_5
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->phones:Ljava/util/List;

    goto/16 :goto_3

    .line 1286
    .restart local v1       #i:I
    :cond_6
    new-instance v8, Lcom/mediatek/apst/util/entity/contacts/Photo;

    invoke-direct {v8}, Lcom/mediatek/apst/util/entity/contacts/Photo;-><init>()V

    .line 1287
    .local v8, photo:Lcom/mediatek/apst/util/entity/contacts/Photo;
    invoke-virtual {v8, p1}, Lcom/mediatek/apst/util/entity/contacts/Photo;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 1288
    iget-object v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->photos:Ljava/util/List;

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1285
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    .line 1291
    .end local v1           #i:I
    .end local v8           #photo:Lcom/mediatek/apst/util/entity/contacts/Photo;
    :cond_7
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->photos:Ljava/util/List;

    goto/16 :goto_5

    .line 1298
    .restart local v1       #i:I
    :cond_8
    new-instance v0, Lcom/mediatek/apst/util/entity/contacts/Email;

    invoke-direct {v0}, Lcom/mediatek/apst/util/entity/contacts/Email;-><init>()V

    .line 1299
    .local v0, email:Lcom/mediatek/apst/util/entity/contacts/Email;
    invoke-virtual {v0, p1}, Lcom/mediatek/apst/util/entity/contacts/Email;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 1300
    iget-object v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->emails:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1297
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 1303
    .end local v0           #email:Lcom/mediatek/apst/util/entity/contacts/Email;
    .end local v1           #i:I
    :cond_9
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->emails:Ljava/util/List;

    goto/16 :goto_7

    .line 1310
    .restart local v1       #i:I
    :cond_a
    new-instance v2, Lcom/mediatek/apst/util/entity/contacts/Im;

    invoke-direct {v2}, Lcom/mediatek/apst/util/entity/contacts/Im;-><init>()V

    .line 1311
    .local v2, im:Lcom/mediatek/apst/util/entity/contacts/Im;
    invoke-virtual {v2, p1}, Lcom/mediatek/apst/util/entity/contacts/Im;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 1312
    iget-object v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->ims:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1309
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_8

    .line 1315
    .end local v1           #i:I
    .end local v2           #im:Lcom/mediatek/apst/util/entity/contacts/Im;
    :cond_b
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->ims:Ljava/util/List;

    goto/16 :goto_9

    .line 1322
    .restart local v1       #i:I
    :cond_c
    new-instance v9, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;

    invoke-direct {v9}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;-><init>()V

    .line 1323
    .local v9, postal:Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;
    invoke-virtual {v9, p1}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 1324
    iget-object v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->postals:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1321
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_a

    .line 1327
    .end local v1           #i:I
    .end local v9           #postal:Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;
    :cond_d
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->postals:Ljava/util/List;

    goto/16 :goto_b

    .line 1334
    .restart local v1       #i:I
    :cond_e
    new-instance v6, Lcom/mediatek/apst/util/entity/contacts/Organization;

    invoke-direct {v6}, Lcom/mediatek/apst/util/entity/contacts/Organization;-><init>()V

    .line 1335
    .local v6, organization:Lcom/mediatek/apst/util/entity/contacts/Organization;
    invoke-virtual {v6, p1}, Lcom/mediatek/apst/util/entity/contacts/Organization;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 1336
    iget-object v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->organizations:Ljava/util/List;

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1333
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_c

    .line 1339
    .end local v1           #i:I
    .end local v6           #organization:Lcom/mediatek/apst/util/entity/contacts/Organization;
    :cond_f
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->organizations:Ljava/util/List;

    goto/16 :goto_d

    .line 1346
    .restart local v1       #i:I
    :cond_10
    new-instance v5, Lcom/mediatek/apst/util/entity/contacts/Note;

    invoke-direct {v5}, Lcom/mediatek/apst/util/entity/contacts/Note;-><init>()V

    .line 1347
    .local v5, note:Lcom/mediatek/apst/util/entity/contacts/Note;
    invoke-virtual {v5, p1}, Lcom/mediatek/apst/util/entity/contacts/Note;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 1348
    iget-object v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->notes:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1345
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_e

    .line 1351
    .end local v1           #i:I
    .end local v5           #note:Lcom/mediatek/apst/util/entity/contacts/Note;
    :cond_11
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->notes:Ljava/util/List;

    goto/16 :goto_f

    .line 1358
    .restart local v1       #i:I
    :cond_12
    new-instance v4, Lcom/mediatek/apst/util/entity/contacts/Nickname;

    invoke-direct {v4}, Lcom/mediatek/apst/util/entity/contacts/Nickname;-><init>()V

    .line 1359
    .local v4, nickname:Lcom/mediatek/apst/util/entity/contacts/Nickname;
    invoke-virtual {v4, p1}, Lcom/mediatek/apst/util/entity/contacts/Nickname;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 1360
    iget-object v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->nicknames:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1357
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_10

    .line 1363
    .end local v1           #i:I
    .end local v4           #nickname:Lcom/mediatek/apst/util/entity/contacts/Nickname;
    :cond_13
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->nicknames:Ljava/util/List;

    goto/16 :goto_11

    .line 1370
    .restart local v1       #i:I
    :cond_14
    new-instance v11, Lcom/mediatek/apst/util/entity/contacts/Website;

    invoke-direct {v11}, Lcom/mediatek/apst/util/entity/contacts/Website;-><init>()V

    .line 1371
    .local v11, website:Lcom/mediatek/apst/util/entity/contacts/Website;
    invoke-virtual {v11, p1}, Lcom/mediatek/apst/util/entity/contacts/Website;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 1372
    iget-object v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->websites:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1369
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_12

    .line 1375
    .end local v1           #i:I
    .end local v11           #website:Lcom/mediatek/apst/util/entity/contacts/Website;
    :cond_15
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->websites:Ljava/util/List;

    goto/16 :goto_13
.end method

.method public setContactId(J)V
    .locals 0
    .parameter "contactId"

    .prologue
    .line 376
    iput-wide p1, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->contactId:J

    .line 377
    return-void
.end method

.method public setCustomRingtone(Ljava/lang/String;)V
    .locals 0
    .parameter "customRingtone"

    .prologue
    .line 404
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->customRingtone:Ljava/lang/String;

    .line 405
    return-void
.end method

.method public setDirty(Z)V
    .locals 0
    .parameter "dirty"

    .prologue
    .line 434
    iput-boolean p1, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->dirty:Z

    .line 435
    return-void
.end method

.method public setEmails(Ljava/util/ArrayList;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/Email;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 465
    .local p1, emails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/contacts/Email;>;"
    if-nez p1, :cond_0

    .line 466
    const/4 v0, 0x0

    .line 469
    :goto_0
    return v0

    .line 468
    :cond_0
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->emails:Ljava/util/List;

    .line 469
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setEmails(Ljava/util/Vector;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/Email;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 555
    .local p1, emails:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/mediatek/apst/util/entity/contacts/Email;>;"
    if-nez p1, :cond_0

    .line 556
    const/4 v0, 0x0

    .line 559
    :goto_0
    return v0

    .line 558
    :cond_0
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->emails:Ljava/util/List;

    .line 559
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setIms(Ljava/util/ArrayList;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/Im;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 474
    .local p1, ims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/contacts/Im;>;"
    if-nez p1, :cond_0

    .line 475
    const/4 v0, 0x0

    .line 478
    :goto_0
    return v0

    .line 477
    :cond_0
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->ims:Ljava/util/List;

    .line 478
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setIms(Ljava/util/Vector;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/Im;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 564
    .local p1, ims:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/mediatek/apst/util/entity/contacts/Im;>;"
    if-nez p1, :cond_0

    .line 565
    const/4 v0, 0x0

    .line 568
    :goto_0
    return v0

    .line 567
    :cond_0
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->ims:Ljava/util/List;

    .line 568
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setLastTimeContacted(J)V
    .locals 0
    .parameter "lastTimeContacted"

    .prologue
    .line 396
    iput-wide p1, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->lastTimeContacted:J

    .line 397
    return-void
.end method

.method public setNames(Ljava/util/ArrayList;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/StructuredName;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 438
    .local p1, names:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/contacts/StructuredName;>;"
    if-nez p1, :cond_0

    .line 439
    const/4 v0, 0x0

    .line 442
    :goto_0
    return v0

    .line 441
    :cond_0
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->names:Ljava/util/List;

    .line 442
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setNames(Ljava/util/Vector;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/StructuredName;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 528
    .local p1, names:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/mediatek/apst/util/entity/contacts/StructuredName;>;"
    if-nez p1, :cond_0

    .line 529
    const/4 v0, 0x0

    .line 532
    :goto_0
    return v0

    .line 531
    :cond_0
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->names:Ljava/util/List;

    .line 532
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setNicknames(Ljava/util/ArrayList;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/Nickname;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 510
    .local p1, nicknames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/contacts/Nickname;>;"
    if-nez p1, :cond_0

    .line 511
    const/4 v0, 0x0

    .line 514
    :goto_0
    return v0

    .line 513
    :cond_0
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->nicknames:Ljava/util/List;

    .line 514
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setNicknames(Ljava/util/Vector;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/Nickname;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 600
    .local p1, nicknames:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/mediatek/apst/util/entity/contacts/Nickname;>;"
    if-nez p1, :cond_0

    .line 601
    const/4 v0, 0x0

    .line 604
    :goto_0
    return v0

    .line 603
    :cond_0
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->nicknames:Ljava/util/List;

    .line 604
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setNotes(Ljava/util/ArrayList;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/Note;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 501
    .local p1, notes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/contacts/Note;>;"
    if-nez p1, :cond_0

    .line 502
    const/4 v0, 0x0

    .line 505
    :goto_0
    return v0

    .line 504
    :cond_0
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->notes:Ljava/util/List;

    .line 505
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setNotes(Ljava/util/Vector;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/Note;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 591
    .local p1, notes:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/mediatek/apst/util/entity/contacts/Note;>;"
    if-nez p1, :cond_0

    .line 592
    const/4 v0, 0x0

    .line 595
    :goto_0
    return v0

    .line 594
    :cond_0
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->notes:Ljava/util/List;

    .line 595
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setOrganizations(Ljava/util/ArrayList;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/Organization;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 492
    .local p1, organizations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/contacts/Organization;>;"
    if-nez p1, :cond_0

    .line 493
    const/4 v0, 0x0

    .line 496
    :goto_0
    return v0

    .line 495
    :cond_0
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->organizations:Ljava/util/List;

    .line 496
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setOrganizations(Ljava/util/Vector;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/Organization;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 582
    .local p1, organizations:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/mediatek/apst/util/entity/contacts/Organization;>;"
    if-nez p1, :cond_0

    .line 583
    const/4 v0, 0x0

    .line 586
    :goto_0
    return v0

    .line 585
    :cond_0
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->organizations:Ljava/util/List;

    .line 586
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setPhones(Ljava/util/ArrayList;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/Phone;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 447
    .local p1, phones:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/contacts/Phone;>;"
    if-nez p1, :cond_0

    .line 448
    const/4 v0, 0x0

    .line 451
    :goto_0
    return v0

    .line 450
    :cond_0
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->phones:Ljava/util/List;

    .line 451
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setPhones(Ljava/util/Vector;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/Phone;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 537
    .local p1, phones:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/mediatek/apst/util/entity/contacts/Phone;>;"
    if-nez p1, :cond_0

    .line 538
    const/4 v0, 0x0

    .line 541
    :goto_0
    return v0

    .line 540
    :cond_0
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->phones:Ljava/util/List;

    .line 541
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setPhotos(Ljava/util/ArrayList;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/Photo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 456
    .local p1, photos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/contacts/Photo;>;"
    if-nez p1, :cond_0

    .line 457
    const/4 v0, 0x0

    .line 460
    :goto_0
    return v0

    .line 459
    :cond_0
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->photos:Ljava/util/List;

    .line 460
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setPhotos(Ljava/util/Vector;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/Photo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 546
    .local p1, photos:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/mediatek/apst/util/entity/contacts/Photo;>;"
    if-nez p1, :cond_0

    .line 547
    const/4 v0, 0x0

    .line 550
    :goto_0
    return v0

    .line 549
    :cond_0
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->photos:Ljava/util/List;

    .line 550
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setPostals(Ljava/util/ArrayList;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 483
    .local p1, postals:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;>;"
    if-nez p1, :cond_0

    .line 484
    const/4 v0, 0x0

    .line 487
    :goto_0
    return v0

    .line 486
    :cond_0
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->postals:Ljava/util/List;

    .line 487
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setPostals(Ljava/util/Vector;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 573
    .local p1, postals:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;>;"
    if-nez p1, :cond_0

    .line 574
    const/4 v0, 0x0

    .line 577
    :goto_0
    return v0

    .line 576
    :cond_0
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->postals:Ljava/util/List;

    .line 577
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setSendToVoicemail(Z)V
    .locals 0
    .parameter "sendToVoicemail"

    .prologue
    .line 408
    iput-boolean p1, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->sendToVoicemail:Z

    .line 409
    return-void
.end method

.method public setSimId(I)V
    .locals 0
    .parameter "simId"

    .prologue
    .line 623
    iput p1, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->simId:I

    .line 624
    return-void
.end method

.method public setSimIndex(I)V
    .locals 0
    .parameter "simIndex"

    .prologue
    .line 631
    iput p1, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->simIndex:I

    .line 632
    return-void
.end method

.method public setSourceLocation(I)V
    .locals 0
    .parameter "sourceLocation"

    .prologue
    .line 619
    iput p1, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->sourceLocation:I

    .line 620
    return-void
.end method

.method public setStarred(Z)V
    .locals 0
    .parameter "starred"

    .prologue
    .line 400
    iput-boolean p1, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->starred:Z

    .line 401
    return-void
.end method

.method public setTimesContacted(I)V
    .locals 0
    .parameter "timesContacted"

    .prologue
    .line 392
    iput p1, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->timesContacted:I

    .line 393
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .parameter "version"

    .prologue
    .line 430
    iput p1, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->version:I

    .line 431
    return-void
.end method

.method public setWebsites(Ljava/util/ArrayList;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/Website;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 519
    .local p1, websites:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/contacts/Website;>;"
    if-nez p1, :cond_0

    .line 520
    const/4 v0, 0x0

    .line 523
    :goto_0
    return v0

    .line 522
    :cond_0
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->websites:Ljava/util/List;

    .line 523
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setWebsites(Ljava/util/Vector;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/Website;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 609
    .local p1, websites:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/mediatek/apst/util/entity/contacts/Website;>;"
    if-nez p1, :cond_0

    .line 610
    const/4 v0, 0x0

    .line 613
    :goto_0
    return v0

    .line 612
    :cond_0
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->websites:Ljava/util/List;

    .line 613
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic shallowClone()Lcom/mediatek/apst/util/entity/contacts/BaseContact;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->shallowClone()Lcom/mediatek/apst/util/entity/contacts/RawContact;

    move-result-object v0

    return-object v0
.end method

.method public shallowClone()Lcom/mediatek/apst/util/entity/contacts/RawContact;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 709
    invoke-super {p0}, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->clone()Lcom/mediatek/apst/util/entity/contacts/BaseContact;

    move-result-object v0

    check-cast v0, Lcom/mediatek/apst/util/entity/contacts/RawContact;

    .line 711
    .local v0, copy:Lcom/mediatek/apst/util/entity/contacts/RawContact;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->names:Ljava/util/List;

    .line 712
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->phones:Ljava/util/List;

    .line 713
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->photos:Ljava/util/List;

    .line 714
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->emails:Ljava/util/List;

    .line 715
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->ims:Ljava/util/List;

    .line 716
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->postals:Ljava/util/List;

    .line 717
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->organizations:Ljava/util/List;

    .line 718
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->notes:Ljava/util/List;

    .line 719
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->nicknames:Ljava/util/List;

    .line 720
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->websites:Ljava/util/List;

    .line 722
    iget-object v11, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->names:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_0

    .line 726
    iget-object v11, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->phones:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_1

    .line 730
    iget-object v11, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->photos:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_2

    .line 734
    iget-object v11, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->emails:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_3

    .line 738
    iget-object v11, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->ims:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_4

    .line 742
    iget-object v11, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->postals:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_5

    .line 746
    iget-object v11, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->organizations:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_6

    .line 750
    iget-object v11, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->notes:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_7

    .line 754
    iget-object v11, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->nicknames:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_8

    .line 758
    iget-object v11, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->websites:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_9

    .line 762
    return-object v0

    .line 722
    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/apst/util/entity/contacts/StructuredName;

    .line 723
    .local v3, name:Lcom/mediatek/apst/util/entity/contacts/StructuredName;
    iget-object v12, v0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->names:Ljava/util/List;

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 726
    .end local v3           #name:Lcom/mediatek/apst/util/entity/contacts/StructuredName;
    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/apst/util/entity/contacts/Phone;

    .line 727
    .local v7, phone:Lcom/mediatek/apst/util/entity/contacts/Phone;
    iget-object v12, v0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->phones:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 730
    .end local v7           #phone:Lcom/mediatek/apst/util/entity/contacts/Phone;
    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/apst/util/entity/contacts/Photo;

    .line 731
    .local v8, photo:Lcom/mediatek/apst/util/entity/contacts/Photo;
    iget-object v12, v0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->photos:Ljava/util/List;

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 734
    .end local v8           #photo:Lcom/mediatek/apst/util/entity/contacts/Photo;
    :cond_3
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/apst/util/entity/contacts/Email;

    .line 735
    .local v1, email:Lcom/mediatek/apst/util/entity/contacts/Email;
    iget-object v12, v0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->emails:Ljava/util/List;

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 738
    .end local v1           #email:Lcom/mediatek/apst/util/entity/contacts/Email;
    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/apst/util/entity/contacts/Im;

    .line 739
    .local v2, im:Lcom/mediatek/apst/util/entity/contacts/Im;
    iget-object v12, v0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->ims:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 742
    .end local v2           #im:Lcom/mediatek/apst/util/entity/contacts/Im;
    :cond_5
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;

    .line 743
    .local v9, postal:Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;
    iget-object v12, v0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->postals:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 746
    .end local v9           #postal:Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;
    :cond_6
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/apst/util/entity/contacts/Organization;

    .line 747
    .local v6, organization:Lcom/mediatek/apst/util/entity/contacts/Organization;
    iget-object v12, v0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->organizations:Ljava/util/List;

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 750
    .end local v6           #organization:Lcom/mediatek/apst/util/entity/contacts/Organization;
    :cond_7
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/apst/util/entity/contacts/Note;

    .line 751
    .local v5, note:Lcom/mediatek/apst/util/entity/contacts/Note;
    iget-object v12, v0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->notes:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 754
    .end local v5           #note:Lcom/mediatek/apst/util/entity/contacts/Note;
    :cond_8
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/apst/util/entity/contacts/Nickname;

    .line 755
    .local v4, nickname:Lcom/mediatek/apst/util/entity/contacts/Nickname;
    iget-object v12, v0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->nicknames:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 758
    .end local v4           #nickname:Lcom/mediatek/apst/util/entity/contacts/Nickname;
    :cond_9
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mediatek/apst/util/entity/contacts/Website;

    .line 759
    .local v10, website:Lcom/mediatek/apst/util/entity/contacts/Website;
    iget-object v12, v0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->websites:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9
.end method

.method public writeRaw(Ljava/nio/ByteBuffer;)V
    .locals 13
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v12, -0x1

    .line 875
    invoke-super {p0, p1}, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->writeRaw(Ljava/nio/ByteBuffer;)V

    .line 877
    iget-boolean v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->starred:Z

    invoke-static {p1, v10}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putBoolean(Ljava/nio/ByteBuffer;Z)V

    .line 879
    iget-boolean v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->sendToVoicemail:Z

    invoke-static {p1, v10}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putBoolean(Ljava/nio/ByteBuffer;Z)V

    .line 881
    iget v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->version:I

    invoke-virtual {p1, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 883
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->names:Ljava/util/List;

    if-eqz v10, :cond_1

    .line 884
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->names:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {p1, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 885
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->names:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_0

    .line 892
    :goto_1
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->phones:Ljava/util/List;

    if-eqz v10, :cond_3

    .line 893
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->phones:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {p1, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 894
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->phones:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_2

    .line 901
    :goto_3
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->photos:Ljava/util/List;

    if-eqz v10, :cond_5

    .line 902
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->photos:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {p1, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 903
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->photos:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_4

    .line 910
    :goto_5
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->emails:Ljava/util/List;

    if-eqz v10, :cond_7

    .line 911
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->emails:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {p1, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 912
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->emails:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_6

    .line 919
    :goto_7
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->ims:Ljava/util/List;

    if-eqz v10, :cond_9

    .line 920
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->ims:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {p1, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 921
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->ims:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_8

    .line 928
    :goto_9
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->postals:Ljava/util/List;

    if-eqz v10, :cond_b

    .line 929
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->postals:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {p1, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 930
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->postals:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_a

    .line 937
    :goto_b
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->organizations:Ljava/util/List;

    if-eqz v10, :cond_d

    .line 938
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->organizations:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {p1, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 939
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->organizations:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_c

    .line 946
    :goto_d
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->notes:Ljava/util/List;

    if-eqz v10, :cond_f

    .line 947
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->notes:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {p1, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 948
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->notes:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_e

    .line 955
    :goto_f
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->nicknames:Ljava/util/List;

    if-eqz v10, :cond_11

    .line 956
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->nicknames:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {p1, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 957
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->nicknames:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_10
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_10

    .line 964
    :goto_11
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->websites:Ljava/util/List;

    if-eqz v10, :cond_13

    .line 965
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->websites:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {p1, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 966
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->websites:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_12
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_12

    .line 975
    :goto_13
    iget v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->sourceLocation:I

    invoke-virtual {p1, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 976
    return-void

    .line 885
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/apst/util/entity/contacts/StructuredName;

    .line 886
    .local v2, name:Lcom/mediatek/apst/util/entity/contacts/StructuredName;
    invoke-virtual {v2, p1}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->writeRaw(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_0

    .line 889
    .end local v2           #name:Lcom/mediatek/apst/util/entity/contacts/StructuredName;
    :cond_1
    invoke-virtual {p1, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto/16 :goto_1

    .line 894
    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/apst/util/entity/contacts/Phone;

    .line 895
    .local v6, phone:Lcom/mediatek/apst/util/entity/contacts/Phone;
    invoke-virtual {v6, p1}, Lcom/mediatek/apst/util/entity/contacts/Phone;->writeRaw(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_2

    .line 898
    .end local v6           #phone:Lcom/mediatek/apst/util/entity/contacts/Phone;
    :cond_3
    invoke-virtual {p1, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto/16 :goto_3

    .line 903
    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/apst/util/entity/contacts/Photo;

    .line 904
    .local v7, photo:Lcom/mediatek/apst/util/entity/contacts/Photo;
    invoke-virtual {v7, p1}, Lcom/mediatek/apst/util/entity/contacts/Photo;->writeRaw(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_4

    .line 907
    .end local v7           #photo:Lcom/mediatek/apst/util/entity/contacts/Photo;
    :cond_5
    invoke-virtual {p1, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto/16 :goto_5

    .line 912
    :cond_6
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/apst/util/entity/contacts/Email;

    .line 913
    .local v0, email:Lcom/mediatek/apst/util/entity/contacts/Email;
    invoke-virtual {v0, p1}, Lcom/mediatek/apst/util/entity/contacts/Email;->writeRaw(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_6

    .line 916
    .end local v0           #email:Lcom/mediatek/apst/util/entity/contacts/Email;
    :cond_7
    invoke-virtual {p1, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto/16 :goto_7

    .line 921
    :cond_8
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/apst/util/entity/contacts/Im;

    .line 922
    .local v1, im:Lcom/mediatek/apst/util/entity/contacts/Im;
    invoke-virtual {v1, p1}, Lcom/mediatek/apst/util/entity/contacts/Im;->writeRaw(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_8

    .line 925
    .end local v1           #im:Lcom/mediatek/apst/util/entity/contacts/Im;
    :cond_9
    invoke-virtual {p1, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto/16 :goto_9

    .line 930
    :cond_a
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;

    .line 931
    .local v8, postal:Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;
    invoke-virtual {v8, p1}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->writeRaw(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_a

    .line 934
    .end local v8           #postal:Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;
    :cond_b
    invoke-virtual {p1, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto/16 :goto_b

    .line 939
    :cond_c
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/apst/util/entity/contacts/Organization;

    .line 940
    .local v5, organization:Lcom/mediatek/apst/util/entity/contacts/Organization;
    invoke-virtual {v5, p1}, Lcom/mediatek/apst/util/entity/contacts/Organization;->writeRaw(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_c

    .line 943
    .end local v5           #organization:Lcom/mediatek/apst/util/entity/contacts/Organization;
    :cond_d
    invoke-virtual {p1, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto/16 :goto_d

    .line 948
    :cond_e
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/apst/util/entity/contacts/Note;

    .line 949
    .local v4, note:Lcom/mediatek/apst/util/entity/contacts/Note;
    invoke-virtual {v4, p1}, Lcom/mediatek/apst/util/entity/contacts/Note;->writeRaw(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_e

    .line 952
    .end local v4           #note:Lcom/mediatek/apst/util/entity/contacts/Note;
    :cond_f
    invoke-virtual {p1, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto/16 :goto_f

    .line 957
    :cond_10
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/apst/util/entity/contacts/Nickname;

    .line 958
    .local v3, nickname:Lcom/mediatek/apst/util/entity/contacts/Nickname;
    invoke-virtual {v3, p1}, Lcom/mediatek/apst/util/entity/contacts/Nickname;->writeRaw(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_10

    .line 961
    .end local v3           #nickname:Lcom/mediatek/apst/util/entity/contacts/Nickname;
    :cond_11
    invoke-virtual {p1, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto/16 :goto_11

    .line 966
    :cond_12
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/apst/util/entity/contacts/Website;

    .line 967
    .local v9, website:Lcom/mediatek/apst/util/entity/contacts/Website;
    invoke-virtual {v9, p1}, Lcom/mediatek/apst/util/entity/contacts/Website;->writeRaw(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_12

    .line 970
    .end local v9           #website:Lcom/mediatek/apst/util/entity/contacts/Website;
    :cond_13
    invoke-virtual {p1, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto/16 :goto_13
.end method

.method public writeRawWithVersion(Ljava/nio/ByteBuffer;I)V
    .locals 13
    .parameter "buffer"
    .parameter "versionCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .prologue
    const/4 v12, -0x1

    .line 1119
    invoke-super {p0, p1, p2}, Lcom/mediatek/apst/util/entity/contacts/BaseContact;->writeRawWithVersion(Ljava/nio/ByteBuffer;I)V

    .line 1121
    iget-boolean v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->starred:Z

    invoke-static {p1, v10}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putBoolean(Ljava/nio/ByteBuffer;Z)V

    .line 1124
    iget-boolean v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->sendToVoicemail:Z

    invoke-static {p1, v10}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putBoolean(Ljava/nio/ByteBuffer;Z)V

    .line 1127
    iget v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->version:I

    invoke-virtual {p1, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1130
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->names:Ljava/util/List;

    if-eqz v10, :cond_3

    .line 1131
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->names:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {p1, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1133
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->names:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_2

    .line 1140
    :goto_1
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->phones:Ljava/util/List;

    if-eqz v10, :cond_5

    .line 1141
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->phones:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {p1, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1143
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->phones:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_4

    .line 1152
    :goto_3
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->photos:Ljava/util/List;

    if-eqz v10, :cond_7

    .line 1153
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->photos:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {p1, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1154
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->photos:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_6

    .line 1161
    :goto_5
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->emails:Ljava/util/List;

    if-eqz v10, :cond_9

    .line 1162
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->emails:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {p1, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1164
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->emails:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_8

    .line 1171
    :goto_7
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->ims:Ljava/util/List;

    if-eqz v10, :cond_b

    .line 1172
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->ims:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {p1, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1173
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->ims:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_a

    .line 1180
    :goto_9
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->postals:Ljava/util/List;

    if-eqz v10, :cond_d

    .line 1181
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->postals:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {p1, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1182
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->postals:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_c

    .line 1189
    :goto_b
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->organizations:Ljava/util/List;

    if-eqz v10, :cond_f

    .line 1190
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->organizations:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {p1, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1191
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->organizations:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_e

    .line 1198
    :goto_d
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->notes:Ljava/util/List;

    if-eqz v10, :cond_11

    .line 1199
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->notes:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {p1, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1200
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->notes:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_10

    .line 1207
    :goto_f
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->nicknames:Ljava/util/List;

    if-eqz v10, :cond_13

    .line 1208
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->nicknames:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {p1, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1209
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->nicknames:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_10
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_12

    .line 1216
    :goto_11
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->websites:Ljava/util/List;

    if-eqz v10, :cond_15

    .line 1217
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->websites:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {p1, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1218
    iget-object v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->websites:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_12
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_14

    .line 1227
    :goto_13
    iget v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->sourceLocation:I

    invoke-virtual {p1, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1229
    const/4 v10, 0x2

    if-lt p2, v10, :cond_0

    .line 1231
    iget v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->simId:I

    invoke-virtual {p1, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1236
    :cond_0
    sget v10, Lcom/mediatek/apst/util/FeatureOptionControl;->CONTACT_N_USIMGROUP:I

    if-eqz v10, :cond_1

    .line 1237
    iget v10, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact;->simIndex:I

    invoke-virtual {p1, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1240
    :cond_1
    return-void

    .line 1133
    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/apst/util/entity/contacts/StructuredName;

    .line 1134
    .local v2, name:Lcom/mediatek/apst/util/entity/contacts/StructuredName;
    invoke-virtual {v2, p1}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->writeRaw(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_0

    .line 1137
    .end local v2           #name:Lcom/mediatek/apst/util/entity/contacts/StructuredName;
    :cond_3
    invoke-virtual {p1, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto/16 :goto_1

    .line 1143
    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/apst/util/entity/contacts/Phone;

    .line 1146
    .local v6, phone:Lcom/mediatek/apst/util/entity/contacts/Phone;
    invoke-virtual {v6, p1, p2}, Lcom/mediatek/apst/util/entity/contacts/Phone;->writeRawWithVersion(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_2

    .line 1149
    .end local v6           #phone:Lcom/mediatek/apst/util/entity/contacts/Phone;
    :cond_5
    invoke-virtual {p1, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto/16 :goto_3

    .line 1154
    :cond_6
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/apst/util/entity/contacts/Photo;

    .line 1155
    .local v7, photo:Lcom/mediatek/apst/util/entity/contacts/Photo;
    invoke-virtual {v7, p1}, Lcom/mediatek/apst/util/entity/contacts/Photo;->writeRaw(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_4

    .line 1158
    .end local v7           #photo:Lcom/mediatek/apst/util/entity/contacts/Photo;
    :cond_7
    invoke-virtual {p1, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto/16 :goto_5

    .line 1164
    :cond_8
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/apst/util/entity/contacts/Email;

    .line 1165
    .local v0, email:Lcom/mediatek/apst/util/entity/contacts/Email;
    invoke-virtual {v0, p1}, Lcom/mediatek/apst/util/entity/contacts/Email;->writeRaw(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_6

    .line 1168
    .end local v0           #email:Lcom/mediatek/apst/util/entity/contacts/Email;
    :cond_9
    invoke-virtual {p1, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto/16 :goto_7

    .line 1173
    :cond_a
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/apst/util/entity/contacts/Im;

    .line 1174
    .local v1, im:Lcom/mediatek/apst/util/entity/contacts/Im;
    invoke-virtual {v1, p1}, Lcom/mediatek/apst/util/entity/contacts/Im;->writeRaw(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_8

    .line 1177
    .end local v1           #im:Lcom/mediatek/apst/util/entity/contacts/Im;
    :cond_b
    invoke-virtual {p1, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto/16 :goto_9

    .line 1182
    :cond_c
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;

    .line 1183
    .local v8, postal:Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;
    invoke-virtual {v8, p1}, Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;->writeRaw(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_a

    .line 1186
    .end local v8           #postal:Lcom/mediatek/apst/util/entity/contacts/StructuredPostal;
    :cond_d
    invoke-virtual {p1, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto/16 :goto_b

    .line 1191
    :cond_e
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/apst/util/entity/contacts/Organization;

    .line 1192
    .local v5, organization:Lcom/mediatek/apst/util/entity/contacts/Organization;
    invoke-virtual {v5, p1}, Lcom/mediatek/apst/util/entity/contacts/Organization;->writeRaw(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_c

    .line 1195
    .end local v5           #organization:Lcom/mediatek/apst/util/entity/contacts/Organization;
    :cond_f
    invoke-virtual {p1, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto/16 :goto_d

    .line 1200
    :cond_10
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/apst/util/entity/contacts/Note;

    .line 1201
    .local v4, note:Lcom/mediatek/apst/util/entity/contacts/Note;
    invoke-virtual {v4, p1}, Lcom/mediatek/apst/util/entity/contacts/Note;->writeRaw(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_e

    .line 1204
    .end local v4           #note:Lcom/mediatek/apst/util/entity/contacts/Note;
    :cond_11
    invoke-virtual {p1, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto/16 :goto_f

    .line 1209
    :cond_12
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/apst/util/entity/contacts/Nickname;

    .line 1210
    .local v3, nickname:Lcom/mediatek/apst/util/entity/contacts/Nickname;
    invoke-virtual {v3, p1}, Lcom/mediatek/apst/util/entity/contacts/Nickname;->writeRaw(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_10

    .line 1213
    .end local v3           #nickname:Lcom/mediatek/apst/util/entity/contacts/Nickname;
    :cond_13
    invoke-virtual {p1, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto/16 :goto_11

    .line 1218
    :cond_14
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/apst/util/entity/contacts/Website;

    .line 1219
    .local v9, website:Lcom/mediatek/apst/util/entity/contacts/Website;
    invoke-virtual {v9, p1}, Lcom/mediatek/apst/util/entity/contacts/Website;->writeRaw(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_12

    .line 1222
    .end local v9           #website:Lcom/mediatek/apst/util/entity/contacts/Website;
    :cond_15
    invoke-virtual {p1, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto/16 :goto_13
.end method
