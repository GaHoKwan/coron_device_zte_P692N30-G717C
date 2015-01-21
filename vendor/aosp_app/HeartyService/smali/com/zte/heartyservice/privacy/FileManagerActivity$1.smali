.class Lcom/zte/heartyservice/privacy/FileManagerActivity$1;
.super Ljava/lang/Object;
.source "FileManagerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/FileManagerActivity;->createPathPopupWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/FileManagerActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/FileManagerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity$1;->this$0:Lcom/zte/heartyservice/privacy/FileManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity$1;->this$0:Lcom/zte/heartyservice/privacy/FileManagerActivity;

    #getter for: Lcom/zte/heartyservice/privacy/FileManagerActivity;->mActionBarAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/FileManagerActivity;->access$000(Lcom/zte/heartyservice/privacy/FileManagerActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 87
    .local v0, path:Ljava/lang/String;
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity$1;->this$0:Lcom/zte/heartyservice/privacy/FileManagerActivity;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    #calls: Lcom/zte/heartyservice/privacy/FileManagerActivity;->openDir(Ljava/io/File;Z)V
    invoke-static {v1, v2, v3}, Lcom/zte/heartyservice/privacy/FileManagerActivity;->access$100(Lcom/zte/heartyservice/privacy/FileManagerActivity;Ljava/io/File;Z)V

    .line 88
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity$1;->this$0:Lcom/zte/heartyservice/privacy/FileManagerActivity;

    #getter for: Lcom/zte/heartyservice/privacy/FileManagerActivity;->mPathPopup:Landroid/widget/ListPopupWindow;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/FileManagerActivity;->access$200(Lcom/zte/heartyservice/privacy/FileManagerActivity;)Landroid/widget/ListPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 89
    return-void
.end method
