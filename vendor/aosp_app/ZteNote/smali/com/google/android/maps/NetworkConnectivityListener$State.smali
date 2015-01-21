.class public final enum Lcom/google/android/maps/NetworkConnectivityListener$State;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/maps/NetworkConnectivityListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/maps/NetworkConnectivityListener$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CONNECTED:Lcom/google/android/maps/NetworkConnectivityListener$State;

.field public static final enum NOT_CONNECTED:Lcom/google/android/maps/NetworkConnectivityListener$State;

.field public static final enum UNKNOWN:Lcom/google/android/maps/NetworkConnectivityListener$State;


# direct methods
.method public static valueOf(Ljava/lang/String;)Lcom/google/android/maps/NetworkConnectivityListener$State;
    .locals 2
    .parameter "this"

    .prologue
    .line 36
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static values()[Lcom/google/android/maps/NetworkConnectivityListener$State;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
