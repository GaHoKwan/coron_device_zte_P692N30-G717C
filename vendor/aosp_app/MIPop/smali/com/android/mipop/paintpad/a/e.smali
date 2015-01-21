.class Lcom/android/mipop/paintpad/a/e;
.super Ljava/lang/Object;


# instance fields
.field final synthetic fL:Lcom/android/mipop/paintpad/a/j;

.field x:F

.field y:F


# direct methods
.method public constructor <init>(Lcom/android/mipop/paintpad/a/j;FF)V
    .locals 0

    iput-object p1, p0, Lcom/android/mipop/paintpad/a/e;->fL:Lcom/android/mipop/paintpad/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/mipop/paintpad/a/e;->x:F

    iput p3, p0, Lcom/android/mipop/paintpad/a/e;->y:F

    return-void
.end method


# virtual methods
.method public getX()F
    .locals 1

    iget v0, p0, Lcom/android/mipop/paintpad/a/e;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    iget v0, p0, Lcom/android/mipop/paintpad/a/e;->y:F

    return v0
.end method
