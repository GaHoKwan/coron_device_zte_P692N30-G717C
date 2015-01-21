.class public Ltmsdk/common/module/aresengine/QScanAdBehaviorInfo;
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
            "Ltmsdk/common/module/aresengine/QScanAdBehaviorInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public behavior:J

.field public damage:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public level:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Ltmsdk/common/module/aresengine/QScanAdBehaviorInfo$1;

    invoke-direct {v0}, Ltmsdk/common/module/aresengine/QScanAdBehaviorInfo$1;-><init>()V

    sput-object v0, Ltmsdk/common/module/aresengine/QScanAdBehaviorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 54
    iget-wide v0, p0, Ltmsdk/common/module/aresengine/QScanAdBehaviorInfo;->behavior:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 55
    iget-object v0, p0, Ltmsdk/common/module/aresengine/QScanAdBehaviorInfo;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Ltmsdk/common/module/aresengine/QScanAdBehaviorInfo;->damage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Ltmsdk/common/module/aresengine/QScanAdBehaviorInfo;->level:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    return-void
.end method
