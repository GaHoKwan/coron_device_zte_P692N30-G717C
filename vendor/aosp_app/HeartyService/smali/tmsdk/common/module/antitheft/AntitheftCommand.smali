.class public final Ltmsdk/common/module/antitheft/AntitheftCommand;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdk/common/module/antitheft/AntitheftCommand$IAntitheftCommandObserver;
    }
.end annotation


# static fields
.field public static final APPEND_FIX_FROM_WEB_SERVER_NUMBER:Ljava/lang/String; = "[tencent]"

.field public static final CMD_DELETE_DATA:Ljava/lang/String; = "#qqdeleteall#"

.field public static final CMD_FIND_PASSWORD:Ljava/lang/String; = "#qqpin#"

.field public static final CMD_GET_LOCATE:Ljava/lang/String; = "#qqlocate#"

.field public static final CMD_LOCK_PHONE:Ljava/lang/String; = "#qqlock#"

.field public static CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ltmsdk/common/module/antitheft/AntitheftCommand;",
            ">;"
        }
    .end annotation
.end field

.field public static final EM_ATC_CMD_MIN:S = 0x0s

.field public static final EM_ATC_CMD_QQChangeSIM:S = 0x5s

.field public static final EM_ATC_CMD_QQDeleteAll:S = 0x1s

.field public static final EM_ATC_CMD_QQDeletePart:S = 0x6s

.field public static final EM_ATC_CMD_QQLocate:S = 0x3s

.field public static final EM_ATC_CMD_QQLock:S = 0x2s

.field public static final EM_ATC_CMD_QQRing:S = 0x4s

.field public static final KAntiStealRemoteKey:Ljava/lang/String; = "%#!*^().,ljhd"

.field public static final PRE_FIX_FROM_WEB_SERVER_NUMBER:Ljava/lang/String; = "QSAT#"

.field public static final PRE_FIX_FROM_WEB_SERVER_NUMBER_TEST:Ljava/lang/String; = "TQSAT#"

.field public static final TYPE_DELETE_DATA:I = 0x0

.field public static final TYPE_FIND_PASSWORD:I = 0x3

.field public static final TYPE_GET_LOCATE:I = 0x2

.field public static final TYPE_LOCK_PHONE:I = 0x1

.field public static final TYPE_NO_COMMAND:I = -0x1

.field public static final TYPE_REPORT_SIM_CHANGE:I = 0x6

.field public static final TYPE_WRONG_HELPER_NUMBER:I = 0x5

.field public static final TYPE_WRONG_PASSWORD:I = 0x4


# instance fields
.field public mBindQQNum:Ljava/lang/String;

.field public mIsFromWebServer:Z

.field public mRemotePhoneNum:Ljava/lang/String;

.field public mTaskType:I

