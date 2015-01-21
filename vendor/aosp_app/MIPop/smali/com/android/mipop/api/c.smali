.class Lcom/android/mipop/api/c;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic C:Lcom/android/mipop/api/MyApplication;


# direct methods
.method constructor <init>(Lcom/android/mipop/api/MyApplication;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mipop/api/c;->C:Lcom/android/mipop/api/MyApplication;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/mipop/api/c;->C:Lcom/android/mipop/api/MyApplication;

    const-string v1, "wxl homefirst change"

    invoke-static {v0, v1}, Lcom/android/mipop/api/MyApplication;->a(Lcom/android/mipop/api/MyApplication;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mipop/api/c;->C:Lcom/android/mipop/api/MyApplication;

    invoke-static {v0}, Lcom/android/mipop/api/MyApplication;->d(Lcom/android/mipop/api/MyApplication;)V

    iget-object v0, p0, Lcom/android/mipop/api/c;->C:Lcom/android/mipop/api/MyApplication;

    invoke-virtual {v0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "MIPOP"

    iget-object v2, p0, Lcom/android/mipop/api/c;->C:Lcom/android/mipop/api/MyApplication;

    invoke-virtual {v2}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f06

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mipop/api/c;->C:Lcom/android/mipop/api/MyApplication;

    invoke-virtual {v0}, Lcom/android/mipop/api/MyApplication;->au()V

    :cond_0
    return-void
.end method
