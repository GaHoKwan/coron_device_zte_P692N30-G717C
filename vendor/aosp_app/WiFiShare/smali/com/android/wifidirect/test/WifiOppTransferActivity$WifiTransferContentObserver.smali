.class Lcom/android/wifidirect/test/WifiOppTransferActivity$WifiTransferContentObserver;
.super Landroid/database/ContentObserver;
.source "WifiOppTransferActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wifidirect/test/WifiOppTransferActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiTransferContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wifidirect/test/WifiOppTransferActivity;


# direct methods
.method public constructor <init>(Lcom/android/wifidirect/test/WifiOppTransferActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity$WifiTransferContentObserver;->this$0:Lcom/android/wifidirect/test/WifiOppTransferActivity;

    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 91
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 95
    const-string v0, "WifiOppTransferActivity"

    const-string v1, "received db changes."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferActivity$WifiTransferContentObserver;->this$0:Lcom/android/wifidirect/test/WifiOppTransferActivity;

    #calls: Lcom/android/wifidirect/test/WifiOppTransferActivity;->updateProgressbar()V
    invoke-static {v0}, Lcom/android/wifidirect/test/WifiOppTransferActivity;->access$000(Lcom/android/wifidirect/test/WifiOppTransferActivity;)V

    .line 97
    return-void
.end method
