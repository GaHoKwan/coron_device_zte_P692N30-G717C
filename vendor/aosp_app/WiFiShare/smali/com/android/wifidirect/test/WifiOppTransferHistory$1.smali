.class Lcom/android/wifidirect/test/WifiOppTransferHistory$1;
.super Ljava/lang/Object;
.source "WifiOppTransferHistory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wifidirect/test/WifiOppTransferHistory;->promptClearList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wifidirect/test/WifiOppTransferHistory;


# direct methods
.method constructor <init>(Lcom/android/wifidirect/test/WifiOppTransferHistory;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/wifidirect/test/WifiOppTransferHistory$1;->this$0:Lcom/android/wifidirect/test/WifiOppTransferHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransferHistory$1;->this$0:Lcom/android/wifidirect/test/WifiOppTransferHistory;

    #calls: Lcom/android/wifidirect/test/WifiOppTransferHistory;->clearAllDownloads()V
    invoke-static {v0}, Lcom/android/wifidirect/test/WifiOppTransferHistory;->access$000(Lcom/android/wifidirect/test/WifiOppTransferHistory;)V

    .line 196
    return-void
.end method
