.class public final Ltmsdkobf/gd$f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdkobf/gd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;

.field public static final mN:I

.field public static final mO:I

.field public static final mP:I

.field public static final mQ:I

.field public static final sendText:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, -0x1

    const-string v0, "com.android.internal.telephony.ISms$Stub"

    invoke-static {v0}, Ltmsdkobf/fu;->aN(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DESCRIPTOR"

    invoke-static {v0}, Ltmsdkobf/fu;->aO(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    sput-object v0, Ltmsdkobf/gd$f;->DESCRIPTOR:Ljava/lang/String;

    const-string v0, "TRANSACTION_sendData"

    invoke-static {v0, v1}, Ltmsdkobf/fu;->c(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ltmsdkobf/gd$f;->mN:I

    const-string v0, "TRANSACTION_sendText"

    invoke-static {v0, v1}, Ltmsdkobf/fu;->c(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ltmsdkobf/gd$f;->sendText:I

    const-string v0, "TRANSACTION_sendMultipartText"

    invoke-static {v0, v1}, Ltmsdkobf/fu;->c(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ltmsdkobf/gd$f;->mO:I

    const-string v0, "TRANSACTION_sendTextwithOptions"

    invoke-static {v0, v1}, Ltmsdkobf/fu;->c(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ltmsdkobf/gd$f;->mP:I

    const-string v0, "TRANSACTION_sendTextForMobileTracker"

    invoke-static {v0, v1}, Ltmsdkobf/fu;->c(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ltmsdkobf/gd$f;->mQ:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Ltmsdkobf/gd$f;->DESCRIPTOR:Ljava/lang/String;

    sput v1, Ltmsdkobf/gd$f;->mQ:I

    sput v1, Ltmsdkobf/gd$f;->mP:I

    sput v1, Ltmsdkobf/gd$f;->mO:I

    sput v1, Ltmsdkobf/gd$f;->sendText:I

    sput v1, Ltmsdkobf/gd$f;->mN:I

    goto :goto_0
.end method
