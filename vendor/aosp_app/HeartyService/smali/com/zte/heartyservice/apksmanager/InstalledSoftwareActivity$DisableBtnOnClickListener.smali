.class public Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$DisableBtnOnClickListener;
.super Ljava/lang/Object;
.source "InstalledSoftwareActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DisableBtnOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;


# direct methods
.method protected constructor <init>(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1219
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$DisableBtnOnClickListener;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    .line 1222
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 1257
    :goto_0
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$DisableBtnOnClickListener;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    #getter for: Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->access$800(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1258
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$DisableBtnOnClickListener;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    #getter for: Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->access$800(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    check-cast v3, Landroid/widget/BaseAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1260
    :cond_0
    return-void

    .line 1224
    :sswitch_0
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$DisableBtnOnClickListener;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    #calls: Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->disableSelected(II)V
    invoke-static {v3, v4, v5}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->access$1300(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;II)V

    goto :goto_0

    .line 1227
    :sswitch_1
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$DisableBtnOnClickListener;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    #getter for: Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mSystemAppList:Ljava/util/List;
    invoke-static {v3}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->access$1400(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)Ljava/util/List;

    move-result-object v4

    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$DisableBtnOnClickListener;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    invoke-virtual {v3}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->getBackedListItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/heartyservice/apksmanager/AbstractListItem;

    invoke-virtual {v3}, Lcom/zte/heartyservice/apksmanager/AbstractListItem;->getIndex()I

    move-result v3

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;

    iget-object v1, v3, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;->packageName:Ljava/lang/String;

    .line 1229
    .local v1, package_name:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1230
    .local v2, selected:I
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$DisableBtnOnClickListener;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    #getter for: Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->access$1500(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v6, :cond_1

    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$DisableBtnOnClickListener;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    #getter for: Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->access$1500(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    .line 1232
    :cond_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$DisableBtnOnClickListener;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$DisableBtnOnClickListener;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    const v5, 0x7f0a0663

    invoke-virtual {v4, v5}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$DisableBtnOnClickListener;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    const v5, 0x7f0a0664

    invoke-virtual {v4, v5}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0665

    new-instance v5, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$DisableBtnOnClickListener$2;

    invoke-direct {v5, p0, v2}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$DisableBtnOnClickListener$2;-><init>(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$DisableBtnOnClickListener;I)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0666

    new-instance v5, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$DisableBtnOnClickListener$1;

    invoke-direct {v5, p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$DisableBtnOnClickListener$1;-><init>(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$DisableBtnOnClickListener;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1251
    .local v0, d:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1253
    .end local v0           #d:Landroid/app/AlertDialog;
    :cond_2
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$DisableBtnOnClickListener;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    #calls: Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->disableSelected(II)V
    invoke-static {v3, v2, v6}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->access$1300(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;II)V

    goto/16 :goto_0

    .line 1222
    :sswitch_data_0
    .sparse-switch
        0x7f0e0038 -> :sswitch_0
        0x7f0e03b0 -> :sswitch_1
    .end sparse-switch
.end method
