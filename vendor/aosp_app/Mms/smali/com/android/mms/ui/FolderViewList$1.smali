.class Lcom/android/mms/ui/FolderViewList$1;
.super Ljava/lang/Object;
.source "FolderViewList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/FolderViewList;->setupActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/FolderViewList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/FolderViewList;)V
    .locals 0
    .parameter

    .prologue
    .line 337
    iput-object p1, p0, Lcom/android/mms/ui/FolderViewList$1;->this$0:Lcom/android/mms/ui/FolderViewList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList$1;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mAdapter:Landroid/widget/SimpleAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/FolderViewList;->access$200(Lcom/android/mms/ui/FolderViewList;)Landroid/widget/SimpleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList$1;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mAccountDropdown:Lcom/android/mms/ui/FolderViewList$AccountDropdownPopup;
    invoke-static {v0}, Lcom/android/mms/ui/FolderViewList;->access$300(Lcom/android/mms/ui/FolderViewList;)Lcom/android/mms/ui/FolderViewList$AccountDropdownPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/FolderViewList$AccountDropdownPopup;->show()V

    .line 343
    :cond_0
    return-void
.end method
