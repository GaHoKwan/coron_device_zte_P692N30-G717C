.class public final Ltmsdkobf/gd$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdkobf/gd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;

.field public static final ms:I

.field public static final mt:I

.field public static final mu:I

.field public static final mv:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, -0x1

    const-string v0, "android.app.IActivityManager"

    invoke-static {v0}, Ltmsdkobf/fu;->aN(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GET_CONTENT_PROVIDER_TRANSACTION"

    invoke-static {v0, v1}, Ltmsdkobf/fu;->c(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ltmsdkobf/gd$a;->ms:I

    const-string v0, "START_ACTIVITY_TRANSACTION"

    invoke-static {v0, v1}, Ltmsdkobf/fu;->c(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ltmsdkobf/gd$a;->mt:I

    const-string v0, "START_SERVICE_TRANSACTION"

    invoke-static {v0, v1}, Ltmsdkobf/fu;->c(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ltmsdkobf/gd$a;->mu:I

    const-string v0, "FORCE_STOP_PACKAGE_TRANSACTION"

    invoke-static {v0, v1}, Ltmsdkobf/fu;->c(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ltmsdkobf/gd$a;->mv:I

    const-string v0, "android.app.IActivityManager"

    sput-object v0, Ltmsdkobf/gd$a;->DESCRIPTOR:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Ltmsdkobf/gd$a;->DESCRIPTOR:Ljava/lang/String;

    sput v1, Ltmsdkobf/gd$a;->mv:I

    sput v1, Ltmsdkobf/gd$a;->mu:I

    sput v1, Ltmsdkobf/gd$a;->mt:I

    sput v1, Ltmsdkobf/gd$a;->ms:I

    goto :goto_0
.end method