.field public mWebServerUlkey:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    new-instance v0, Ltmsdk/common/module/antitheft/AntitheftCommand$1;

    invoke-direct {v0}, Ltmsdk/common/module/antitheft/AntitheftCommand$1;-><init>()V

    sput-object v0, Ltmsdk/common/module/antitheft/AntitheftCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .parameter "remotePhoneNum"
    .parameter "taskType"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Ltmsdk/common/module/antitheft/AntitheftCommand;->mRemotePhoneNum:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Ltmsdk/common/module/antitheft/AntitheftCommand;->mRemotePhoneNum:Ljava/lang/String;

    .line 35
    iput p2, p0, Ltmsdk/common/module/antitheft/AntitheftCommand;->mTaskType:I

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltmsdk/common/module/antitheft/AntitheftCommand;->mIsFromWebServer:Z

    .line 37
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ltmsdk/common/module/antitheft/AntitheftCommand;->mWebServerUlkey:J

    .line 38
    const-string v0, ""

    iput-object v0, p0, Ltmsdk/common/module/antitheft/AntitheftCommand;->mBindQQNum:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 1
    .parameter "remotePhoneNum"
    .parameter "taskType"
    .parameter "webServerUlkey"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Ltmsdk/common/module/antitheft/AntitheftCommand;->mRemotePhoneNum:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Ltmsdk/common/module/antitheft/AntitheftCommand;->mRemotePhoneNum:Ljava/lang/String;

    .line 43
    iput p2, p0, Ltmsdk/common/module/antitheft/AntitheftCommand;->mTaskType:I

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltmsdk/common/module/antitheft/AntitheftCommand;->mIsFromWebServer:Z

    .line 45
    iput-wide p3, p0, Ltmsdk/common/module/antitheft/AntitheftCommand;->mWebServerUlkey:J

    .line 46
    const-string v0, ""

    iput-object v0, p0, Ltmsdk/common/module/antitheft/AntitheftCommand;->mBindQQNum:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public static createFromParcel(Landroid/os/Parcel;)Ltmsdk/common/module/antitheft/AntitheftCommand;
    .locals 7
    .parameter "data"

    .prologue
    .line 78
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, num:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 80
    .local v4, type:I
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 81
    .local v1, key:J
    const/4 v0, 0x0

    .line 82
    .local v0, item:Ltmsdk/common/module/antitheft/AntitheftCommand;
    const-wide/16 v5, -0x1

    cmp-long v5, v1, v5

    if-eqz v5, :cond_0

    .line 83
    new-instance v0, Ltmsdk/common/module/antitheft/AntitheftCommand;

    .end local v0           #item:Ltmsdk/common/module/antitheft/AntitheftCommand;
    invoke-direct {v0, v3, v4, v1, v2}, Ltmsdk/common/module/antitheft/AntitheftCommand;-><init>(Ljava/lang/String;IJ)V

    .line 84
    .restart local v0       #item:Ltmsdk/common/module/antitheft/AntitheftCommand;
    const/4 v5, 0x1

    iput-boolean v5, v0, Ltmsdk/common/module/antitheft/AntitheftCommand;->mIsFromWebServer:Z

    .line 89
    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Ltmsdk/common/module/antitheft/AntitheftCommand;->mBindQQNum:Ljava/lang/String;

    .line 90
    return-object v0

    .line 86
    :cond_0
    new-instance v0, Ltmsdk/common/module/antitheft/AntitheftCommand;

    .end local v0           #item:Ltmsdk/common/module/antitheft/AntitheftCommand;
    invoke-direct {v0, v3, v4}, Ltmsdk/common/module/antitheft/AntitheftCommand;-><init>(Ljava/lang/String;I)V

    .line 87
    .restart local v0       #item:Ltmsdk/common/module/antitheft/AntitheftCommand;
    const/4 v5, 0x0

    iput-boolean v5, v0, Ltmsdk/common/module/antitheft/AntitheftCommand;->mIsFromWebServer:Z

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    .line 51
    if-eqz p1, :cond_0

    instance-of v1, p1, Ltmsdk/common/module/antitheft/AntitheftCommand;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 52
    check-cast v0, Ltmsdk/common/module/antitheft/AntitheftCommand;

    .line 53
    .local v0, args:Ltmsdk/common/module/antitheft/AntitheftCommand;
    iget-wide v1, p0, Ltmsdk/common/module/antitheft/AntitheftCommand;->mWebServerUlkey:J

    iget-wide v3, v0, Ltmsdk/common/module/antitheft/AntitheftCommand;->mWebServerUlkey:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, p0, Ltmsdk/common/module/antitheft/AntitheftCommand;->mRemotePhoneNum:Ljava/lang/String;

    iget-object v2, v0, Ltmsdk/common/module/antitheft/AntitheftCommand;->mRemotePhoneNum:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    const/4 v1, 0x1

    .line 57
    .end local v0           #args:Ltmsdk/common/module/antitheft/AntitheftCommand;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 67
    iget-object v0, p0, Ltmsdk/common/module/antitheft/AntitheftCommand;->mRemotePhoneNum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget v0, p0, Ltmsdk/common/module/antitheft/AntitheftCommand;->mTaskType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget-wide v0, p0, Ltmsdk/common/module/antitheft/AntitheftCommand;->mWebServerUlkey:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 70
    iget-object v0, p0, Ltmsdk/common/module/antitheft/AntitheftCommand;->mBindQQNum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    return-void
.end method
