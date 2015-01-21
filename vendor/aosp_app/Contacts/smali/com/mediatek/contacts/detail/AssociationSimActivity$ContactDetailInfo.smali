.class public final Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo;
.super Ljava/lang/Object;
.source "AssociationSimActivity.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/detail/AssociationSimActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContactDetailInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo$NamedContentValuesDecorator;
    }
.end annotation


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mDisplaySubtitle:Ljava/lang/String;

.field public mDisplayTitle:Ljava/lang/String;

.field public mLookupUri:Landroid/net/Uri;

.field public mNumberInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo$NamedContentValuesDecorator;",
            ">;"
        }
    .end annotation
.end field

.field public mPhotoUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 590
    new-instance v0, Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo$1;

    invoke-direct {v0}, Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo$1;-><init>()V

    sput-object v0, Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .parameter "displayTitle"
    .parameter "displaySubtitle"
    .parameter "lookupUri"
    .parameter
    .parameter "photoUri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Entity$NamedContentValues;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p4, numberInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/Entity$NamedContentValues;>;"
    const/4 v3, 0x0

    .line 567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 557
    const-string v2, ""

    iput-object v2, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo;->mDisplayTitle:Ljava/lang/String;

    .line 559
    const-string v2, ""

    iput-object v2, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo;->mDisplaySubtitle:Ljava/lang/String;

    .line 561
    iput-object v3, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo;->mLookupUri:Landroid/net/Uri;

    .line 563
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo;->mNumberInfoList:Ljava/util/List;

    .line 564
    iput-object v3, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo;->mPhotoUri:Ljava/lang/String;

    .line 568
    iput-object p1, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo;->mDisplayTitle:Ljava/lang/String;

    .line 569
    iput-object p2, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo;->mDisplaySubtitle:Ljava/lang/String;

    .line 570
    iput-object p3, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo;->mLookupUri:Landroid/net/Uri;

    .line 571
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Entity$NamedContentValues;

    .line 572
    .local v1, values:Landroid/content/Entity$NamedContentValues;
    iget-object v2, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo;->mNumberInfoList:Ljava/util/List;

    new-instance v3, Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo$NamedContentValuesDecorator;

    invoke-direct {v3, v1}, Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo$NamedContentValuesDecorator;-><init>(Landroid/content/Entity$NamedContentValues;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 574
    .end local v1           #values:Landroid/content/Entity$NamedContentValues;
    :cond_0
    iput-object p5, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo;->mPhotoUri:Ljava/lang/String;

    .line 576
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 616
    const/4 v0, 0x0

    return v0
.end method

.method public setPhoto(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "photoView"

    .prologue
    .line 579
    iget-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo;->mPhotoUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo;->mPhotoUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 584
    :goto_0
    return-void

    .line 582
    :cond_0
    const v0, 0x7f020079

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flag"

    .prologue
    .line 625
    iget-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo;->mDisplayTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 626
    iget-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo;->mDisplaySubtitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 627
    iget-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo;->mLookupUri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 628
    iget-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo;->mNumberInfoList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 629
    iget-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo;->mPhotoUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 630
    return-void
.end method
