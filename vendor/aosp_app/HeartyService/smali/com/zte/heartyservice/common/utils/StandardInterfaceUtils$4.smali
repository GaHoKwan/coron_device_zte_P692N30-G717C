.class final Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$4;
.super Ljava/lang/Thread;
.source "StandardInterfaceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->showAntiEavesdropTip()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 4861
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 4863
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Thread is running."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4865
    const-wide/16 v1, 0xbb8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 4866
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->access$200()Lcom/zte/heartyservice/common/ui/FloatFrame;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4867
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->access$300()Landroid/view/WindowManager;

    move-result-object v1

    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->access$200()Lcom/zte/heartyservice/common/ui/FloatFrame;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 4868
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->access$202(Lcom/zte/heartyservice/common/ui/FloatFrame;)Lcom/zte/heartyservice/common/ui/FloatFrame;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4875
    :cond_0
    :goto_0
    return-void

    .line 4871
    :catch_0
    move-exception v0

    .line 4872
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
