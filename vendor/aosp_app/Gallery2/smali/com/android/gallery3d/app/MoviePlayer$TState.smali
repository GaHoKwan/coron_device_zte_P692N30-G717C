.class final enum Lcom/android/gallery3d/app/MoviePlayer$TState;
.super Ljava/lang/Enum;
.source "MoviePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/MoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/gallery3d/app/MoviePlayer$TState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/gallery3d/app/MoviePlayer$TState;

.field public static final enum COMPELTED:Lcom/android/gallery3d/app/MoviePlayer$TState;

.field public static final enum PAUSED:Lcom/android/gallery3d/app/MoviePlayer$TState;

.field public static final enum PLAYING:Lcom/android/gallery3d/app/MoviePlayer$TState;

.field public static final enum RETRY_ERROR:Lcom/android/gallery3d/app/MoviePlayer$TState;

.field public static final enum STOPED:Lcom/android/gallery3d/app/MoviePlayer$TState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1313
    new-instance v0, Lcom/android/gallery3d/app/MoviePlayer$TState;

    const-string v1, "PLAYING"

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/app/MoviePlayer$TState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/app/MoviePlayer$TState;->PLAYING:Lcom/android/gallery3d/app/MoviePlayer$TState;

    .line 1314
    new-instance v0, Lcom/android/gallery3d/app/MoviePlayer$TState;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v3}, Lcom/android/gallery3d/app/MoviePlayer$TState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/app/MoviePlayer$TState;->PAUSED:Lcom/android/gallery3d/app/MoviePlayer$TState;

    .line 1315
    new-instance v0, Lcom/android/gallery3d/app/MoviePlayer$TState;

    const-string v1, "STOPED"

    invoke-direct {v0, v1, v4}, Lcom/android/gallery3d/app/MoviePlayer$TState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/app/MoviePlayer$TState;->STOPED:Lcom/android/gallery3d/app/MoviePlayer$TState;

    .line 1316
    new-instance v0, Lcom/android/gallery3d/app/MoviePlayer$TState;

    const-string v1, "COMPELTED"

    invoke-direct {v0, v1, v5}, Lcom/android/gallery3d/app/MoviePlayer$TState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/app/MoviePlayer$TState;->COMPELTED:Lcom/android/gallery3d/app/MoviePlayer$TState;

    .line 1317
    new-instance v0, Lcom/android/gallery3d/app/MoviePlayer$TState;

    const-string v1, "RETRY_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/android/gallery3d/app/MoviePlayer$TState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/app/MoviePlayer$TState;->RETRY_ERROR:Lcom/android/gallery3d/app/MoviePlayer$TState;

    .line 1312
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/gallery3d/app/MoviePlayer$TState;

    sget-object v1, Lcom/android/gallery3d/app/MoviePlayer$TState;->PLAYING:Lcom/android/gallery3d/app/MoviePlayer$TState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/gallery3d/app/MoviePlayer$TState;->PAUSED:Lcom/android/gallery3d/app/MoviePlayer$TState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/gallery3d/app/MoviePlayer$TState;->STOPED:Lcom/android/gallery3d/app/MoviePlayer$TState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/gallery3d/app/MoviePlayer$TState;->COMPELTED:Lcom/android/gallery3d/app/MoviePlayer$TState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/gallery3d/app/MoviePlayer$TState;->RETRY_ERROR:Lcom/android/gallery3d/app/MoviePlayer$TState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/gallery3d/app/MoviePlayer$TState;->$VALUES:[Lcom/android/gallery3d/app/MoviePlayer$TState;

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
    .line 1312
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/gallery3d/app/MoviePlayer$TState;
    .locals 1
    .parameter "name"

    .prologue
    .line 1312
    const-class v0, Lcom/android/gallery3d/app/MoviePlayer$TState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/MoviePlayer$TState;

    return-object v0
.end method

.method public static values()[Lcom/android/gallery3d/app/MoviePlayer$TState;
    .locals 1

    .prologue
    .line 1312
    sget-object v0, Lcom/android/gallery3d/app/MoviePlayer$TState;->$VALUES:[Lcom/android/gallery3d/app/MoviePlayer$TState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/gallery3d/app/MoviePlayer$TState;

    return-object v0
.end method
