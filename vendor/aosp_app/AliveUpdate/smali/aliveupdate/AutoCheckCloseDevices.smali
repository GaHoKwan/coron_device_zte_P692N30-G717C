.class public Laliveupdate/AutoCheckCloseDevices;
.super Ljava/lang/Object;
.source "AutoCheckCloseDevices.java"


# static fields
.field public static AUTO_CHECK_CLOSE_MODELS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 8
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Uf8e2f6"

    aput-object v2, v0, v1

    sput-object v0, Laliveupdate/AutoCheckCloseDevices;->AUTO_CHECK_CLOSE_MODELS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
