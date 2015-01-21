.class Lcom/zte/heartyservice/speedup/MainSpeedingActivity$UpdateCPUTask;
.super Landroid/os/AsyncTask;
.source "MainSpeedingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/speedup/MainSpeedingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateCPUTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 536
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$UpdateCPUTask;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;Lcom/zte/heartyservice/speedup/MainSpeedingActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 536
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$UpdateCPUTask;-><init>(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 536
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$UpdateCPUTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 540
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$UpdateCPUTask;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    #calls: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->calcRam()V
    invoke-static {v0}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$2900(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)V

    .line 541
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 536
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$UpdateCPUTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 546
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$UpdateCPUTask;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    #calls: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->updateMemory()V
    invoke-static {v0}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$3000(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)V

    .line 547
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$UpdateCPUTask;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    const/4 v1, 0x0

    #setter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->mUpdateCPUTask:Lcom/zte/heartyservice/speedup/MainSpeedingActivity$UpdateCPUTask;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$102(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;Lcom/zte/heartyservice/speedup/MainSpeedingActivity$UpdateCPUTask;)Lcom/zte/heartyservice/speedup/MainSpeedingActivity$UpdateCPUTask;

    .line 548
    return-void
.end method
