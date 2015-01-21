.class Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;
.super Ljava/lang/Object;
.source "GarbageClearedActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;

.field final synthetic val$localChildPosition:I

.field final synthetic val$localGroupPosition:I


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 668
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;->this$1:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;

    iput p2, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;->val$localGroupPosition:I

    iput p3, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;->val$localChildPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 31
    .parameter "arg0"

    .prologue
    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;->this$1:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static/range {v24 .. v24}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->access$200(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v24

    if-eqz v24, :cond_0

    .line 674
    const/16 v17, 0x0

    .line 676
    .local v17, item:Lcom/zte/heartyservice/speedup/GarbageListItem;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;->this$1:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->adapter:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;->val$localGroupPosition:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17           #item:Lcom/zte/heartyservice/speedup/GarbageListItem;
    check-cast v17, Lcom/zte/heartyservice/speedup/GarbageListItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 680
    .restart local v17       #item:Lcom/zte/heartyservice/speedup/GarbageListItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;->this$1:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->adapter:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;->val$localGroupPosition:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;->val$localChildPosition:I

    move/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/zte/heartyservice/speedup/GarbageChildItem;

    .line 681
    .local v11, childItem:Lcom/zte/heartyservice/speedup/GarbageChildItem;
    sget v24, Lcom/zte/heartyservice/speedup/GarbageListItem;->TYPE_CACHE:I

    iget v0, v11, Lcom/zte/heartyservice/speedup/GarbageChildItem;->type:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    .line 682
    iget-object v0, v11, Lcom/zte/heartyservice/speedup/GarbageChildItem;->tag:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/zte/heartyservice/common/datatype/AppCacheInfo;

    .line 683
    .local v18, localAppCacheInfo:Lcom/zte/heartyservice/common/datatype/AppCacheInfo;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 684
    .local v12, clearList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppCacheInfo;>;"
    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 685
    move-object/from16 v0, v18

    iget-wide v9, v0, Lcom/zte/heartyservice/common/datatype/AppCacheInfo;->cache:J

    .line 687
    .local v9, cache:J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;->this$1:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static/range {v24 .. v24}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->access$200(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v0, v12}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->clearAppCache(Ljava/util/List;)V

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;->this$1:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v0, v9, v10}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->access$922(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;J)J

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;->this$1:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    move-object/from16 v24, v0

    const v25, 0x7f0a004c

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;->this$1:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    move-object/from16 v29, v0

    #getter for: Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->total_cache:J
    invoke-static/range {v29 .. v29}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->access$900(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;)J

    move-result-wide v29

    invoke-static/range {v28 .. v30}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-virtual/range {v24 .. v26}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    .line 690
    .local v22, str:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;->this$1:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->garbageNumberLabel:Landroid/widget/TextView;
    invoke-static/range {v24 .. v24}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->access$1000(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;)Landroid/widget/TextView;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;->this$1:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    move-object/from16 v24, v0

    const v25, 0x7f0a03f0

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;->this$1:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    move-object/from16 v29, v0

    #getter for: Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->total_cache:J
    invoke-static/range {v29 .. v29}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->access$900(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;)J

    move-result-wide v29

    invoke-static/range {v28 .. v30}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-virtual/range {v24 .. v26}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/zte/heartyservice/speedup/GarbageListItem;->name:Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 695
    .end local v22           #str:Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;->this$1:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->adapter:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;->val$localGroupPosition:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;->val$localChildPosition:I

    move/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->removeViewInList(II)V

    .line 880
    .end local v9           #cache:J
    .end local v11           #childItem:Lcom/zte/heartyservice/speedup/GarbageChildItem;
    .end local v12           #clearList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppCacheInfo;>;"
    .end local v17           #item:Lcom/zte/heartyservice/speedup/GarbageListItem;
    .end local v18           #localAppCacheInfo:Lcom/zte/heartyservice/common/datatype/AppCacheInfo;
    :cond_0
    :goto_1
    return-void

    .line 677
    :catch_0
    move-exception v16

    .line 678
    .local v16, e:Ljava/lang/Exception;
    goto :goto_1

    .line 692
    .end local v16           #e:Ljava/lang/Exception;
    .restart local v9       #cache:J
    .restart local v11       #childItem:Lcom/zte/heartyservice/speedup/GarbageChildItem;
    .restart local v12       #clearList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppCacheInfo;>;"
    .restart local v17       #item:Lcom/zte/heartyservice/speedup/GarbageListItem;
    .restart local v18       #localAppCacheInfo:Lcom/zte/heartyservice/common/datatype/AppCacheInfo;
    :catch_1
    move-exception v16

    .line 693
    .local v16, e:Landroid/os/RemoteException;
    invoke-virtual/range {v16 .. v16}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 696
    .end local v9           #cache:J
    .end local v12           #clearList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppCacheInfo;>;"
    .end local v16           #e:Landroid/os/RemoteException;
    .end local v18           #localAppCacheInfo:Lcom/zte/heartyservice/common/datatype/AppCacheInfo;
    :cond_1
    sget v24, Lcom/zte/heartyservice/speedup/GarbageListItem;->TYPE_DELETED_APK_FILE:I

    iget v0, v11, Lcom/zte/heartyservice/speedup/GarbageChildItem;->type:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    .line 697
    iget-object v0, v11, Lcom/zte/heartyservice/speedup/GarbageChildItem;->tag:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/zte/heartyservice/common/datatype/AppFileInfo;

    .line 698
    .local v19, localAppFileInfo:Lcom/zte/heartyservice/common/datatype/AppFileInfo;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 699
    .local v13, clearList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppFileInfo;>;"
    move-object/from16 v0, v19

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 700
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/zte/heartyservice/common/datatype/AppFileInfo;->fileSize:J

    move-wide/from16 v20, v0

    .line 702
    .local v20, size:J
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;->this$1:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static/range {v24 .. v24}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->access$200(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v0, v13}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->clearAppFile(Ljava/util/List;)V

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;->this$1:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->access$1122(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;J)J

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;->this$1:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    move-object/from16 v24, v0

    const v25, 0x7f0a03f2

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;->this$1:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    move-object/from16 v29, v0

    #getter for: Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->total_deleted_apk_file:J
    invoke-static/range {v29 .. v29}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->access$1100(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;)J

    move-result-wide v29

    invoke-static/range {v28 .. v30}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-virtual/range {v24 .. v26}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/zte/heartyservice/speedup/GarbageListItem;->name:Ljava/lang/String;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 708
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;->this$1:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->adapter:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;->val$localGroupPosition:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;->val$localChildPosition:I

    move/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->removeViewInList(II)V

    goto/16 :goto_1

    .line 705
    :catch_2
    move-exception v16

    .line 706
    .restart local v16       #e:Landroid/os/RemoteException;
    invoke-virtual/range {v16 .. v16}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 709
    .end local v13           #clearList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppFileInfo;>;"
    .end local v16           #e:Landroid/os/RemoteException;
    .end local v19           #localAppFileInfo:Lcom/zte/heartyservice/common/datatype/AppFileInfo;
    .end local v20           #size:J
    :cond_2
    sget v24, Lcom/zte/heartyservice/speedup/GarbageListItem;->TYPE_INSTALLED_APK_FILE:I

    iget v0, v11, Lcom/zte/heartyservice/speedup/GarbageChildItem;->type:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    .line 710
    iget-object v0, v11, Lcom/zte/heartyservice/speedup/GarbageChildItem;->tag:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/zte/heartyservice/common/datatype/AppFileInfo;

    .line 711
    .restart local v19       #localAppFileInfo:Lcom/zte/heartyservice/common/datatype/AppFileInfo;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 712
    .restart local v13       #clearList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppFileInfo;>;"
    move-object/from16 v0, v19

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 713
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/zte/heartyservice/common/datatype/AppFileInfo;->fileSize:J

    move-wide/from16 v20, v0

    .line 715
    .restart local v20       #size:J
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;->this$1:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static/range {v24 .. v24}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->access$200(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v0, v13}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->clearAppFile(Ljava/util/List;)V

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;->this$1:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->access$1222(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;J)J

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;->this$1:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    move-object/from16 v24, v0

    const v25, 0x7f0a03f4

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;->this$1:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    move-object/from16 v29, v0

    #getter for: Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->total_installed_apk_file:J
    invoke-static/range {v29 .. v29}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->access$1200(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;)J

    move-result-wide v29

    invoke-static/range {v28 .. v30}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-virtual/range {v24 .. v26}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/zte/heartyservice/speedup/GarbageListItem;->name:Ljava/lang/String;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 721
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;->this$1:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->adapter:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;->val$localGroupPosition:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;->val$localChildPosition:I

    move/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->removeViewInList(II)V

    goto/16 :goto_1

    .line 718
    :catch_3
    move-exception v16

    .line 719
    .restart local v16       #e:Landroid/os/RemoteException;
    invoke-virtual/range {v16 .. v16}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 722
    .end local v13           #clearList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppFileInfo;>;"
    .end local v16           #e:Landroid/os/RemoteException;
    .end local v19           #localAppFileInfo:Lcom/zte/heartyservice/common/datatype/AppFileInfo;
    .end local v20           #size:J
    :cond_3
    sget v24, Lcom/zte/heartyservice/speedup/GarbageListItem;->TYPE_SYSTEM_CLEAN:I

    iget v0, v11, Lcom/zte/heartyservice/speedup/GarbageChildItem;->type:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 725
    const-wide/16 v3, 0x0

    .line 726
    .local v3, aSize:J
    const-wide/16 v5, 0x0

    .line 727
    .local v5, bSize:J
    const-wide/16 v7, 0x0

    .line 728
    .local v7, cSize:J
    const-wide/16 v14, 0x0

    .line 729
    .local v14, dSize:J
    iget-object v0, v11, Lcom/zte/heartyservice/speedup/GarbageChildItem;->tag:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/zte/heartyservice/speedup/SysGarbageFile;

    .line 730
    .local v23, sysGarbageFile:Lcom/zte/heartyservice/speedup/SysGarbageFile;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;->val$localChildPosition:I

    move/from16 v24, v0

    packed-switch v24, :pswitch_data_0

    .line 874
    :goto_4
    const-string v24, ""

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "localGroupPosition  ==="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;->val$localGroupPosition:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    const-string v24, ""

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "localChildPosition  ==="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;->val$localChildPosition:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 733
    :pswitch_0
    const-string v24, ""

    const-string v25, "00000000000000000000000000000000"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    new-instance v24, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1$1;-><init>(Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;Lcom/zte/heartyservice/speedup/SysGarbageFile;)V

    invoke-virtual/range {v24 .. v24}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1$1;->start()V

    .line 752
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/zte/heartyservice/speedup/SysGarbageFile;->tmpSysFileSize:J

    .line 756
    :try_start_4
    move-object/from16 v0, v23

    iget-wide v3, v0, Lcom/zte/heartyservice/speedup/SysGarbageFile;->tmpSysFileSize:J

    .line 757
    new-instance v24, Ljava/io/File;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getInternalSD()Ljava/io/File;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;->this$1:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    move-object/from16 v26, v0

    #getter for: Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->dcimFile:Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->access$1300(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v24 .. v24}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->getFolderSize(Ljava/io/File;)J

    move-result-wide v5

    .line 758
    move-object/from16 v0, v23

    iget-wide v7, v0, Lcom/zte/heartyservice/speedup/SysGarbageFile;->appLogFileSize:J

    .line 759
    new-instance v24, Ljava/io/File;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getInternalSD()Ljava/io/File;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;->this$1:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    move-object/from16 v26, v0

    #getter for: Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->noUsedFile:Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->access$1400(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v24 .. v24}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->getFolderSize(Ljava/io/File;)J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result-wide v14

    .line 765
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;->this$1:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    move-object/from16 v24, v0

    const v25, 0x7f0a0402

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v28

    add-long v29, v3, v5

    add-long v29, v29, v7

    add-long v29, v29, v14

    invoke-static/range {v28 .. v30}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-virtual/range {v24 .. v26}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/zte/heartyservice/speedup/GarbageListItem;->name:Ljava/lang/String;

    .line 771
    const-string v24, "0KB"

    move-object/from16 v0, v24

    iput-object v0, v11, Lcom/zte/heartyservice/speedup/GarbageChildItem;->subhead:Ljava/lang/String;

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;->this$1:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->notifyDataSetChanged()V

    goto/16 :goto_4

    .line 760
    :catch_4
    move-exception v16

    .line 762
    .local v16, e:Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 775
    .end local v16           #e:Ljava/lang/Exception;
    :pswitch_1
    new-instance v24, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1$2;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1$2;-><init>(Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;)V

    invoke-virtual/range {v24 .. v24}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1$2;->start()V

    .line 783
    :try_start_5
    move-object/from16 v0, v23

    iget-wide v3, v0, Lcom/zte/heartyservice/speedup/SysGarbageFile;->tmpSysFileSize:J

    .line 784
    const-wide/16 v5, 0x0

    .line 785
    move-object/from16 v0, v23

    iget-wide v7, v0, Lcom/zte/heartyservice/speedup/SysGarbageFile;->appLogFileSize:J

    .line 786
    new-instance v24, Ljava/io/File;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getInternalSD()Ljava/io/File;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;->this$1:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    move-object/from16 v26, v0

    #getter for: Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->noUsedFile:Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->access$1400(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v24 .. v24}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->getFolderSize(Ljava/io/File;)J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-result-wide v14

    .line 792
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;->this$1:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    move-object/from16 v24, v0

    const v25, 0x7f0a0402

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v28

    add-long v29, v3, v5

    add-long v29, v29, v7

    add-long v29, v29, v14

    invoke-static/range {v28 .. v30}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-virtual/range {v24 .. v26}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/zte/heartyservice/speedup/GarbageListItem;->name:Ljava/lang/String;

    .line 794
    const-string v24, "0KB"

    move-object/from16 v0, v24

    iput-object v0, v11, Lcom/zte/heartyservice/speedup/GarbageChildItem;->subhead:Ljava/lang/String;

    .line 795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;->this$1:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->notifyDataSetChanged()V

    .line 797
    const-string v24, ""

    const-string v25, "11111111111111111111111111111111"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 787
    :catch_5
    move-exception v16

    .line 789
    .restart local v16       #e:Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 801
    .end local v16           #e:Ljava/lang/Exception;
    :pswitch_2
    new-instance v24, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1$3;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1$3;-><init>(Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;Lcom/zte/heartyservice/speedup/SysGarbageFile;)V

    invoke-virtual/range {v24 .. v24}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1$3;->start()V

    .line 812
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/zte/heartyservice/speedup/SysGarbageFile;->appLogFileSize:J

    .line 813
    const-string v24, "0KB"

    move-object/from16 v0, v24

    iput-object v0, v11, Lcom/zte/heartyservice/speedup/GarbageChildItem;->subhead:Ljava/lang/String;

    .line 816
    :try_start_6
    move-object/from16 v0, v23

    iget-wide v3, v0, Lcom/zte/heartyservice/speedup/SysGarbageFile;->tmpSysFileSize:J

    .line 817
    new-instance v24, Ljava/io/File;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getInternalSD()Ljava/io/File;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;->this$1:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    move-object/from16 v26, v0

    #getter for: Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->dcimFile:Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->access$1300(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v24 .. v24}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->getFolderSize(Ljava/io/File;)J

    move-result-wide v5

    .line 818
    move-object/from16 v0, v23

    iget-wide v7, v0, Lcom/zte/heartyservice/speedup/SysGarbageFile;->appLogFileSize:J

    .line 819
    new-instance v24, Ljava/io/File;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getInternalSD()Ljava/io/File;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;->this$1:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    move-object/from16 v26, v0

    #getter for: Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->noUsedFile:Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->access$1400(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v24 .. v24}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->getFolderSize(Ljava/io/File;)J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    move-result-wide v14

    .line 824
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;->this$1:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    move-object/from16 v24, v0

    const v25, 0x7f0a0402

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v28

    add-long v29, v3, v5

    add-long v29, v29, v7

    add-long v29, v29, v14

    invoke-static/range {v28 .. v30}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-virtual/range {v24 .. v26}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/zte/heartyservice/speedup/GarbageListItem;->name:Ljava/lang/String;

    .line 827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;->this$1:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->notifyDataSetChanged()V

    .line 829
    const-string v24, ""

    const-string v25, "22222222222222222222222222222222"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 820
    :catch_6
    move-exception v16

    .line 822
    .restart local v16       #e:Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 832
    .end local v16           #e:Ljava/lang/Exception;
    :pswitch_3
    new-instance v24, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1$4;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1$4;-><init>(Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;)V

    invoke-virtual/range {v24 .. v24}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1$4;->start()V

    .line 839
    :try_start_7
    move-object/from16 v0, v23

    iget-wide v3, v0, Lcom/zte/heartyservice/speedup/SysGarbageFile;->tmpSysFileSize:J

    .line 840
    new-instance v24, Ljava/io/File;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getInternalSD()Ljava/io/File;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;->this$1:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    move-object/from16 v26, v0

    #getter for: Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->noUsedFile:Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->access$1400(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v24 .. v24}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->getFolderSize(Ljava/io/File;)J

    move-result-wide v5

    .line 841
    move-object/from16 v0, v23

    iget-wide v7, v0, Lcom/zte/heartyservice/speedup/SysGarbageFile;->appLogFileSize:J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 842
    const-wide/16 v14, 0x0

    .line 848
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;->this$1:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    move-object/from16 v24, v0

    const v25, 0x7f0a0402

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v28

    add-long v29, v3, v5

    add-long v29, v29, v7

    add-long v29, v29, v14

    invoke-static/range {v28 .. v30}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-virtual/range {v24 .. v26}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/zte/heartyservice/speedup/GarbageListItem;->name:Ljava/lang/String;

    .line 850
    const-string v24, "0KB"

    move-object/from16 v0, v24

    iput-object v0, v11, Lcom/zte/heartyservice/speedup/GarbageChildItem;->subhead:Ljava/lang/String;

    .line 851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;->this$1:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->notifyDataSetChanged()V

    .line 852
    const-string v24, ""

    const-string v25, "33333333333333333333333333333333"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 843
    :catch_7
    move-exception v16

    .line 845
    .restart local v16       #e:Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 855
    .end local v16           #e:Ljava/lang/Exception;
    :pswitch_4
    new-instance v24, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1$5;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1$5;-><init>(Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;Lcom/zte/heartyservice/speedup/SysGarbageFile;)V

    invoke-virtual/range {v24 .. v24}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1$5;->start()V

    .line 866
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "0"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;->this$1:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0a0409

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v11, Lcom/zte/heartyservice/speedup/GarbageChildItem;->subhead:Ljava/lang/String;

    .line 867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;->this$1:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->notifyDataSetChanged()V

    .line 869
    const-string v24, ""

    const-string v25, "4444444444444444445544444444444444"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 730
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
