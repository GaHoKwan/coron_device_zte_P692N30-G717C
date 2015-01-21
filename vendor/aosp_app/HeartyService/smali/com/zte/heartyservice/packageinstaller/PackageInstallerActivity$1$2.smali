.class Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$2;
.super Ljava/lang/Object;
.source "PackageInstallerActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 676
    iput-object p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$2;->this$1:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 13
    .parameter "group"
    .parameter "checkedId"

    .prologue
    const v12, 0x7f0a0487

    const/4 v6, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 680
    iget-object v4, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$2;->this$1:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;

    iget-object v4, v4, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInstallPos:Landroid/widget/RadioGroup;
    invoke-static {v4}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$3600(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/RadioGroup;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 681
    packed-switch p2, :pswitch_data_0

    .line 759
    :cond_0
    :goto_0
    return-void

    .line 683
    :pswitch_0
    const-string v4, "PackageInstaller"

    const-string v5, "install to phone "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    iget-object v4, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$2;->this$1:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;

    iget-object v4, v4, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    const-string v5, "com.zte.packageinstaller"

    invoke-virtual {v4, v5, v9}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 711
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 712
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v4, "isPhone"

    invoke-interface {v0, v4, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 713
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 714
    iget-object v4, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$2;->this$1:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;

    iget-object v4, v4, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #setter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->installToPhone:Z
    invoke-static {v4, v10}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$3802(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Z)Z

    .line 715
    iget-object v4, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$2;->this$1:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;

    iget-object v4, v4, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInstallPositionInfo:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$3500(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$2;->this$1:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;

    iget-object v5, v5, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$2;->this$1:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;

    iget-object v7, v7, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    const v8, 0x7f0a0488

    invoke-virtual {v7, v8}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    iget-object v7, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$2;->this$1:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;

    iget-object v7, v7, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v7, v7, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PhoneUsedStr:Ljava/lang/String;

    aput-object v7, v6, v10

    iget-object v7, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$2;->this$1:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;

    iget-object v7, v7, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v7, v7, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PhoneNoUsedStr:Ljava/lang/String;

    aput-object v7, v6, v11

    invoke-virtual {v5, v12, v6}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 718
    .end local v0           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v2           #sp:Landroid/content/SharedPreferences;
    :pswitch_1
    const-string v4, "PackageInstaller"

    const-string v5, "install to tcard "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    iget-object v4, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$2;->this$1:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;

    iget-object v4, v4, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    const-string v5, "com.zte.packageinstaller"

    invoke-virtual {v4, v5, v9}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 748
    .local v3, sp1:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 749
    .local v1, edit1:Landroid/content/SharedPreferences$Editor;
    const-string v4, "isPhone"

    invoke-interface {v1, v4, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 750
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 751
    iget-object v4, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$2;->this$1:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;

    iget-object v4, v4, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #setter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->installToPhone:Z
    invoke-static {v4, v9}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$3802(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Z)Z

    .line 752
    iget-object v4, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$2;->this$1:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;

    iget-object v4, v4, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInstallPositionInfo:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$3500(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$2;->this$1:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;

    iget-object v5, v5, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$2;->this$1:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;

    iget-object v7, v7, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    const v8, 0x7f0a0489

    invoke-virtual {v7, v8}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    iget-object v7, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$2;->this$1:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;

    iget-object v7, v7, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v7, v7, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->SDUsedStr:Ljava/lang/String;

    aput-object v7, v6, v10

    iget-object v7, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$2;->this$1:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;

    iget-object v7, v7, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v7, v7, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->SDNoUsedStr:Ljava/lang/String;

    aput-object v7, v6, v11

    invoke-virtual {v5, v12, v6}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 681
    :pswitch_data_0
    .packed-switch 0x7f0e0221
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
