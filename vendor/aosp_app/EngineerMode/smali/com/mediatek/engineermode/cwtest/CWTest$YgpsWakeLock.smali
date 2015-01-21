.class Lcom/mediatek/engineermode/cwtest/CWTest$YgpsWakeLock;
.super Ljava/lang/Object;
.source "CWTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/cwtest/CWTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "YgpsWakeLock"
.end annotation


# instance fields
.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/mediatek/engineermode/cwtest/CWTest;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/cwtest/CWTest;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 642
    iput-object p1, p0, Lcom/mediatek/engineermode/cwtest/CWTest$YgpsWakeLock;->this$0:Lcom/mediatek/engineermode/cwtest/CWTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 643
    iput-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest$YgpsWakeLock;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 644
    iput-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest$YgpsWakeLock;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method


# virtual methods
.method acquireCpuWakeLock(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 653
    const-string v1, "CWTest/Activity"

    const-string v2, "Acquiring cpu wake lock"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v1, p0, Lcom/mediatek/engineermode/cwtest/CWTest$YgpsWakeLock;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 665
    :goto_0
    return-void

    .line 658
    :cond_0
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 661
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x10000001

    const-string v2, "CWTest/Activity"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/engineermode/cwtest/CWTest$YgpsWakeLock;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 664
    iget-object v1, p0, Lcom/mediatek/engineermode/cwtest/CWTest$YgpsWakeLock;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0
.end method

.method acquireScreenWakeLock(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 674
    const-string v1, "CWTest/Activity"

    const-string v2, "Acquiring screen wake lock"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    iget-object v1, p0, Lcom/mediatek/engineermode/cwtest/CWTest$YgpsWakeLock;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 686
    :goto_0
    return-void

    .line 679
    :cond_0
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 682
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x1000001a

    const-string v2, "CWTest/Activity"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/engineermode/cwtest/CWTest$YgpsWakeLock;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 685
    iget-object v1, p0, Lcom/mediatek/engineermode/cwtest/CWTest$YgpsWakeLock;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0
.end method

.method release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 692
    const-string v0, "CWTest/Activity"

    const-string v1, "Releasing wake lock"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest$YgpsWakeLock;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest$YgpsWakeLock;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 695
    iput-object v2, p0, Lcom/mediatek/engineermode/cwtest/CWTest$YgpsWakeLock;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest$YgpsWakeLock;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 698
    iget-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest$YgpsWakeLock;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 699
    iput-object v2, p0, Lcom/mediatek/engineermode/cwtest/CWTest$YgpsWakeLock;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 701
    :cond_1
    return-void
.end method
