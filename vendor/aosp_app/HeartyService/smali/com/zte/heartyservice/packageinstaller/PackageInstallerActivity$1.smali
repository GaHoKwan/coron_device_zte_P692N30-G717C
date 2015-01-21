.class Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;
.super Landroid/os/Handler;
.source "PackageInstallerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 429
    iput-object p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 34
    .parameter "msg"

    .prologue
    .line 433
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v27, v0

    sparse-switch v27, :sswitch_data_0

    .line 1850
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 435
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #calls: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->showButton()V
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)V

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mDoing:Landroid/widget/ImageView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$100(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/ImageView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/ImageView;->clearAnimation()V

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mDoing:Landroid/widget/ImageView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$100(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/ImageView;

    move-result-object v27

    const/16 v28, 0x8

    invoke-virtual/range {v27 .. v28}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mKey:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x8

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mAnimationLayout:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$300(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x8

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 440
    const/16 v16, -0x1

    .line 441
    .local v16, centerExplanationLabel:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_3

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mCancel:Landroid/widget/Button;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$400(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/Button;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a04cf

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInstall:Landroid/widget/Button;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$500(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/Button;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a04d0

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 444
    const-string v27, "PackageInstaller"

    const-string v28, " install ok ================================="

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->nowInstallPackageName:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v28

    #setter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mLaunchIntent:Landroid/content/Intent;
    invoke-static/range {v27 .. v28}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$602(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Landroid/content/Intent;)Landroid/content/Intent;

    .line 448
    const-string v27, "PackageInstaller"

    const-string v28, " install ok xx ============================"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const/16 v17, 0x0

    .line 450
    .local v17, enabled:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mLaunchIntent:Landroid/content/Intent;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$600(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/content/Intent;

    move-result-object v27

    if-eqz v27, :cond_1

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v28, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mLaunchIntent:Landroid/content/Intent;
    invoke-static/range {v28 .. v28}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$600(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/content/Intent;

    move-result-object v28

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v22

    .line 453
    .local v22, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v22, :cond_1

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v27

    if-lez v27, :cond_1

    .line 454
    const/16 v17, 0x1

    .line 457
    .end local v22           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    if-eqz v17, :cond_2

    .line 459
    const-string v27, "PackageInstaller"

    const-string v28, "can run ======================"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    #setter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->installResult:I
    invoke-static/range {v27 .. v28}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$702(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;I)I

    .line 468
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    const/16 v28, 0x17

    const/16 v29, 0x0

    #calls: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static/range {v27 .. v29}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$800(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 465
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    #setter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->installResult:I
    invoke-static/range {v27 .. v28}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$702(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;I)I

    .line 466
    const-string v27, "PackageInstaller"

    const-string v28, "not can run ======================"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 471
    .end local v17           #enabled:Z
    :cond_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    const/16 v28, -0x4

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_4

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    const/16 v28, 0x4

    #calls: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->showDialogInner(I)V
    invoke-static/range {v27 .. v28}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;I)V

    goto/16 :goto_0

    .line 477
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    #calls: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->getExplanationFromErrorCode(I)I
    invoke-static/range {v27 .. v28}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$1000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;I)I

    move-result v16

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    #setter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->installResult:I
    invoke-static/range {v27 .. v28}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$702(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;I)I

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    const/16 v28, 0x18

    const/16 v29, 0x0

    #calls: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static/range {v27 .. v29}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$800(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;ILjava/lang/Object;)V

    .line 481
    const/16 v27, -0x1

    move/from16 v0, v16

    move/from16 v1, v27

    if-ne v0, v1, :cond_5

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfo:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$1100(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v28

    const v29, 0x7f0a0598

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-virtual/range {v28 .. v30}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 487
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfo:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$1100(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 504
    .end local v16           #centerExplanationLabel:I
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mVirusScanResult:Lcom/zte/heartyservice/common/datatype/VirusScanResult;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$1200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/VirusScanResult;

    move-result-object v27

    if-eqz v27, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mVirusScanResult:Lcom/zte/heartyservice/common/datatype/VirusScanResult;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$1200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/VirusScanResult;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->resultCode:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mVirusScanResult:Lcom/zte/heartyservice/common/datatype/VirusScanResult;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$1200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/VirusScanResult;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->resultCode:I

    move/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mVirusScanResult:Lcom/zte/heartyservice/common/datatype/VirusScanResult;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$1200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/VirusScanResult;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->resultCode:I

    move/from16 v27, v0

    const/16 v28, 0x4

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mVirusScanResult:Lcom/zte/heartyservice/common/datatype/VirusScanResult;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$1200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/VirusScanResult;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->resultCode:I

    move/from16 v27, v0

    const/16 v28, 0x5

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mVirusScanResult:Lcom/zte/heartyservice/common/datatype/VirusScanResult;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$1200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/VirusScanResult;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->resultCode:I

    move/from16 v27, v0

    const/16 v28, 0x6

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mVirusScanResult:Lcom/zte/heartyservice/common/datatype/VirusScanResult;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$1200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/VirusScanResult;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->resultCode:I

    move/from16 v27, v0

    const/16 v28, 0x7

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_8

    .line 511
    :cond_7
    const-string v27, "PackageInstaller"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "mVirusScanResult.resultCode === "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v29, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mVirusScanResult:Lcom/zte/heartyservice/common/datatype/VirusScanResult;
    invoke-static/range {v29 .. v29}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$1200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/VirusScanResult;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->resultCode:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const-string v27, "PackageInstaller"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "\t mVirusScanResult.pkgName ==="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v29, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mVirusScanResult:Lcom/zte/heartyservice/common/datatype/VirusScanResult;
    invoke-static/range {v29 .. v29}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$1200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/VirusScanResult;

    move-result-object v29

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->pkgName:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const-string v27, "PackageInstaller"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, " mVirusScanResult.introduce ======"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v29, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mVirusScanResult:Lcom/zte/heartyservice/common/datatype/VirusScanResult;
    invoke-static/range {v29 .. v29}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$1200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/VirusScanResult;

    move-result-object v29

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->introduction:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoVinus:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$1300(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mVirusIntroduce:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$1400(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v28, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mVirusScanResult:Lcom/zte/heartyservice/common/datatype/VirusScanResult;
    invoke-static/range {v28 .. v28}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$1200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/VirusScanResult;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->introduction:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoVinusDiv:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$1600(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 517
    :cond_8
    const-string v27, "PackageInstaller"

    const-string v28, "mVirusScanResult.resultCode AAAA"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoNoVinus:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$1500(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 528
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInstall:Landroid/widget/Button;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$500(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/Button;

    move-result-object v27

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/widget/Button;->setEnabled(Z)V

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInstall:Landroid/widget/Button;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$500(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/Button;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f08006f

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getColor(I)I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/Button;->setTextColor(I)V

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mCancel:Landroid/widget/Button;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$400(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/Button;

    move-result-object v27

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/widget/Button;->setEnabled(Z)V

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mCancel:Landroid/widget/Button;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$400(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/Button;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f08006f

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getColor(I)I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/Button;->setTextColor(I)V

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAppCheck:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$1700(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mScaning:Landroid/widget/ImageView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$1800(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/ImageView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/ImageView;->clearAnimation()V

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mScanLayout:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$1900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x8

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mApplicationAdInfo:Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$2000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;

    move-result-object v27

    if-eqz v27, :cond_c

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoUndoAdText1:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$2100(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v28, v0

    const v29, 0x7f0a047e

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v32, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mApplicationAdInfo:Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;
    invoke-static/range {v32 .. v32}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$2000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;

    move-result-object v32

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->adList:Ljava/util/List;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-virtual/range {v28 .. v30}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mApplicationAdInfo:Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$2000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->adList:Ljava/util/List;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v27

    if-lez v27, :cond_a

    .line 541
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v27, ""

    move-object/from16 v0, v27

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 542
    .local v15, adName:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mApplicationAdInfo:Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$2000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->adList:Ljava/util/List;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .line 543
    .local v21, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/zte/heartyservice/interceptad/AdInfo;>;"
    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_9

    .line 546
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/zte/heartyservice/interceptad/AdInfo;

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/zte/heartyservice/interceptad/AdInfo;->name:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 548
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mAdUndoInstoduce:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$2200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 551
    .end local v15           #adName:Ljava/lang/StringBuilder;
    .end local v21           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/zte/heartyservice/interceptad/AdInfo;>;"
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoUndoAd:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$2300(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 558
    :cond_b
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAdDiv:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$2500(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x8

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoLayout:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$2600(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 554
    :cond_c
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isForeignVersion()Z

    move-result v27

    if-nez v27, :cond_b

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoNoAd:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$2400(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 566
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mApplicationAdInfo:Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$2000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;

    move-result-object v27

    if-eqz v27, :cond_0

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAdText1:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$2700(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x7f0a047d

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAd:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$2800(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mApplicationAdInfo:Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$2000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->isBlocked(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_d

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAdText2:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$2900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x7f0a047f

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAdSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$3000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    .line 581
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAdSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$3000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    new-instance v28, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$1;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$1;-><init>(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;)V

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAdDiv:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$2500(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 577
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAdText2:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$2900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x7f0a0480

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAdSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$3000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    goto :goto_5

    .line 607
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->SDTotalSize:J
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$3100(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)J

    move-result-wide v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v29, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->SDNoUsedSize:J
    invoke-static/range {v29 .. v29}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$3200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)J

    move-result-wide v29

    sub-long v11, v27, v29

    .line 609
    .local v11, SDUsedSize:J
    const-wide/16 v27, 0x400

    div-long v27, v11, v27

    const-wide/16 v29, 0x400

    div-long v13, v27, v29

    .line 610
    .local v13, SDUsedSize_M:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->SDNoUsedSize:J
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$3200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)J

    move-result-wide v27

    const-wide/16 v29, 0x400

    div-long v27, v27, v29

    const-wide/16 v29, 0x400

    div-long v9, v27, v29

    .line 611
    .local v9, SDNoUsedSize_M:J
    const-wide/16 v27, 0x1f4

    cmp-long v27, v13, v27

    if-lez v27, :cond_e

    .line 613
    const-wide/16 v27, 0x64

    mul-long v27, v27, v13

    const-wide/16 v29, 0x400

    div-long v27, v27, v29

    move-wide/from16 v0, v27

    long-to-float v0, v0

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->round(F)I

    move-result v27

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    const-wide/high16 v29, 0x4059

    div-double v25, v27, v29

    .line 614
    .local v25, tmp:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "G"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->SDUsedStr:Ljava/lang/String;

    .line 620
    .end local v25           #tmp:D
    :goto_6
    const-wide/16 v27, 0x1f4

    cmp-long v27, v9, v27

    if-lez v27, :cond_f

    .line 622
    const-wide/16 v27, 0x64

    mul-long v27, v27, v9

    const-wide/16 v29, 0x400

    div-long v27, v27, v29

    move-wide/from16 v0, v27

    long-to-float v0, v0

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->round(F)I

    move-result v27

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    const-wide/high16 v29, 0x4059

    div-double v25, v27, v29

    .line 623
    .restart local v25       #tmp:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "G"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->SDNoUsedStr:Ljava/lang/String;

    .line 629
    .end local v25           #tmp:D
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PhoneTotalSize:J
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$3300(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)J

    move-result-wide v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v29, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PhoneNoUsedSize:J
    invoke-static/range {v29 .. v29}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$3400(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)J

    move-result-wide v29

    sub-long v5, v27, v29

    .line 631
    .local v5, PhoneUsedSize:J
    const-wide/16 v27, 0x400

    div-long v27, v5, v27

    const-wide/16 v29, 0x400

    div-long v7, v27, v29

    .line 632
    .local v7, PhoneUsedSize_M:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PhoneNoUsedSize:J
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$3400(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)J

    move-result-wide v27

    const-wide/16 v29, 0x400

    div-long v27, v27, v29

    const-wide/16 v29, 0x400

    div-long v3, v27, v29

    .line 633
    .local v3, PhoneNoUsedSize_M:J
    const-wide/16 v27, 0x1f4

    cmp-long v27, v7, v27

    if-lez v27, :cond_10

    .line 635
    const-wide/16 v27, 0x64

    mul-long v27, v27, v7

    const-wide/16 v29, 0x400

    div-long v27, v27, v29

    move-wide/from16 v0, v27

    long-to-float v0, v0

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->round(F)I

    move-result v27

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    const-wide/high16 v29, 0x4059

    div-double v25, v27, v29

    .line 636
    .restart local v25       #tmp:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "G"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PhoneUsedStr:Ljava/lang/String;

    .line 642
    .end local v25           #tmp:D
    :goto_8
    const-wide/16 v27, 0x1f4

    cmp-long v27, v3, v27

    if-lez v27, :cond_11

    .line 644
    const-wide/16 v27, 0x64

    mul-long v27, v27, v3

    const-wide/16 v29, 0x400

    div-long v27, v27, v29

    move-wide/from16 v0, v27

    long-to-float v0, v0

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->round(F)I

    move-result v27

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    const-wide/high16 v29, 0x4059

    div-double v25, v27, v29

    .line 645
    .restart local v25       #tmp:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "G"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PhoneNoUsedStr:Ljava/lang/String;

    .line 654
    .end local v25           #tmp:D
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInstallPositionInfo:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$3500(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setVisibility(I)V

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInstallPos:Landroid/widget/RadioGroup;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$3600(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/RadioGroup;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    const-string v28, "com.zte.packageinstaller"

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v24

    .line 658
    .local v24, sp1:Landroid/content/SharedPreferences;
    const-string v27, "isPhone"

    const/16 v28, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v20

    .line 659
    .local v20, isInstallToPhone:I
    const-string v27, "PackageInstaller"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, " isInstallToPhone ==="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    const/16 v27, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v28, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->isSDUsable:Z
    invoke-static/range {v28 .. v28}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$3700(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_12

    if-nez v20, :cond_12

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInstallPos:Landroid/widget/RadioGroup;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$3600(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/RadioGroup;

    move-result-object v27

    const v28, 0x7f0e0222

    invoke-virtual/range {v27 .. v28}, Landroid/widget/RadioGroup;->check(I)V

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    #setter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->installToPhone:Z
    invoke-static/range {v27 .. v28}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$3802(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Z)Z

    .line 665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInstallPositionInfo:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$3500(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v28, v0

    const v29, 0x7f0a0487

    const/16 v30, 0x3

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v32, v0

    const v33, 0x7f0a0489

    invoke-virtual/range {v32 .. v33}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->getString(I)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->SDUsedStr:Ljava/lang/String;

    move-object/from16 v32, v0

    aput-object v32, v30, v31

    const/16 v31, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->SDNoUsedStr:Ljava/lang/String;

    move-object/from16 v32, v0

    aput-object v32, v30, v31

    invoke-virtual/range {v28 .. v30}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 675
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInstallPos:Landroid/widget/RadioGroup;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$3600(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/RadioGroup;

    move-result-object v27

    new-instance v28, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$2;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$2;-><init>(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;)V

    invoke-virtual/range {v27 .. v28}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    goto/16 :goto_0

    .line 617
    .end local v3           #PhoneNoUsedSize_M:J
    .end local v5           #PhoneUsedSize:J
    .end local v7           #PhoneUsedSize_M:J
    .end local v20           #isInstallToPhone:I
    .end local v24           #sp1:Landroid/content/SharedPreferences;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "M"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->SDUsedStr:Ljava/lang/String;

    goto/16 :goto_6

    .line 626
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "M"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->SDNoUsedStr:Ljava/lang/String;

    goto/16 :goto_7

    .line 639
    .restart local v3       #PhoneNoUsedSize_M:J
    .restart local v5       #PhoneUsedSize:J
    .restart local v7       #PhoneUsedSize_M:J
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "M"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PhoneUsedStr:Ljava/lang/String;

    goto/16 :goto_8

    .line 648
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "M"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PhoneNoUsedStr:Ljava/lang/String;

    goto/16 :goto_9

    .line 669
    .restart local v20       #isInstallToPhone:I
    .restart local v24       #sp1:Landroid/content/SharedPreferences;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInstallPos:Landroid/widget/RadioGroup;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$3600(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/RadioGroup;

    move-result-object v27

    const v28, 0x7f0e0221

    invoke-virtual/range {v27 .. v28}, Landroid/widget/RadioGroup;->check(I)V

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    #setter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->installToPhone:Z
    invoke-static/range {v27 .. v28}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$3802(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Z)Z

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInstallPositionInfo:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$3500(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v28, v0

    const v29, 0x7f0a0487

    const/16 v30, 0x3

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v32, v0

    const v33, 0x7f0a0488

    invoke-virtual/range {v32 .. v33}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->getString(I)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PhoneUsedStr:Ljava/lang/String;

    move-object/from16 v32, v0

    aput-object v32, v30, v31

    const/16 v31, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PhoneNoUsedStr:Ljava/lang/String;

    move-object/from16 v32, v0

    aput-object v32, v30, v31

    invoke-virtual/range {v28 .. v30}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 770
    .end local v3           #PhoneNoUsedSize_M:J
    .end local v5           #PhoneUsedSize:J
    .end local v7           #PhoneUsedSize_M:J
    .end local v9           #SDNoUsedSize_M:J
    .end local v11           #SDUsedSize:J
    .end local v13           #SDUsedSize_M:J
    .end local v20           #isInstallToPhone:I
    .end local v24           #sp1:Landroid/content/SharedPreferences;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfInternet:Z
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$3900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z

    move-result v27

    if-eqz v27, :cond_13

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAccessNetwork:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$4000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAccessNetworkText2:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$4100(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x7f0a048f

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 774
    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getSecurityExtentionVersion()I

    move-result v27

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_14

    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAccessNetworkSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$4200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    const/16 v28, 0x4

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setVisibility(I)V

    .line 797
    :cond_13
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAccessNetworkDiv:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$4300(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 778
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAccessNetworkSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$4200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAccessNetworkSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$4200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    new-instance v28, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$3;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$3;-><init>(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;)V

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_b

    .line 803
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfSendSms:Z
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$4400(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z

    move-result v27

    if-eqz v27, :cond_15

    .line 805
    const-string v27, "PackageInstaller"

    const-string v28, " hasPermissionsOfSendSms "

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoSendSMS:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$4500(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoSendSMSText2:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$4600(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x7f0a0492

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 808
    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getSecurityExtentionVersion()I

    move-result v27

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_24

    .line 809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoSendSMSSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$4700(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    const/16 v28, 0x4

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setVisibility(I)V

    .line 835
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoSendSMSDiv:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$4900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 839
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfPhoneCall:Z
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$5000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z

    move-result v27

    if-eqz v27, :cond_16

    .line 841
    const-string v27, "PackageInstaller"

    const-string v28, " hasPermissionsOfPhoneCall "

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoPhoneCall:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$5100(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoPhoneCallText2:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$5200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x7f0a0495

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 844
    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getSecurityExtentionVersion()I

    move-result v27

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_26

    .line 845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoPhoneCallSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$5300(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    const/16 v28, 0x4

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setVisibility(I)V

    .line 874
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoPhoneCallDiv:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$5500(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 877
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfContact:Z
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$5600(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z

    move-result v27

    if-eqz v27, :cond_17

    .line 879
    const-string v27, "PackageInstaller"

    const-string v28, " hasPermissionsOfContact "

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoContact:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$5700(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoContactText2:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$5800(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x7f0a0498

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 882
    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getSecurityExtentionVersion()I

    move-result v27

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_28

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoContactSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$5900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    const/16 v28, 0x4

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setVisibility(I)V

    .line 909
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoContactDiv:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$6100(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 913
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfContactWrite:Z
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$6200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z

    move-result v27

    if-eqz v27, :cond_18

    .line 915
    const-string v27, "PackageInstaller"

    const-string v28, " hasPermissionsOfContactWrite "

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoContactWrite:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$6300(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoContactWriteText2:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$6400(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x7f0a049b

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 918
    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getSecurityExtentionVersion()I

    move-result v27

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_2a

    .line 919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoContactWriteSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$6500(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    const/16 v28, 0x4

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setVisibility(I)V

    .line 944
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoContactWriteDiv:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$6700(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 948
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfCallLog:Z
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$6800(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z

    move-result v27

    if-eqz v27, :cond_19

    .line 950
    const-string v27, "PackageInstaller"

    const-string v28, " hasPermissionsOfCallLog "

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCallLog:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$6900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCallLogText2:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$7000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x7f0a049e

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 953
    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getSecurityExtentionVersion()I

    move-result v27

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_2c

    .line 954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCallLogSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$7100(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    const/16 v28, 0x4

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setVisibility(I)V

    .line 980
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCallLogDiv:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$7300(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 984
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfCallLogWrite:Z
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$7400(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z

    move-result v27

    if-eqz v27, :cond_1a

    .line 986
    const-string v27, "PackageInstaller"

    const-string v28, " hasPermissionsOfCallLogWrite "

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCallLogWrite:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$7500(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCallLogWriteText2:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$7600(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x7f0a04a1

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 989
    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getSecurityExtentionVersion()I

    move-result v27

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_2e

    .line 990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCallLogWriteSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$7700(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    const/16 v28, 0x4

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setVisibility(I)V

    .line 1015
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCallLogWriteDiv:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$7900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 1020
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfMessage:Z
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$8000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z

    move-result v27

    if-eqz v27, :cond_1b

    .line 1022
    const-string v27, "PackageInstaller"

    const-string v28, " hasPermissionsOfMessage "

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoMessage:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$8100(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 1024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoMessageText2:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$8200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x7f0a04a4

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1025
    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getSecurityExtentionVersion()I

    move-result v27

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_30

    .line 1026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoMessageSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$8300(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    const/16 v28, 0x4

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setVisibility(I)V

    .line 1050
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoMessageDiv:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$8500(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 1054
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfMessageWrite:Z
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$8600(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z

    move-result v27

    if-eqz v27, :cond_1c

    .line 1056
    const-string v27, "PackageInstaller"

    const-string v28, " hasPermissionsOfMessageWrite "

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoMessageWrite:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$8700(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 1058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoMessageWriteText2:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$8800(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x7f0a04a7

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1059
    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getSecurityExtentionVersion()I

    move-result v27

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_32

    .line 1060
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoMessageWriteSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$8900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    const/16 v28, 0x4

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setVisibility(I)V

    .line 1085
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoMessageDiv:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$8500(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 1090
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfPhoneInfo:Z
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$9100(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z

    move-result v27

    if-eqz v27, :cond_1d

    .line 1092
    const-string v27, "PackageInstaller"

    const-string v28, " hasPermissionsOfPhoneInfo "

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoPhoneInfo:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$9200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 1094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoPhoneInfoText2:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$9300(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x7f0a04aa

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1095
    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getSecurityExtentionVersion()I

    move-result v27

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_34

    .line 1096
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoPhoneInfoSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$9400(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    const/16 v28, 0x4

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setVisibility(I)V

    .line 1121
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoPhoneInfoDiv:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$9600(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 1126
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfLocation:Z
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$9700(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z

    move-result v27

    if-eqz v27, :cond_1e

    .line 1128
    const-string v27, "PackageInstaller"

    const-string v28, " hasPermissionsOfLocation "

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoLocation:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$9800(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 1130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoLocationText2:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$9900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x7f0a04ad

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1131
    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getSecurityExtentionVersion()I

    move-result v27

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_36

    .line 1132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoLocationSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$10000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    const/16 v28, 0x4

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setVisibility(I)V

    .line 1157
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoLocationDiv:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$10200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 1162
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfCalendar:Z
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$10300(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z

    move-result v27

    if-eqz v27, :cond_1f

    .line 1164
    const-string v27, "PackageInstaller"

    const-string v28, " hasPermissionsOfCalendar "

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCalendar:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$10400(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 1166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCalendarText2:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$10500(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x7f0a04b0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1167
    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getSecurityExtentionVersion()I

    move-result v27

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_38

    .line 1168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCalendarSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$10600(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    const/16 v28, 0x4

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setVisibility(I)V

    .line 1191
    :goto_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCalendarDiv:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$10800(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 1195
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfRecordAudio:Z
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$10900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z

    move-result v27

    if-eqz v27, :cond_20

    .line 1197
    const-string v27, "PackageInstaller"

    const-string v28, " hasPermissionsOfRecordAudio "

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoRecordAudio:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$11000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 1199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoRecordAudioText2:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$11100(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x7f0a04b3

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1200
    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getSecurityExtentionVersion()I

    move-result v27

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_3a

    .line 1201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoRecordAudioSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$11200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    const/16 v28, 0x4

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setVisibility(I)V

    .line 1224
    :goto_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoRecordAudioDiv:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$11400(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 1229
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfEnableBluetooth:Z
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$11500(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z

    move-result v27

    if-eqz v27, :cond_21

    .line 1231
    const-string v27, "PackageInstaller"

    const-string v28, " hasPermissionsOfEnableBluetooth "

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableBluetooth:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$11600(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 1233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableBluetoothText2:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$11700(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x7f0a04b6

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1234
    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getSecurityExtentionVersion()I

    move-result v27

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_3c

    .line 1235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableBluetoothSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$11800(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    const/16 v28, 0x4

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setVisibility(I)V

    .line 1258
    :goto_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableBluetoothDiv:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$12000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 1262
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfEnableData:Z
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$12100(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z

    move-result v27

    if-eqz v27, :cond_22

    .line 1264
    const-string v27, "PackageInstaller"

    const-string v28, " hasPermissionsOfEnableData "

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableData:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$12200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 1266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableDataText2:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$12300(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x7f0a04b9

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1267
    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getSecurityExtentionVersion()I

    move-result v27

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_3e

    .line 1268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableDataSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$12400(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    const/16 v28, 0x4

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setVisibility(I)V

    .line 1291
    :goto_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableDataDiv:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$12600(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 1295
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfEnableWifi:Z
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$12700(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z

    move-result v27

    if-eqz v27, :cond_23

    .line 1297
    const-string v27, "PackageInstaller"

    const-string v28, " hasPermissionsOfEnableWifi "

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableWifi:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$12800(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 1299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableWifiText2:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$12900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x7f0a04bc

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1300
    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getSecurityExtentionVersion()I

    move-result v27

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_40

    .line 1301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableWifiSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$13000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    const/16 v28, 0x4

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setVisibility(I)V

    .line 1324
    :goto_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableWifiDiv:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$13200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 1329
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfCamera:Z
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$13300(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z

    move-result v27

    if-eqz v27, :cond_0

    .line 1331
    const-string v27, "PackageInstaller"

    const-string v28, " hasPermissionsOfCamera "

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCamera:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$13400(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 1333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCameraText2:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$13500(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x7f0a04bf

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1334
    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getSecurityExtentionVersion()I

    move-result v27

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_42

    .line 1335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCameraSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$13600(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    const/16 v28, 0x4

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setVisibility(I)V

    .line 1358
    :goto_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCameraDiv:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$13800(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 812
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfSendSmsType:I
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$4800(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_25

    .line 814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoSendSMSSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$4700(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoSendSMSText2:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$4600(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x7f0a0492

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 821
    :goto_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoSendSMSSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$4700(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    new-instance v28, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$4;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$4;-><init>(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;)V

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_c

    .line 818
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoSendSMSSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$4700(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoSendSMSText2:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$4600(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x7f0a0493

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1c

    .line 848
    :cond_26
    const-string v27, "PackageInstaller"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "PermissionsOfPhoneCallType  ==================="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v29, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfPhoneCallType:I
    invoke-static/range {v29 .. v29}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$5400(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfPhoneCallType:I
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$5400(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_27

    .line 851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoPhoneCallSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$5300(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    .line 852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoPhoneCallText2:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$5200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x7f0a0495

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 859
    :goto_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoPhoneCallSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$5300(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    new-instance v28, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$5;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$5;-><init>(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;)V

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_d

    .line 856
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoPhoneCallSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$5300(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    .line 857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoPhoneCallText2:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$5200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x7f0a0496

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1d

    .line 886
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfContactType:I
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$6000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_29

    .line 888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoContactText2:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$5800(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x7f0a0498

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoContactSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$5900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    .line 896
    :goto_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoContactSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$5900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    new-instance v28, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$6;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$6;-><init>(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;)V

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_e

    .line 893
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoContactText2:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$5800(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x7f0a0499

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoContactSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$5900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    goto :goto_1e

    .line 922
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfContactWriteType:I
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$6600(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_2b

    .line 924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoContactWriteText2:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$6400(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x7f0a049b

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoContactWriteSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$6500(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    .line 931
    :goto_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoContactWriteSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$6500(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    new-instance v28, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$7;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$7;-><init>(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;)V

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_f

    .line 928
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoContactWriteSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$6500(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    .line 929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoContactWriteText2:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$6400(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x7f0a049c

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1f

    .line 957
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfCallLogType:I
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$7200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_2d

    .line 959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCallLogSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$7100(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    .line 960
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCallLogText2:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$7000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x7f0a049e

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 967
    :goto_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCallLogSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$7100(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    new-instance v28, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$8;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$8;-><init>(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;)V

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_10

    .line 964
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCallLogSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$7100(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    .line 965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCallLogText2:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$7000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x7f0a049f

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    goto :goto_20

    .line 993
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfCallLogWriteType:I
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$7800(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_2f

    .line 995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCallLogWriteText2:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$7600(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x7f0a04a1

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCallLogWriteSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$7700(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    .line 1002
    :goto_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCallLogWriteSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$7700(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    new-instance v28, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$9;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$9;-><init>(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;)V

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_11

    .line 999
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCallLogWriteText2:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$7600(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x7f0a04a2

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCallLogWriteSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$7700(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    goto :goto_21

    .line 1029
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfMessageType:I
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$8400(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_31

    .line 1030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoMessageText2:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$8200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x7f0a04a4

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoMessageSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$8300(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    .line 1037
    :goto_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoMessageSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$8300(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    new-instance v28, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$10;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$10;-><init>(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;)V

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_12

    .line 1034
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoMessageText2:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$8200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x7f0a04a5

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoMessageSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$8300(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    goto :goto_22

    .line 1063
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfMessageWriteType:I
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$9000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_33

    .line 1065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoMessageWriteText2:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$8800(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x7f0a04a4

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoMessageWriteSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$8900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    .line 1072
    :goto_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoMessageWriteSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$8900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    new-instance v28, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$11;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$11;-><init>(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;)V

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_13

    .line 1069
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoMessageWriteText2:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$8800(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x7f0a04a5

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoMessageWriteSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$8900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    goto :goto_23

    .line 1099
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfPhoneInfoType:I
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$9500(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_35

    .line 1101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoPhoneInfoText2:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$9300(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x7f0a04aa

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoPhoneInfoSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$9400(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    .line 1108
    :goto_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoPhoneInfoSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$9400(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    new-instance v28, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$12;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$12;-><init>(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;)V

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_14

    .line 1105
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoPhoneInfoText2:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$9300(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x7f0a04ab

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoPhoneInfoSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$9400(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    goto :goto_24

    .line 1135
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfLocationType:I
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$10100(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_37

    .line 1137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoLocationText2:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$9900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x7f0a04ad

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoLocationSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$10000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    .line 1144
    :goto_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoLocationSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$10000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    new-instance v28, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$13;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$13;-><init>(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;)V

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_15

    .line 1141
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoLocationText2:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$9900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x7f0a04ae

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoLocationSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$10000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    goto :goto_25

    .line 1171
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfCalendarType:I
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$10700(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_39

    .line 1172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCalendarText2:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$10500(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x7f0a04b0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCalendarSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$10600(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    .line 1178
    :goto_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCalendarSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$10600(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    new-instance v28, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$14;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$14;-><init>(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;)V

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_16

    .line 1175
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCalendarText2:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$10500(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x7f0a04b1

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCalendarSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$10600(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    goto :goto_26

    .line 1204
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfRecordAudioType:I
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$11300(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_3b

    .line 1205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoRecordAudioText2:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$11100(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x7f0a04b3

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoRecordAudioSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$11200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    .line 1211
    :goto_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoRecordAudioSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$11200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    new-instance v28, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$15;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$15;-><init>(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;)V

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_17

    .line 1208
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoRecordAudioText2:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$11100(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x7f0a04b4

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoRecordAudioSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$11200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    goto :goto_27

    .line 1238
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfEnableBluetoothType:I
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$11900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_3d

    .line 1239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableBluetoothText2:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$11700(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x7f0a04b6

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableBluetoothSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$11800(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    .line 1245
    :goto_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableBluetoothSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$11800(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    new-instance v28, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$16;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$16;-><init>(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;)V

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_18

    .line 1242
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableBluetoothText2:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$11700(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x7f0a04b7

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableBluetoothSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$11800(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    goto :goto_28

    .line 1271
    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfEnableDataType:I
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$12500(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_3f

    .line 1272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableDataText2:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$12300(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x7f0a04b9

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableDataSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$12400(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    .line 1278
    :goto_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableDataSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$12400(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    new-instance v28, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$17;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$17;-><init>(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;)V

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_19

    .line 1275
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableDataText2:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$12300(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x7f0a04ba

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableDataSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$12400(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    goto :goto_29

    .line 1304
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfEnableWifiType:I
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$13100(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_41

    .line 1305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableWifiText2:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$12900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x7f0a04bc

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableWifiSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$13000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    .line 1311
    :goto_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableWifiSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$13000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    new-instance v28, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$18;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$18;-><init>(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;)V

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_1a

    .line 1308
    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableWifiText2:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$12900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x7f0a04bd

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableWifiSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$13000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    goto :goto_2a

    .line 1338
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfCameraType:I
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$13700(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_43

    .line 1339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCameraText2:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$13500(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x7f0a04bf

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCameraSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$13600(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    .line 1345
    :goto_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCameraSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$13600(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    new-instance v28, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$19;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$19;-><init>(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;)V

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_1b

    .line 1342
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCameraText2:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$13500(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x7f0a04c0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCameraSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$13600(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    goto :goto_2b

    .line 1366
    :sswitch_8
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->isRSAKeyPairExist()Z

    move-result v27

    if-eqz v27, :cond_0

    .line 1369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAppLock:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$13900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 1370
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getAllLockedPackages()Ljava/util/List;

    move-result-object v23

    .line 1371
    .local v23, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/16 v19, 0x0

    .line 1372
    .local v19, isExist:Z
    const/16 v18, 0x0

    .local v18, i:I
    :goto_2c
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v27

    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_44

    .line 1374
    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->nowInstallPackageName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_45

    .line 1376
    const/16 v19, 0x1

    .line 1380
    :cond_44
    if-eqz v19, :cond_46

    .line 1382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAppLockText2:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$14000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x7f0a04c2

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAppLockSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$14100(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    .line 1390
    :goto_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAppLockSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$14100(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    new-instance v28, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$20;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$20;-><init>(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;)V

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAppLockDiv:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$14200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1372
    :cond_45
    add-int/lit8 v18, v18, 0x1

    goto :goto_2c

    .line 1387
    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAppLockText2:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$14000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x7f0a04c3

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAppLockSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$14100(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    goto :goto_2d

    .line 1418
    .end local v18           #i:I
    .end local v19           #isExist:Z
    .end local v23           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_9
    const/16 v27, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v28, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->isAutoRunUsable:Z
    invoke-static/range {v28 .. v28}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$14300(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->isAutoRunUsable:Z
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$14300(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z

    move-result v27

    if-nez v27, :cond_0

    const/16 v27, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v28, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->isReplace:Z
    invoke-static/range {v28 .. v28}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$14400(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->autoRunReceivers:Ljava/util/HashSet;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$14500(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Ljava/util/HashSet;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/HashSet;->size()I

    move-result v27

    if-lez v27, :cond_0

    .line 1422
    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAutoRun:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$14600(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 1423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->isAutoRunUsable:Z
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$14300(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z

    move-result v27

    if-eqz v27, :cond_48

    .line 1425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAutoRunText2:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$14700(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x7f0a04c5

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAutoRunSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$14800(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    .line 1432
    :goto_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAutoRunSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$14800(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    new-instance v28, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$21;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$21;-><init>(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;)V

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAutoRunDiv:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$15000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1429
    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAutoRunText2:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$14700(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x7f0a04c6

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAutoRunSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$14800(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    goto :goto_2e

    .line 1471
    :sswitch_a
    const/16 v27, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v28, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->isBackgroundAutoRunUsable:Z
    invoke-static/range {v28 .. v28}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$15100(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->isBackgroundAutoRunUsable:Z
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$15100(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z

    move-result v27

    if-nez v27, :cond_4a

    const/16 v27, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v28, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->isReplace:Z
    invoke-static/range {v28 .. v28}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$14400(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_4a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->receivers:Ljava/util/HashMap;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$15200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Ljava/util/HashMap;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/HashMap;->size()I

    move-result v27

    if-lez v27, :cond_4a

    .line 1475
    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoBackgroundAutoRun:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$15300(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 1476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->isBackgroundAutoRunUsable:Z
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$15100(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z

    move-result v27

    if-eqz v27, :cond_4b

    .line 1478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoBackgroundAutoRunText2:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$15400(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x7f0a04c8

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoBackgroundAutoRunSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$15500(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    .line 1485
    :goto_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoBackgroundAutoRunSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$15500(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    new-instance v28, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$22;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$22;-><init>(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;)V

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoBackgroundAutoRunDiv:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$15600(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 1517
    :cond_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfo:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$1100(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1482
    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoBackgroundAutoRunText2:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$15400(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x7f0a04c9

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoBackgroundAutoRunSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$15500(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    goto :goto_2f

    .line 1524
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAppWhiteList:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$15700(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 1528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->nowInstallPackageName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isInWhiteApps(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_4c

    .line 1530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAppWhiteListSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$15800(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    .line 1534
    :cond_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAppWhiteListSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$15800(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    new-instance v28, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$23;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$23;-><init>(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;)V

    invoke-virtual/range {v27 .. v28}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAppWhiteListDiv:Landroid/view/View;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$16000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1574
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfo:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$1100(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1576
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->dexFile:Ldalvik/system/DexFile;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$16100(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Ldalvik/system/DexFile;

    move-result-object v27

    if-eqz v27, :cond_0

    .line 1577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->dexFile:Ldalvik/system/DexFile;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$16100(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Ldalvik/system/DexFile;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ldalvik/system/DexFile;->close()V

    .line 1578
    new-instance v27, Ljava/io/File;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->getFilesDir()Ljava/io/File;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "/class.dex"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1580
    :catch_0
    move-exception v27

    goto/16 :goto_0

    .line 1586
    :sswitch_d
    const-string v27, "PackageInstaller"

    const-string v28, " MSG_INSTALL_OK ====="

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoInstall:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$16200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoInstall:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$16200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a046a

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoInstallImage:Landroid/widget/ImageView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$16300(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/ImageView;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoInstallImage:Landroid/widget/ImageView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$16300(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/ImageView;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f020078

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1595
    const-string v27, "PackageInstaller"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "installerPackageName ===================="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->nowInstallPackageName:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfInternet:Z
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$3900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z

    move-result v27

    if-eqz v27, :cond_4d

    .line 1628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAccessNetworkSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$4200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/zte/heartyservice/common/datatype/P3Switch;->isChecked()Z

    move-result v27

    if-nez v27, :cond_5e

    .line 1630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-object/from16 v27, v0

    const/16 v28, 0x9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->nowInstallPackageName:Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v27 .. v30}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->setAppCategoryPermission(ILjava/lang/String;I)V

    .line 1637
    :cond_4d
    :goto_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfSendSms:Z
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$4400(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z

    move-result v27

    if-eqz v27, :cond_4e

    .line 1639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoSendSMSSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$4700(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/zte/heartyservice/common/datatype/P3Switch;->isChecked()Z

    move-result v27

    if-nez v27, :cond_5f

    .line 1641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->nowInstallPackageName:Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v27 .. v30}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->setAppCategoryPermission(ILjava/lang/String;I)V

    .line 1650
    :cond_4e
    :goto_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfPhoneCall:Z
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$5000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z

    move-result v27

    if-eqz v27, :cond_4f

    .line 1652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoPhoneCallSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$5300(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/zte/heartyservice/common/datatype/P3Switch;->isChecked()Z

    move-result v27

    if-nez v27, :cond_60

    .line 1654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->nowInstallPackageName:Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v27 .. v30}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->setAppCategoryPermission(ILjava/lang/String;I)V

    .line 1662
    :cond_4f
    :goto_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfContact:Z
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$5600(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z

    move-result v27

    if-eqz v27, :cond_50

    .line 1664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoContactSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$5900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/zte/heartyservice/common/datatype/P3Switch;->isChecked()Z

    move-result v27

    if-nez v27, :cond_61

    .line 1666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-object/from16 v27, v0

    const/16 v28, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->nowInstallPackageName:Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v27 .. v30}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->setAppCategoryPermission(ILjava/lang/String;I)V

    .line 1674
    :cond_50
    :goto_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfContactWrite:Z
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$6200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z

    move-result v27

    if-eqz v27, :cond_51

    .line 1676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoContactWriteSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$6500(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/zte/heartyservice/common/datatype/P3Switch;->isChecked()Z

    move-result v27

    if-nez v27, :cond_62

    .line 1678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-object/from16 v27, v0

    const/16 v28, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->nowInstallPackageName:Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v27 .. v30}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->setAppCategoryPermission(ILjava/lang/String;I)V

    .line 1686
    :cond_51
    :goto_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfCallLog:Z
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$6800(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z

    move-result v27

    if-eqz v27, :cond_52

    .line 1688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCallLogSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$7100(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/zte/heartyservice/common/datatype/P3Switch;->isChecked()Z

    move-result v27

    if-nez v27, :cond_63

    .line 1690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-object/from16 v27, v0

    const/16 v28, 0x10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->nowInstallPackageName:Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v27 .. v30}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->setAppCategoryPermission(ILjava/lang/String;I)V

    .line 1697
    :cond_52
    :goto_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfCallLogWrite:Z
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$7400(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z

    move-result v27

    if-eqz v27, :cond_53

    .line 1699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCallLogWriteSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$7700(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/zte/heartyservice/common/datatype/P3Switch;->isChecked()Z

    move-result v27

    if-nez v27, :cond_64

    .line 1701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-object/from16 v27, v0

    const/16 v28, 0x11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->nowInstallPackageName:Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v27 .. v30}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->setAppCategoryPermission(ILjava/lang/String;I)V

    .line 1710
    :cond_53
    :goto_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfMessage:Z
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$8000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z

    move-result v27

    if-eqz v27, :cond_54

    .line 1712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoMessageSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$8300(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/zte/heartyservice/common/datatype/P3Switch;->isChecked()Z

    move-result v27

    if-nez v27, :cond_65

    .line 1714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-object/from16 v27, v0

    const/16 v28, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->nowInstallPackageName:Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v27 .. v30}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->setAppCategoryPermission(ILjava/lang/String;I)V

    .line 1720
    :cond_54
    :goto_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfMessageWrite:Z
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$8600(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z

    move-result v27

    if-eqz v27, :cond_55

    .line 1722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoMessageWriteSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$8900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/zte/heartyservice/common/datatype/P3Switch;->isChecked()Z

    move-result v27

    if-nez v27, :cond_66

    .line 1724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-object/from16 v27, v0

    const/16 v28, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->nowInstallPackageName:Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v27 .. v30}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->setAppCategoryPermission(ILjava/lang/String;I)V

    .line 1732
    :cond_55
    :goto_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfPhoneInfo:Z
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$9100(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z

    move-result v27

    if-eqz v27, :cond_56

    .line 1734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoPhoneInfoSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$9400(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/zte/heartyservice/common/datatype/P3Switch;->isChecked()Z

    move-result v27

    if-nez v27, :cond_67

    .line 1736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-object/from16 v27, v0

    const/16 v28, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->nowInstallPackageName:Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v27 .. v30}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->setAppCategoryPermission(ILjava/lang/String;I)V

    .line 1744
    :cond_56
    :goto_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfLocation:Z
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$9700(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z

    move-result v27

    if-eqz v27, :cond_57

    .line 1746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoLocationSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$10000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/zte/heartyservice/common/datatype/P3Switch;->isChecked()Z

    move-result v27

    if-nez v27, :cond_68

    .line 1748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-object/from16 v27, v0

    const/16 v28, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->nowInstallPackageName:Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v27 .. v30}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->setAppCategoryPermission(ILjava/lang/String;I)V

    .line 1757
    :cond_57
    :goto_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfCalendar:Z
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$10300(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z

    move-result v27

    if-eqz v27, :cond_58

    .line 1759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCalendarSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$10600(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/zte/heartyservice/common/datatype/P3Switch;->isChecked()Z

    move-result v27

    if-nez v27, :cond_69

    .line 1761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-object/from16 v27, v0

    const/16 v28, 0xb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->nowInstallPackageName:Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v27 .. v30}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->setAppCategoryPermission(ILjava/lang/String;I)V

    .line 1769
    :cond_58
    :goto_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfRecordAudio:Z
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$10900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z

    move-result v27

    if-eqz v27, :cond_59

    .line 1771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoRecordAudioSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$11200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/zte/heartyservice/common/datatype/P3Switch;->isChecked()Z

    move-result v27

    if-nez v27, :cond_6a

    .line 1773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-object/from16 v27, v0

    const/16 v28, 0xc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->nowInstallPackageName:Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v27 .. v30}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->setAppCategoryPermission(ILjava/lang/String;I)V

    .line 1781
    :cond_59
    :goto_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfEnableBluetooth:Z
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$11500(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z

    move-result v27

    if-eqz v27, :cond_5a

    .line 1783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableBluetoothSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$11800(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/zte/heartyservice/common/datatype/P3Switch;->isChecked()Z

    move-result v27

    if-nez v27, :cond_6b

    .line 1785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-object/from16 v27, v0

    const/16 v28, 0xd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->nowInstallPackageName:Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v27 .. v30}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->setAppCategoryPermission(ILjava/lang/String;I)V

    .line 1792
    :cond_5a
    :goto_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfEnableData:Z
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$12100(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z

    move-result v27

    if-eqz v27, :cond_5b

    .line 1794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableDataSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$12400(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/zte/heartyservice/common/datatype/P3Switch;->isChecked()Z

    move-result v27

    if-nez v27, :cond_6c

    .line 1796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-object/from16 v27, v0

    const/16 v28, 0xe

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->nowInstallPackageName:Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v27 .. v30}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->setAppCategoryPermission(ILjava/lang/String;I)V

    .line 1803
    :cond_5b
    :goto_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfEnableWifi:Z
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$12700(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z

    move-result v27

    if-eqz v27, :cond_5c

    .line 1805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableWifiSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$13000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/zte/heartyservice/common/datatype/P3Switch;->isChecked()Z

    move-result v27

    if-nez v27, :cond_6d

    .line 1807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-object/from16 v27, v0

    const/16 v28, 0xf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->nowInstallPackageName:Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v27 .. v30}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->setAppCategoryPermission(ILjava/lang/String;I)V

    .line 1814
    :cond_5c
    :goto_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfCamera:Z
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$13300(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z

    move-result v27

    if-eqz v27, :cond_5d

    .line 1816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCameraSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$13600(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/zte/heartyservice/common/datatype/P3Switch;->isChecked()Z

    move-result v27

    if-nez v27, :cond_6e

    .line 1818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-object/from16 v27, v0

    const/16 v28, 0x12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->nowInstallPackageName:Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v27 .. v30}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->setAppCategoryPermission(ILjava/lang/String;I)V

    .line 1826
    :cond_5d
    :goto_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #calls: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->afterInstallCheck()V
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$16400(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)V

    goto/16 :goto_0

    .line 1633
    :cond_5e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-object/from16 v27, v0

    const/16 v28, 0x9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->nowInstallPackageName:Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v27 .. v30}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->setAppCategoryPermission(ILjava/lang/String;I)V

    goto/16 :goto_30

    .line 1645
    :cond_5f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->nowInstallPackageName:Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v27 .. v30}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->setAppCategoryPermission(ILjava/lang/String;I)V

    goto/16 :goto_31

    .line 1658
    :cond_60
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->nowInstallPackageName:Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v27 .. v30}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->setAppCategoryPermission(ILjava/lang/String;I)V

    goto/16 :goto_32

    .line 1670
    :cond_61
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-object/from16 v27, v0

    const/16 v28, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->nowInstallPackageName:Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v27 .. v30}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->setAppCategoryPermission(ILjava/lang/String;I)V

    goto/16 :goto_33

    .line 1682
    :cond_62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-object/from16 v27, v0

    const/16 v28, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->nowInstallPackageName:Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v27 .. v30}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->setAppCategoryPermission(ILjava/lang/String;I)V

    goto/16 :goto_34

    .line 1694
    :cond_63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-object/from16 v27, v0

    const/16 v28, 0x10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->nowInstallPackageName:Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v27 .. v30}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->setAppCategoryPermission(ILjava/lang/String;I)V

    goto/16 :goto_35

    .line 1705
    :cond_64
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-object/from16 v27, v0

    const/16 v28, 0x11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->nowInstallPackageName:Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v27 .. v30}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->setAppCategoryPermission(ILjava/lang/String;I)V

    goto/16 :goto_36

    .line 1717
    :cond_65
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-object/from16 v27, v0

    const/16 v28, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->nowInstallPackageName:Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v27 .. v30}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->setAppCategoryPermission(ILjava/lang/String;I)V

    goto/16 :goto_37

    .line 1727
    :cond_66
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-object/from16 v27, v0

    const/16 v28, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->nowInstallPackageName:Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v27 .. v30}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->setAppCategoryPermission(ILjava/lang/String;I)V

    goto/16 :goto_38

    .line 1740
    :cond_67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-object/from16 v27, v0

    const/16 v28, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->nowInstallPackageName:Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v27 .. v30}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->setAppCategoryPermission(ILjava/lang/String;I)V

    goto/16 :goto_39

    .line 1752
    :cond_68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-object/from16 v27, v0

    const/16 v28, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->nowInstallPackageName:Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v27 .. v30}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->setAppCategoryPermission(ILjava/lang/String;I)V

    goto/16 :goto_3a

    .line 1765
    :cond_69
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-object/from16 v27, v0

    const/16 v28, 0xb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->nowInstallPackageName:Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v27 .. v30}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->setAppCategoryPermission(ILjava/lang/String;I)V

    goto/16 :goto_3b

    .line 1777
    :cond_6a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-object/from16 v27, v0

    const/16 v28, 0xc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->nowInstallPackageName:Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v27 .. v30}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->setAppCategoryPermission(ILjava/lang/String;I)V

    goto/16 :goto_3c

    .line 1788
    :cond_6b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-object/from16 v27, v0

    const/16 v28, 0xd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->nowInstallPackageName:Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v27 .. v30}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->setAppCategoryPermission(ILjava/lang/String;I)V

    goto/16 :goto_3d

    .line 1799
    :cond_6c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-object/from16 v27, v0

    const/16 v28, 0xe

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->nowInstallPackageName:Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v27 .. v30}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->setAppCategoryPermission(ILjava/lang/String;I)V

    goto/16 :goto_3e

    .line 1810
    :cond_6d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-object/from16 v27, v0

    const/16 v28, 0xf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->nowInstallPackageName:Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v27 .. v30}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->setAppCategoryPermission(ILjava/lang/String;I)V

    goto/16 :goto_3f

    .line 1822
    :cond_6e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-object/from16 v27, v0

    const/16 v28, 0x12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->nowInstallPackageName:Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v27 .. v30}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->setAppCategoryPermission(ILjava/lang/String;I)V

    goto/16 :goto_40

    .line 1839
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoInstall:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$16200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoInstall:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$16200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a0469

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoInstallImage:Landroid/widget/ImageView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$16300(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/ImageView;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoInstallImage:Landroid/widget/ImageView;
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$16300(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/ImageView;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f020163

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 433
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_2
        0x4 -> :sswitch_0
        0x5 -> :sswitch_3
        0x6 -> :sswitch_0
        0x7 -> :sswitch_5
        0x8 -> :sswitch_0
        0x9 -> :sswitch_6
        0xa -> :sswitch_0
        0xb -> :sswitch_7
        0xc -> :sswitch_0
        0xd -> :sswitch_8
        0xe -> :sswitch_0
        0xf -> :sswitch_9
        0x10 -> :sswitch_0
        0x11 -> :sswitch_a
        0x12 -> :sswitch_c
        0x13 -> :sswitch_0
        0x14 -> :sswitch_4
        0x15 -> :sswitch_0
        0x16 -> :sswitch_b
        0x17 -> :sswitch_d
        0x18 -> :sswitch_e
        0x64 -> :sswitch_1
    .end sparse-switch
.end method
