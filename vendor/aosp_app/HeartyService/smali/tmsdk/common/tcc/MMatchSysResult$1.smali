.class final Ltmsdk/common/tcc/MMatchSysResult$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/common/tcc/MMatchSysResult;
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
        "Ltmsdk/common/tcc/MMatchSysResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public B(Landroid/os/Parcel;)Ltmsdk/common/tcc/MMatchSysResult;
    .locals 6
    .parameter "source"

    .prologue
    .line 90
    new-instance v3, Ltmsdk/common/tcc/MMatchSysResult;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Ltmsdk/common/tcc/MMatchSysResult;-><init>(Ltmsdk/common/tcc/MMatchSysResult$1;)V

    .line 91
    .local v3, result:Ltmsdk/common/tcc/MMatchSysResult;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v3, Ltmsdk/common/tcc/MMatchSysResult;->finalAction:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v3, Ltmsdk/common/tcc/MMatchSysResult;->contentType:I

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v3, Ltmsdk/common/tcc/MMatchSysResult;->matchCnt:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v3, Ltmsdk/common/tcc/MMatchSysResult;->minusMark:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v3, Ltmsdk/common/tcc/MMatchSysResult;->actionReason:I

    .line 96
    const-class v5, Ltmsdk/common/tcc/MRuleTypeID;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    move-result-object v4

    .line 97
    .local v4, src:[Ljava/lang/Object;
    if-eqz v4, :cond_1

    array-length v5, v4

    if-lez v5, :cond_1

    .line 98
    array-length v2, v4

    .line 99
    .local v2, len:I
    new-array v0, v2, [Ltmsdk/common/tcc/MRuleTypeID;

    .line 100
    .local v0, dest:[Ltmsdk/common/tcc/MRuleTypeID;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 101
    aget-object v5, v4, v1

    check-cast v5, Ltmsdk/common/tcc/MRuleTypeID;

    aput-object v5, v0, v1

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    :cond_0
    iput-object v0, v3, Ltmsdk/common/tcc/MMatchSysResult;->ruleTypeID:[Ltmsdk/common/tcc/MRuleTypeID;

    .line 105
    .end local v0           #dest:[Ltmsdk/common/tcc/MRuleTypeID;
    .end local v1           #i:I
    .end local v2           #len:I
    :cond_1
    return-object v3
.end method

.method public cd(I)[Ltmsdk/common/tcc/MMatchSysResult;
    .locals 1
    .parameter "size"

    .prologue
    .line 110
    new-array v0, p1, [Ltmsdk/common/tcc/MMatchSysResult;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Ltmsdk/common/tcc/MMatchSysResult$1;->B(Landroid/os/Parcel;)Ltmsdk/common/tcc/MMatchSysResult;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Ltmsdk/common/tcc/MMatchSysResult$1;->cd(I)[Ltmsdk/common/tcc/MMatchSysResult;

    move-result-object v0

    return-object v0
.end method
