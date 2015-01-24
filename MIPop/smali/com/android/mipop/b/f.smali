.class Lcom/android/mipop/b/f;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic cB:Lcom/android/mipop/b/i;


# direct methods
.method constructor <init>(Lcom/android/mipop/b/i;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mipop/b/f;->cB:Lcom/android/mipop/b/i;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    const/16 v1, 0x52

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    const-string v0, "shenzhan"

    const-string v1, "MENU implement"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "HouJiong"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
