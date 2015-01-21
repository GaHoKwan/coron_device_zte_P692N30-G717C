.class Lzte/com/cn/cloudnotepad/ui/HomeActivity$16;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/HomeActivity;->createContinueUseOldVersionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$16;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    .line 1088
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1092
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$16;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    #calls: Lzte/com/cn/cloudnotepad/ui/HomeActivity;->clearDbAndFiles()V
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->access$21(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)V

    .line 1093
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1094
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$16;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->finish()V

    .line 1096
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$16;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$16;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 1097
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "HasExample"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1099
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$16;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v1

    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/NoteApp;->getCurrentAccountUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lzte/com/cn/cloudnotepad/backup/BackupUtils;->changeDataBaseByUid(Landroid/content/Context;Ljava/lang/String;)V

    .line 1100
    return-void
.end method
