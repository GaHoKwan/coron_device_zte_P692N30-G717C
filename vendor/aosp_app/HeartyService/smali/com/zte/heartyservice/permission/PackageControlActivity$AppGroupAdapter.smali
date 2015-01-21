.class public Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "PackageControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/permission/PackageControlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppGroupAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PositionHolder;,
        Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PermissionAskHolder;,
        Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PermissionHolder;,
        Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$GroupHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private groups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mChildInflater:Landroid/view/LayoutInflater;

.field private mGroupInflater:Landroid/view/LayoutInflater;

.field private permUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

.field private pm:Landroid/content/pm/PackageManager;

.field final synthetic this$0:Lcom/zte/heartyservice/permission/PackageControlActivity;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/permission/PackageControlActivity;Landroid/content/Context;Ljava/util/List;)V
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
            "Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p3, groups:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;>;"
    iput-object p1, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;->this$0:Lcom/zte/heartyservice/permission/PackageControlActivity;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 186
    iput-object p2, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;->context:Landroid/content/Context;

    .line 187
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;->mChildInflater:Landroid/view/LayoutInflater;

    .line 188
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;->mGroupInflater:Landroid/view/LayoutInflater;

    .line 189
    iput-object p3, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;->groups:Ljava/util/List;

    .line 190
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;->pm:Landroid/content/pm/PackageManager;

    .line 191
    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;->permUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    .line 192
    return-void
.end method

