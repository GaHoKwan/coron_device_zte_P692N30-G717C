.class Lcom/android/launcher2/Workspace$13;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace;->removeItemsByComponentName(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;

.field final synthetic val$componentNames:Ljava/util/HashSet;

.field final synthetic val$layout:Landroid/view/ViewGroup;

.field final synthetic val$layoutParent:Lcom/android/launcher2/CellLayout;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;Landroid/view/ViewGroup;Ljava/util/HashSet;Lcom/android/launcher2/CellLayout;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4304
    iput-object p1, p0, Lcom/android/launcher2/Workspace$13;->this$0:Lcom/android/launcher2/Workspace;

    iput-object p2, p0, Lcom/android/launcher2/Workspace$13;->val$layout:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/android/launcher2/Workspace$13;->val$componentNames:Ljava/util/HashSet;

    iput-object p4, p0, Lcom/android/launcher2/Workspace$13;->val$layoutParent:Lcom/android/launcher2/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 4306
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4307
    .local v4, childrenToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 4309
    .local v8, folderInfosToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/FolderInfo;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/Workspace$13;->val$layout:Landroid/view/ViewGroup;

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 4310
    .local v3, childCount:I
    const/4 v11, 0x0

    .local v11, j:I
    :goto_0
    if-ge v11, v3, :cond_3

    .line 4311
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/Workspace$13;->val$layout:Landroid/view/ViewGroup;

    invoke-virtual {v15, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 4312
    .local v14, view:Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    .line 4314
    .local v13, tag:Ljava/lang/Object;
    instance-of v15, v13, Lcom/android/launcher2/ShortcutInfo;

    if-eqz v15, :cond_1

    move-object v9, v13

    .line 4315
    check-cast v9, Lcom/android/launcher2/ShortcutInfo;

    .line 4316
    .local v9, info:Lcom/android/launcher2/ShortcutInfo;
    iget-object v10, v9, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 4317
    .local v10, intent:Landroid/content/Intent;
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    .line 4318
    .local v12, name:Landroid/content/ComponentName;
    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/Workspace$13;->val$componentNames:Ljava/util/HashSet;

    invoke-virtual {v15, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 4319
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/Workspace$13;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;
    invoke-static {v15}, Lcom/android/launcher2/Workspace;->access$000(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Launcher;

    move-result-object v15

    invoke-static {v15, v9}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)V

    .line 4320
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4310
    .end local v9           #info:Lcom/android/launcher2/ShortcutInfo;
    .end local v10           #intent:Landroid/content/Intent;
    .end local v12           #name:Landroid/content/ComponentName;
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 4322
    :cond_1
    instance-of v15, v13, Lcom/android/launcher2/FolderInfo;

    if-eqz v15, :cond_0

    move-object v9, v13

    .line 4323
    check-cast v9, Lcom/android/launcher2/FolderInfo;

    .line 4324
    .local v9, info:Lcom/android/launcher2/FolderInfo;
    iget-object v5, v9, Lcom/android/launcher2/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 4325
    .local v5, contents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutInfo;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 4326
    .local v6, contentsCount:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4330
    .local v1, appsToRemoveFromFolder:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutInfo;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/Workspace$13;->this$0:Lcom/android/launcher2/Workspace;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$13;->val$componentNames:Ljava/util/HashSet;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    #calls: Lcom/android/launcher2/Workspace;->isFolderNeedRemoved(Lcom/android/launcher2/FolderInfo;Ljava/util/HashSet;Ljava/util/ArrayList;)Z
    invoke-static {v15, v9, v0, v1}, Lcom/android/launcher2/Workspace;->access$1900(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/FolderInfo;Ljava/util/HashSet;Ljava/util/ArrayList;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 4331
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4333
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/Workspace$13;->this$0:Lcom/android/launcher2/Workspace;

    #calls: Lcom/android/launcher2/Workspace;->removeFolderItems(Lcom/android/launcher2/FolderInfo;Ljava/util/ArrayList;)V
    invoke-static {v15, v9, v1}, Lcom/android/launcher2/Workspace;->access$1600(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/FolderInfo;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 4341
    .end local v1           #appsToRemoveFromFolder:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutInfo;>;"
    .end local v5           #contents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutInfo;>;"
    .end local v6           #contentsCount:I
    .end local v9           #info:Lcom/android/launcher2/FolderInfo;
    .end local v13           #tag:Ljava/lang/Object;
    .end local v14           #view:Landroid/view/View;
    :cond_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 4342
    .local v7, delayFolderCount:I
    const/4 v11, 0x0

    :goto_2
    if-ge v11, v7, :cond_4

    .line 4343
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/FolderInfo;

    .line 4344
    .restart local v9       #info:Lcom/android/launcher2/FolderInfo;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4345
    .restart local v1       #appsToRemoveFromFolder:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutInfo;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/Workspace$13;->this$0:Lcom/android/launcher2/Workspace;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$13;->val$componentNames:Ljava/util/HashSet;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    #calls: Lcom/android/launcher2/Workspace;->getRemoveFolderItemsByComponent(Lcom/android/launcher2/FolderInfo;Ljava/util/HashSet;Ljava/util/ArrayList;)I
    invoke-static {v15, v9, v0, v1}, Lcom/android/launcher2/Workspace;->access$2000(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/FolderInfo;Ljava/util/HashSet;Ljava/util/ArrayList;)I

    .line 4347
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/Workspace$13;->this$0:Lcom/android/launcher2/Workspace;

    #calls: Lcom/android/launcher2/Workspace;->removeFolderItems(Lcom/android/launcher2/FolderInfo;Ljava/util/ArrayList;)V
    invoke-static {v15, v9, v1}, Lcom/android/launcher2/Workspace;->access$1600(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/FolderInfo;Ljava/util/ArrayList;)V

    .line 4342
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 4350
    .end local v1           #appsToRemoveFromFolder:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutInfo;>;"
    .end local v9           #info:Lcom/android/launcher2/FolderInfo;
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4351
    const/4 v11, 0x0

    :goto_3
    if-ge v11, v3, :cond_6

    .line 4352
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 4356
    .local v2, child:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/Workspace$13;->val$layoutParent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v15, v2}, Lcom/android/launcher2/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 4357
    instance-of v15, v2, Lcom/android/launcher2/DropTarget;

    if-eqz v15, :cond_5

    .line 4358
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/Workspace$13;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;
    invoke-static {v15}, Lcom/android/launcher2/Workspace;->access$1800(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/DragController;

    move-result-object v15

    check-cast v2, Lcom/android/launcher2/DropTarget;

    .end local v2           #child:Landroid/view/View;
    invoke-virtual {v15, v2}, Lcom/android/launcher2/DragController;->removeDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 4351
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 4362
    :cond_6
    if-lez v3, :cond_7

    .line 4363
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/Workspace$13;->val$layout:Landroid/view/ViewGroup;

    invoke-virtual {v15}, Landroid/view/View;->requestLayout()V

    .line 4364
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/Workspace$13;->val$layout:Landroid/view/ViewGroup;

    invoke-virtual {v15}, Landroid/view/View;->invalidate()V

    .line 4366
    :cond_7
    return-void
.end method
