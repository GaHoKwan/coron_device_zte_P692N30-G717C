.class Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$AppAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ClearAppSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$AppAdapter$AppViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p3, objects:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iput-object p1, p0, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$AppAdapter;->this$0:Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;

    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 96
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$AppAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 98
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$AppAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 105
    .local v1, item:Landroid/content/pm/ResolveInfo;
    const/4 v2, 0x0

    .line 107
    .local v2, view:Landroid/view/View;
    if-nez p2, :cond_0

    .line 108
    new-instance v0, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$AppAdapter$AppViewHolder;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$AppAdapter$AppViewHolder;-><init>(Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$AppAdapter;Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$1;)V

    .line 110
    .local v0, holder:Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$AppAdapter$AppViewHolder;
    iget-object v3, p0, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$AppAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0300f4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 112
    const v3, 0x7f0e0004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$AppAdapter$AppViewHolder;->icon:Landroid/widget/ImageView;

    .line 113
    const v3, 0x7f0e003d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$AppAdapter$AppViewHolder;->name:Landroid/widget/TextView;

    .line 114
    const v3, 0x7f0e032a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/zte/heartyservice/common/datatype/P3Switch;

    iput-object v3, v0, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$AppAdapter$AppViewHolder;->switch_:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 116
    iget-object v3, v0, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$AppAdapter$AppViewHolder;->switch_:Lcom/zte/heartyservice/common/datatype/P3Switch;

    iget-object v4, p0, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$AppAdapter;->this$0:Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;

    #getter for: Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;->mSwitchCheckedChangeListener:Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$SwitchCheckedChangeListener;
    invoke-static {v4}, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;->access$300(Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;)Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$SwitchCheckedChangeListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 122
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 129
    :goto_0
    :try_start_0
    iget-object v3, v0, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$AppAdapter$AppViewHolder;->name:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$AppAdapter;->this$0:Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;

    #getter for: Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;->access$400(Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;)Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v3, v0, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$AppAdapter$AppViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$AppAdapter;->this$0:Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;

    #getter for: Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;->access$400(Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;)Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    iget-object v3, v0, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$AppAdapter$AppViewHolder;->switch_:Lcom/zte/heartyservice/common/datatype/P3Switch;

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setTag(Ljava/lang/Object;)V

    .line 137
    iget-object v3, p0, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$AppAdapter;->this$0:Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;

    iget-object v4, v0, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$AppAdapter$AppViewHolder;->switch_:Lcom/zte/heartyservice/common/datatype/P3Switch;

    #calls: Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;->setSwitch(Lcom/zte/heartyservice/common/datatype/P3Switch;)V
    invoke-static {v3, v4}, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;->access$500(Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;Lcom/zte/heartyservice/common/datatype/P3Switch;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_1
    return-object v2

    .line 124
    .end local v0           #holder:Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$AppAdapter$AppViewHolder;
    :cond_0
    move-object v2, p2

    .line 125
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$AppAdapter$AppViewHolder;

    .restart local v0       #holder:Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$AppAdapter$AppViewHolder;
    goto :goto_0

    .line 138
    :catch_0
    move-exception v3

    goto :goto_1
.end method
