.class Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity$3$1;
.super Ljava/lang/Object;
.source "BackupRestoreActivity.java"

# interfaces
.implements Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$OnServiceConnectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity$3;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity$3;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity$3$1;->this$1:Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity$3;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnect(Lorg/zx/AuthComp/IMyService;)V
    .locals 3
    .parameter "service"

    .prologue
    .line 172
    const-string v0, "BackupRestoreActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onConnect service = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity$3$1;->this$1:Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity$3;

    #getter for: Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity$3;->this$0:Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity$3;->access$0(Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity$3;)Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;

    move-result-object v0

    #calls: Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->updateAccount()V
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->access$0(Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;)V

    .line 174
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity$3$1;->this$1:Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity$3;

    #getter for: Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity$3;->this$0:Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity$3;->access$0(Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity$3;)Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;

    move-result-object v0

    #calls: Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->initView()V
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;->access$1(Lzte/com/cn/cloudnotepad/ui/BackupRestoreActivity;)V

    .line 175
    return-void
.end method
