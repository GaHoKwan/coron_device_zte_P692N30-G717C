.class Lcom/zte/heartyservice/privacy/FilesActivity$6;
.super Ljava/lang/Object;
.source "FilesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/FilesActivity;->showViewRemindDialog(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

.field final synthetic val$list:Ljava/util/ArrayList;

.field final synthetic val$noticeCheckBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/FilesActivity;Landroid/widget/CheckBox;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 434
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/FilesActivity$6;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    iput-object p2, p0, Lcom/zte/heartyservice/privacy/FilesActivity$6;->val$noticeCheckBox:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/zte/heartyservice/privacy/FilesActivity$6;->val$list:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 438
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$6;->val$noticeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$6;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/FilesActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "privacy_view_remind"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$6;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity$6;->val$list:Ljava/util/ArrayList;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/privacy/FilesActivity;->startDecryptTask(Ljava/util/ArrayList;Ljava/lang/Boolean;)V

    .line 445
    return-void
.end method
