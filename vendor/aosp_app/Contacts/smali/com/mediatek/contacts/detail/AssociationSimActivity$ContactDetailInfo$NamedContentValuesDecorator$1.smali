.class final Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo$NamedContentValuesDecorator$1;
.super Ljava/lang/Object;
.source "AssociationSimActivity.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo$NamedContentValuesDecorator;
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
        "Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo$NamedContentValuesDecorator;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo$NamedContentValuesDecorator;
    .locals 4
    .parameter "source"

    .prologue
    .line 655
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 656
    .local v0, classLoader:Ljava/lang/ClassLoader;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 657
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 658
    .local v2, values:Landroid/content/ContentValues;
    new-instance v3, Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo$NamedContentValuesDecorator;

    invoke-direct {v3, v1, v2}, Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo$NamedContentValuesDecorator;-><init>(Landroid/net/Uri;Landroid/content/ContentValues;)V

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 646
    invoke-virtual {p0, p1}, Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo$NamedContentValuesDecorator$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo$NamedContentValuesDecorator;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo$NamedContentValuesDecorator;
    .locals 1
    .parameter "size"

    .prologue
    .line 650
    new-array v0, p1, [Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo$NamedContentValuesDecorator;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 646
    invoke-virtual {p0, p1}, Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo$NamedContentValuesDecorator$1;->newArray(I)[Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo$NamedContentValuesDecorator;

    move-result-object v0

    return-object v0
.end method
