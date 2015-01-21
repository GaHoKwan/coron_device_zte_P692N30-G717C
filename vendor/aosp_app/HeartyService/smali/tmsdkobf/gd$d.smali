.class public final Ltmsdkobf/gd$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdkobf/gd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;

.field public static final dial:I

.field public static final mF:I

.field public static final mG:I

.field public static final mH:I

.field public static final mI:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, -0x1

    const-string v0, "com.android.internal.telephony.ITelephony$Stub"

    invoke-static {v0}, Ltmsdkobf/fu;->aN(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DESCRIPTOR"

    invoke-static {v0}, Ltmsdkobf/fu;->aO(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    sput-object v0, Ltmsdkobf/gd$d;->DESCRIPTOR:Ljava/lang/String;

    const-string v0, "TRANSACTION_call"

    invoke-static {v0, v1}, Ltmsdkobf/fu;->c(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ltmsdkobf/gd$d;->mF:I

    const-string v0, "TRANSACTION_dial"

    invoke-static {v0, v1}, Ltmsdkobf/fu;->c(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ltmsdkobf/gd$d;->dial:I

    const-string v0, "TRANSACTION_updateServiceLocation"

    invoke-static {v0, v1}, Ltmsdkobf/fu;->c(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ltmsdkobf/gd$d;->mI:I

    const-string v0, "TRANSACTION_getCellLocation"

    invoke-static {v0, v1}, Ltmsdkobf/fu;->c(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ltmsdkobf/gd$d;->mG:I

    const-string v0, "TRANSACTION_getNeighboringCellInfo"

    invoke-static {v0, v1}, Ltmsdkobf/fu;->c(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ltmsdkobf/gd$d;->mH:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Ltmsdkobf/gd$d;->DESCRIPTOR:Ljava/lang/String;

    sput v1, Ltmsdkobf/gd$d;->mH:I

    sput v1, Ltmsdkobf/gd$d;->mG:I

    sput v1, Ltmsdkobf/gd$d;->mI:I

    sput v1, Ltmsdkobf/gd$d;->dial:I

    sput v1, Ltmsdkobf/gd$d;->mF:I

    goto :goto_0
.end method
