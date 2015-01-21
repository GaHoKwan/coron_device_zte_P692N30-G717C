.class public Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "PermissionControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/permission/PermissionControlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PermissionGroupAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$PositionHolder;,
        Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$AppHolder3Choose;,
        Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$AppHolder;,
        Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$GroupHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private groups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mChildInflater:Landroid/view/LayoutInflater;

.field private mGroupInflater:Landroid/view/LayoutInflater;

.field private permUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

.field private pm:Landroid/content/pm/PackageManager;

.field private privacy:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/zte/heartyservice/permission/PermissionControlActivity;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/permission/PermissionControlActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .parameter
    .parameter "c"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p3, groups:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup;>;"
    iput-object p1, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->this$0:Lcom/zte/heartyservice/permission/PermissionControlActivity;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 198
    iput-object p2, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->context:Landroid/content/Context;

    .line 199
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->mChildInflater:Landroid/view/LayoutInflater;

    .line 200
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->mGroupInflater:Landroid/view/LayoutInflater;

    .line 201
    iput-object p3, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->groups:Ljava/util/List;

    .line 202
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->pm:Landroid/content/pm/PackageManager;

    .line 203
    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->permUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    .line 205
    const-string v0, "privacy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->privacy:Landroid/os/IBinder;

    .line 206
    return-void
.end method