.method static synthetic access$500(Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;->mChildInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;->groups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;

    iget-object v0, v0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;->children:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 201
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 263
    iget-object v4, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;->groups:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;

    iget-object v4, v4, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;->children:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;

    .line 265
    .local v2, info:Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;
    iget-object v4, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;->this$0:Lcom/zte/heartyservice/permission/PackageControlActivity;

    #getter for: Lcom/zte/heartyservice/permission/PackageControlActivity;->set:Ljava/util/HashSet;
    invoke-static {v4}, Lcom/zte/heartyservice/permission/PackageControlActivity;->access$100(Lcom/zte/heartyservice/permission/PackageControlActivity;)Ljava/util/HashSet;

    move-result-object v4

    #getter for: Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;->mPermissionCategory:I
    invoke-static {v2}, Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;->access$000(Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 266
    const/4 v1, 0x0

    .line 267
    .local v1, holder:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PermissionAskHolder;
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PermissionAskHolder;

    if-nez v4, :cond_2

    .line 270
    :cond_0
    iget-object v4, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;->mChildInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0300a9

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 271
    new-instance v1, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PermissionAskHolder;

    .end local v1           #holder:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PermissionAskHolder;
    invoke-direct {v1, p0}, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PermissionAskHolder;-><init>(Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;)V

    .line 272
    .restart local v1       #holder:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PermissionAskHolder;
    const v4, 0x7f0e02c8

    invoke-virtual {p4, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PermissionAskHolder;->permName:Landroid/widget/TextView;

    .line 273
    const v4, 0x7f0e02c6

    invoke-virtual {p4, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PermissionAskHolder;->choose:Landroid/widget/TextView;

    .line 274
    const v4, 0x7f0e02c7

    invoke-virtual {p4, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PermissionAskHolder;->chooseBtn:Landroid/widget/ImageView;

    .line 276
    invoke-virtual {p4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 281
    :goto_0
    if-eqz v2, :cond_3

    .line 283
    const-string v4, "PackageControlActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getChildView::pkg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    #getter for: Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;->packageName:Ljava/lang/String;
    invoke-static {v2}, Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;->access$200(Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,mPermissionCategory is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    #getter for: Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;->mPermissionCategory:I
    invoke-static {v2}, Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;->access$000(Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", type is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;->getPermissonType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v4, v1, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PermissionAskHolder;->permName:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;->this$0:Lcom/zte/heartyservice/permission/PackageControlActivity;

    #getter for: Lcom/zte/heartyservice/permission/PackageControlActivity;->mPermUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;
    invoke-static {v5}, Lcom/zte/heartyservice/permission/PackageControlActivity;->access$300(Lcom/zte/heartyservice/permission/PackageControlActivity;)Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v5

    #getter for: Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;->mPermissionCategory:I
    invoke-static {v2}, Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;->access$000(Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getPermissionDescription(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    new-instance v3, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PositionHolder;

    invoke-direct {v3, p0}, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PositionHolder;-><init>(Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;)V

    .line 291
    .local v3, positionHolder:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PositionHolder;
    iput p1, v3, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PositionHolder;->groupPosition:I

    .line 292
    iput p2, v3, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PositionHolder;->childPosition:I

    .line 293
    iget-object v4, v1, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PermissionAskHolder;->chooseBtn:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 295
    iget-object v4, v1, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PermissionAskHolder;->chooseBtn:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    invoke-virtual {v2}, Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;->getPermissonType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 311
    iget-object v4, v1, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PermissionAskHolder;->choose:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 312
    iget-object v4, v1, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PermissionAskHolder;->chooseBtn:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 316
    :goto_1
    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getSecurityExtentionVersion()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 317
    iget-object v4, v1, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PermissionAskHolder;->chooseBtn:Landroid/widget/ImageView;

    new-instance v5, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$1;

    invoke-direct {v5, p0}, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$1;-><init>(Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .end local v3           #positionHolder:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PositionHolder;
    :cond_1
    :goto_2
    move-object v0, p4

    .line 429
    .end local v1           #holder:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PermissionAskHolder;
    .end local p4
    .local v0, convertView:Landroid/view/View;
    :goto_3
    return-object v0

    .line 278
    .end local v0           #convertView:Landroid/view/View;
    .restart local v1       #holder:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PermissionAskHolder;
    .restart local p4
    :cond_2
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #holder:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PermissionAskHolder;
    check-cast v1, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PermissionAskHolder;

    .restart local v1       #holder:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PermissionAskHolder;
    goto/16 :goto_0

    .line 299
    .restart local v3       #positionHolder:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PositionHolder;
    :pswitch_0
    iget-object v4, v1, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PermissionAskHolder;->choose:Landroid/widget/TextView;

    const v5, 0x7f0a045e

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 300
    iget-object v4, v1, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PermissionAskHolder;->choose:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;->this$0:Lcom/zte/heartyservice/permission/PackageControlActivity;

    invoke-virtual {v5}, Lcom/zte/heartyservice/permission/PackageControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080015

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 303
    :pswitch_1
    iget-object v4, v1, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PermissionAskHolder;->choose:Landroid/widget/TextView;

    const v5, 0x7f0a045c

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 304
    iget-object v4, v1, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PermissionAskHolder;->choose:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;->this$0:Lcom/zte/heartyservice/permission/PackageControlActivity;

    invoke-virtual {v5}, Lcom/zte/heartyservice/permission/PackageControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080017

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 307
    :pswitch_2
    iget-object v4, v1, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PermissionAskHolder;->choose:Landroid/widget/TextView;

    const v5, 0x7f0a045d

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 308
    iget-object v4, v1, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PermissionAskHolder;->choose:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;->this$0:Lcom/zte/heartyservice/permission/PackageControlActivity;

    invoke-virtual {v5}, Lcom/zte/heartyservice/permission/PackageControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080010

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 346
    .end local v3           #positionHolder:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PositionHolder;
    :cond_3
    const-string v4, "PackageControlActivity"

    const-string v5, "getChildView::info is null! "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 350
    .end local v1           #holder:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PermissionAskHolder;
    :cond_4
    const/4 v1, 0x0

    .line 351
    .local v1, holder:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PermissionHolder;
    if-eqz p4, :cond_5

    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PermissionHolder;

    if-nez v4, :cond_8

    .line 354
    :cond_5
    iget-object v4, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;->mChildInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0300a8

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 355
    new-instance v1, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PermissionHolder;

    .end local v1           #holder:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PermissionHolder;
    invoke-direct {v1, p0}, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PermissionHolder;-><init>(Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;)V

    .line 356
    .restart local v1       #holder:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PermissionHolder;
    const v4, 0x7f0e02c8

    invoke-virtual {p4, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PermissionHolder;->permName:Landroid/widget/TextView;

    .line 357
    const v4, 0x7f0e02c5

    invoke-virtual {p4, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/zte/heartyservice/common/datatype/P3Switch;

    iput-object v4, v1, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PermissionHolder;->switchBtn:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 365
    invoke-virtual {p4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 370
    :goto_4
    if-eqz v2, :cond_b

    .line 372
    const-string v4, "PackageControlActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getChildView::pkg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    #getter for: Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;->packageName:Ljava/lang/String;
    invoke-static {v2}, Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;->access$200(Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,mPermissionCategory is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    #getter for: Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;->mPermissionCategory:I
    invoke-static {v2}, Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;->access$000(Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", type is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;->getPermissonType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v4, v1, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PermissionHolder;->permName:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;->this$0:Lcom/zte/heartyservice/permission/PackageControlActivity;

    #getter for: Lcom/zte/heartyservice/permission/PackageControlActivity;->mPermUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;
    invoke-static {v5}, Lcom/zte/heartyservice/permission/PackageControlActivity;->access$300(Lcom/zte/heartyservice/permission/PackageControlActivity;)Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v5

    #getter for: Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;->mPermissionCategory:I
    invoke-static {v2}, Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;->access$000(Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getPermissionDescription(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    new-instance v3, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PositionHolder;

    invoke-direct {v3, p0}, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PositionHolder;-><init>(Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;)V

    .line 380
    .restart local v3       #positionHolder:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PositionHolder;
    iput p1, v3, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PositionHolder;->groupPosition:I

    .line 381
    iput p2, v3, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PositionHolder;->childPosition:I

    .line 382
    iget-object v4, v1, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PermissionHolder;->switchBtn:Lcom/zte/heartyservice/common/datatype/P3Switch;

    invoke-virtual {v4, v3}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setTag(Ljava/lang/Object;)V

    .line 384
    iget-object v4, v1, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PermissionHolder;->switchBtn:Lcom/zte/heartyservice/common/datatype/P3Switch;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 387
    invoke-virtual {v2}, Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;->getPermissonType()I

    move-result v4

    if-nez v4, :cond_9

    .line 388
    iget-object v4, v1, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PermissionHolder;->switchBtn:Lcom/zte/heartyservice/common/datatype/P3Switch;

    invoke-virtual {v4}, Lcom/zte/heartyservice/common/datatype/P3Switch;->isChecked()Z

    move-result v4

    if-nez v4, :cond_6

    .line 389
    iget-object v4, v1, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PermissionHolder;->switchBtn:Lcom/zte/heartyservice/common/datatype/P3Switch;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    .line 398
    :cond_6
    :goto_5
    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getSecurityExtentionVersion()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_7

    .line 410
    iget-object v4, v1, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PermissionHolder;->switchBtn:Lcom/zte/heartyservice/common/datatype/P3Switch;

    new-instance v5, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$2;

    invoke-direct {v5, p0}, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$2;-><init>(Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;)V

    invoke-virtual {v4, v5}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .end local v3           #positionHolder:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PositionHolder;
    :cond_7
    :goto_6
    move-object v0, p4

    .line 429
    .end local p4
    .restart local v0       #convertView:Landroid/view/View;
    goto/16 :goto_3

    .line 367
    .end local v0           #convertView:Landroid/view/View;
    .restart local p4
    :cond_8
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #holder:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PermissionHolder;
    check-cast v1, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PermissionHolder;

    .restart local v1       #holder:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PermissionHolder;
    goto/16 :goto_4

    .line 391
    .restart local v3       #positionHolder:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PositionHolder;
    :cond_9
    invoke-virtual {v2}, Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;->getPermissonType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a

    .line 392
    iget-object v4, v1, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PermissionHolder;->switchBtn:Lcom/zte/heartyservice/common/datatype/P3Switch;

    invoke-virtual {v4}, Lcom/zte/heartyservice/common/datatype/P3Switch;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 393
    iget-object v4, v1, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PermissionHolder;->switchBtn:Lcom/zte/heartyservice/common/datatype/P3Switch;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    goto :goto_5

    .line 396
    :cond_a
    iget-object v4, v1, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PermissionHolder;->switchBtn:Lcom/zte/heartyservice/common/datatype/P3Switch;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setVisibility(I)V

    goto :goto_5

    .line 427
    .end local v3           #positionHolder:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PositionHolder;
    :cond_b
    const-string v4, "PackageControlActivity"

    const-string v5, "getChildView::info is null! "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 297
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
    .line 206
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;->groups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;

    iget-object v0, v0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;->groups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;->groups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 221
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "isExpanded"
    .parameter "view"
    .parameter "parent"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 225
    const/4 v1, 0x0

    .line 226
    .local v1, holder:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$GroupHolder;
    if-nez p3, :cond_1

    .line 227
    iget-object v3, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;->mGroupInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0300aa

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 228
    new-instance v1, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$GroupHolder;

    .end local v1           #holder:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$GroupHolder;
    invoke-direct {v1, p0}, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$GroupHolder;-><init>(Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;)V

    .line 229
    .restart local v1       #holder:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$GroupHolder;
    const v3, 0x7f0e0010

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$GroupHolder;->appIcon:Landroid/widget/ImageView;

    .line 230
    const v3, 0x7f0e0012

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$GroupHolder;->appName:Landroid/widget/TextView;

    .line 231
    const v3, 0x7f0e02c9

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$GroupHolder;->des:Landroid/widget/TextView;

    .line 232
    const v3, 0x7f0e02ca

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$GroupHolder;->expandIcon:Landroid/widget/ImageView;

    .line 233
    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 238
    :goto_0
    iget-object v3, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;->groups:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;

    .line 239
    .local v0, appInfo:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;
    if-eqz v0, :cond_0

    .line 240
    iget-object v3, v1, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$GroupHolder;->appIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;->getAppinfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 241
    iget-object v3, v1, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$GroupHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    const/4 v3, -0x1

    iget-object v4, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;->permUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    invoke-virtual {v4}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getSecurityExtentionVersion()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 244
    iget-object v3, v1, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$GroupHolder;->des:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a028c

    new-array v6, v10, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;->children:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    :goto_1
    if-eqz p2, :cond_3

    .line 252
    iget-object v3, v1, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$GroupHolder;->expandIcon:Landroid/widget/ImageView;

    const v4, 0x7f02015d

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 257
    :cond_0
    :goto_2
    return-object p3

    .line 235
    .end local v0           #appInfo:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #holder:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$GroupHolder;
    check-cast v1, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$GroupHolder;

    .restart local v1       #holder:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$GroupHolder;
    goto :goto_0

    .line 247
    .restart local v0       #appInfo:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;
    :cond_2
    invoke-virtual {v0}, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;->getAppPermissionStats()Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup$PermissionStats;

    move-result-object v2

    .line 248
    .local v2, stats:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup$PermissionStats;
    iget-object v3, v1, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$GroupHolder;->des:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a028a

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup$PermissionStats;->allowPermNum:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup$PermissionStats;->askPermNum:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    const/4 v7, 0x2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup$PermissionStats;->forbidPermNum:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 254
    .end local v2           #stats:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup$PermissionStats;
    :cond_3
    iget-object v3, v1, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$GroupHolder;->expandIcon:Landroid/widget/ImageView;

    const v4, 0x7f02015c

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 435
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 440
    const/4 v0, 0x1

    return v0
.end method
