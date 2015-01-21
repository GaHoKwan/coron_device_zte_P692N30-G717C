.class public Ltmsdk/common/module/urlcheck/UrlCheckResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ltmsdk/common/module/urlcheck/UrlCheckResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESULT_HARM:I = 0x3

.field public static final RESULT_REGULAR:I = 0x0

.field public static final RESULT_SHADINESS:I = 0x2

.field public static final RESULT_UNKNOWN:I = 0x7fffffff


# instance fields
.field public mErrCode:I

.field public mainHarmId:I

.field public result:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Ltmsdk/common/module/urlcheck/UrlCheckResult$1;

    invoke-direct {v0}, Ltmsdk/common/module/urlcheck/UrlCheckResult$1;-><init>()V

    sput-object v0, Ltmsdk/common/module/urlcheck/UrlCheckResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const v0, 0x7fffffff

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v0, p0, Ltmsdk/common/module/urlcheck/UrlCheckResult;->mainHarmId:I

    .line 38
    iput v0, p0, Ltmsdk/common/module/urlcheck/UrlCheckResult;->result:I

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Ltmsdk/common/module/urlcheck/UrlCheckResult;->mErrCode:I

    .line 46
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "errCode"

    .prologue
    const v0, 0x7fffffff

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v0, p0, Ltmsdk/common/module/urlcheck/UrlCheckResult;->mainHarmId:I

    .line 38
    iput v0, p0, Ltmsdk/common/module/urlcheck/UrlCheckResult;->result:I

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Ltmsdk/common/module/urlcheck/UrlCheckResult;->mErrCode:I

    .line 49
    iput p1, p0, Ltmsdk/common/module/urlcheck/UrlCheckResult;->mErrCode:I

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Ltmsdk/common/module/urlcheck/UrlCheckResult$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 9
    invoke-direct {p0}, Ltmsdk/common/module/urlcheck/UrlCheckResult;-><init>()V

    return-void
.end method

.method public constructor <init>(Ltmsdkobf/ch;)V
    .locals 3
    .parameter "response"

    .prologue
    const v0, 0x7fffffff

    const/4 v2, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v0, p0, Ltmsdk/common/module/urlcheck/UrlCheckResult;->mainHarmId:I

    .line 38
    iput v0, p0, Ltmsdk/common/module/urlcheck/UrlCheckResult;->result:I

    .line 43
    iput v2, p0, Ltmsdk/common/module/urlcheck/UrlCheckResult;->mErrCode:I

    .line 53
    iget v0, p1, Ltmsdkobf/ch;->mainHarmId:I

    iput v0, p0, Ltmsdk/common/module/urlcheck/UrlCheckResult;->mainHarmId:I

    .line 54
    iget v0, p0, Ltmsdk/common/module/urlcheck/UrlCheckResult;->mainHarmId:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 55
    iput v2, p0, Ltmsdk/common/module/urlcheck/UrlCheckResult;->mainHarmId:I

    .line 57
    :cond_0
    iget v0, p1, Ltmsdkobf/ch;->is:I

    iput v0, p0, Ltmsdk/common/module/urlcheck/UrlCheckResult;->result:I

    .line 58
    iget v0, p0, Ltmsdk/common/module/urlcheck/UrlCheckResult;->result:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 59
    iput v2, p0, Ltmsdk/common/module/urlcheck/UrlCheckResult;->result:I

    .line 61
    :cond_1
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 70
    iget v0, p0, Ltmsdk/common/module/urlcheck/UrlCheckResult;->mainHarmId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget v0, p0, Ltmsdk/common/module/urlcheck/UrlCheckResult;->result:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget v0, p0, Ltmsdk/common/module/urlcheck/UrlCheckResult;->mErrCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    return-void
.end method
