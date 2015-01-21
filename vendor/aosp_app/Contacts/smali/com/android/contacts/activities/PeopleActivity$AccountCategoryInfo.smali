.class public Lcom/android/contacts/activities/PeopleActivity$AccountCategoryInfo;
.super Ljava/lang/Object;
.source "PeopleActivity.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/PeopleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountCategoryInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/activities/PeopleActivity$AccountCategoryInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAccountCategory:Ljava/lang/String;

.field public mSimId:I

.field public mSimName:Ljava/lang/String;

.field public mSlotId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2175
    new-instance v0, Lcom/android/contacts/activities/PeopleActivity$AccountCategoryInfo$1;

    invoke-direct {v0}, Lcom/android/contacts/activities/PeopleActivity$AccountCategoryInfo$1;-><init>()V

    sput-object v0, Lcom/android/contacts/activities/PeopleActivity$AccountCategoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 2185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2186
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$AccountCategoryInfo;->mAccountCategory:Ljava/lang/String;

    .line 2187
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/activities/PeopleActivity$AccountCategoryInfo;->mSlotId:I

    .line 2188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/activities/PeopleActivity$AccountCategoryInfo;->mSimId:I

    .line 2189
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$AccountCategoryInfo;->mSimName:Ljava/lang/String;

    .line 2190
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/contacts/activities/PeopleActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2155
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity$AccountCategoryInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .parameter "accountCategory"
    .parameter "slot"
    .parameter "simId"
    .parameter "simName"

    .prologue
    .line 2192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2193
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$AccountCategoryInfo;->mAccountCategory:Ljava/lang/String;

    .line 2194
    iput p2, p0, Lcom/android/contacts/activities/PeopleActivity$AccountCategoryInfo;->mSlotId:I

    .line 2195
    iput p3, p0, Lcom/android/contacts/activities/PeopleActivity$AccountCategoryInfo;->mSimId:I

    .line 2196
    iput-object p4, p0, Lcom/android/contacts/activities/PeopleActivity$AccountCategoryInfo;->mSimName:Ljava/lang/String;

    .line 2197
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 2164
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 2169
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$AccountCategoryInfo;->mAccountCategory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2170
    iget v0, p0, Lcom/android/contacts/activities/PeopleActivity$AccountCategoryInfo;->mSlotId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2171
    iget v0, p0, Lcom/android/contacts/activities/PeopleActivity$AccountCategoryInfo;->mSimId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2172
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$AccountCategoryInfo;->mSimName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2173
    return-void
.end method
