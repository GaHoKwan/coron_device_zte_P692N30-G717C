.class final Lcom/android/mipop/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/mipop/a/g;->access$002(Z)Z

    invoke-static {v0}, Lcom/android/mipop/a/g;->access$102(Z)Z

    sget-boolean v0, Lcom/android/mipop/a/g;->cG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/mipop/a/g;->access$002(Z)Z

    :cond_0
    return-void
.end method
