.class Lcom/mediatek/security/ui/AppToPermissionActivity$PermAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppToPermissionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/security/ui/AppToPermissionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PermAdapter"
.end annotation


# instance fields
.field mPermRecordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/PermissionRecord;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mediatek/security/ui/AppToPermissionActivity;


# direct methods
.method public constructor <init>(Lcom/mediatek/security/ui/AppToPermissionActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lcom/mediatek/security/ui/AppToPermissionActivity$PermAdapter;->this$0:Lcom/mediatek/security/ui/AppToPermissionActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/security/ui/AppToPermissionActivity$PermAdapter;->mPermRecordList:Ljava/util/List;

    .line 289
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/mediatek/security/ui/AppToPermissionActivity$PermAdapter;->mPermRecordList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/mediatek/security/ui/AppToPermissionActivity$PermAdapter;->mPermRecordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 301
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
    .line 306
    iget-object v0, p0, Lcom/mediatek/security/ui/AppToPermissionActivity$PermAdapter;->mPermRecordList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 311
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 321
    if-nez p2, :cond_0

    .line 322
    iget-object v5, p0, Lcom/mediatek/security/ui/AppToPermissionActivity$PermAdapter;->this$0:Lcom/mediatek/security/ui/AppToPermissionActivity;

    #getter for: Lcom/mediatek/security/ui/AppToPermissionActivity;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v5}, Lcom/mediatek/security/ui/AppToPermissionActivity;->access$600(Lcom/mediatek/security/ui/AppToPermissionActivity;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040002

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 327
    new-instance v0, Lcom/mediatek/security/ui/AppToPermissionActivity$AppViewHolder;

    invoke-direct {v0}, Lcom/mediatek/security/ui/AppToPermissionActivity$AppViewHolder;-><init>()V

    .line 328
    .local v0, holder:Lcom/mediatek/security/ui/AppToPermissionActivity$AppViewHolder;
    const v5, 0x7f080001

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v0, Lcom/mediatek/security/ui/AppToPermissionActivity$AppViewHolder;->mPermIcon:Landroid/widget/ImageView;

    .line 330
    const v5, 0x7f080002

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/mediatek/security/ui/AppToPermissionActivity$AppViewHolder;->mPermName:Landroid/widget/TextView;

    .line 332
    const v5, 0x7f080004

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/mediatek/security/ui/AppToPermissionActivity$AppViewHolder;->mPermStatus:Landroid/widget/TextView;

    .line 334
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 342
    :goto_0
    iget-object v5, p0, Lcom/mediatek/security/ui/AppToPermissionActivity$PermAdapter;->mPermRecordList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/common/mom/PermissionRecord;

    .line 343
    .local v3, perminfo:Lcom/mediatek/common/mom/PermissionRecord;
    iget-object v2, v3, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    .line 344
    .local v2, permName:Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/security/ui/AppToPermissionActivity$PermAdapter;->this$0:Lcom/mediatek/security/ui/AppToPermissionActivity;

    iget-object v5, v5, Lcom/mediatek/security/ui/AppToPermissionActivity;->mPermLabelArray:[Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/mediatek/security/service/PermControlUtils;->getPermissionLabel(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 346
    .local v1, permLabel:Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/security/ui/AppToPermissionActivity$PermAdapter;->this$0:Lcom/mediatek/security/ui/AppToPermissionActivity;

    #getter for: Lcom/mediatek/security/ui/AppToPermissionActivity;->mEntries:[Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/security/ui/AppToPermissionActivity;->access$700(Lcom/mediatek/security/ui/AppToPermissionActivity;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/mediatek/common/mom/PermissionRecord;->getStatus()I

    move-result v6

    invoke-static {v6}, Lcom/mediatek/security/ui/UiUtils;->getSelectIndex(I)I

    move-result v6

    aget-object v4, v5, v6

    .line 348
    .local v4, status:Ljava/lang/String;
    iget-object v5, v0, Lcom/mediatek/security/ui/AppToPermissionActivity$AppViewHolder;->mPermIcon:Landroid/widget/ImageView;

    invoke-static {v2}, Lcom/mediatek/security/service/PermControlUtils;->getPermissionIcon(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 350
    iget-object v5, v0, Lcom/mediatek/security/ui/AppToPermissionActivity$AppViewHolder;->mPermName:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    iget-object v5, v0, Lcom/mediatek/security/ui/AppToPermissionActivity$AppViewHolder;->mPermStatus:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    const-string v5, "AppToPermActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getView for pka name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/security/ui/AppToPermissionActivity$PermAdapter;->this$0:Lcom/mediatek/security/ui/AppToPermissionActivity;

    #getter for: Lcom/mediatek/security/ui/AppToPermissionActivity;->mPkgName:Ljava/lang/String;
    invoke-static {v7}, Lcom/mediatek/security/ui/AppToPermissionActivity;->access$000(Lcom/mediatek/security/ui/AppToPermissionActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,permLabel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,perm status "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/mediatek/common/mom/PermissionRecord;->getStatus()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , dialog status = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    return-object p2

    .line 338
    .end local v0           #holder:Lcom/mediatek/security/ui/AppToPermissionActivity$AppViewHolder;
    .end local v1           #permLabel:Ljava/lang/String;
    .end local v2           #permName:Ljava/lang/String;
    .end local v3           #perminfo:Lcom/mediatek/common/mom/PermissionRecord;
    .end local v4           #status:Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/security/ui/AppToPermissionActivity$AppViewHolder;

    .restart local v0       #holder:Lcom/mediatek/security/ui/AppToPermissionActivity$AppViewHolder;
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
            "Lcom/mediatek/common/mom/PermissionRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 292
    .local p1, permList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    iput-object p1, p0, Lcom/mediatek/security/ui/AppToPermissionActivity$PermAdapter;->mPermRecordList:Ljava/util/List;

    .line 293
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 294
    return-void
.end method
