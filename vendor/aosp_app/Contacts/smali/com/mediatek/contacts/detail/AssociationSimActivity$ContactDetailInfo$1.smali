.class final Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo$1;
.super Ljava/lang/Object;
.source "AssociationSimActivity.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo;
    .locals 7
    .parameter "source"

    .prologue
    .line 594
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 599
    .local v6, classLoader:Ljava/lang/ClassLoader;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 600
    .local v1, displayTitle:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 601
    .local v2, displaySubTitle:Ljava/lang/String;
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 602
    .local v3, lookupUri:Landroid/net/Uri;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 603
    .local v4, numberInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/Entity$NamedContentValues;>;"
    invoke-virtual {p1, v4, v6}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 604
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 605
    .local v5, photoUri:Ljava/lang/String;
    new-instance v0, Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo;

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 590
    invoke-virtual {p0, p1}, Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 610
    new-array v0, p1, [Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 590
    invoke-virtual {p0, p1}, Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo$1;->newArray(I)[Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo;

    move-result-object v0

    return-object v0
.end method
