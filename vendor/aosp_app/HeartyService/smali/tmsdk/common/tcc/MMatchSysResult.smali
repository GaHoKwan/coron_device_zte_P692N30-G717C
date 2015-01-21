.class public Ltmsdk/common/tcc/MMatchSysResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ltmsdk/common/tcc/MMatchSysResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final EM_FINAL_ACTION_DOUBT:I = 0x3

.field public static final EM_FINAL_ACTION_INTERCEPT:I = 0x2

.field public static final EM_FINAL_ACTION_NEXT_STEP:I = 0x4

.field public static final EM_FINAL_ACTION_PASS:I = 0x1


# instance fields
.field public actionReason:I

.field public contentType:I

.field public finalAction:I

.field public matchCnt:I

.field public minusMark:I

.field public ruleTypeID:[Ltmsdk/common/tcc/MRuleTypeID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    new-instance v0, Ltmsdk/common/tcc/MMatchSysResult$1;

    invoke-direct {v0}, Ltmsdk/common/tcc/MMatchSysResult$1;-><init>()V

    sput-object v0, Ltmsdk/common/tcc/MMatchSysResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method public constructor <init>(IIIII[Ltmsdk/common/tcc/MRuleTypeID;)V
    .locals 0
    .parameter "finalAction"
    .parameter "contentType"
    .parameter "matchCnt"
    .parameter "minusMark"
    .parameter "actionReason"
    .parameter "ruleTypeID"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Ltmsdk/common/tcc/MMatchSysResult;->finalAction:I

    .line 52
    iput p2, p0, Ltmsdk/common/tcc/MMatchSysResult;->contentType:I

    .line 53
    iput p3, p0, Ltmsdk/common/tcc/MMatchSysResult;->matchCnt:I

    .line 54
    iput p4, p0, Ltmsdk/common/tcc/MMatchSysResult;->minusMark:I

    .line 55
    iput p5, p0, Ltmsdk/common/tcc/MMatchSysResult;->actionReason:I

    .line 56
    iput-object p6, p0, Ltmsdk/common/tcc/MMatchSysResult;->ruleTypeID:[Ltmsdk/common/tcc/MRuleTypeID;

    .line 57
    return-void
.end method

.method synthetic constructor <init>(Ltmsdk/common/tcc/MMatchSysResult$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 7
    invoke-direct {p0}, Ltmsdk/common/tcc/MMatchSysResult;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 73
    iget v0, p0, Ltmsdk/common/tcc/MMatchSysResult;->finalAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget v0, p0, Ltmsdk/common/tcc/MMatchSysResult;->contentType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget v0, p0, Ltmsdk/common/tcc/MMatchSysResult;->matchCnt:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget v0, p0, Ltmsdk/common/tcc/MMatchSysResult;->minusMark:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget v0, p0, Ltmsdk/common/tcc/MMatchSysResult;->actionReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget-object v0, p0, Ltmsdk/common/tcc/MMatchSysResult;->ruleTypeID:[Ltmsdk/common/tcc/MRuleTypeID;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    .line 79
    return-void
.end method
