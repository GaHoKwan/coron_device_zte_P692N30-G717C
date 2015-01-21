.class Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$DisableBtnOnClickListener$2;
.super Ljava/lang/Object;
.source "InstalledSoftwareActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$DisableBtnOnClickListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$DisableBtnOnClickListener;

.field final synthetic val$selected:I


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$DisableBtnOnClickListener;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1235
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$DisableBtnOnClickListener$2;->this$1:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$DisableBtnOnClickListener;

    iput p2, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$DisableBtnOnClickListener$2;->val$selected:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$DisableBtnOnClickListener$2;->this$1:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$DisableBtnOnClickListener;

    iget-object v0, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$DisableBtnOnClickListener;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    iget v1, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$DisableBtnOnClickListener$2;->val$selected:I

    const/4 v2, 0x1

    #calls: Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->disableSelected(II)V
    invoke-static {v0, v1, v2}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->access$1300(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;II)V

    .line 1238
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1239
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$DisableBtnOnClickListener$2;->this$1:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$DisableBtnOnClickListener;

    iget-object v0, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$DisableBtnOnClickListener;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    #getter for: Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->access$800(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1240
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$DisableBtnOnClickListener$2;->this$1:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$DisableBtnOnClickListener;

    iget-object v0, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$DisableBtnOnClickListener;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    #getter for: Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->access$800(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1242
    :cond_0
    return-void
.end method