.method static synthetic access$500(Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->mChildInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->groups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup;

    iget-object v0, v0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup;->children:Ljava/util/List;

    add-int/lit8 v1, p2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 219
    add-int/lit8 v0, p2, -0x1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 293
    if-gtz p2, :cond_3

    iget-object v11, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->privacy:Landroid/os/IBinder;

    if-eqz v11, :cond_3

    .line 294
    iget-object v11, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->mChildInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f0300ae

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 295
    const v11, 0x7f0e02c5

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 298
    .local v10, switch_:Lcom/zte/heartyservice/common/datatype/P3Switch;
    iget-object v11, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->groups:Ljava/util/List;

    invoke-interface {v11, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup;

    iget-object v2, v11, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup;->children:Ljava/util/List;

    .line 299
    .local v2, childrenList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;>;"
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->getChildrenCount(I)I

    move-result v11

    add-int/lit8 v4, v11, -0x1

    .line 300
    .local v4, count:I
    const/4 v1, 0x1

    .line 301
    .local v1, checked:Z
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v4, :cond_1

    .line 302
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;

    invoke-virtual {v11}, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;->getPermissonType()I

    move-result v8

    .line 303
    .local v8, localPermissonType:I
    if-eqz v8, :cond_0

    const/4 v11, 0x2

    if-ne v8, v11, :cond_2

    .line 305
    :cond_0
    const/4 v1, 0x0

    .line 310
    .end local v8           #localPermissonType:I
    :cond_1
    invoke-virtual {v10, v1}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    .line 312
    new-instance v11, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$1;

    invoke-direct {v11, p0, v2}, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$1;-><init>(Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;Ljava/util/List;)V

    invoke-virtual {v10, v11}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    move-object/from16 v3, p4

    .line 503
    .end local v1           #checked:Z
    .end local v2           #childrenList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;>;"
    .end local v4           #count:I
    .end local v6           #i:I
    .end local v10           #switch_:Lcom/zte/heartyservice/common/datatype/P3Switch;
    .end local p4
    .local v3, convertView:Landroid/view/View;
    :goto_1
    return-object v3

    .line 301
    .end local v3           #convertView:Landroid/view/View;
    .restart local v1       #checked:Z
    .restart local v2       #childrenList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;>;"
    .restart local v4       #count:I
    .restart local v6       #i:I
    .restart local v8       #localPermissonType:I
    .restart local v10       #switch_:Lcom/zte/heartyservice/common/datatype/P3Switch;
    .restart local p4
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 333
    .end local v1           #checked:Z
    .end local v2           #childrenList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;>;"
    .end local v4           #count:I
    .end local v6           #i:I
    .end local v8           #localPermissonType:I
    .end local v10           #switch_:Lcom/zte/heartyservice/common/datatype/P3Switch;
    :cond_3
    iget-object v11, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->privacy:Landroid/os/IBinder;

    if-eqz v11, :cond_4

    .line 334
    add-int/lit8 p2, p2, -0x1

    .line 338
    :cond_4
    iget-object v11, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->this$0:Lcom/zte/heartyservice/permission/PermissionControlActivity;

    #getter for: Lcom/zte/heartyservice/permission/PermissionControlActivity;->set:Ljava/util/HashSet;
    invoke-static {v11}, Lcom/zte/heartyservice/permission/PermissionControlActivity;->access$200(Lcom/zte/heartyservice/permission/PermissionControlActivity;)Ljava/util/HashSet;

    move-result-object v12

    iget-object v11, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->groups:Ljava/util/List;

    invoke-interface {v11, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup;

    iget v11, v11, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup;->permissionCategory:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 339
    const/4 v5, 0x0

    .line 340
    .local v5, holder:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$AppHolder3Choose;
    if-eqz p4, :cond_5

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_5

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    instance-of v11, v11, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$AppHolder3Choose;

    if-nez v11, :cond_7

    .line 343
    :cond_5
    iget-object v11, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->mChildInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f0300a7

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 344
    new-instance v5, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$AppHolder3Choose;

    .end local v5           #holder:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$AppHolder3Choose;
    invoke-direct {v5, p0}, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$AppHolder3Choose;-><init>(Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;)V

    .line 345
    .restart local v5       #holder:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$AppHolder3Choose;
    const v11, 0x7f0e0010

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, v5, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$AppHolder3Choose;->appIcon:Landroid/widget/ImageView;

    .line 346
    const v11, 0x7f0e0012

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v5, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$AppHolder3Choose;->appName:Landroid/widget/TextView;

    .line 347
    const v11, 0x7f0e02c6

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v5, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$AppHolder3Choose;->choose:Landroid/widget/TextView;

    .line 348
    const v11, 0x7f0e02c7

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, v5, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$AppHolder3Choose;->chooseBtn:Landroid/widget/ImageView;

    .line 349
    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 354
    :goto_2
    iget-object v11, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->groups:Ljava/util/List;

    invoke-interface {v11, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup;

    iget-object v11, v11, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup;->children:Ljava/util/List;

    move/from16 v0, p2

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;

    .line 355
    .local v7, info:Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;
    iput-object v7, v5, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$AppHolder3Choose;->appItem:Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;

    .line 356
    if-eqz v7, :cond_6

    .line 357
    iget-object v11, v5, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$AppHolder3Choose;->appIcon:Landroid/widget/ImageView;

    invoke-virtual {v7}, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;->getAppinfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    iget-object v13, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v12, v13}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 358
    iget-object v11, v5, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$AppHolder3Choose;->appName:Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;->getAppName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    new-instance v9, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$PositionHolder;

    invoke-direct {v9, p0}, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$PositionHolder;-><init>(Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;)V

    .line 361
    .local v9, positionHolder:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$PositionHolder;
    iput p1, v9, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$PositionHolder;->groupPosition:I

    .line 362
    move/from16 v0, p2

    iput v0, v9, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$PositionHolder;->childPosition:I

    .line 363
    iget-object v11, v5, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$AppHolder3Choose;->chooseBtn:Landroid/widget/ImageView;

    invoke-virtual {v11, v9}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 364
    iget-object v11, v5, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$AppHolder3Choose;->chooseBtn:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    invoke-virtual {v7}, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;->getPermissonType()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 380
    iget-object v11, v5, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$AppHolder3Choose;->choose:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 381
    iget-object v11, v5, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$AppHolder3Choose;->chooseBtn:Landroid/widget/ImageView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 385
    :goto_3
    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v11

    invoke-virtual {v11}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getSecurityExtentionVersion()I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_6

    .line 386
    iget-object v11, v5, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$AppHolder3Choose;->chooseBtn:Landroid/widget/ImageView;

    new-instance v12, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$2;

    invoke-direct {v12, p0}, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$2;-><init>(Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;)V

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .end local v9           #positionHolder:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$PositionHolder;
    :cond_6
    move-object/from16 v3, p4

    .line 415
    .end local p4
    .restart local v3       #convertView:Landroid/view/View;
    goto/16 :goto_1

    .line 351
    .end local v3           #convertView:Landroid/view/View;
    .end local v7           #info:Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;
    .restart local p4
    :cond_7
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .end local v5           #holder:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$AppHolder3Choose;
    check-cast v5, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$AppHolder3Choose;

    .restart local v5       #holder:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$AppHolder3Choose;
    goto :goto_2

    .line 368
    .restart local v7       #info:Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;
    .restart local v9       #positionHolder:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$PositionHolder;
    :pswitch_0
    iget-object v11, v5, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$AppHolder3Choose;->choose:Landroid/widget/TextView;

    const v12, 0x7f0a045e

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 369
    iget-object v11, v5, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$AppHolder3Choose;->choose:Landroid/widget/TextView;

    iget-object v12, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->this$0:Lcom/zte/heartyservice/permission/PermissionControlActivity;

    invoke-virtual {v12}, Lcom/zte/heartyservice/permission/PermissionControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f080015

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 372
    :pswitch_1
    iget-object v11, v5, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$AppHolder3Choose;->choose:Landroid/widget/TextView;

    const v12, 0x7f0a045c

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 373
    iget-object v11, v5, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$AppHolder3Choose;->choose:Landroid/widget/TextView;

    iget-object v12, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->this$0:Lcom/zte/heartyservice/permission/PermissionControlActivity;

    invoke-virtual {v12}, Lcom/zte/heartyservice/permission/PermissionControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f080017

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 376
    :pswitch_2
    iget-object v11, v5, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$AppHolder3Choose;->choose:Landroid/widget/TextView;

    const v12, 0x7f0a045d

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 377
    iget-object v11, v5, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$AppHolder3Choose;->choose:Landroid/widget/TextView;

    iget-object v12, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->this$0:Lcom/zte/heartyservice/permission/PermissionControlActivity;

    invoke-virtual {v12}, Lcom/zte/heartyservice/permission/PermissionControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f080010

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 417
    .end local v5           #holder:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$AppHolder3Choose;
    .end local v7           #info:Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;
    .end local v9           #positionHolder:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$PositionHolder;
    :cond_8
    const/4 v5, 0x0

    .line 418
    .local v5, holder:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$AppHolder;
    if-eqz p4, :cond_9

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_9

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    instance-of v11, v11, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$AppHolder;

    if-nez v11, :cond_b

    .line 421
    :cond_9
    iget-object v11, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->mChildInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f0300a6

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 422
    new-instance v5, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$AppHolder;

    .end local v5           #holder:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$AppHolder;
    invoke-direct {v5, p0}, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$AppHolder;-><init>(Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;)V

    .line 423
    .restart local v5       #holder:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$AppHolder;
    const v11, 0x7f0e0010

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, v5, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$AppHolder;->appIcon:Landroid/widget/ImageView;

    .line 424
    const v11, 0x7f0e0012

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v5, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$AppHolder;->appName:Landroid/widget/TextView;

    .line 425
    const v11, 0x7f0e02c5

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/zte/heartyservice/common/datatype/P3Switch;

    iput-object v11, v5, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$AppHolder;->switchBtn:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 435
    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 440
    :goto_4
    iget-object v11, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->groups:Ljava/util/List;

    invoke-interface {v11, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup;

    iget-object v11, v11, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup;->children:Ljava/util/List;

    move/from16 v0, p2

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;

    .line 441
    .restart local v7       #info:Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;
    iput-object v7, v5, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$AppHolder;->appItem:Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;

    .line 442
    if-eqz v7, :cond_a

    .line 443
    iget-object v11, v5, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$AppHolder;->appIcon:Landroid/widget/ImageView;

    invoke-virtual {v7}, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;->getAppinfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    iget-object v13, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v12, v13}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 444
    iget-object v11, v5, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$AppHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;->getAppName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    new-instance v9, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$PositionHolder;

    invoke-direct {v9, p0}, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$PositionHolder;-><init>(Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;)V

    .line 448
    .restart local v9       #positionHolder:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$PositionHolder;
    iput p1, v9, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$PositionHolder;->groupPosition:I

    .line 449
    move/from16 v0, p2

    iput v0, v9, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$PositionHolder;->childPosition:I

    .line 450
    iget-object v11, v5, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$AppHolder;->switchBtn:Lcom/zte/heartyservice/common/datatype/P3Switch;

    invoke-virtual {v11, v9}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setTag(Ljava/lang/Object;)V

    .line 452
    iget-object v11, v5, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$AppHolder;->switchBtn:Lcom/zte/heartyservice/common/datatype/P3Switch;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 455
    invoke-virtual {v7}, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;->getPermissonType()I

    move-result v11

    if-nez v11, :cond_c

    .line 456
    iget-object v11, v5, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$AppHolder;->switchBtn:Lcom/zte/heartyservice/common/datatype/P3Switch;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    .line 463
    :goto_5
    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v11

    invoke-virtual {v11}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getSecurityExtentionVersion()I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_a

    .line 484
    iget-object v11, v5, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$AppHolder;->switchBtn:Lcom/zte/heartyservice/common/datatype/P3Switch;

    new-instance v12, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$3;

    invoke-direct {v12, p0}, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$3;-><init>(Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;)V

    invoke-virtual {v11, v12}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .end local v9           #positionHolder:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$PositionHolder;
    :cond_a
    move-object/from16 v3, p4

    .line 503
    .end local p4
    .restart local v3       #convertView:Landroid/view/View;
    goto/16 :goto_1

    .line 437
    .end local v3           #convertView:Landroid/view/View;
    .end local v7           #info:Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;
    .restart local p4
    :cond_b
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .end local v5           #holder:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$AppHolder;
    check-cast v5, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$AppHolder;

    .restart local v5       #holder:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$AppHolder;
    goto :goto_4

    .line 457
    .restart local v7       #info:Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;
    .restart local v9       #positionHolder:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$PositionHolder;
    :cond_c
    invoke-virtual {v7}, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;->getPermissonType()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_d

    .line 458
    iget-object v11, v5, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$AppHolder;->switchBtn:Lcom/zte/heartyservice/common/datatype/P3Switch;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    goto :goto_5

    .line 460
    :cond_d
    iget-object v11, v5, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$AppHolder;->switchBtn:Lcom/zte/heartyservice/common/datatype/P3Switch;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setVisibility(I)V

    goto :goto_5

    .line 366
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getChildrenCount(I)I
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->privacy:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->groups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup;

    iget-object v0, v0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 232
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->groups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup;

    iget-object v0, v0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->groups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->groups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 245
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "isExpanded"
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 250
    const/4 v1, 0x0

    .line 251
    .local v1, holder:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$GroupHolder;
    if-nez p3, :cond_1

    .line 252
    iget-object v3, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->mGroupInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0300ac

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 253
    new-instance v1, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$GroupHolder;

    .end local v1           #holder:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$GroupHolder;
    invoke-direct {v1, p0}, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$GroupHolder;-><init>(Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;)V

    .line 254
    .restart local v1       #holder:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$GroupHolder;
    const v3, 0x7f0e02c8

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$GroupHolder;->permission:Landroid/widget/TextView;

    .line 255
    const v3, 0x7f0e02cf

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$GroupHolder;->des:Landroid/widget/TextView;

    .line 256
    const v3, 0x7f0e02ca

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$GroupHolder;->expandIcon:Landroid/widget/ImageView;

    .line 257
    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 262
    :goto_0
    iget-object v3, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->groups:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup;

    .line 263
    .local v0, groupInfo:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup;
    if-eqz v0, :cond_0

    .line 264
    iget-object v3, v1, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$GroupHolder;->permission:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->this$0:Lcom/zte/heartyservice/permission/PermissionControlActivity;

    #getter for: Lcom/zte/heartyservice/permission/PermissionControlActivity;->mPermUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;
    invoke-static {v4}, Lcom/zte/heartyservice/permission/PermissionControlActivity;->access$100(Lcom/zte/heartyservice/permission/PermissionControlActivity;)Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v4

    iget v5, v0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup;->permissionCategory:I

    invoke-virtual {v4, v5}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getPermissionDescription(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    const/4 v3, -0x1

    iget-object v4, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->permUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    invoke-virtual {v4}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getSecurityExtentionVersion()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 266
    iget-object v3, v1, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$GroupHolder;->des:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a028b

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup;->children:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    :goto_1
    if-eqz p2, :cond_4

    .line 280
    iget-object v3, v1, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$GroupHolder;->expandIcon:Landroid/widget/ImageView;

    const v4, 0x7f02015d

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 285
    :cond_0
    :goto_2
    return-object p3

    .line 259
    .end local v0           #groupInfo:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup;
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #holder:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$GroupHolder;
    check-cast v1, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$GroupHolder;

    .restart local v1       #holder:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$GroupHolder;
    goto :goto_0

    .line 269
    .restart local v0       #groupInfo:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup;
    :cond_2
    invoke-virtual {v0}, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup;->getGroupAppStats()Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup$GroupAppStats;

    move-result-object v2

    .line 271
    .local v2, stats:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup$GroupAppStats;
    iget-object v3, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->this$0:Lcom/zte/heartyservice/permission/PermissionControlActivity;

    #getter for: Lcom/zte/heartyservice/permission/PermissionControlActivity;->set:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/zte/heartyservice/permission/PermissionControlActivity;->access$200(Lcom/zte/heartyservice/permission/PermissionControlActivity;)Ljava/util/HashSet;

    move-result-object v3

    iget v4, v0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup;->permissionCategory:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 272
    iget-object v3, v1, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$GroupHolder;->des:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0289

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup$GroupAppStats;->allowAppNum:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup$GroupAppStats;->askAppNum:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup$GroupAppStats;->forbidAppNum:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 275
    :cond_3
    iget-object v3, v1, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$GroupHolder;->des:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0288

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup$GroupAppStats;->allowAppNum:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup$GroupAppStats;->forbidAppNum:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 282
    .end local v2           #stats:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup$GroupAppStats;
    :cond_4
    iget-object v3, v1, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$GroupHolder;->expandIcon:Landroid/widget/ImageView;

    const v4, 0x7f02015c

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 510
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 514
    const/4 v0, 0x1

    return v0
.end method
