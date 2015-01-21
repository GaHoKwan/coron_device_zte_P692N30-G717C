.class Lcom/android/mipop/api/a;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic C:Lcom/android/mipop/api/MyApplication;


# direct methods
.method constructor <init>(Lcom/android/mipop/api/MyApplication;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mipop/api/a;->C:Lcom/android/mipop/api/MyApplication;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/mipop/api/a;->C:Lcom/android/mipop/api/MyApplication;

    const-string v1, "mMipopObserver onChange=enter"

    invoke-static {v0, v1}, Lcom/android/mipop/api/MyApplication;->a(Lcom/android/mipop/api/MyApplication;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mipop/api/a;->C:Lcom/android/mipop/api/MyApplication;

    invoke-static {v0}, Lcom/android/mipop/api/MyApplication;->a(Lcom/android/mipop/api/MyApplication;)V

    iget-object v0, p0, Lcom/android/mipop/api/a;->C:Lcom/android/mipop/api/MyApplication;

    invoke-static {v0}, Lcom/android/mipop/api/MyApplication;->b(Lcom/android/mipop/api/MyApplication;)V

    return-void
.end method
