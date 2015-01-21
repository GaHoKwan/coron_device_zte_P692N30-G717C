.class Lcom/mediatek/security/ui/PermissionToAppActivity$PermToAppAdapter;
.super Landroid/widget/BaseAdapter;
.source "PermissionToAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/security/ui/PermissionToAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PermToAppAdapter"
.end annotation


# instance fields
.field mPermRecordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mediatek/security/ui/PermissionToAppActivity;


# direct methods
.method public constructor <init>(Lcom/mediatek/security/ui/PermissionToAppActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/mediatek/security/ui/PermissionToAppActivity$PermToAppAdapter;->this$0:Lcom/mediatek/security/ui/PermissionToAppActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/security/ui/PermissionToAppActivity$PermToAppAdapter;->mPermRecordList:Ljava/util/List;

    .line 230
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/mediatek/security/ui/PermissionToAppActivity$PermToAppAdapter;->mPermRecordList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/mediatek/security/ui/PermissionToAppActivity$PermToAppAdapter;->mPermRecordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 242
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/mediatek/security/ui/PermissionToAppActivity$PermToAppAdapter;->mPermRecordList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 252
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 262
    if-nez p2, :cond_0

    .line 263
    iget-object v3, p0, Lcom/mediatek/security/ui/PermissionToAppActivity$PermToAppAdapter;->this$0:Lcom/mediatek/security/ui/PermissionToAppActivity;

    #getter for: Lcom/mediatek/security/ui/PermissionToAppActivity;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v3}, Lcom/mediatek/security/ui/PermissionToAppActivity;->access$700(Lcom/mediatek/security/ui/PermissionToAppActivity;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040002

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 268
    new-instance v0, Lcom/mediatek/security/ui/PermissionToAppActivity$AppViewHolder;

    invoke-direct {v0}, Lcom/mediatek/security/ui/PermissionToAppActivity$AppViewHolder;-><init>()V

    .line 269
    .local v0, holder:Lcom/mediatek/security/ui/PermissionToAppActivity$AppViewHolder;
    const v3, 0x7f080001

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/mediatek/security/ui/PermissionToAppActivity$AppViewHolder;->mAppIcon:Landroid/widget/ImageView;

    .line 271
    const v3, 0x7f080002

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/mediatek/security/ui/PermissionToAppActivity$AppViewHolder;->mPkgLabel:Landroid/widget/TextView;

    .line 273
    const v3, 0x7f080004

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/mediatek/security/ui/PermissionToAppActivity$AppViewHolder;->mPermStatus:Landroid/widget/TextView;

    .line 275
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 283
    :goto_0
    iget-object v3, p0, Lcom/mediatek/security/ui/PermissionToAppActivity$PermToAppAdapter;->mPermRecordList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;

    .line 284
    .local v1, perminfo:Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;
    iget-object v3, p0, Lcom/mediatek/security/ui/PermissionToAppActivity$PermToAppAdapter;->this$0:Lcom/mediatek/security/ui/PermissionToAppActivity;

    #getter for: Lcom/mediatek/security/ui/PermissionToAppActivity;->mEntries:[Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/security/ui/PermissionToAppActivity;->access$800(Lcom/mediatek/security/ui/PermissionToAppActivity;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/mediatek/common/mom/PermissionRecord;->getStatus()I

    move-result v4

    invoke-static {v4}, Lcom/mediatek/security/ui/UiUtils;->getSelectIndex(I)I

    move-result v4

    aget-object v2, v3, v4

    .line 287
    .local v2, status:Ljava/lang/String;
    iget-object v3, v0, Lcom/mediatek/security/ui/PermissionToAppActivity$AppViewHolder;->mAppIcon:Landroid/widget/ImageView;

    #getter for: Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;->mAppIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;->access$900(Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 288
    iget-object v3, v0, Lcom/mediatek/security/ui/PermissionToAppActivity$AppViewHolder;->mPkgLabel:Landroid/widget/TextView;

    #getter for: Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;->mPkgLabel:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;->access$200(Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v3, v0, Lcom/mediatek/security/ui/PermissionToAppActivity$AppViewHolder;->mPermStatus:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    const-string v3, "PermToAppActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getView for perm name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/security/ui/PermissionToAppActivity$PermToAppAdapter;->this$0:Lcom/mediatek/security/ui/PermissionToAppActivity;

    #getter for: Lcom/mediatek/security/ui/PermissionToAppActivity;->mPermName:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/security/ui/PermissionToAppActivity;->access$1000(Lcom/mediatek/security/ui/PermissionToAppActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pkg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    #getter for: Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;->mPkgLabel:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;->access$200(Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " perm status "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/mediatek/common/mom/PermissionRecord;->getStatus()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", dialog status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return-object p2

    .line 279
    .end local v0           #holder:Lcom/mediatek/security/ui/PermissionToAppActivity$AppViewHolder;
    .end local v1           #perminfo:Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;
    .end local v2           #status:Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/security/ui/PermissionToAppActivity$AppViewHolder;

    .restart local v0       #holder:Lcom/mediatek/security/ui/PermissionToAppActivity$AppViewHolder;
    goto :goto_0
.end method

.method public setDataAndNotify(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 233
    .local p1, permRecordList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;>;"
    iput-object p1, p0, Lcom/mediatek/security/ui/PermissionToAppActivity$PermToAppAdapter;->mPermRecordList:Ljava/util/List;

    .line 234
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 235
    return-void
.end method
