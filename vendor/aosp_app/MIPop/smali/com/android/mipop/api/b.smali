.class Lcom/android/mipop/api/b;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic C:Lcom/android/mipop/api/MyApplication;


# direct methods
.method constructor <init>(Lcom/android/mipop/api/MyApplication;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mipop/api/b;->C:Lcom/android/mipop/api/MyApplication;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/mipop/api/b;->C:Lcom/android/mipop/api/MyApplication;

    invoke-virtual {v2}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "MIPOP"

    iget-object v4, p0, Lcom/android/mipop/api/b;->C:Lcom/android/mipop/api/MyApplication;

    invoke-virtual {v4}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f06

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/mipop/api/b;->C:Lcom/android/mipop/api/MyApplication;

    iget-object v4, p0, Lcom/android/mipop/api/b;->C:Lcom/android/mipop/api/MyApplication;

    invoke-virtual {v4}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "IsFullScreen"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v3, v0}, Lcom/android/mipop/api/MyApplication;->a(Lcom/android/mipop/api/MyApplication;Z)V

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/android/mipop/api/b;->C:Lcom/android/mipop/api/MyApplication;

    invoke-static {v0}, Lcom/android/mipop/api/MyApplication;->c(Lcom/android/mipop/api/MyApplication;)V

    :cond_1
    return-void
.end method
