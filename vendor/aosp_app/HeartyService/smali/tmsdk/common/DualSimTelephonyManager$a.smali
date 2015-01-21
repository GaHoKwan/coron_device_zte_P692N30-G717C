.class Ltmsdk/common/DualSimTelephonyManager$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/common/DualSimTelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public wZ:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/telephony/PhoneStateListener;",
            ">;"
        }
    .end annotation
.end field

.field public xa:I

.field public xb:Z

.field public xc:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/telephony/PhoneStateListener;IZLandroid/telephony/TelephonyManager;)V
    .locals 1
    .parameter "listener"
    .parameter "events"
    .parameter "isSecondSim"
    .parameter "telephonyManager"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ltmsdk/common/DualSimTelephonyManager$a;->wZ:Ljava/lang/ref/WeakReference;

    .line 35
    iput p2, p0, Ltmsdk/common/DualSimTelephonyManager$a;->xa:I

    .line 36
    iput-boolean p3, p0, Ltmsdk/common/DualSimTelephonyManager$a;->xb:Z

    .line 37
    iput-object p4, p0, Ltmsdk/common/DualSimTelephonyManager$a;->xc:Landroid/telephony/TelephonyManager;

    .line 38
    return-void
.end method
