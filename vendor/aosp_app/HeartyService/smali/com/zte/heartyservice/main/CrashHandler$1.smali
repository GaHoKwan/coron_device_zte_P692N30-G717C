.class Lcom/zte/heartyservice/main/CrashHandler$1;
.super Ljava/lang/Thread;
.source "CrashHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/main/CrashHandler;->handleException(Ljava/lang/Throwable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/main/CrashHandler;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/main/CrashHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/zte/heartyservice/main/CrashHandler$1;->this$0:Lcom/zte/heartyservice/main/CrashHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 126
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 127
    iget-object v0, p0, Lcom/zte/heartyservice/main/CrashHandler$1;->this$0:Lcom/zte/heartyservice/main/CrashHandler;

    #getter for: Lcom/zte/heartyservice/main/CrashHandler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/zte/heartyservice/main/CrashHandler;->access$000(Lcom/zte/heartyservice/main/CrashHandler;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0675

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 130
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 131
    return-void
.end method
