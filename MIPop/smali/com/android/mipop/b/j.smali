.class Lcom/android/mipop/b/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic fP:Lcom/android/mipop/b/l;


# direct methods
.method constructor <init>(Lcom/android/mipop/b/l;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mipop/b/j;->fP:Lcom/android/mipop/b/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    sget-boolean v0, Lcom/android/mipop/a/g;->cN:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/mipop/b/l;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "MipopPosX"

    sget v2, Lcom/android/mipop/b/a;->M:I

    sget v3, Lcom/android/mipop/b/a;->V:I

    sub-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    sget-object v0, Lcom/android/mipop/b/l;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "MipopPosY"

    sget v2, Lcom/android/mipop/a/g;->cE:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    sget-object v0, Lcom/android/mipop/b/l;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "MipopPosX"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
