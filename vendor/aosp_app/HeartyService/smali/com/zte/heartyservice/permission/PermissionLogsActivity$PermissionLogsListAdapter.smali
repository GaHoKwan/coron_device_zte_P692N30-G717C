.class Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "PermissionLogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/permission/PermissionLogsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PermissionLogsListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final mListView:Landroid/widget/ListView;

.field private mLoading:Z

.field final synthetic this$0:Lcom/zte/heartyservice/permission/PermissionLogsActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/permission/PermissionLogsActivity;Landroid/content/Context;Landroid/widget/ListView;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 6
    .parameter
    .parameter "context"
    .parameter "listView"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter;->this$0:Lcom/zte/heartyservice/permission/PermissionLogsActivity;

    move-object v0, p0

    move-object v1, p2

    move v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    .line 74
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter;->mLoading:Z

    .line 75
    iput-object p2, p0, Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter;->mContext:Landroid/content/Context;

    .line 76
    iput-object p3, p0, Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter;->mListView:Landroid/widget/ListView;

    .line 77
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 12
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter$ViewHolder;

    .line 96
    .local v8, vh:Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter$ViewHolder;
    :try_start_0
    const-string v9, "pkg"

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 97
    .local v5, packageName:Ljava/lang/String;
    iget-object v9, p0, Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter;->this$0:Lcom/zte/heartyservice/permission/PermissionLogsActivity;

    #getter for: Lcom/zte/heartyservice/permission/PermissionLogsActivity;->pm:Landroid/content/pm/PackageManager;
    invoke-static {v9}, Lcom/zte/heartyservice/permission/PermissionLogsActivity;->access$000(Lcom/zte/heartyservice/permission/PermissionLogsActivity;)Landroid/content/pm/PackageManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v5, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 98
    .local v4, mAppInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v9, p0, Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter;->this$0:Lcom/zte/heartyservice/permission/PermissionLogsActivity;

    #getter for: Lcom/zte/heartyservice/permission/PermissionLogsActivity;->pm:Landroid/content/pm/PackageManager;
    invoke-static {v9}, Lcom/zte/heartyservice/permission/PermissionLogsActivity;->access$000(Lcom/zte/heartyservice/permission/PermissionLogsActivity;)Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, appName:Ljava/lang/String;
    iget-object v9, v8, Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter$ViewHolder;->mPackageName:Landroid/widget/TextView;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v9, v8, Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter$ViewHolder;->mPackageIcon:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter;->this$0:Lcom/zte/heartyservice/permission/PermissionLogsActivity;

    #getter for: Lcom/zte/heartyservice/permission/PermissionLogsActivity;->pm:Landroid/content/pm/PackageManager;
    invoke-static {v10}, Lcom/zte/heartyservice/permission/PermissionLogsActivity;->access$000(Lcom/zte/heartyservice/permission/PermissionLogsActivity;)Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v0           #appName:Ljava/lang/String;
    .end local v4           #mAppInfo:Landroid/content/pm/ApplicationInfo;
    .end local v5           #packageName:Ljava/lang/String;
    :goto_0
    const-string v9, "perm"

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 105
    .local v6, permission:Ljava/lang/String;
    iget-object v9, v8, Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter$ViewHolder;->mPermission:Landroid/widget/TextView;

    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getPermissionDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    const-string v9, "type"

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 109
    .local v7, type:I
    const/4 v9, 0x1

    if-ne v7, v9, :cond_1

    .line 110
    iget-object v9, v8, Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter$ViewHolder;->mAction:Landroid/widget/TextView;

    const/high16 v10, -0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    iget-object v9, v8, Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter$ViewHolder;->mAction:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter;->this$0:Lcom/zte/heartyservice/permission/PermissionLogsActivity;

    invoke-virtual {v10}, Lcom/zte/heartyservice/permission/PermissionLogsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0280

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    :cond_0
    :goto_1
    const-string v9, "date"

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 117
    .local v1, date:J
    iget-object v9, v8, Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter$ViewHolder;->mTimestamp:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter;->this$0:Lcom/zte/heartyservice/permission/PermissionLogsActivity;

    #calls: Lcom/zte/heartyservice/permission/PermissionLogsActivity;->getDisplayTimeStr(J)Ljava/lang/CharSequence;
    invoke-static {v10, v1, v2}, Lcom/zte/heartyservice/permission/PermissionLogsActivity;->access$100(Lcom/zte/heartyservice/permission/PermissionLogsActivity;J)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    return-void

    .line 101
    .end local v1           #date:J
    .end local v6           #permission:Ljava/lang/String;
    .end local v7           #type:I
    :catch_0
    move-exception v3

    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "PermissionLogsActivity"

    const-string v10, "get ApplicationInfo exception!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6       #permission:Ljava/lang/String;
    .restart local v7       #type:I
    :cond_1
    if-nez v7, :cond_0

    .line 113
    iget-object v9, v8, Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter$ViewHolder;->mAction:Landroid/widget/TextView;

    const v10, -0xff0100

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    iget-object v9, v8, Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter$ViewHolder;->mAction:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter;->this$0:Lcom/zte/heartyservice/permission/PermissionLogsActivity;

    invoke-virtual {v10}, Lcom/zte/heartyservice/permission/PermissionLogsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0281

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 81
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 82
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter$ViewHolder;-><init>(Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter;)V

    .line 83
    .local v1, vh:Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter$ViewHolder;
    const v2, 0x7f0e0010

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter$ViewHolder;->mPackageIcon:Landroid/widget/ImageView;

    .line 84
    const v2, 0x7f0e0012

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter$ViewHolder;->mPackageName:Landroid/widget/TextView;

    .line 85
    const v2, 0x7f0e02cd

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter$ViewHolder;->mPermission:Landroid/widget/TextView;

    .line 86
    const v2, 0x7f0e02cc

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter$ViewHolder;->mAction:Landroid/widget/TextView;

    .line 87
    const v2, 0x7f0e02ce

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter$ViewHolder;->mTimestamp:Landroid/widget/TextView;

    .line 88
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 89
    return-object v0
.end method
