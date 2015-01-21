.class public final Ltmsdkobf/gd$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdkobf/gd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;

.field public static final mA:I

.field public static final mB:I

.field public static final mC:I

.field public static final mD:I

.field public static final mw:I

.field public static final mx:I

.field public static final my:I

.field public static final mz:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, -0x1

    const-string v0, "android.location.ILocationManager$Stub"

    invoke-static {v0}, Ltmsdkobf/fu;->aN(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DESCRIPTOR"

    invoke-static {v0}, Ltmsdkobf/fu;->aO(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    sput-object v0, Ltmsdkobf/gd$b;->DESCRIPTOR:Ljava/lang/String;

    const-string v0, "TRANSACTION_getAllProviders"

    invoke-static {v0, v1}, Ltmsdkobf/fu;->c(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ltmsdkobf/gd$b;->mw:I

    const-string v0, "TRANSACTION_getProviders"

    invoke-static {v0, v1}, Ltmsdkobf/fu;->c(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ltmsdkobf/gd$b;->mx:I

    const-string v0, "TRANSACTION_getBestProvider"

    invoke-static {v0, v1}, Ltmsdkobf/fu;->c(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ltmsdkobf/gd$b;->my:I

    const-string v0, "TRANSACTION_requestLocationUpdates"

    invoke-static {v0, v1}, Ltmsdkobf/fu;->c(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ltmsdkobf/gd$b;->mz:I

    const-string v0, "TRANSACTION_requestLocationUpdatesPI"

    invoke-static {v0, v1}, Ltmsdkobf/fu;->c(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ltmsdkobf/gd$b;->mA:I

    const-string v0, "TRANSACTION_getLastKnownLocation"

    invoke-static {v0, v1}, Ltmsdkobf/fu;->c(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ltmsdkobf/gd$b;->mB:I

    const-string v0, "TRANSACTION_isProviderEnabled"

    invoke-static {v0, v1}, Ltmsdkobf/fu;->c(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ltmsdkobf/gd$b;->mC:I

    const-string v0, "TRANSACTION_addGpsStatusListener"

    invoke-static {v0, v1}, Ltmsdkobf/fu;->c(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ltmsdkobf/gd$b;->mD:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Ltmsdkobf/gd$b;->DESCRIPTOR:Ljava/lang/String;

    sput v1, Ltmsdkobf/gd$b;->mD:I

    sput v1, Ltmsdkobf/gd$b;->mC:I

    sput v1, Ltmsdkobf/gd$b;->mB:I

    sput v1, Ltmsdkobf/gd$b;->mA:I

    sput v1, Ltmsdkobf/gd$b;->mz:I

    sput v1, Ltmsdkobf/gd$b;->my:I

    sput v1, Ltmsdkobf/gd$b;->mx:I

    sput v1, Ltmsdkobf/gd$b;->mw:I

    goto :goto_0
.end method
