.class Lcom/zte/heartyservice/floater/ScreenLockMonitor$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "ScreenLockMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/floater/ScreenLockMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAdapter"
.end annotation


# instance fields
.field private app_des:Landroid/widget/TextView;

.field private app_icon:Landroid/widget/ImageView;

.field private app_tilte:Landroid/widget/TextView;

.field private context:Landroid/content/Context;

.field private infater:Landroid/view/LayoutInflater;

.field private res:Lcom/zte/heartyservice/floater/AppUsedData;

.field private resInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/floater/AppUsedData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/zte/heartyservice/floater/ScreenLockMonitor;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/floater/ScreenLockMonitor;Landroid/content/Context;Ljava/util/List;)V
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
            "Lcom/zte/heartyservice/floater/AppUsedData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, resInfo:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/floater/AppUsedData;>;"
    const/4 v0, 0x0

    .line 204
    iput-object p1, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor$MyAdapter;->this$0:Lcom/zte/heartyservice/floater/ScreenLockMonitor;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 199
    iput-object v0, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor$MyAdapter;->app_icon:Landroid/widget/ImageView;

    .line 200
    iput-object v0, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor$MyAdapter;->app_tilte:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor$MyAdapter;->app_des:Landroid/widget/TextView;

    .line 202
    iput-object v0, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor$MyAdapter;->infater:Landroid/view/LayoutInflater;

    .line 205
    iput-object p2, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor$MyAdapter;->context:Landroid/content/Context;

    .line 206
    iput-object p3, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor$MyAdapter;->resInfo:Ljava/util/List;

    .line 207
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor$MyAdapter;->infater:Landroid/view/LayoutInflater;

    .line 208
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor$MyAdapter;->resInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 219
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 225
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, holder:Lcom/zte/heartyservice/floater/ScreenLockMonitor$ViewHolder;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 234
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor$MyAdapter;->infater:Landroid/view/LayoutInflater;

    const v2, 0x7f0300e8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 235
    new-instance v0, Lcom/zte/heartyservice/floater/ScreenLockMonitor$ViewHolder;

    .end local v0           #holder:Lcom/zte/heartyservice/floater/ScreenLockMonitor$ViewHolder;
    iget-object v1, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor$MyAdapter;->this$0:Lcom/zte/heartyservice/floater/ScreenLockMonitor;

    invoke-direct {v0, v1, p2}, Lcom/zte/heartyservice/floater/ScreenLockMonitor$ViewHolder;-><init>(Lcom/zte/heartyservice/floater/ScreenLockMonitor;Landroid/view/View;)V

    .line 236
    .restart local v0       #holder:Lcom/zte/heartyservice/floater/ScreenLockMonitor$ViewHolder;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 243
    :goto_0
    iget-object v1, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor$MyAdapter;->resInfo:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/floater/AppUsedData;

    iput-object v1, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor$MyAdapter;->res:Lcom/zte/heartyservice/floater/AppUsedData;

    .line 244
    iget-object v1, v0, Lcom/zte/heartyservice/floater/ScreenLockMonitor$ViewHolder;->appIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor$MyAdapter;->res:Lcom/zte/heartyservice/floater/AppUsedData;

    iget-object v2, v2, Lcom/zte/heartyservice/floater/AppUsedData;->usedPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor$MyAdapter;->this$0:Lcom/zte/heartyservice/floater/ScreenLockMonitor;

    invoke-virtual {v3}, Lcom/zte/heartyservice/floater/ScreenLockMonitor;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 245
    iget-object v1, v0, Lcom/zte/heartyservice/floater/ScreenLockMonitor$ViewHolder;->tvAppLabel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor$MyAdapter;->res:Lcom/zte/heartyservice/floater/AppUsedData;

    iget-object v2, v2, Lcom/zte/heartyservice/floater/AppUsedData;->usedPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor$MyAdapter;->this$0:Lcom/zte/heartyservice/floater/ScreenLockMonitor;

    invoke-virtual {v3}, Lcom/zte/heartyservice/floater/ScreenLockMonitor;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\tres.usedData  =========xx======"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor$MyAdapter;->res:Lcom/zte/heartyservice/floater/AppUsedData;

    iget-wide v3, v3, Lcom/zte/heartyservice/floater/AppUsedData;->usedData:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v1, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor$MyAdapter;->res:Lcom/zte/heartyservice/floater/AppUsedData;

    iget-wide v1, v1, Lcom/zte/heartyservice/floater/AppUsedData;->usedData:J

    const-wide/16 v3, 0x400

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    .line 249
    iget-object v1, v0, Lcom/zte/heartyservice/floater/ScreenLockMonitor$ViewHolder;->tvPkgName:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor$MyAdapter;->res:Lcom/zte/heartyservice/floater/AppUsedData;

    iget-wide v3, v3, Lcom/zte/heartyservice/floater/AppUsedData;->usedData:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "B"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    :goto_1
    return-object p2

    .line 240
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/zte/heartyservice/floater/ScreenLockMonitor$ViewHolder;
    check-cast v0, Lcom/zte/heartyservice/floater/ScreenLockMonitor$ViewHolder;

    .restart local v0       #holder:Lcom/zte/heartyservice/floater/ScreenLockMonitor$ViewHolder;
    goto/16 :goto_0

    .line 252
    :cond_2
    iget-object v1, v0, Lcom/zte/heartyservice/floater/ScreenLockMonitor$ViewHolder;->tvPkgName:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor$MyAdapter;->res:Lcom/zte/heartyservice/floater/AppUsedData;

    iget-wide v3, v3, Lcom/zte/heartyservice/floater/AppUsedData;->usedData:J

    long-to-float v3, v3

    const/high16 v4, 0x4480

    div-float/2addr v3, v4

    const/high16 v4, 0x4120

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-double v3, v3

    const-wide/high16 v5, 0x4024

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "KB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
