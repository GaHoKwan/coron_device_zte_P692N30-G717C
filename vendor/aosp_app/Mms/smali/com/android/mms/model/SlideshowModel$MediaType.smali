.class public final enum Lcom/android/mms/model/SlideshowModel$MediaType;
.super Ljava/lang/Enum;
.source "SlideshowModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/model/SlideshowModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/mms/model/SlideshowModel$MediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/mms/model/SlideshowModel$MediaType;

.field public static final enum AUDIO:Lcom/android/mms/model/SlideshowModel$MediaType;

.field public static final enum IMAGE:Lcom/android/mms/model/SlideshowModel$MediaType;

.field public static final enum VIDEO:Lcom/android/mms/model/SlideshowModel$MediaType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1278
    new-instance v0, Lcom/android/mms/model/SlideshowModel$MediaType;

    const-string v1, "IMAGE"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/model/SlideshowModel$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/model/SlideshowModel$MediaType;->IMAGE:Lcom/android/mms/model/SlideshowModel$MediaType;

    new-instance v0, Lcom/android/mms/model/SlideshowModel$MediaType;

    const-string v1, "AUDIO"

    invoke-direct {v0, v1, v3}, Lcom/android/mms/model/SlideshowModel$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/model/SlideshowModel$MediaType;->AUDIO:Lcom/android/mms/model/SlideshowModel$MediaType;

    new-instance v0, Lcom/android/mms/model/SlideshowModel$MediaType;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v4}, Lcom/android/mms/model/SlideshowModel$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/model/SlideshowModel$MediaType;->VIDEO:Lcom/android/mms/model/SlideshowModel$MediaType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/mms/model/SlideshowModel$MediaType;

    sget-object v1, Lcom/android/mms/model/SlideshowModel$MediaType;->IMAGE:Lcom/android/mms/model/SlideshowModel$MediaType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/mms/model/SlideshowModel$MediaType;->AUDIO:Lcom/android/mms/model/SlideshowModel$MediaType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/mms/model/SlideshowModel$MediaType;->VIDEO:Lcom/android/mms/model/SlideshowModel$MediaType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/model/SlideshowModel$MediaType;->$VALUES:[Lcom/android/mms/model/SlideshowModel$MediaType;

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
    .line 1278
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/mms/model/SlideshowModel$MediaType;
    .locals 1
    .parameter "name"

    .prologue
    .line 1278
    const-class v0, Lcom/android/mms/model/SlideshowModel$MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideshowModel$MediaType;

    return-object v0
.end method

.method public static values()[Lcom/android/mms/model/SlideshowModel$MediaType;
    .locals 1

    .prologue
    .line 1278
    sget-object v0, Lcom/android/mms/model/SlideshowModel$MediaType;->$VALUES:[Lcom/android/mms/model/SlideshowModel$MediaType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/mms/model/SlideshowModel$MediaType;

    return-object v0
.end method
