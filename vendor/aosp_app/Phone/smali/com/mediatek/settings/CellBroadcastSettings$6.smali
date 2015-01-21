.class Lcom/mediatek/settings/CellBroadcastSettings$6;
.super Ljava/lang/Object;
.source "CellBroadcastSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/CellBroadcastSettings;->showLanguageSelectDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/CellBroadcastSettings;

.field final synthetic val$temp:[Z


# direct methods
.method constructor <init>(Lcom/mediatek/settings/CellBroadcastSettings;[Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 812
    iput-object p1, p0, Lcom/mediatek/settings/CellBroadcastSettings$6;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    iput-object p2, p0, Lcom/mediatek/settings/CellBroadcastSettings$6;->val$temp:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 5
    .parameter "dialog"
    .parameter "whichButton"
    .parameter "isChecked"

    .prologue
    const/4 v4, 0x0

    .line 814
    iget-object v3, p0, Lcom/mediatek/settings/CellBroadcastSettings$6;->val$temp:[Z

    aput-boolean p3, v3, p2

    .line 815
    const/4 v2, 0x0

    .line 816
    .local v2, languageDialog:Landroid/app/AlertDialog;
    instance-of v3, p1, Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 817
    check-cast v2, Landroid/app/AlertDialog;

    .line 819
    :cond_0
    if-nez p2, :cond_1

    .line 820
    if-eqz v2, :cond_2

    .line 821
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/settings/CellBroadcastSettings$6;->val$temp:[Z

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 822
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 823
    .local v1, items:Landroid/widget/ListView;
    invoke-virtual {v1, v0, p3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 824
    iget-object v3, p0, Lcom/mediatek/settings/CellBroadcastSettings$6;->val$temp:[Z

    aput-boolean p3, v3, v0

    .line 821
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 828
    .end local v0           #i:I
    .end local v1           #items:Landroid/widget/ListView;
    :cond_1
    if-nez p3, :cond_3

    if-eqz v2, :cond_3

    .line 829
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 830
    .restart local v1       #items:Landroid/widget/ListView;
    invoke-virtual {v1, v4, p3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 831
    iget-object v3, p0, Lcom/mediatek/settings/CellBroadcastSettings$6;->val$temp:[Z

    aput-boolean v4, v3, v4

    .line 841
    .end local v1           #items:Landroid/widget/ListView;
    :cond_2
    :goto_1
    return-void

    .line 832
    :cond_3
    if-eqz p3, :cond_2

    if-eqz v2, :cond_2

    .line 837
    iget-object v3, p0, Lcom/mediatek/settings/CellBroadcastSettings$6;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    iget-object v4, p0, Lcom/mediatek/settings/CellBroadcastSettings$6;->val$temp:[Z

    #calls: Lcom/mediatek/settings/CellBroadcastSettings;->setCheckedAlllanguageItem([ZZLandroid/app/AlertDialog;)V
    invoke-static {v3, v4, p3, v2}, Lcom/mediatek/settings/CellBroadcastSettings;->access$2500(Lcom/mediatek/settings/CellBroadcastSettings;[ZZLandroid/app/AlertDialog;)V

    goto :goto_1
.end method
