.class final enum Lcom/android/utk/UtkAppService$InitiatedByUserAction;
.super Ljava/lang/Enum;
.source "UtkAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/utk/UtkAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "InitiatedByUserAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/utk/UtkAppService$InitiatedByUserAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/utk/UtkAppService$InitiatedByUserAction;

.field public static final enum unknown:Lcom/android/utk/UtkAppService$InitiatedByUserAction;

.field public static final enum yes:Lcom/android/utk/UtkAppService$InitiatedByUserAction;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 105
    new-instance v0, Lcom/android/utk/UtkAppService$InitiatedByUserAction;

    const-string v1, "yes"

    invoke-direct {v0, v1, v2}, Lcom/android/utk/UtkAppService$InitiatedByUserAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/utk/UtkAppService$InitiatedByUserAction;->yes:Lcom/android/utk/UtkAppService$InitiatedByUserAction;

    .line 106
    new-instance v0, Lcom/android/utk/UtkAppService$InitiatedByUserAction;

    const-string v1, "unknown"

    invoke-direct {v0, v1, v3}, Lcom/android/utk/UtkAppService$InitiatedByUserAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/utk/UtkAppService$InitiatedByUserAction;->unknown:Lcom/android/utk/UtkAppService$InitiatedByUserAction;

    .line 104
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/utk/UtkAppService$InitiatedByUserAction;

    sget-object v1, Lcom/android/utk/UtkAppService$InitiatedByUserAction;->yes:Lcom/android/utk/UtkAppService$InitiatedByUserAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/utk/UtkAppService$InitiatedByUserAction;->unknown:Lcom/android/utk/UtkAppService$InitiatedByUserAction;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/utk/UtkAppService$InitiatedByUserAction;->$VALUES:[Lcom/android/utk/UtkAppService$InitiatedByUserAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/utk/UtkAppService$InitiatedByUserAction;
    .locals 1
    .parameter "name"

    .prologue
    .line 104
    const-class v0, Lcom/android/utk/UtkAppService$InitiatedByUserAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/utk/UtkAppService$InitiatedByUserAction;

    return-object v0
.end method

.method public static values()[Lcom/android/utk/UtkAppService$InitiatedByUserAction;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/android/utk/UtkAppService$InitiatedByUserAction;->$VALUES:[Lcom/android/utk/UtkAppService$InitiatedByUserAction;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/utk/UtkAppService$InitiatedByUserAction;

    return-object v0
.end method
