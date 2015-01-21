.class public final Ltmsdk/common/module/aresengine/IntelliSmsCheckResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ltmsdk/common/tcc/SmsCheckerContentTypes;
.implements Ltmsdk/common/tcc/SmsCheckerSuggestions;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ltmsdk/common/module/aresengine/IntelliSmsCheckResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public suggestion:I

.field public sysResult:Ltmsdk/common/tcc/MMatchSysResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Ltmsdk/common/module/aresengine/IntelliSmsCheckResult$1;

    invoke-direct {v0}, Ltmsdk/common/module/aresengine/IntelliSmsCheckResult$1;-><init>()V

    sput-object v0, Ltmsdk/common/module/aresengine/IntelliSmsCheckResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILtmsdk/common/tcc/MMatchSysResult;)V
    .locals 0
    .parameter "suggestion"
    .parameter "sysResult"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Ltmsdk/common/module/aresengine/IntelliSmsCheckResult;->suggestion:I

    .line 27
    iput-object p2, p0, Ltmsdk/common/module/aresengine/IntelliSmsCheckResult;->sysResult:Ltmsdk/common/tcc/MMatchSysResult;

    .line 28
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltmsdk/common/module/aresengine/IntelliSmsCheckResult;->suggestion:I

    .line 32
    const-class v0, Ltmsdk/common/tcc/MMatchSysResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Ltmsdk/common/tcc/MMatchSysResult;

    iput-object v0, p0, Ltmsdk/common/module/aresengine/IntelliSmsCheckResult;->sysResult:Ltmsdk/common/tcc/MMatchSysResult;

    .line 33
    return-void
.end method

.method public static shouldBeBlockedOrNot(Ltmsdk/common/module/aresengine/IntelliSmsCheckResult;)Z
    .locals 2
    .parameter "checkresult"

    .prologue
    .line 41
    if-eqz p0, :cond_1

    iget v0, p0, Ltmsdk/common/module/aresengine/IntelliSmsCheckResult;->suggestion:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Ltmsdk/common/module/aresengine/IntelliSmsCheckResult;->suggestion:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public contentType()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Ltmsdk/common/module/aresengine/IntelliSmsCheckResult;->sysResult:Ltmsdk/common/tcc/MMatchSysResult;

    iget v0, v0, Ltmsdk/common/tcc/MMatchSysResult;->contentType:I

    rem-int/lit8 v0, v0, 0x7f

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 61
    iget v0, p0, Ltmsdk/common/module/aresengine/IntelliSmsCheckResult;->suggestion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget-object v0, p0, Ltmsdk/common/module/aresengine/IntelliSmsCheckResult;->sysResult:Ltmsdk/common/tcc/MMatchSysResult;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 63
    return-void
.end method
