.class public Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;
.super Lcom/zte/heartyservice/speedup/SpeedListActivity;
.source "BackgroundAutorunAppActivity.java"

# interfaces
.implements Lcom/zte/heartyservice/common/datatype/CommonListAdapter$ListViewCallBacks;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity$SpeedUpServiceConnection;,
        Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity$Idler;
    }
.end annotation


# instance fields
.field adapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

.field private backgroundAutorunNumberLabel:Landroid/widget/TextView;

.field private init:Z

.field listItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/CommonListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

.field private mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

.field private mIdler:Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity$Idler;

.field private mListView:Landroid/widget/ListView;

.field private mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

.field private packageManager:Landroid/content/pm/PackageManager;

.field private total:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Lcom/zte/heartyservice/speedup/SpeedListActivity;-><init>()V

    .line 53
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->backgroundAutorunNumberLabel:Landroid/widget/TextView;

    .line 54
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->listItems:Ljava/util/List;

    .line 55
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->adapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->init:Z

    .line 58
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->packageManager:Landroid/content/pm/PackageManager;

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->total:I

    .line 61
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    .line 62
    new-instance v0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity$Idler;

    invoke-direct {v0, p0, v1}, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity$Idler;-><init>(Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity$1;)V

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->mIdler:Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity$Idler;

    .line 63
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    .line 109
    new-instance v0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity$1;-><init>(Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    return-void
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;Lcom/zte/heartyservice/speedup/ISpeedUpService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->init:Z

    return v0
.end method

.method static synthetic access$402(Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->init:Z

    return p1
.end method

.method private showTipDlg(Ljava/lang/String;)V
    .locals 12
    .parameter "packageName"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 330
    const/4 v3, 0x0

    .line 331
    .local v3, appName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 332
    .local v1, appIcon:Landroid/graphics/drawable/Drawable;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 334
    .local v4, builder:Landroid/app/AlertDialog$Builder;
    :try_start_0
    iget-object v7, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->packageManager:Landroid/content/pm/PackageManager;

    const/16 v8, 0x80

    invoke-virtual {v7, p1, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 336
    .local v2, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v7, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 337
    iget-object v7, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 341
    .end local v2           #appInfo:Landroid/content/pm/ApplicationInfo;
    :goto_0
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 343
    .local v6, dialogInflater:Landroid/view/LayoutInflater;
    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0a03fc

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v3, v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0a03fd

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v3, v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0a00ea

    new-instance v9, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity$2;

    invoke-direct {v9, p0}, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity$2;-><init>(Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 356
    .local v5, dialog:Landroid/app/Dialog;
    invoke-virtual {v5, v10}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 357
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 358
    return-void

    .line 338
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v6           #dialogInflater:Landroid/view/LayoutInflater;
    :catch_0
    move-exception v7

    goto :goto_0
.end method


# virtual methods
.method protected adapterInit(Ljava/util/List;I)V
    .locals 2
    .parameter
    .parameter "listViewId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/CommonListItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 217
    .local p1, listItems:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/CommonListItem;>;"
    new-instance v0, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    invoke-direct {v0, p0, p1}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->adapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    .line 218
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->adapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    invoke-virtual {v0, p0}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->setListViewCallBacks(Lcom/zte/heartyservice/common/datatype/CommonListAdapter$ListViewCallBacks;)V

    .line 219
    invoke-virtual {p0, p2}, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->mListView:Landroid/widget/ListView;

    .line 220
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->adapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 221
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 222
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 223
    return-void
.end method

.method protected handleItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "arg1"
    .parameter "position"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 256
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method protected listViewInit()V
    .locals 12

    .prologue
    .line 190
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->listItems:Ljava/util/List;

    .line 193
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getBackgroundAutoRunAppInfoList()Ljava/util/List;

    move-result-object v4

    .line 195
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;>;"
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getBackgroundAutoRunAppNum()I

    move-result v8

    iput v8, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->total:I

    .line 197
    const v8, 0x7f0a03fa

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->total:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 198
    .local v7, str:Ljava/lang/String;
    iget-object v8, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->backgroundAutorunNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    :try_start_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;

    .line 202
    .local v5, localBackgroundAutoRunAppInfo:Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;
    iget-object v8, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->packageManager:Landroid/content/pm/PackageManager;

    iget-object v9, v5, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->packageName:Ljava/lang/String;

    const/16 v10, 0x80

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 204
    .local v1, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v8, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 205
    .local v2, appName:Ljava/lang/String;
    iget-object v8, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 206
    .local v0, appIcon:Landroid/graphics/drawable/Drawable;
    new-instance v6, Lcom/zte/heartyservice/speedup/BackgroundAutoRunListItem;

    iget v8, v5, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->stoppedState:I

    if-nez v8, :cond_1

    sget-object v8, Lcom/zte/heartyservice/common/datatype/StateType;->SELECT:Lcom/zte/heartyservice/common/datatype/StateType;

    :goto_1
    invoke-direct {v6, v2, v0, v8, v5}, Lcom/zte/heartyservice/speedup/BackgroundAutoRunListItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/zte/heartyservice/common/datatype/StateType;Ljava/lang/Object;)V

    .line 208
    .local v6, speedItem:Lcom/zte/heartyservice/speedup/BackgroundAutoRunListItem;
    iget-object v8, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->listItems:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 210
    .end local v0           #appIcon:Landroid/graphics/drawable/Drawable;
    .end local v1           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v2           #appName:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #localBackgroundAutoRunAppInfo:Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;
    .end local v6           #speedItem:Lcom/zte/heartyservice/speedup/BackgroundAutoRunListItem;
    :catch_0
    move-exception v8

    .line 213
    :cond_0
    iget-object v8, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->listItems:Ljava/util/List;

    const v9, 0x7f0e0382

    invoke-virtual {p0, v8, v9}, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->adapterInit(Ljava/util/List;I)V

    .line 214
    return-void

    .line 206
    .restart local v0       #appIcon:Landroid/graphics/drawable/Drawable;
    .restart local v1       #appInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v2       #appName:Ljava/lang/String;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #localBackgroundAutoRunAppInfo:Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;
    :cond_1
    :try_start_1
    sget-object v8, Lcom/zte/heartyservice/common/datatype/StateType;->UNSELECT:Lcom/zte/heartyservice/common/datatype/StateType;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 22
    .parameter "view"
    .parameter "isChecked"

    .prologue
    .line 260
    invoke-virtual/range {p1 .. p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v17

    .line 261
    .local v17, viewId:I
    const v18, 0x7f0e037f

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    .line 263
    invoke-virtual/range {p1 .. p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 264
    .local v14, position:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->listItems:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/zte/heartyservice/speedup/BackgroundAutoRunListItem;

    invoke-virtual/range {v18 .. v18}, Lcom/zte/heartyservice/speedup/BackgroundAutoRunListItem;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;

    .line 266
    .local v12, localBackgroundAutoRunAppInfo:Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;
    if-nez p2, :cond_6

    .line 268
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v13

    .line 269
    .local v13, mAppWidgetManager:Landroid/appwidget/AppWidgetManager;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v11, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, v12, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->widgetIds:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 272
    .local v9, id:Ljava/lang/Integer;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v10

    .line 273
    .local v10, info:Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v10, :cond_0

    .line 274
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 278
    .end local v9           #id:Ljava/lang/Integer;
    .end local v10           #info:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_1
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getWidgetEndID()I

    move-result v15

    .line 279
    .local v15, startId:I
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getWidgetEndID()I

    move-result v18

    add-int/lit8 v6, v18, 0x64

    .line 280
    .local v6, endId:I
    move v7, v15

    .local v7, i:I
    :goto_1
    if-ge v7, v6, :cond_3

    .line 281
    invoke-virtual {v13, v7}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v10

    .line 282
    .restart local v10       #info:Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v10, :cond_2

    iget-object v0, v10, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    iget-object v0, v12, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 283
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 287
    .end local v10           #info:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_3
    iput-object v11, v12, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->widgetIds:Ljava/util/List;

    .line 289
    iget-object v0, v12, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->widgetIds:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    if-lez v18, :cond_5

    .line 290
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v12, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->hasWidget:I

    .line 291
    const/16 v18, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 292
    iget-object v0, v12, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->showTipDlg(Ljava/lang/String;)V

    .line 327
    .end local v6           #endId:I
    .end local v7           #i:I
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v11           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v12           #localBackgroundAutoRunAppInfo:Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;
    .end local v13           #mAppWidgetManager:Landroid/appwidget/AppWidgetManager;
    .end local v14           #position:I
    .end local v15           #startId:I
    :cond_4
    :goto_2
    return-void

    .line 294
    .restart local v6       #endId:I
    .restart local v7       #i:I
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v11       #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v12       #localBackgroundAutoRunAppInfo:Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;
    .restart local v13       #mAppWidgetManager:Landroid/appwidget/AppWidgetManager;
    .restart local v14       #position:I
    .restart local v15       #startId:I
    :cond_5
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v12, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->hasWidget:I

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->listItems:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/zte/heartyservice/speedup/BackgroundAutoRunListItem;

    sget-object v19, Lcom/zte/heartyservice/common/datatype/StateType;->UNSELECT:Lcom/zte/heartyservice/common/datatype/StateType;

    invoke-virtual/range {v18 .. v19}, Lcom/zte/heartyservice/speedup/BackgroundAutoRunListItem;->setStateType(Lcom/zte/heartyservice/common/datatype/StateType;)V

    .line 296
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 297
    .local v3, disableList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;>;"
    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->disableBackgroundAutoRunApp(Ljava/util/List;)V

    .line 300
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->total:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->total:I

    .line 301
    const v18, 0x7f0a03fa

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->total:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 302
    .local v16, str:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->backgroundAutorunNumberLabel:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v12, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->stoppedState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 308
    .end local v16           #str:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 309
    .local v4, e:Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 313
    .end local v3           #disableList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;>;"
    .end local v4           #e:Landroid/os/RemoteException;
    .end local v6           #endId:I
    .end local v7           #i:I
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v11           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v13           #mAppWidgetManager:Landroid/appwidget/AppWidgetManager;
    .end local v15           #startId:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->listItems:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/zte/heartyservice/speedup/BackgroundAutoRunListItem;

    sget-object v19, Lcom/zte/heartyservice/common/datatype/StateType;->SELECT:Lcom/zte/heartyservice/common/datatype/StateType;

    invoke-virtual/range {v18 .. v19}, Lcom/zte/heartyservice/speedup/BackgroundAutoRunListItem;->setStateType(Lcom/zte/heartyservice/common/datatype/StateType;)V

    .line 314
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .local v5, enableList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;>;"
    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->enableBackgroundAutoRunApp(Ljava/util/List;)V

    .line 318
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->total:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->total:I

    .line 319
    const v18, 0x7f0a03fa

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->total:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 320
    .restart local v16       #str:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->backgroundAutorunNumberLabel:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v12, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->stoppedState:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 322
    .end local v16           #str:Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 323
    .restart local v4       #e:Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 177
    invoke-super {p0, p1}, Lcom/zte/heartyservice/speedup/SpeedListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 178
    const v0, 0x7f03010c

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->setContentView(I)V

    .line 179
    const v0, 0x7f0a03f8

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->initActionBar(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 180
    invoke-virtual {p0}, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->packageManager:Landroid/content/pm/PackageManager;

    .line 181
    const v0, 0x7f0e0380

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->backgroundAutorunNumberLabel:Landroid/widget/TextView;

    .line 183
    invoke-virtual {p0}, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->listViewInit()V

    .line 184
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 154
    invoke-super {p0}, Lcom/zte/heartyservice/speedup/SpeedListActivity;->onPause()V

    .line 155
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->mIdler:Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity$Idler;

    invoke-virtual {v1, v2}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 156
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->init:Z

    .line 157
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_1

    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_0

    .line 161
    :try_start_1
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    iget-object v2, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    invoke-interface {v1, v2}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->unregisterCallBack(Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 166
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 170
    iput-object v3, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    .line 173
    :cond_1
    :goto_1
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 167
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 170
    iput-object v3, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    goto :goto_1

    :catchall_0
    move-exception v1

    iput-object v3, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    throw v1
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 148
    invoke-super {p0}, Lcom/zte/heartyservice/speedup/SpeedListActivity;->onResume()V

    .line 149
    new-instance v0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity$SpeedUpServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity$SpeedUpServiceConnection;-><init>(Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity$1;)V

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    .line 150
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->mIdler:Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity$Idler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 151
    return-void
.end method

.method public updateViewInfo(Lcom/zte/heartyservice/common/datatype/CommonListItem;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "listItem"
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 227
    move-object v3, p1

    check-cast v3, Lcom/zte/heartyservice/speedup/BackgroundAutoRunListItem;

    .line 228
    .local v3, speedListItem:Lcom/zte/heartyservice/speedup/BackgroundAutoRunListItem;
    const/4 v2, 0x0

    .line 229
    .local v2, speedItemLayout:Landroid/widget/RelativeLayout;
    if-nez p3, :cond_0

    .line 230
    new-instance v2, Landroid/widget/RelativeLayout;

    .end local v2           #speedItemLayout:Landroid/widget/RelativeLayout;
    invoke-direct {v2, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 231
    .restart local v2       #speedItemLayout:Landroid/widget/RelativeLayout;
    const v5, 0x7f03010d

    invoke-virtual {p0, v2, v5}, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->layoutInit(Landroid/widget/RelativeLayout;I)V

    .line 236
    :goto_0
    const v5, 0x7f0e0034

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 237
    .local v0, appName:Landroid/widget/TextView;
    const v5, 0x7f0e0033

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 238
    .local v1, iconImg:Landroid/widget/ImageView;
    const v5, 0x7f0e037f

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 240
    .local v4, switchState:Lcom/zte/heartyservice/common/datatype/P3Switch;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setTag(Ljava/lang/Object;)V

    .line 241
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 242
    invoke-virtual {v3}, Lcom/zte/heartyservice/speedup/BackgroundAutoRunListItem;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 243
    invoke-virtual {v3}, Lcom/zte/heartyservice/speedup/BackgroundAutoRunListItem;->getRefName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    invoke-virtual {v3}, Lcom/zte/heartyservice/speedup/BackgroundAutoRunListItem;->getStateType()Lcom/zte/heartyservice/common/datatype/StateType;

    move-result-object v5

    sget-object v6, Lcom/zte/heartyservice/common/datatype/StateType;->SELECT:Lcom/zte/heartyservice/common/datatype/StateType;

    if-ne v5, v6, :cond_1

    .line 245
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    .line 249
    :goto_1
    invoke-virtual {v4, p0}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 250
    return-object v2

    .end local v0           #appName:Landroid/widget/TextView;
    .end local v1           #iconImg:Landroid/widget/ImageView;
    .end local v4           #switchState:Lcom/zte/heartyservice/common/datatype/P3Switch;
    :cond_0
    move-object v2, p3

    .line 233
    check-cast v2, Landroid/widget/RelativeLayout;

    goto :goto_0

    .line 247
    .restart local v0       #appName:Landroid/widget/TextView;
    .restart local v1       #iconImg:Landroid/widget/ImageView;
    .restart local v4       #switchState:Lcom/zte/heartyservice/common/datatype/P3Switch;
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    goto :goto_1
.end method
