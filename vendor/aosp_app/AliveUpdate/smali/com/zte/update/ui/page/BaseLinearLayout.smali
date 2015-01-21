.class public abstract Lcom/zte/update/ui/page/BaseLinearLayout;
.super Landroid/widget/LinearLayout;
.source "BaseLinearLayout.java"


# instance fields
.field protected appName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "layoutResId"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-virtual {p0, p2}, Lcom/zte/update/ui/page/BaseLinearLayout;->setLayout(I)V

    .line 27
    return-void
.end method


# virtual methods
.method protected getRequestInfo(Ljava/lang/Object;)Lcom/zte/update/data/RequestAppInfo;
    .locals 1
    .parameter "mainKey"

    .prologue
    .line 37
    invoke-static {}, Lcom/zte/update/data/DataManager;->getInstance()Lcom/zte/update/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zte/update/data/DataManager;->loadRequestAppInfo(Ljava/lang/Object;)Lcom/zte/update/data/RequestAppInfo;

    move-result-object v0

    return-object v0
.end method

.method protected initAppIconAndLable(Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 6
    .parameter "pckgName"
    .parameter "iconImg"
    .parameter "lable"

    .prologue
    .line 42
    invoke-static {}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getDefault()Lcom/zte/aliveupdate/main/AliveUpdateApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 44
    .local v4, pm:Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 46
    .local v3, pckgInfo:Landroid/content/pm/PackageInfo;
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, lableTxt:Ljava/lang/String;
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 49
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v1           #icon:Landroid/graphics/drawable/Drawable;
    .end local v2           #lableTxt:Ljava/lang/String;
    .end local v3           #pckgInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/zte/util/Log;->error(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setLayout(I)V
    .locals 3
    .parameter "layoutResId"

    .prologue
    .line 30
    const-string v0, "layout_inflater"

    .line 31
    .local v0, inflater:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/zte/update/ui/page/BaseLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 32
    .local v1, vi:Landroid/view/LayoutInflater;
    const/4 v2, 0x1

    invoke-virtual {v1, p1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 33
    return-void
.end method
