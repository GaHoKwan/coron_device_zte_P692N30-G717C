.class public final enum Lcom/android/gallery3d/app/CommonControllerOverlay$State;
.super Ljava/lang/Enum;
.source "CommonControllerOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/CommonControllerOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/gallery3d/app/CommonControllerOverlay$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/gallery3d/app/CommonControllerOverlay$State;

.field public static final enum BUFFERING:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

.field public static final enum ENDED:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

.field public static final enum ERROR:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

.field public static final enum LOADING:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

.field public static final enum PAUSED:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

.field public static final enum PLAYING:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

.field public static final enum RETRY_CONNECTING:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

.field public static final enum RETRY_CONNECTING_ERROR:Lcom/android/gallery3d/app/CommonControllerOverlay$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    new-instance v0, Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    const-string v1, "PLAYING"

    invoke-direct {v0, v1, v3}, Lcom/android/gallery3d/app/CommonControllerOverlay$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    .line 48
    new-instance v0, Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v4}, Lcom/android/gallery3d/app/CommonControllerOverlay$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->PAUSED:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    .line 49
    new-instance v0, Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    const-string v1, "ENDED"

    invoke-direct {v0, v1, v5}, Lcom/android/gallery3d/app/CommonControllerOverlay$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->ENDED:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    .line 50
    new-instance v0, Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v6}, Lcom/android/gallery3d/app/CommonControllerOverlay$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->ERROR:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    .line 51
    new-instance v0, Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v7}, Lcom/android/gallery3d/app/CommonControllerOverlay$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->LOADING:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    .line 52
    new-instance v0, Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    const-string v1, "BUFFERING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/app/CommonControllerOverlay$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->BUFFERING:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    .line 53
    new-instance v0, Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    const-string v1, "RETRY_CONNECTING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/app/CommonControllerOverlay$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->RETRY_CONNECTING:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    .line 54
    new-instance v0, Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    const-string v1, "RETRY_CONNECTING_ERROR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/app/CommonControllerOverlay$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->RETRY_CONNECTING_ERROR:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    .line 46
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->PAUSED:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->ENDED:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->ERROR:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->LOADING:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->BUFFERING:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->RETRY_CONNECTING:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->RETRY_CONNECTING_ERROR:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->$VALUES:[Lcom/android/gallery3d/app/CommonControllerOverlay$State;

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
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/gallery3d/app/CommonControllerOverlay$State;
    .locals 1
    .parameter "name"

    .prologue
    .line 46
    const-class v0, Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    return-object v0
.end method

.method public static values()[Lcom/android/gallery3d/app/CommonControllerOverlay$State;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->$VALUES:[Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    return-object v0
.end method
