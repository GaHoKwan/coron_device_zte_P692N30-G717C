.class public final enum Lcom/android/mipop/cropimage/ImageManager$DataLocation;
.super Ljava/lang/Enum;


# static fields
.field public static final enum dt:Lcom/android/mipop/cropimage/ImageManager$DataLocation;

.field public static final enum du:Lcom/android/mipop/cropimage/ImageManager$DataLocation;

.field public static final enum dv:Lcom/android/mipop/cropimage/ImageManager$DataLocation;

.field public static final enum dw:Lcom/android/mipop/cropimage/ImageManager$DataLocation;

.field private static final synthetic dx:[Lcom/android/mipop/cropimage/ImageManager$DataLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/mipop/cropimage/ImageManager$DataLocation;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/android/mipop/cropimage/ImageManager$DataLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mipop/cropimage/ImageManager$DataLocation;->dt:Lcom/android/mipop/cropimage/ImageManager$DataLocation;

    new-instance v0, Lcom/android/mipop/cropimage/ImageManager$DataLocation;

    const-string v1, "INTERNAL"

    invoke-direct {v0, v1, v3}, Lcom/android/mipop/cropimage/ImageManager$DataLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mipop/cropimage/ImageManager$DataLocation;->du:Lcom/android/mipop/cropimage/ImageManager$DataLocation;

    new-instance v0, Lcom/android/mipop/cropimage/ImageManager$DataLocation;

    const-string v1, "EXTERNAL"

    invoke-direct {v0, v1, v4}, Lcom/android/mipop/cropimage/ImageManager$DataLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mipop/cropimage/ImageManager$DataLocation;->dv:Lcom/android/mipop/cropimage/ImageManager$DataLocation;

    new-instance v0, Lcom/android/mipop/cropimage/ImageManager$DataLocation;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v5}, Lcom/android/mipop/cropimage/ImageManager$DataLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mipop/cropimage/ImageManager$DataLocation;->dw:Lcom/android/mipop/cropimage/ImageManager$DataLocation;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/mipop/cropimage/ImageManager$DataLocation;

    sget-object v1, Lcom/android/mipop/cropimage/ImageManager$DataLocation;->dt:Lcom/android/mipop/cropimage/ImageManager$DataLocation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/mipop/cropimage/ImageManager$DataLocation;->du:Lcom/android/mipop/cropimage/ImageManager$DataLocation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/mipop/cropimage/ImageManager$DataLocation;->dv:Lcom/android/mipop/cropimage/ImageManager$DataLocation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/mipop/cropimage/ImageManager$DataLocation;->dw:Lcom/android/mipop/cropimage/ImageManager$DataLocation;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/mipop/cropimage/ImageManager$DataLocation;->dx:[Lcom/android/mipop/cropimage/ImageManager$DataLocation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/mipop/cropimage/ImageManager$DataLocation;
    .locals 1

    const-class v0, Lcom/android/mipop/cropimage/ImageManager$DataLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/cropimage/ImageManager$DataLocation;

    return-object v0
.end method

.method public static values()[Lcom/android/mipop/cropimage/ImageManager$DataLocation;
    .locals 1

    sget-object v0, Lcom/android/mipop/cropimage/ImageManager$DataLocation;->dx:[Lcom/android/mipop/cropimage/ImageManager$DataLocation;

    invoke-virtual {v0}, [Lcom/android/mipop/cropimage/ImageManager$DataLocation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/mipop/cropimage/ImageManager$DataLocation;

    return-object v0
.end method