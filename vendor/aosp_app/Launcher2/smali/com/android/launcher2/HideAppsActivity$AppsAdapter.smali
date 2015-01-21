.class Lcom/android/launcher2/HideAppsActivity$AppsAdapter;
.super Landroid/widget/BaseAdapter;
.source "HideAppsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/HideAppsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppsAdapter"
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/launcher2/HideAppsActivity;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HideAppsActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 408
    iput-object p1, p0, Lcom/android/launcher2/HideAppsActivity$AppsAdapter;->this$0:Lcom/android/launcher2/HideAppsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 409
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HideAppsActivity$AppsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 410
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/launcher2/HideAppsActivity$AppsAdapter;->this$0:Lcom/android/launcher2/HideAppsActivity;

    #getter for: Lcom/android/launcher2/HideAppsActivity;->mApps:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/launcher2/HideAppsActivity;->access$800(Lcom/android/launcher2/HideAppsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/launcher2/HideAppsActivity$AppsAdapter;->this$0:Lcom/android/launcher2/HideAppsActivity;

    #getter for: Lcom/android/launcher2/HideAppsActivity;->mApps:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/launcher2/HideAppsActivity;->access$800(Lcom/android/launcher2/HideAppsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 421
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v3, 0x0

    .line 426
    if-nez p2, :cond_0

    .line 427
    iget-object v2, p0, Lcom/android/launcher2/HideAppsActivity$AppsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040010

    invoke-virtual {v2, v4, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 429
    new-instance v0, Lcom/android/launcher2/HideAppsActivity$ViewHolder;

    invoke-direct {v0}, Lcom/android/launcher2/HideAppsActivity$ViewHolder;-><init>()V

    .line 430
    .local v0, holder:Lcom/android/launcher2/HideAppsActivity$ViewHolder;
    const v2, 0x7f070020

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/launcher2/HideAppsActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 431
    const v2, 0x7f070021

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/launcher2/HideAppsActivity$ViewHolder;->title:Landroid/widget/TextView;

    .line 432
    const v2, 0x7f070022

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/launcher2/HideAppsActivity$ViewHolder;->size:Landroid/widget/TextView;

    .line 433
    const v2, 0x7f070023

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Lcom/android/launcher2/HideAppsActivity$ViewHolder;->hide:Landroid/widget/CheckBox;

    .line 434
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 439
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/HideAppsActivity$AppsAdapter;->this$0:Lcom/android/launcher2/HideAppsActivity;

    #getter for: Lcom/android/launcher2/HideAppsActivity;->mApps:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/launcher2/HideAppsActivity;->access$800(Lcom/android/launcher2/HideAppsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/ApplicationInfo;

    iget-object v1, v2, Lcom/android/launcher2/ApplicationInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 440
    .local v1, iconBitmap:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 441
    iget-object v2, v0, Lcom/android/launcher2/HideAppsActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 442
    iget-object v2, v0, Lcom/android/launcher2/HideAppsActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 447
    :goto_1
    iget-object v4, v0, Lcom/android/launcher2/HideAppsActivity$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/launcher2/HideAppsActivity$AppsAdapter;->this$0:Lcom/android/launcher2/HideAppsActivity;

    #getter for: Lcom/android/launcher2/HideAppsActivity;->mApps:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/launcher2/HideAppsActivity;->access$800(Lcom/android/launcher2/HideAppsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/ApplicationInfo;

    iget-object v2, v2, Lcom/android/launcher2/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    iget-object v4, v0, Lcom/android/launcher2/HideAppsActivity$ViewHolder;->hide:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/android/launcher2/HideAppsActivity$AppsAdapter;->this$0:Lcom/android/launcher2/HideAppsActivity;

    #getter for: Lcom/android/launcher2/HideAppsActivity;->mApps:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/launcher2/HideAppsActivity;->access$800(Lcom/android/launcher2/HideAppsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/ApplicationInfo;

    iget-boolean v2, v2, Lcom/android/launcher2/ApplicationInfo;->isVisible:Z

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v4, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 450
    iget-object v3, v0, Lcom/android/launcher2/HideAppsActivity$ViewHolder;->size:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/launcher2/HideAppsActivity$AppsAdapter;->this$0:Lcom/android/launcher2/HideAppsActivity;

    #getter for: Lcom/android/launcher2/HideAppsActivity;->mEntriesMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/launcher2/HideAppsActivity;->access$200(Lcom/android/launcher2/HideAppsActivity;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v2, p0, Lcom/android/launcher2/HideAppsActivity$AppsAdapter;->this$0:Lcom/android/launcher2/HideAppsActivity;

    #getter for: Lcom/android/launcher2/HideAppsActivity;->mApps:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/launcher2/HideAppsActivity;->access$800(Lcom/android/launcher2/HideAppsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/ApplicationInfo;

    iget-object v2, v2, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/HideAppsActivity$AppEntry;

    iget-object v2, v2, Lcom/android/launcher2/HideAppsActivity$AppEntry;->sizeStr:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    return-object p2

    .line 436
    .end local v0           #holder:Lcom/android/launcher2/HideAppsActivity$ViewHolder;
    .end local v1           #iconBitmap:Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HideAppsActivity$ViewHolder;

    .restart local v0       #holder:Lcom/android/launcher2/HideAppsActivity$ViewHolder;
    goto :goto_0

    .line 444
    .restart local v1       #iconBitmap:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v2, v0, Lcom/android/launcher2/HideAppsActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    move v2, v3

    .line 448
    goto :goto_2
.end method
