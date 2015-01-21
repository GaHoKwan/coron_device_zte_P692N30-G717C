.class Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity$3;
.super Ljava/lang/Object;
.source "BackupRestoreActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->bindService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity$3;->this$0:Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity$3;)Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;
    .locals 1
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity$3;->this$0:Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity$3;->this$0:Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->mZteAccountUtils:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    new-instance v1, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity$3$1;

    invoke-direct {v1, p0}, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity$3$1;-><init>(Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity$3;)V

    invoke-virtual {v0, v1}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->setOnServiceConnectedListener(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$OnServiceConnectedListener;)V

    .line 177
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity$3;->this$0:Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->mZteAccountUtils:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->bindService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity$3;->this$0:Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;

    #calls: Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->initView()V
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->access$1(Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;)V

    .line 180
    :cond_0
    return-void
.end method
