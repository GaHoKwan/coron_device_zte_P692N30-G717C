.class public Lcom/android/server/wm/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/wm/ISmartShowAnimation;


# static fields
.field public static final ANIMATION_TYPE_EXIT:I = 0x3

.field public static final ANIMATION_TYPE_NONE:I = 0x1

.field public static final ANIMATION_TYPE_ROTATE:I = 0x4

.field public static final ANIMATION_TYPE_SWITCH:I = 0x2

.field public static final SWITCH_TYPE_HIDE:I = 0x3

.field public static final SWITCH_TYPE_RELAUNCH:I = 0x2

.field public static final SWITCH_TYPE_RESIZE:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Landroid/view/SurfaceSession;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIZ)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/IApplicationToken;IZ)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method

.method public getTransformation(Ljava/lang/Object;)Landroid/view/animation/Transformation;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isAnimating()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public rotationChanged(IZ)V
    .locals 0

    return-void
.end method

.method public stepAnimationLocked(J)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public updateAfterLayoutLocked()V
    .locals 0

    return-void
.end method

.method public updateSurfacesInTransaction()V
    .locals 0

    return-void
.end method
