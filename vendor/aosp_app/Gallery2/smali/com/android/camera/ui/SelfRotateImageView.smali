.class public Lcom/android/camera/ui/SelfRotateImageView;
.super Lcom/android/camera/ui/RotateImageView;
.source "SelfRotateImageView.java"

# interfaces
.implements Lcom/android/camera/Camera$OnOrientationListener;


# instance fields
.field private mOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/SelfRotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-direct {p0, p1}, Lcom/android/camera/ui/SelfRotateImageView;->registerOrientationListener(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    invoke-direct {p0, p1}, Lcom/android/camera/ui/SelfRotateImageView;->registerOrientationListener(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method private registerOrientationListener(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 26
    instance-of v1, p1, Lcom/android/camera/Camera;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 27
    check-cast v0, Lcom/android/camera/Camera;

    .line 28
    .local v0, camera:Lcom/android/camera/Camera;
    invoke-virtual {v0, p0}, Lcom/android/camera/Camera;->addOnOrientationListener(Lcom/android/camera/Camera$OnOrientationListener;)Z

    .line 30
    .end local v0           #camera:Lcom/android/camera/Camera;
    :cond_0
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 34
    iget v0, p0, Lcom/android/camera/ui/SelfRotateImageView;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 35
    iput p1, p0, Lcom/android/camera/ui/SelfRotateImageView;->mOrientation:I

    .line 36
    iget v0, p0, Lcom/android/camera/ui/SelfRotateImageView;->mOrientation:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/camera/Util;->setOrientation(Landroid/view/View;IZ)V

    .line 38
    :cond_0
    return-void
.end method
