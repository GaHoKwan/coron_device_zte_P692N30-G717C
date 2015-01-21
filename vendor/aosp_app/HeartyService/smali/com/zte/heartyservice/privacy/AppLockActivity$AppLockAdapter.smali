.class Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppLockActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/AppLockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppLockAdapter"
.end annotation


# instance fields
.field private locked:Z

.field private mContext:Landroid/content/Context;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private pkgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/zte/heartyservice/privacy/AppLockActivity;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/privacy/AppLockActivity;Landroid/content/Context;Ljava/util/List;Z)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter
    .parameter "locked"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p3, pkgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;->this$0:Lcom/zte/heartyservice/privacy/AppLockActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 130
    iput-object p2, p0, Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;->mContext:Landroid/content/Context;

    .line 131
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 132
    iput-object p3, p0, Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;->pkgs:Ljava/util/List;

    .line 133
    iput-boolean p4, p0, Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;->locked:Z

    .line 134
    return-void
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;->locked:Z

    return v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;->pkgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;->pkgs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 148
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 153
    if-nez p2, :cond_0

    .line 154
    iget-object v8, p0, Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f030011

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 156
    :cond_0
    iget-object v8, p0, Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;->pkgs:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 157
    .local v7, packageName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 158
    .local v3, appName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 160
    .local v1, appIcon:Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v8, p0, Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v9, 0x80

    invoke-virtual {v8, v7, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 162
    .local v2, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v8, p0, Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 163
    iget-object v8, p0, Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 168
    .end local v2           #appInfo:Landroid/content/pm/ApplicationInfo;
    :goto_0
    const v8, 0x7f0e003c

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 169
    .local v5, icon:Landroid/widget/ImageView;
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 170
    const v8, 0x7f0e003d

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 171
    .local v6, name:Landroid/widget/TextView;
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    const v8, 0x7f0e003e

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    .line 173
    .local v4, btn:Landroid/widget/ImageButton;
    const/4 v8, 0x1

    iget-boolean v9, p0, Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;->locked:Z

    if-ne v8, v9, :cond_1

    .line 174
    const v8, 0x7f02008e

    invoke-virtual {v4, v8}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 178
    :goto_1
    new-instance v8, Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter$1;

    invoke-direct {v8, p0, v7}, Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter$1;-><init>(Lcom/zte/heartyservice/privacy/AppLockActivity$AppLockAdapter;Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    return-object p2

    .line 176
    :cond_1
    const v8, 0x7f020009

    invoke-virtual {v4, v8}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1

    .line 164
    .end local v4           #btn:Landroid/widget/ImageButton;
    .end local v5           #icon:Landroid/widget/ImageView;
    .end local v6           #name:Landroid/widget/TextView;
    :catch_0
    move-exception v8

    goto :goto_0
.end method
