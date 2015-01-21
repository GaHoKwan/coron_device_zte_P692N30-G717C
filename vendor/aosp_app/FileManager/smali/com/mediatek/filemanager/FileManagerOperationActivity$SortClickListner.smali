.class Lcom/mediatek/filemanager/FileManagerOperationActivity$SortClickListner;
.super Ljava/lang/Object;
.source "FileManagerOperationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/filemanager/FileManagerOperationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SortClickListner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;


# direct methods
.method private constructor <init>(Lcom/mediatek/filemanager/FileManagerOperationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 910
    iput-object p1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$SortClickListner;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/filemanager/FileManagerOperationActivity;Lcom/mediatek/filemanager/FileManagerOperationActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 910
    invoke-direct {p0, p1}, Lcom/mediatek/filemanager/FileManagerOperationActivity$SortClickListner;-><init>(Lcom/mediatek/filemanager/FileManagerOperationActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 913
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$SortClickListner;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    iget v0, v0, Lcom/mediatek/filemanager/AbsBaseActivity;->mSortType:I

    if-eq p2, v0, :cond_0

    .line 914
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$SortClickListner;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    #calls: Lcom/mediatek/filemanager/FileManagerOperationActivity;->setPrefsSortBy(I)V
    invoke-static {v0, p2}, Lcom/mediatek/filemanager/FileManagerOperationActivity;->access$300(Lcom/mediatek/filemanager/FileManagerOperationActivity;I)V

    .line 915
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 916
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$SortClickListner;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    #calls: Lcom/mediatek/filemanager/FileManagerOperationActivity;->sortFileInfoList()V
    invoke-static {v0}, Lcom/mediatek/filemanager/FileManagerOperationActivity;->access$400(Lcom/mediatek/filemanager/FileManagerOperationActivity;)V

    .line 918
    :cond_0
    return-void
.end method
