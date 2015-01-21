.class public Lcom/zte/engineer/MainCamera;
.super Lcom/zte/engineer/CamerasTest;
.source "MainCamera.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/zte/engineer/CamerasTest;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/engineer/CamerasTest;->mCameraID:I

    .line 9
    invoke-super {p0, p1}, Lcom/zte/engineer/CamerasTest;->onCreate(Landroid/os/Bundle;)V

    .line 10
    return-void
.end method
