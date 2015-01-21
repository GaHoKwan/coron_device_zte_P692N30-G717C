.class Lcom/zte/heartyservice/examination/StorageListActivity$AppAdapter;
.super Landroid/widget/ArrayAdapter;
.source "StorageListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/examination/StorageListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/examination/StorageListActivity$AppAdapter$AppViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/zte/heartyservice/common/datatype/AppCacheInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/zte/heartyservice/examination/StorageListActivity;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/examination/StorageListActivity;Landroid/content/Context;Ljava/util/List;)V
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
            "Lcom/zte/heartyservice/common/datatype/AppCacheInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 212
    .local p3, objects:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppCacheInfo;>;"
    iput-object p1, p0, Lcom/zte/heartyservice/examination/StorageListActivity$AppAdapter;->this$0:Lcom/zte/heartyservice/examination/StorageListActivity;

    .line 213
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 214
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/zte/heartyservice/examination/StorageListActivity$AppAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 215
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 220
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/examination/StorageListActivity$AppAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zte/heartyservice/common/datatype/AppCacheInfo;

    .line 222
    .local v4, item:Lcom/zte/heartyservice/common/datatype/AppCacheInfo;
    const/4 v7, 0x0

    .line 224
    .local v7, view:Landroid/view/View;
    if-nez p2, :cond_0

    .line 225
    new-instance v2, Lcom/zte/heartyservice/examination/StorageListActivity$AppAdapter$AppViewHolder;

    const/4 v8, 0x0

    invoke-direct {v2, p0, v8}, Lcom/zte/heartyservice/examination/StorageListActivity$AppAdapter$AppViewHolder;-><init>(Lcom/zte/heartyservice/examination/StorageListActivity$AppAdapter;Lcom/zte/heartyservice/examination/StorageListActivity$1;)V

    .line 227
    .local v2, holder:Lcom/zte/heartyservice/examination/StorageListActivity$AppAdapter$AppViewHolder;
    iget-object v8, p0, Lcom/zte/heartyservice/examination/StorageListActivity$AppAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f030013

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 230
    const v8, 0x7f0e0045

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v2, Lcom/zte/heartyservice/examination/StorageListActivity$AppAdapter$AppViewHolder;->sequence:Landroid/widget/TextView;

    .line 231
    const v8, 0x7f0e0004

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v2, Lcom/zte/heartyservice/examination/StorageListActivity$AppAdapter$AppViewHolder;->icon:Landroid/widget/ImageView;

    .line 232
    const v8, 0x7f0e003d

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v2, Lcom/zte/heartyservice/examination/StorageListActivity$AppAdapter$AppViewHolder;->name:Landroid/widget/TextView;

    .line 233
    const v8, 0x7f0e0046

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v2, Lcom/zte/heartyservice/examination/StorageListActivity$AppAdapter$AppViewHolder;->summary:Landroid/widget/TextView;

    .line 235
    invoke-virtual {v7, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 242
    :goto_0
    :try_start_0
    iget-object v8, v2, Lcom/zte/heartyservice/examination/StorageListActivity$AppAdapter$AppViewHolder;->sequence:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, p1, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v8, p0, Lcom/zte/heartyservice/examination/StorageListActivity$AppAdapter;->this$0:Lcom/zte/heartyservice/examination/StorageListActivity;

    #getter for: Lcom/zte/heartyservice/examination/StorageListActivity;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v8}, Lcom/zte/heartyservice/examination/StorageListActivity;->access$800(Lcom/zte/heartyservice/examination/StorageListActivity;)Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, v4, Lcom/zte/heartyservice/common/datatype/AppCacheInfo;->packageName:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 244
    .local v3, info:Landroid/content/pm/ApplicationInfo;
    iget-object v8, v2, Lcom/zte/heartyservice/examination/StorageListActivity$AppAdapter$AppViewHolder;->name:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/zte/heartyservice/examination/StorageListActivity$AppAdapter;->this$0:Lcom/zte/heartyservice/examination/StorageListActivity;

    #getter for: Lcom/zte/heartyservice/examination/StorageListActivity;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v9}, Lcom/zte/heartyservice/examination/StorageListActivity;->access$800(Lcom/zte/heartyservice/examination/StorageListActivity;)Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v8, v2, Lcom/zte/heartyservice/examination/StorageListActivity$AppAdapter$AppViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/zte/heartyservice/examination/StorageListActivity$AppAdapter;->this$0:Lcom/zte/heartyservice/examination/StorageListActivity;

    #getter for: Lcom/zte/heartyservice/examination/StorageListActivity;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v9}, Lcom/zte/heartyservice/examination/StorageListActivity;->access$800(Lcom/zte/heartyservice/examination/StorageListActivity;)Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v4, Lcom/zte/heartyservice/common/datatype/AppCacheInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 248
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v8, "###.#M"

    invoke-direct {v1, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 249
    .local v1, dfm:Ljava/text/DecimalFormat;
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v8, "###.#K"

    invoke-direct {v0, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 251
    .local v0, dfk:Ljava/text/DecimalFormat;
    iget-wide v8, v4, Lcom/zte/heartyservice/common/datatype/AppCacheInfo;->data:J

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    long-to-double v5, v8

    .line 252
    .local v5, size:D
    const-wide/high16 v8, 0x4090

    cmpg-double v8, v5, v8

    if-gez v8, :cond_1

    .line 253
    iget-object v8, v2, Lcom/zte/heartyservice/examination/StorageListActivity$AppAdapter$AppViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    .end local v0           #dfk:Ljava/text/DecimalFormat;
    .end local v1           #dfm:Ljava/text/DecimalFormat;
    .end local v3           #info:Landroid/content/pm/ApplicationInfo;
    .end local v5           #size:D
    :goto_1
    return-object v7

    .line 237
    .end local v2           #holder:Lcom/zte/heartyservice/examination/StorageListActivity$AppAdapter$AppViewHolder;
    :cond_0
    move-object v7, p2

    .line 238
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/examination/StorageListActivity$AppAdapter$AppViewHolder;

    .restart local v2       #holder:Lcom/zte/heartyservice/examination/StorageListActivity$AppAdapter$AppViewHolder;
    goto :goto_0

    .line 255
    .restart local v0       #dfk:Ljava/text/DecimalFormat;
    .restart local v1       #dfm:Ljava/text/DecimalFormat;
    .restart local v3       #info:Landroid/content/pm/ApplicationInfo;
    .restart local v5       #size:D
    :cond_1
    :try_start_1
    iget-object v8, v2, Lcom/zte/heartyservice/examination/StorageListActivity$AppAdapter$AppViewHolder;->summary:Landroid/widget/TextView;

    const-wide/high16 v9, 0x4090

    div-double v9, v5, v9

    invoke-virtual {v1, v9, v10}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 257
    .end local v0           #dfk:Ljava/text/DecimalFormat;
    .end local v1           #dfm:Ljava/text/DecimalFormat;
    .end local v3           #info:Landroid/content/pm/ApplicationInfo;
    .end local v5           #size:D
    :catch_0
    move-exception v8

    goto :goto_1
.end method
