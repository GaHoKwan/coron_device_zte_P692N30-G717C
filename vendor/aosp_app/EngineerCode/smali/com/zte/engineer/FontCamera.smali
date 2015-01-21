.class public Lcom/zte/engineer/FontCamera;
.super Lcom/zte/engineer/CamerasTest;
.source "FontCamera.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/zte/engineer/CamerasTest;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 10
    const/4 v0, 0x1

    iput v0, p0, Lcom/zte/engineer/CamerasTest;->mCameraID:I

    .line 11
    invoke-super {p0, p1}, Lcom/zte/engineer/CamerasTest;->onCreate(Landroid/os/Bundle;)V

    .line 12
    return-void
.end method
