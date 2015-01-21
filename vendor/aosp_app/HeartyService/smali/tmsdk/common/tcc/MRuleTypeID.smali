.class public Ltmsdk/common/tcc/MRuleTypeID;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ltmsdk/common/tcc/MRuleTypeID;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ruleID:I

.field public ruleType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ltmsdk/common/tcc/MRuleTypeID$1;

    invoke-direct {v0}, Ltmsdk/common/tcc/MRuleTypeID$1;-><init>()V

    sput-object v0, Ltmsdk/common/tcc/MRuleTypeID;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "ruleType"
    .parameter "ruleID"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Ltmsdk/common/tcc/MRuleTypeID;->ruleType:I

    .line 22
    iput p2, p0, Ltmsdk/common/tcc/MRuleTypeID;->ruleID:I

    .line 23
    return-void
.end method

.method synthetic constructor <init>(Ltmsdk/common/tcc/MRuleTypeID$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 6
    invoke-direct {p0}, Ltmsdk/common/tcc/MRuleTypeID;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 39
    iget v0, p0, Ltmsdk/common/tcc/MRuleTypeID;->ruleType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget v0, p0, Ltmsdk/common/tcc/MRuleTypeID;->ruleID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    return-void
.end method
