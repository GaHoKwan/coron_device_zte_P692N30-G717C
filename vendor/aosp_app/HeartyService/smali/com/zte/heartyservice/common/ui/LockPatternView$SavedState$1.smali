.class final Lcom/zte/heartyservice/common/ui/LockPatternView$SavedState$1;
.super Ljava/lang/Object;
.source "LockPatternView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/common/ui/LockPatternView$SavedState;
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
        "Lcom/zte/heartyservice/common/ui/LockPatternView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/zte/heartyservice/common/ui/LockPatternView$SavedState;
    .locals 2
    .parameter "in"

    .prologue
    .line 1109
    new-instance v0, Lcom/zte/heartyservice/common/ui/LockPatternView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/zte/heartyservice/common/ui/LockPatternView$SavedState;-><init>(Landroid/os/Parcel;Lcom/zte/heartyservice/common/ui/LockPatternView$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1107
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/common/ui/LockPatternView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/zte/heartyservice/common/ui/LockPatternView$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/zte/heartyservice/common/ui/LockPatternView$SavedState;
    .locals 1
    .parameter "size"

    .prologue
    .line 1113
    new-array v0, p1, [Lcom/zte/heartyservice/common/ui/LockPatternView$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1107
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/common/ui/LockPatternView$SavedState$1;->newArray(I)[Lcom/zte/heartyservice/common/ui/LockPatternView$SavedState;

    move-result-object v0

    return-object v0
.end method
