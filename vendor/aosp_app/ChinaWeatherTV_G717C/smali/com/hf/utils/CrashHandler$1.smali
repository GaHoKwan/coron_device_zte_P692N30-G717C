.class Lcom/hf/utils/CrashHandler$1;
.super Ljava/lang/Thread;
.source "CrashHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/utils/CrashHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/utils/CrashHandler;


# direct methods
.method constructor <init>(Lcom/hf/utils/CrashHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/utils/CrashHandler$1;->this$0:Lcom/hf/utils/CrashHandler;

    .line 88
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 91
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 92
    iget-object v0, p0, Lcom/hf/utils/CrashHandler$1;->this$0:Lcom/hf/utils/CrashHandler;

    #getter for: Lcom/hf/utils/CrashHandler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/hf/utils/CrashHandler;->access$0(Lcom/hf/utils/CrashHandler;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08000e

    invoke-static {v0, v1}, Lcom/hf/utils/ToastUtil;->getToast(Landroid/content/Context;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 93
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 94
    return-void
.end method
