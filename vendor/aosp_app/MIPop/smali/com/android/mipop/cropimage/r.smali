.class Lcom/android/mipop/cropimage/r;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic dH:Lcom/android/mipop/cropimage/f;


# direct methods
.method constructor <init>(Lcom/android/mipop/cropimage/f;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mipop/cropimage/r;->dH:Lcom/android/mipop/cropimage/f;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "Input"

    const-string v1, "DeadOjbectException"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
