.class final Ltmsdk/common/tcc/MRuleTypeID$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/common/tcc/MRuleTypeID;
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
        "Ltmsdk/common/tcc/MRuleTypeID;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public C(Landroid/os/Parcel;)Ltmsdk/common/tcc/MRuleTypeID;
    .locals 2
    .parameter "source"

    .prologue
    .line 51
    new-instance v0, Ltmsdk/common/tcc/MRuleTypeID;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltmsdk/common/tcc/MRuleTypeID;-><init>(Ltmsdk/common/tcc/MRuleTypeID$1;)V

    .line 52
    .local v0, obj:Ltmsdk/common/tcc/MRuleTypeID;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Ltmsdk/common/tcc/MRuleTypeID;->ruleType:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Ltmsdk/common/tcc/MRuleTypeID;->ruleID:I

    .line 54
    return-object v0
.end method

.method public ce(I)[Ltmsdk/common/tcc/MRuleTypeID;
    .locals 1
    .parameter "size"

    .prologue
    .line 59
    new-array v0, p1, [Ltmsdk/common/tcc/MRuleTypeID;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Ltmsdk/common/tcc/MRuleTypeID$1;->C(Landroid/os/Parcel;)Ltmsdk/common/tcc/MRuleTypeID;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Ltmsdk/common/tcc/MRuleTypeID$1;->ce(I)[Ltmsdk/common/tcc/MRuleTypeID;

    move-result-object v0

    return-object v0
.end method
